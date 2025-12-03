@interface NSObject(Protobuf)
+ (id)fromPBCodable:()Protobuf;
- (_DKPRValue)toPBCodable;
@end

@implementation NSObject(Protobuf)

- (_DKPRValue)toPBCodable
{
  v2 = objc_alloc_init(_DKPRValue);
  v3 = objc_alloc_init(_DKPRValueType);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_DKPRValueType *)v3 setType:?];
      [(_DKPRValue *)v2 setStringValue:self];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(_DKPRValueType *)v3 setType:?];
        [self timeIntervalSinceReferenceDate];
        [(_DKPRValue *)v2 setDateValue:v4];
      }

      else
      {
        [(_DKPRValueType *)v3 setType:?];
        v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self];
        [(_DKPRValue *)v2 setBlobValue:v6];
      }
    }

    goto LABEL_13;
  }

  if (!CFNumberIsFloatType(self))
  {
    valuePtr = 0;
    if (CFNumberGetValue(self, kCFNumberSInt64Type, &valuePtr))
    {
      [(_DKPRValueType *)v3 setType:?];
      [(_DKPRValue *)v2 setIntegerValue:?];
      goto LABEL_13;
    }

LABEL_11:
    v5 = 0;
    goto LABEL_14;
  }

  valuePtr = 0;
  if (!CFNumberGetValue(self, kCFNumberDoubleType, &valuePtr))
  {
    goto LABEL_11;
  }

  [(_DKPRValueType *)v3 setType:?];
  [(_DKPRValue *)v2 setDoubleValue:?];
LABEL_13:
  [(_DKPRValue *)v2 setType:v3];
  v5 = v2;
LABEL_14:

  return v5;
}

+ (id)fromPBCodable:()Protobuf
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0;
    goto LABEL_19;
  }

  v4 = v3;
  type = [(_DKPRValue *)v4 type];
  v5Type = [(_DKPRValueType *)type type];

  v7 = 0;
  if (v5Type <= 1)
  {
    if (!v5Type)
    {
      stringValue = [MEMORY[0x1E696AD98] numberWithLongLong:-[_DKPRValue integerValue](v4)];
      goto LABEL_17;
    }

    if (v5Type == 1)
    {
      stringValue = [MEMORY[0x1E696AD98] numberWithDouble:-[_DKPRValue doubleValue](v4)];
      goto LABEL_17;
    }
  }

  else
  {
    switch(v5Type)
    {
      case 2:
        stringValue = [(_DKPRValue *)v4 stringValue];
        goto LABEL_17;
      case 3:
        v24 = MEMORY[0x1E695DFD8];
        v23 = objc_opt_class();
        v9 = objc_opt_class();
        v10 = objc_opt_class();
        v11 = objc_opt_class();
        v12 = objc_opt_class();
        v13 = objc_opt_class();
        v14 = objc_opt_class();
        v15 = objc_opt_class();
        v16 = objc_opt_class();
        v17 = [v24 setWithObjects:{v23, v9, v10, v11, v12, v13, v14, v15, v16, objc_opt_class(), 0}];
        v18 = MEMORY[0x1E696ACD0];
        blobValue = [(_DKPRValue *)v4 blobValue];
        v25 = 0;
        v20 = [v18 unarchivedObjectOfClasses:v17 fromData:blobValue error:&v25];
        v21 = v25;

        if (v21)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [NSObject(Protobuf) fromPBCodable:v21];
          }

          v7 = 0;
        }

        else
        {
          v7 = v20;
        }

        break;
      case 4:
        stringValue = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:-[_DKPRValue dateValue](v4)];
LABEL_17:
        v7 = stringValue;
        break;
    }
  }

LABEL_19:

  return v7;
}

+ (void)fromPBCodable:()Protobuf .cold.1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error unarchiving object %@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end