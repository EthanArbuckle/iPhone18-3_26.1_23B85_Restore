@interface ICCipherV1Neo
+ (id)keyForPassphrase:(id)a3 salt:(id)a4 iterationCount:(unint64_t)a5 error:(id *)a6;
@end

@implementation ICCipherV1Neo

+ (id)keyForPassphrase:(id)a3 salt:(id)a4 iterationCount:(unint64_t)a5 error:(id *)a6
{
  v32[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if ([v9 length])
  {
    if ([v10 length] == 32)
    {
      if (a5 - 0x100000000 > 0xFFFFFFFF00000000)
      {
        v18 = [v9 precomposedStringWithCanonicalMapping];
        v12 = [v18 dataUsingEncoding:4];

        v19 = [MEMORY[0x277CBEB28] dataWithLength:32];
        v20 = CCKeyDerivationPBKDF(2u, [v12 bytes], objc_msgSend(v12, "length"), objc_msgSend(v10, "bytes"), objc_msgSend(v10, "length"), 3u, a5, objc_msgSend(v19, "mutableBytes"), objc_msgSend(v19, "length"));
        if (v20)
        {
          if (a6)
          {
            v21 = MEMORY[0x277CCA9B8];
            v25 = *MEMORY[0x277CCA450];
            v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"CCKeyDerivationPBKDF() key derivation failed with status %d", v20];
            v26 = v22;
            v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
            *a6 = [v21 errorWithDomain:@"com.apple.notes.cipher" code:13 userInfo:v23];
          }

          v15 = 0;
        }

        else
        {
          v15 = v19;
        }

        goto LABEL_18;
      }

      if (a6)
      {
        v11 = MEMORY[0x277CCA9B8];
        v27 = *MEMORY[0x277CCA450];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Iteration count is %lu", a5];
        v28 = v12;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        *a6 = [v11 errorWithDomain:@"com.apple.notes.cipher" code:19 userInfo:v13];

LABEL_10:
        v15 = 0;
        goto LABEL_18;
      }
    }

    else if (a6)
    {
      v16 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277CCA450];
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Salt length is %lu, but should be %lu", objc_msgSend(v10, "length"), 32];
      v30 = v12;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      *a6 = [v16 errorWithDomain:@"com.apple.notes.cipher" code:12 userInfo:v17];

      goto LABEL_10;
    }

LABEL_11:
    v15 = 0;
    goto LABEL_19;
  }

  if (!a6)
  {
    goto LABEL_11;
  }

  v14 = MEMORY[0x277CCA9B8];
  v31 = *MEMORY[0x277CCA450];
  v32[0] = @"Passphrase is nil or zero length";
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  [v14 errorWithDomain:@"com.apple.notes.cipher" code:18 userInfo:v12];
  *a6 = v15 = 0;
LABEL_18:

LABEL_19:

  return v15;
}

@end