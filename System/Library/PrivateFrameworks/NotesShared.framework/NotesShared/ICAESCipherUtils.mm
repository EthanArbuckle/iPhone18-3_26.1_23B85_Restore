@interface ICAESCipherUtils
+ (id)_ic_decrypt:(id)a3 withCipherKey:(id)a4 standardKeyLength:(unint64_t)a5 additionalAuthenticatedData:(id)a6 inputTag:(id)a7 standardTagLength:(unint64_t)a8 inputInitializationVector:(id)a9 standardInitializationVectorLength:(unint64_t)a10 error:(id *)a11;
+ (id)_ic_encrypt:(id)a3 withCipherKey:(id)a4 standardKeyLength:(unint64_t)a5 additionalAuthenticatedData:(id)a6 outputTag:(id *)a7 standardTagLength:(unint64_t)a8 outputInitializationVector:(id *)a9 standardInitializationVectorLength:(unint64_t)a10 error:(id *)a11;
+ (id)_ic_unwrap:(id)a3 withWrapper:(id)a4 standardKeyLength:(unint64_t)a5 standardWrappedKeyLength:(unint64_t)a6 error:(id *)a7;
+ (id)_ic_wrap:(id)a3 withWrapper:(id)a4 standardKeyLength:(unint64_t)a5 standardWrappedKeyLength:(unint64_t)a6 error:(id *)a7;
@end

@implementation ICAESCipherUtils

+ (id)_ic_encrypt:(id)a3 withCipherKey:(id)a4 standardKeyLength:(unint64_t)a5 additionalAuthenticatedData:(id)a6 outputTag:(id *)a7 standardTagLength:(unint64_t)a8 outputInitializationVector:(id *)a9 standardInitializationVectorLength:(unint64_t)a10 error:(id *)a11
{
  v55[1] = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a6;
  if (a11)
  {
    *a11 = 0;
    if (!v16)
    {
      v29 = MEMORY[0x277CCA9B8];
      v54 = *MEMORY[0x277CCA450];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"plainData is nil"];
      v55[0] = v20;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
      v22 = v29;
      v23 = 15;
      goto LABEL_12;
    }

    if ([v17 length] != a5)
    {
      v19 = MEMORY[0x277CCA9B8];
      v52 = *MEMORY[0x277CCA450];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Encrypting key length is %zu, but should be %ld.", objc_msgSend(v17, "length"), a5];
      v53 = v20;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      v22 = v19;
      v23 = 1;
LABEL_12:
      [v22 errorWithDomain:@"com.apple.notes.cipher" code:v23 userInfo:v21];
      *a11 = v28 = 0;
LABEL_24:

      goto LABEL_25;
    }
  }

  else if (!v16 || [v17 length] != a5)
  {
    v28 = 0;
    goto LABEL_26;
  }

  v45 = 0;
  v24 = [MEMORY[0x277CBEA90] ic_randomDataOfLength:a10 error:&v45];
  v20 = v45;
  v25 = v24;
  *a9 = v24;
  if (!v20)
  {
    v21 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(v16, "length")}];
    [MEMORY[0x277CBEB28] dataWithLength:a8];
    v44 = v43 = v18;
    if (v18)
    {
      [v18 bytes];
      [v18 length];
    }

    [v17 bytes];
    [v17 length];
    [*a9 bytes];
    [*a9 length];
    [v16 bytes];
    v30 = [v16 length];
    v31 = [v21 mutableBytes];
    v27 = v44;
    v42 = [v44 mutableBytes];
    v41 = v31;
    v32 = CCCryptorGCMOneshotEncrypt();
    if (v32)
    {
      if (a11)
      {
        v33 = MEMORY[0x277CCA9B8];
        v48 = *MEMORY[0x277CCA450];
        v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"CCCryptorGCM() encryption failed with status %d", v32, v41, v42, a8];
        v49 = v34;
        v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        *a11 = [v33 errorWithDomain:@"com.apple.notes.cipher" code:3 userInfo:v35];
      }

      v28 = 0;
      v27 = v44;
    }

    else
    {
      if ([v44 length] != a8)
      {
        v18 = v43;
        if (a11)
        {
          v38 = MEMORY[0x277CCA9B8];
          v46 = *MEMORY[0x277CCA450];
          v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"Tag length changed to %zu during encryption, but should remain %ld", a8, a8];
          v47 = v39;
          v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
          *a11 = [v38 errorWithDomain:@"com.apple.notes.cipher" code:4 userInfo:v40];
        }

        v28 = 0;
        goto LABEL_23;
      }

      v36 = v44;
      *a7 = v44;
      v28 = [v21 copy];
    }

    v18 = v43;
LABEL_23:

    goto LABEL_24;
  }

  if (a11)
  {
    v26 = MEMORY[0x277CCA9B8];
    v50[0] = *MEMORY[0x277CCA450];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"IV generation failed"];
    v50[1] = *MEMORY[0x277CCA7E8];
    v51[0] = v21;
    v51[1] = v20;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
    [v26 errorWithDomain:@"com.apple.notes.cipher" code:2 userInfo:v27];
    *a11 = v28 = 0;
    goto LABEL_23;
  }

  v28 = 0;
LABEL_25:

LABEL_26:

  return v28;
}

+ (id)_ic_decrypt:(id)a3 withCipherKey:(id)a4 standardKeyLength:(unint64_t)a5 additionalAuthenticatedData:(id)a6 inputTag:(id)a7 standardTagLength:(unint64_t)a8 inputInitializationVector:(id)a9 standardInitializationVectorLength:(unint64_t)a10 error:(id *)a11
{
  v49[1] = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  if (a11)
  {
    *a11 = 0;
    if (!v16)
    {
      v27 = MEMORY[0x277CCA9B8];
      v48 = *MEMORY[0x277CCA450];
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"cipherData is nil"];
      v49[0] = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
      v24 = v27;
      v25 = 16;
      goto LABEL_17;
    }

    if ([v17 length] != a5)
    {
      v28 = MEMORY[0x277CCA9B8];
      v46 = *MEMORY[0x277CCA450];
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Decrypting key length is %zu, but should be %ld.", objc_msgSend(v17, "length"), a5];
      v47 = v22;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      *a11 = [v28 errorWithDomain:@"com.apple.notes.cipher" code:5 userInfo:v29];

      goto LABEL_19;
    }

    if ([v20 length] != a10)
    {
      v30 = MEMORY[0x277CCA9B8];
      v44 = *MEMORY[0x277CCA450];
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"IV length is %zu, but should remain %ld", objc_msgSend(v19, "length"), a10];
      v45 = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v24 = v30;
      v25 = 14;
      goto LABEL_17;
    }

    if ([v19 length] != a8)
    {
      v21 = MEMORY[0x277CCA9B8];
      v42 = *MEMORY[0x277CCA450];
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Tag length is %zu, but should remain %ld", objc_msgSend(v19, "length"), a8];
      v43 = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v24 = v21;
      v25 = 4;
LABEL_17:
      *a11 = [v24 errorWithDomain:@"com.apple.notes.cipher" code:v25 userInfo:v23];
LABEL_18:

      goto LABEL_19;
    }
  }

  else if (!v16 || [v17 length] != a5 || objc_msgSend(v20, "length") != a10 || objc_msgSend(v19, "length") != a8)
  {
    v26 = 0;
    goto LABEL_21;
  }

  if (v18)
  {
    [v18 bytes];
    [v18 length];
  }

  v22 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(v16, "length")}];
  [v17 bytes];
  [v17 length];
  [v20 bytes];
  [v20 length];
  [v16 bytes];
  v32 = [v16 length];
  v33 = [v22 mutableBytes];
  v38 = [v19 bytes];
  v39 = [v19 length];
  v37 = v33;
  v34 = CCCryptorGCMOneshotDecrypt();
  if (!v34)
  {
    v26 = [v22 copy];
    goto LABEL_20;
  }

  if (a11)
  {
    v35 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA450];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"CCCryptorGCM() decryption failed with status %d", v34, v37, v38, v39];
    v41 = v23;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    *a11 = [v35 errorWithDomain:@"com.apple.notes.cipher" code:6 userInfo:v36];

    goto LABEL_18;
  }

LABEL_19:
  v26 = 0;
LABEL_20:

LABEL_21:

  return v26;
}

+ (id)_ic_wrap:(id)a3 withWrapper:(id)a4 standardKeyLength:(unint64_t)a5 standardWrappedKeyLength:(unint64_t)a6 error:(id *)a7
{
  v35[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = v12;
  if (a7)
  {
    *a7 = 0;
    if ([v12 length] != a5)
    {
      v22 = MEMORY[0x277CCA9B8];
      v34 = *MEMORY[0x277CCA450];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Wrapper key length is %zu when wrapping, but should be %ld.", objc_msgSend(v13, "length"), a5];
      v35[0] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      v17 = v22;
      v18 = 9;
      goto LABEL_11;
    }

    if ([v11 length] != a5)
    {
      v14 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277CCA450];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Raw key length is %zu when wrapping, but should be %ld.", objc_msgSend(v11, "length"), a5];
      v33 = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v17 = v14;
      v18 = 10;
LABEL_11:
      *a7 = [v17 errorWithDomain:@"com.apple.notes.cipher" code:v18 userInfo:v16];
      goto LABEL_12;
    }

LABEL_7:
    v15 = [MEMORY[0x277CBEB28] dataWithLength:a6];
    wrappedKeyLen = [v15 length];
    v19 = CCSymmetricKeyWrap(1u, *MEMORY[0x277D85C18], *MEMORY[0x277D85C20], [v13 bytes], objc_msgSend(v13, "length"), objc_msgSend(v11, "bytes"), objc_msgSend(v11, "length"), objc_msgSend(v15, "mutableBytes"), &wrappedKeyLen);
    if (!v19)
    {
      if (wrappedKeyLen == a6)
      {
        a7 = [v15 copy];
        goto LABEL_14;
      }

      if (!a7)
      {
        goto LABEL_14;
      }

      v24 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA450];
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Wrapped key length is %zu, but should be %ld", wrappedKeyLen, a6];
      v29 = v25;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      *a7 = [v24 errorWithDomain:@"com.apple.notes.cipher" code:11 userInfo:v26];

      goto LABEL_13;
    }

    if (!a7)
    {
LABEL_14:

      goto LABEL_16;
    }

    v20 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"CCSymmetricKeyWrap() wrapping failed with status %d", v19];
    v31 = v16;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    *a7 = [v20 errorWithDomain:@"com.apple.notes.cipher" code:8 userInfo:v21];

LABEL_12:
LABEL_13:
    a7 = 0;
    goto LABEL_14;
  }

  if ([v12 length] == a5 && objc_msgSend(v11, "length") == a5)
  {
    goto LABEL_7;
  }

  a7 = 0;
LABEL_16:

  return a7;
}

+ (id)_ic_unwrap:(id)a3 withWrapper:(id)a4 standardKeyLength:(unint64_t)a5 standardWrappedKeyLength:(unint64_t)a6 error:(id *)a7
{
  v33[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = v12;
  if (a7)
  {
    *a7 = 0;
    if ([v12 length] != a5)
    {
      v20 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277CCA450];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Wrapper key length is %zu when unwrapping, but should be %ld.", objc_msgSend(v13, "length"), a5];
      v33[0] = v15;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      *a7 = [v20 errorWithDomain:@"com.apple.notes.cipher" code:9 userInfo:v21];
      goto LABEL_12;
    }

    if ([v11 length] != a6)
    {
      v14 = MEMORY[0x277CCA9B8];
      v30 = *MEMORY[0x277CCA450];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Wrapped key length is %zu when unwrapping, but should be %ld.", objc_msgSend(v11, "length"), a6];
      v31 = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      *a7 = [v14 errorWithDomain:@"com.apple.notes.cipher" code:11 userInfo:v16];
LABEL_10:

LABEL_13:
      a7 = 0;
      goto LABEL_14;
    }

LABEL_7:
    v15 = [MEMORY[0x277CBEB28] dataWithLength:a5];
    rawKeyLen = [v15 length];
    v17 = CCSymmetricKeyUnwrap(1u, *MEMORY[0x277D85C18], *MEMORY[0x277D85C20], [v13 bytes], objc_msgSend(v13, "length"), objc_msgSend(v11, "bytes"), objc_msgSend(v11, "length"), objc_msgSend(v15, "mutableBytes"), &rawKeyLen);
    if (v17)
    {
      if (!a7)
      {
LABEL_14:

        goto LABEL_16;
      }

      v18 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA450];
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"CCSymmetricKeyUnwrap() unwrapping failed with status %d", v17];
      v29 = v16;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      *a7 = [v18 errorWithDomain:@"com.apple.notes.cipher" code:8 userInfo:v19];

      goto LABEL_10;
    }

    if (rawKeyLen == a5)
    {
      a7 = [v15 copy];
      goto LABEL_14;
    }

    if (!a7)
    {
      goto LABEL_14;
    }

    v23 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unwrapped key length is %zu, but should be %ld", rawKeyLen, a5];
    v27 = v21;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    *a7 = [v23 errorWithDomain:@"com.apple.notes.cipher" code:10 userInfo:v24];

LABEL_12:
    goto LABEL_13;
  }

  if ([v12 length] == a5 && objc_msgSend(v11, "length") == a6)
  {
    goto LABEL_7;
  }

  a7 = 0;
LABEL_16:

  return a7;
}

@end