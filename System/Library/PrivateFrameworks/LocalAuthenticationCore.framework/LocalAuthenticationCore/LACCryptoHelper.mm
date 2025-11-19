@interface LACCryptoHelper
- (id)aesGCMDecryptData:(id)a3 key:(id)a4 error:(id *)a5;
- (id)aesGCMEncryptData:(id)a3 key:(id)a4 error:(id *)a5;
- (id)aesGCMKeyWithPassword:(id)a3 salt:(id)a4 iterations:(unsigned int)a5 error:(id *)a6;
- (id)randomDataWithSize:(unint64_t)a3 error:(id *)a4;
@end

@implementation LACCryptoHelper

- (id)randomDataWithSize:(unint64_t)a3 error:(id *)a4
{
  v6 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:a3];
  if (SecRandomCopyBytes(*MEMORY[0x1E697B308], a3, [v6 mutableBytes]))
  {
    if (a4)
    {
      [LACError errorWithCode:-1000 debugDescription:@"Could not generate random data"];
      *a4 = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (id)aesGCMKeyWithPassword:(id)a3 salt:(id)a4 iterations:(unsigned int)a5 error:(id *)a6
{
  v8 = MEMORY[0x1E695DF88];
  v9 = a4;
  v10 = a3;
  v11 = [v8 dataWithLength:32];
  v12 = [v10 bytes];
  v13 = [v10 length];

  v14 = [v9 bytes];
  v15 = [v9 length];

  if (CCKeyDerivationPBKDF(2u, v12, v13, v14, v15, 3u, a5, [v11 mutableBytes], objc_msgSend(v11, "length")))
  {
    v16 = 0;
  }

  else
  {
    v16 = v11;
  }

  return v16;
}

- (id)aesGCMEncryptData:(id)a3 key:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([(LACCryptoHelper *)self _aesGCMKeyHasValidSize:v9])
  {
    v10 = [v8 length];
    v11 = [v8 length];
    v12 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v10 + 28];
    if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 0xCuLL, [v12 mutableBytes]))
    {
      if (a5)
      {
        [LACError errorWithCode:-1000 debugDescription:@"Could not generate random IV"];
        *a5 = v13 = 0;
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
      [v9 bytes];
      [v9 length];
      [v12 mutableBytes];
      [v8 bytes];
      v14 = [v8 length];
      v15 = [v12 mutableBytes] + 12;
      v21 = [v12 mutableBytes] + v11 + 12;
      v16 = CCCryptorGCMOneshotEncrypt();
      if (!v16)
      {
        v13 = v12;
        goto LABEL_13;
      }

      if (a5)
      {
        v17 = MEMORY[0x1E696AEC0];
        v18 = [MEMORY[0x1E696AD98] numberWithInt:{v16, v14, v15, v21, 16}];
        v19 = [v17 stringWithFormat:@"AES encryption failure (%@)", v18];

        *a5 = [LACError errorWithCode:-1000 debugDescription:v19];
      }
    }

    v13 = 0;
    goto LABEL_13;
  }

  if (a5)
  {
    [LACError errorWithCode:-1000 debugDescription:@"Invalid key size"];
    *a5 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_14:

  return v13;
}

- (id)aesGCMDecryptData:(id)a3 key:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (![(LACCryptoHelper *)self _aesGCMKeyHasValidSize:v9])
  {
    if (a5)
    {
      v11 = @"Invalid key size";
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v10 = [v8 length];
  if (v10 <= 0x1B)
  {
    if (a5)
    {
      v11 = @"Invalid cipher text length";
LABEL_7:
      [LACError errorWithCode:-1000 debugDescription:v11];
      *a5 = v12 = 0;
      goto LABEL_15;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_15;
  }

  v13 = v10;
  v14 = v10 - 28;
  v15 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v10 - 28];
  [v9 bytes];
  [v9 length];
  [v8 bytes];
  [v8 bytes];
  v16 = [v15 mutableBytes];
  v23 = [v8 bytes] + v13 - 16;
  v22 = v14;
  v17 = CCCryptorGCMOneshotDecrypt();
  if (v17)
  {
    if (a5)
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = [MEMORY[0x1E696AD98] numberWithInt:{v17, v22, v16, v23, 16}];
      v20 = [v18 stringWithFormat:@"AES decryption failure (%@)", v19];

      *a5 = [LACError errorWithCode:-1000 debugDescription:v20];
    }

    v12 = 0;
  }

  else
  {
    v12 = v15;
  }

LABEL_15:

  return v12;
}

@end