@interface _CDSerializableKeyedData
+ (_CDSerializableKeyedData)keyedDataDeserializedFrom:(unint64_t)a3 maxSize:;
+ (id)dataDeseralizedFrom:(void *)a3 maxSize:(unint64_t)a4 checksum:(char *)a5 bytesRead:(unint64_t *)a6;
+ (id)errorForInvalidKeyEncoding;
+ (unsigned)byteChecksumOfData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)setData:(uint64_t)a1;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initWithKey:(void *)a3 data:(void *)a4 error:;
- (unint64_t)serializeData:(id)a3 withChecksum:(unsigned __int8)a4 to:(void *)a5;
- (unint64_t)serializeTo:(unint64_t)a3 maxSize:(char *)a4 success:;
@end

@implementation _CDSerializableKeyedData

+ (_CDSerializableKeyedData)keyedDataDeserializedFrom:(unint64_t)a3 maxSize:
{
  v5 = objc_opt_self();
  if (a3 >= 0x12)
  {
    v7 = v5;
    v15 = 0;
    v14 = 0;
    v8 = [v5 dataDeseralizedFrom:a2 maxSize:a3 checksum:&v15 bytesRead:&v14];
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v8 encoding:4];
      if (v9)
      {
        v13 = 0;
        v12 = 0;
        v10 = [v7 dataDeseralizedFrom:a2 + v14 maxSize:a3 - v14 checksum:&v13 bytesRead:&v12];
        if (v10)
        {
          v6 = objc_alloc_init(_CDSerializableKeyedData);
          objc_storeStrong(&v6->_key, v9);
          objc_storeStrong(&v6->_encodedKey, v8);
          v6->_keyChecksum = v15;
          objc_storeStrong(&v6->_data, v10);
          v6->_dataChecksum = v13;
          v6->_dataChecksumNeedsUpdate = 0;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v4 + 4, self->_data);
  *(v4 + 17) = self->_dataChecksum;
  *(v4 + 18) = self->_dataChecksumNeedsUpdate;
  objc_storeStrong(v4 + 3, self->_key);
  objc_storeStrong(v4 + 1, self->_encodedKey);
  *(v4 + 16) = self->_keyChecksum;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CDSerializableKeyedData *)v4 isEqual:&v7];
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (unsigned)byteChecksumOfData:(id)a3
{
  v3 = a3;
  v4 = [v3 bytes];
  v5 = [v3 length];
  for (i = 0; v5; --v5)
  {
    v7 = *v4++;
    i += v7;
  }

  return i;
}

+ (id)errorForInvalidKeyEncoding
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A588];
  v8[0] = @"Keys must allow NSUTF8Encoding";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 errorWithDomain:@"com.apple.coreduet.serializableKeyedData" code:0 userInfo:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (unint64_t)serializeData:(id)a3 withChecksum:(unsigned __int8)a4 to:(void *)a5
{
  v7 = a3;
  v8 = [v7 length];
  *a5 = v8;
  v9 = [v7 bytes];

  memcpy(a5 + 8, v9, v8);
  *(a5 + v8 + 8) = a4;
  return v8 + 9;
}

+ (id)dataDeseralizedFrom:(void *)a3 maxSize:(unint64_t)a4 checksum:(char *)a5 bytesRead:(unint64_t *)a6
{
  *a6 = 0;
  v8 = *a3;
  v9 = *a3 + 8;
  if (v9 <= a4)
  {
    v10 = [MEMORY[0x1E695DEF0] dataWithBytes:a3 + 8 length:v8];
    v14 = v8 + 9;
    if (v14 <= a4)
    {
      v16 = *(a3 + v9);
      if (v16 == [a1 byteChecksumOfData:v10])
      {
        *a6 = v14;
        *a5 = v16;
        v10 = v10;
        v17 = v10;
        goto LABEL_14;
      }

      v18 = [objc_opt_class() log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        +[_CDSerializableKeyedData dataDeseralizedFrom:maxSize:checksum:bytesRead:];
      }
    }

    else
    {
      v15 = [objc_opt_class() log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        +[_CDSerializableKeyedData dataDeseralizedFrom:maxSize:checksum:bytesRead:];
      }
    }
  }

  else
  {
    v10 = [objc_opt_class() log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[_CDSerializableKeyedData dataDeseralizedFrom:maxSize:checksum:bytesRead:];
    }
  }

  v17 = 0;
LABEL_14:

  return v17;
}

- (unint64_t)serializeTo:(unint64_t)a3 maxSize:(char *)a4 success:
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v9 = 0;
    goto LABEL_12;
  }

  if (*(a1 + 18) == 1)
  {
    *(a1 + 17) = [objc_opt_class() byteChecksumOfData:*(a1 + 32)];
  }

  v8 = [*(a1 + 8) length];
  v9 = v8 + [*(a1 + 32) length] + 18;
  if (v9 <= a3)
  {
    v12 = [a1 serializeData:*(a1 + 8) withChecksum:*(a1 + 16) to:a2];
    v9 = [a1 serializeData:*(a1 + 32) withChecksum:*(a1 + 17) to:a2 + v12] + v12;
    if (a4)
    {
      v11 = 1;
      goto LABEL_11;
    }
  }

  else
  {
    v10 = [objc_opt_class() log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 24);
      v16 = 138543874;
      v17 = v15;
      v18 = 1024;
      v19 = a3;
      v20 = 1024;
      v21 = v9;
      _os_log_error_impl(&dword_191750000, v10, OS_LOG_TYPE_ERROR, "Data for key %{public}@ does not fit in %d bytes (it is %d)", &v16, 0x18u);
    }

    if (a4)
    {
      v11 = 0;
LABEL_11:
      *a4 = v11;
    }
  }

LABEL_12:
  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)setData:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    *(a1 + 18) = 1;
    objc_storeStrong((a1 + 32), a2);
  }

  return a1 != 0;
}

- (id)initWithKey:(void *)a3 data:(void *)a4 error:
{
  v8 = a2;
  v9 = a3;
  if (!a1)
  {
    goto LABEL_9;
  }

  v15.receiver = a1;
  v15.super_class = _CDSerializableKeyedData;
  v10 = objc_msgSendSuper2(&v15, sel_init);
  a1 = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 4, a3);
    *(a1 + 17) = 256;
    objc_storeStrong(a1 + 3, a2);
    v11 = [v8 dataUsingEncoding:4 allowLossyConversion:0];
    v12 = a1[1];
    a1[1] = v11;

    if (a1[1])
    {
      *(a1 + 16) = [objc_opt_class() byteChecksumOfData:a1[1]];
      goto LABEL_5;
    }

    if (a4)
    {
      [objc_opt_class() errorForInvalidKeyEncoding];
      *a4 = v13 = 0;
      goto LABEL_6;
    }

LABEL_9:
    v13 = 0;
    goto LABEL_6;
  }

LABEL_5:
  a1 = a1;
  v13 = a1;
LABEL_6:

  return v13;
}

- (void)isEqual:(_BYTE *)a3 .cold.1(void *a1, void *a2, _BYTE *a3)
{
  self = a1;
  if (a2)
  {
    Property = objc_getProperty(a2, v5, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v8 = Property;
  if (self)
  {
    v9 = objc_getProperty(self, v7, 32, 1);
  }

  else
  {
    v9 = 0;
  }

  if ([v8 isEqual:v9])
  {
    if (a2)
    {
      v11 = objc_getProperty(a2, v10, 24, 1);
    }

    else
    {
      v11 = 0;
    }

    v13 = v11;
    if (self)
    {
      v14 = objc_getProperty(self, v12, 24, 1);
    }

    else
    {
      v14 = 0;
    }

    v15 = [v13 isEqualToString:v14];
  }

  else
  {
    v15 = 0;
  }

  *a3 = v15;
}

+ (void)dataDeseralizedFrom:maxSize:checksum:bytesRead:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)dataDeseralizedFrom:maxSize:checksum:bytesRead:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)dataDeseralizedFrom:maxSize:checksum:bytesRead:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

@end