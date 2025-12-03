@interface FCCKAESSIVRecordNameCipher
- (id)_derivedKeyFromKey:(id)key;
- (id)_encryptionSalt;
- (id)decryptRecordName:(id)name withKey:(id)key;
- (id)encryptRecordName:(id)name withKey:(id)key;
@end

@implementation FCCKAESSIVRecordNameCipher

- (id)encryptRecordName:(id)name withKey:(id)key
{
  nameCopy = name;
  v7 = 0;
  if (nameCopy && key)
  {
    v8 = [(FCCKAESSIVRecordNameCipher *)self _derivedKeyFromKey:key];
    if (v8)
    {
      _encryptionSalt = [(FCCKAESSIVRecordNameCipher *)self _encryptionSalt];
      v10 = [nameCopy dataUsingEncoding:4];
      v11 = [v10 fc_encryptAESSIVWithKey:v8 additionalData:_encryptionSalt];
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

- (id)decryptRecordName:(id)name withKey:(id)key
{
  nameCopy = name;
  v7 = 0;
  if (nameCopy && key)
  {
    v8 = [(FCCKAESSIVRecordNameCipher *)self _derivedKeyFromKey:key];
    if (v8)
    {
      _encryptionSalt = [(FCCKAESSIVRecordNameCipher *)self _encryptionSalt];
      v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:nameCopy options:0];
      v11 = [v10 fc_decryptAESSIVWithKey:v8 additionalData:_encryptionSalt];
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

- (id)_derivedKeyFromKey:(id)key
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF88];
  keyCopy = key;
  v5 = [v3 dataWithLength:64];
  ccsha512_di();
  [keyCopy length];
  [keyCopy bytes];

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