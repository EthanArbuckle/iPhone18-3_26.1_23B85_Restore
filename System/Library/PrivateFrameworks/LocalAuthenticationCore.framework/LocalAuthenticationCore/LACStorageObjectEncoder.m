@interface LACStorageObjectEncoder
- (id)_lastBioAuthDataToNumber:(id)a3;
- (id)encodeValue:(id)a3 forKey:(int64_t)a4 error:(id *)a5;
@end

@implementation LACStorageObjectEncoder

- (id)encodeValue:(id)a3 forKey:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = v8;
  if (a5)
  {
    *a5 = 0;
  }

  if (!v8)
  {
    goto LABEL_27;
  }

  if (a4 == 24 && [v8 length] >= 3)
  {
    v10 = [v9 bytes];
    v11 = [(LACStorageObjectEncoder *)self _convertACMExclaveBatchToDictionary:*v10 | (*(v10 + 2) << 16)];
LABEL_14:
    v15 = v11;
    goto LABEL_28;
  }

  if (([(objc_class *)[LACSecureStorage classForKey:?], "isEqual:", objc_opt_class()]& 1) == 0)
  {
    v11 = v9;
    goto LABEL_14;
  }

  if (a4 > 13)
  {
    if (a4 == 14)
    {
      v11 = [(LACStorageObjectEncoder *)self _lastBioAuthDataToNumber:v9];
      goto LABEL_14;
    }

    if (a4 != 1001)
    {
LABEL_19:
      if ([v9 length] == 1)
      {
        v11 = [MEMORY[0x1E696AD98] numberWithBool:{*objc_msgSend(v9, "bytes")}];
        goto LABEL_14;
      }

      if (a5)
      {
        v16 = @"Expected BOOL in NSNumber";
        goto LABEL_26;
      }

      goto LABEL_27;
    }
  }

  else if (a4 != 7)
  {
    if (a4 == 12)
    {
      v12 = [(LACStorageObjectEncoder *)self _lastBioAuthDataToNumber:v9];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 integerValue] < 0x5265C01;
        v15 = [MEMORY[0x1E696AD98] numberWithBool:v14];
      }

      else
      {
        v15 = MEMORY[0x1E695E110];
      }

      goto LABEL_28;
    }

    goto LABEL_19;
  }

  if ([v9 length] == 1)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithChar:{*objc_msgSend(v9, "bytes")}];
    goto LABEL_14;
  }

  if (a5)
  {
    v16 = @"Expected 1 byte in NSNumber";
LABEL_26:
    [LACStorageError errorWithCode:1 debugDescription:v16];
    *a5 = v15 = 0;
    goto LABEL_28;
  }

LABEL_27:
  v15 = 0;
LABEL_28:

  return v15;
}

- (id)_lastBioAuthDataToNumber:(id)a3
{
  if (*[a3 bytes])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end