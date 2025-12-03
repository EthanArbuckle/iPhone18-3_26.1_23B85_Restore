@interface LACCryptoHelper
- (id)aesGCMDecryptData:(id)data key:(id)key error:(id *)error;
- (id)aesGCMEncryptData:(id)data key:(id)key error:(id *)error;
- (id)aesGCMKeyWithPassword:(id)password salt:(id)salt iterations:(unsigned int)iterations error:(id *)error;
- (id)randomDataWithSize:(unint64_t)size error:(id *)error;
@end

@implementation LACCryptoHelper

- (id)randomDataWithSize:(unint64_t)size error:(id *)error
{
  v6 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:size];
  if (SecRandomCopyBytes(*MEMORY[0x1E697B308], size, [v6 mutableBytes]))
  {
    if (error)
    {
      [LACError errorWithCode:-1000 debugDescription:@"Could not generate random data"];
      *error = v7 = 0;
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

- (id)aesGCMKeyWithPassword:(id)password salt:(id)salt iterations:(unsigned int)iterations error:(id *)error
{
  v8 = MEMORY[0x1E695DF88];
  saltCopy = salt;
  passwordCopy = password;
  v11 = [v8 dataWithLength:32];
  bytes = [passwordCopy bytes];
  v13 = [passwordCopy length];

  bytes2 = [saltCopy bytes];
  v15 = [saltCopy length];

  if (CCKeyDerivationPBKDF(2u, bytes, v13, bytes2, v15, 3u, iterations, [v11 mutableBytes], objc_msgSend(v11, "length")))
  {
    v16 = 0;
  }

  else
  {
    v16 = v11;
  }

  return v16;
}

- (id)aesGCMEncryptData:(id)data key:(id)key error:(id *)error
{
  dataCopy = data;
  keyCopy = key;
  if ([(LACCryptoHelper *)self _aesGCMKeyHasValidSize:keyCopy])
  {
    v10 = [dataCopy length];
    v11 = [dataCopy length];
    v12 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v10 + 28];
    if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 0xCuLL, [v12 mutableBytes]))
    {
      if (error)
      {
        [LACError errorWithCode:-1000 debugDescription:@"Could not generate random IV"];
        *error = v13 = 0;
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
      [keyCopy bytes];
      [keyCopy length];
      [v12 mutableBytes];
      [dataCopy bytes];
      v14 = [dataCopy length];
      v15 = [v12 mutableBytes] + 12;
      v21 = [v12 mutableBytes] + v11 + 12;
      v16 = CCCryptorGCMOneshotEncrypt();
      if (!v16)
      {
        v13 = v12;
        goto LABEL_13;
      }

      if (error)
      {
        v17 = MEMORY[0x1E696AEC0];
        v18 = [MEMORY[0x1E696AD98] numberWithInt:{v16, v14, v15, v21, 16}];
        v19 = [v17 stringWithFormat:@"AES encryption failure (%@)", v18];

        *error = [LACError errorWithCode:-1000 debugDescription:v19];
      }
    }

    v13 = 0;
    goto LABEL_13;
  }

  if (error)
  {
    [LACError errorWithCode:-1000 debugDescription:@"Invalid key size"];
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_14:

  return v13;
}

- (id)aesGCMDecryptData:(id)data key:(id)key error:(id *)error
{
  dataCopy = data;
  keyCopy = key;
  if (![(LACCryptoHelper *)self _aesGCMKeyHasValidSize:keyCopy])
  {
    if (error)
    {
      v11 = @"Invalid key size";
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v10 = [dataCopy length];
  if (v10 <= 0x1B)
  {
    if (error)
    {
      v11 = @"Invalid cipher text length";
LABEL_7:
      [LACError errorWithCode:-1000 debugDescription:v11];
      *error = v12 = 0;
      goto LABEL_15;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_15;
  }

  v13 = v10;
  v14 = v10 - 28;
  v15 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v10 - 28];
  [keyCopy bytes];
  [keyCopy length];
  [dataCopy bytes];
  [dataCopy bytes];
  mutableBytes = [v15 mutableBytes];
  v23 = [dataCopy bytes] + v13 - 16;
  v22 = v14;
  v17 = CCCryptorGCMOneshotDecrypt();
  if (v17)
  {
    if (error)
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = [MEMORY[0x1E696AD98] numberWithInt:{v17, v22, mutableBytes, v23, 16}];
      v20 = [v18 stringWithFormat:@"AES decryption failure (%@)", v19];

      *error = [LACError errorWithCode:-1000 debugDescription:v20];
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