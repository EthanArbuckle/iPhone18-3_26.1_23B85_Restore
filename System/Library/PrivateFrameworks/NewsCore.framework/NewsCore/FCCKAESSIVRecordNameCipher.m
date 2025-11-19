@interface FCCKAESSIVRecordNameCipher
- (id)_derivedKeyFromKey:(id)a3;
- (id)_encryptionSalt;
- (id)decryptRecordName:(id)a3 withKey:(id)a4;
- (id)encryptRecordName:(id)a3 withKey:(id)a4;
@end

@implementation FCCKAESSIVRecordNameCipher

- (id)encryptRecordName:(id)a3 withKey:(id)a4
{
  v6 = a3;
  v7 = 0;
  if (v6 && a4)
  {
    v8 = [(FCCKAESSIVRecordNameCipher *)self _derivedKeyFromKey:a4];
    if (v8)
    {
      v9 = [(FCCKAESSIVRecordNameCipher *)self _encryptionSalt];
      v10 = [v6 dataUsingEncoding:4];
      v11 = [v10 fc_encryptAESSIVWithKey:v8 additionalData:v9];
      v12 = v11;
      if (v11)
      {
        v7 = [v11 base64EncodedStringWithOptions:0];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)decryptRecordName:(id)a3 withKey:(id)a4
{
  v6 = a3;
  v7 = 0;
  if (v6 && a4)
  {
    v8 = [(FCCKAESSIVRecordNameCipher *)self _derivedKeyFromKey:a4];
    if (v8)
    {
      v9 = [(FCCKAESSIVRecordNameCipher *)self _encryptionSalt];
      v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
      v11 = [v10 fc_decryptAESSIVWithKey:v8 additionalData:v9];
      if (v11)
      {
        v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v11 encoding:4];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_derivedKeyFromKey:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF88];
  v4 = a3;
  v5 = [v3 dataWithLength:64];
  ccsha512_di();
  [v4 length];
  [v4 bytes];

  [v5 length];
  [v5 mutableBytes];
  if (cchkdf())
  {

    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_encryptionSalt
{
  if (qword_1EDB27068 != -1)
  {
    dispatch_once(&qword_1EDB27068, &__block_literal_global_35);
  }

  v3 = _MergedGlobals_145;

  return v3;
}

void __45__FCCKAESSIVRecordNameCipher__encryptionSalt__block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = xmmword_1B681A720;
  v0 = [MEMORY[0x1E695DEF0] dataWithBytes:&v3 length:16];
  v1 = _MergedGlobals_145;
  _MergedGlobals_145 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

@end