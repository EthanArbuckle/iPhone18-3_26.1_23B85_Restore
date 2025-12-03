@interface ICCipherV1
+ (id)keyForPassphrase:(id)passphrase salt:(id)salt iterationCount:(unint64_t)count error:(id *)error;
@end

@implementation ICCipherV1

+ (id)keyForPassphrase:(id)passphrase salt:(id)salt iterationCount:(unint64_t)count error:(id *)error
{
  v30[1] = *MEMORY[0x277D85DE8];
  passphraseCopy = passphrase;
  saltCopy = salt;
  if ([passphraseCopy length])
  {
    if ([saltCopy length] == 16)
    {
      errorCopy = error;
      if (count - 0x100000000 <= 0xFFFFFFFF00000000)
      {
        v11 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [ICCipherV1 keyForPassphrase:v11 salt:? iterationCount:? error:?];
        }

        LODWORD(count) = 20000;
      }

      precomposedStringWithCanonicalMapping = [passphraseCopy precomposedStringWithCanonicalMapping];
      v13 = [precomposedStringWithCanonicalMapping dataUsingEncoding:4];

      v14 = [MEMORY[0x277CBEB28] dataWithLength:16];
      v15 = CCKeyDerivationPBKDF(2u, [v13 bytes], objc_msgSend(v13, "length"), objc_msgSend(saltCopy, "bytes"), objc_msgSend(saltCopy, "length"), 3u, count, objc_msgSend(v14, "mutableBytes"), objc_msgSend(v14, "length"));
      if (v15)
      {
        if (error)
        {
          v16 = MEMORY[0x277CCA9B8];
          v25 = *MEMORY[0x277CCA450];
          v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"CCKeyDerivationPBKDF() key derivation failed with status %d", v15];
          v26 = v17;
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          *errorCopy = [v16 errorWithDomain:@"com.apple.notes.cipher" code:13 userInfo:v18];
        }

        v19 = 0;
      }

      else
      {
        v19 = v14;
      }

      goto LABEL_18;
    }

    if (error)
    {
      v21 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277CCA450];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Salt length is %lu, but should be %lu", objc_msgSend(saltCopy, "length"), 16];
      v28 = v13;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      *error = [v21 errorWithDomain:@"com.apple.notes.cipher" code:12 userInfo:v22];

      v19 = 0;
      goto LABEL_18;
    }

LABEL_15:
    v19 = 0;
    goto LABEL_19;
  }

  if (!error)
  {
    goto LABEL_15;
  }

  v20 = MEMORY[0x277CCA9B8];
  v29 = *MEMORY[0x277CCA450];
  v30[0] = @"Passphrase is nil or zero length";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  [v20 errorWithDomain:@"com.apple.notes.cipher" code:18 userInfo:v13];
  *error = v19 = 0;
LABEL_18:

LABEL_19:

  return v19;
}

+ (void)keyForPassphrase:(os_log_t)log salt:iterationCount:error:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 134217984;
  v2 = 20000;
  _os_log_debug_impl(&dword_214D51000, log, OS_LOG_TYPE_DEBUG, "Attempting to derive key with an invalid iteration count, using default v1 iteration count %lu", &v1, 0xCu);
}

@end