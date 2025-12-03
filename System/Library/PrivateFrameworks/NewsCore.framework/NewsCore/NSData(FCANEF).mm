@interface NSData(FCANEF)
- (id)fc_anefDecryptWithKey:()FCANEF;
- (id)fc_anefEncryptWithKey:()FCANEF;
@end

@implementation NSData(FCANEF)

- (id)fc_anefEncryptWithKey:()FCANEF
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([self fc_anefKeyIsValid:v4])
  {
    v5 = [MEMORY[0x1E695DF88] dataWithLength:{objc_msgSend(self, "length") + 28}];
    v6 = [MEMORY[0x1E695DEF0] fc_randomDataWithLength:12];
    mutableBytes = [v5 mutableBytes];
    bytes = [v6 bytes];
    v9 = *(bytes + 8);
    *mutableBytes = *bytes;
    *(mutableBytes + 8) = v9;
    [v4 bytes];
    [v4 length];
    [v6 bytes];
    [self bytes];
    v10 = [self length];
    v17 = [v5 mutableBytes] + 12;
    v11 = CCCryptorGCMOneshotEncrypt();
    mutableBytes2 = [v5 mutableBytes];
    v13 = [self length];
    *(mutableBytes2 + v13 + 12) = v23;
    if (v11)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __40__NSData_FCANEF__fc_anefEncryptWithKey___block_invoke_2;
      v18[3] = &unk_1E7C41578;
      v20 = v11;
      v18[4] = self;
      v19 = v4;
      v14 = __40__NSData_FCANEF__fc_anefEncryptWithKey___block_invoke_2(v18);
    }

    else
    {
      v14 = v5;
    }
  }

  else
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __40__NSData_FCANEF__fc_anefEncryptWithKey___block_invoke;
    v21[3] = &unk_1E7C397D0;
    v21[4] = self;
    v22 = v4;
    v14 = __40__NSData_FCANEF__fc_anefEncryptWithKey___block_invoke(v21);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)fc_anefDecryptWithKey:()FCANEF
{
  v4 = a3;
  if ([self fc_anefKeyIsValid:v4])
  {
    if ([self length] < 0x1D)
    {
      v7 = 0;
    }

    else
    {
      [self bytes];
      [self bytes];
      [self length];
      v5 = [MEMORY[0x1E695DF88] dataWithLength:{objc_msgSend(self, "length") - 28}];
      [v4 bytes];
      [v4 length];
      [self bytes];
      [self length];
      [v5 mutableBytes];
      v6 = CCCryptorGCMOneshotDecrypt();
      if (v6)
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __40__NSData_FCANEF__fc_anefDecryptWithKey___block_invoke_2;
        v9[3] = &unk_1E7C41578;
        v11 = v6;
        v9[4] = self;
        v10 = v4;
        v7 = __40__NSData_FCANEF__fc_anefDecryptWithKey___block_invoke_2(v9);
      }

      else
      {
        v7 = v5;
      }
    }
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __40__NSData_FCANEF__fc_anefDecryptWithKey___block_invoke;
    v12[3] = &unk_1E7C397D0;
    v12[4] = self;
    v13 = v4;
    v7 = __40__NSData_FCANEF__fc_anefDecryptWithKey___block_invoke(v12);
  }

  return v7;
}

@end