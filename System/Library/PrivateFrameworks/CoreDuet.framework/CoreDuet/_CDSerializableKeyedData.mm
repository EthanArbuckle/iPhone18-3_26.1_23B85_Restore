@interface _CDSerializableKeyedData
+ (_CDSerializableKeyedData)keyedDataDeserializedFrom:(unint64_t)from maxSize:;
+ (id)dataDeseralizedFrom:(void *)from maxSize:(unint64_t)size checksum:(char *)checksum bytesRead:(unint64_t *)read;
+ (id)errorForInvalidKeyEncoding;
+ (unsigned)byteChecksumOfData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)setData:(uint64_t)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initWithKey:(void *)key data:(void *)data error:;
- (unint64_t)serializeData:(id)data withChecksum:(unsigned __int8)checksum to:(void *)to;
- (unint64_t)serializeTo:(unint64_t)to maxSize:(char *)size success:;
@end

@implementation _CDSerializableKeyedData

+ (_CDSerializableKeyedData)keyedDataDeserializedFrom:(unint64_t)from maxSize:
{
  v5 = objc_opt_self();
  if (from >= 0x12)
  {
    v7 = v5;
    v15 = 0;
    v14 = 0;
    v8 = [v5 dataDeseralizedFrom:a2 maxSize:from checksum:&v15 bytesRead:&v14];
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v8 encoding:4];
      if (v9)
      {
        v13 = 0;
        v12 = 0;
        v10 = [v7 dataDeseralizedFrom:a2 + v14 maxSize:from - v14 checksum:&v13 bytesRead:&v12];
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

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_CDSerializableKeyedData *)equalCopy isEqual:&v7];
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (unsigned)byteChecksumOfData:(id)data
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v5 = [dataCopy length];
  for (i = 0; v5; --v5)
  {
    v7 = *bytes++;
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

- (unint64_t)serializeData:(id)data withChecksum:(unsigned __int8)checksum to:(void *)to
{
  dataCopy = data;
  v8 = [dataCopy length];
  *to = v8;
  bytes = [dataCopy bytes];

  memcpy(to + 8, bytes, v8);
  *(to + v8 + 8) = checksum;
  return v8 + 9;
}

+ (id)dataDeseralizedFrom:(void *)from maxSize:(unint64_t)size checksum:(char *)checksum bytesRead:(unint64_t *)read
{
  *read = 0;
  v8 = *from;
  v9 = *from + 8;
  if (v9 <= size)
  {
    v10 = [MEMORY[0x1E695DEF0] dataWithBytes:from + 8 length:v8];
    v14 = v8 + 9;
    if (v14 <= size)
    {
      v16 = *(from + v9);
      if (v16 == [self byteChecksumOfData:v10])
      {
        *read = v14;
        *checksum = v16;
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

- (unint64_t)serializeTo:(unint64_t)to maxSize:(char *)size success:
{
  v22 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v9 = 0;
    goto LABEL_12;
  }

  if (*(self + 18) == 1)
  {
    *(self + 17) = [objc_opt_class() byteChecksumOfData:*(self + 32)];
  }

  v8 = [*(self + 8) length];
  v9 = v8 + [*(self + 32) length] + 18;
  if (v9 <= to)
  {
    v12 = [self serializeData:*(self + 8) withChecksum:*(self + 16) to:a2];
    v9 = [self serializeData:*(self + 32) withChecksum:*(self + 17) to:a2 + v12] + v12;
    if (size)
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
      v15 = *(self + 24);
      v16 = 138543874;
      v17 = v15;
      v18 = 1024;
      toCopy = to;
      v20 = 1024;
      v21 = v9;
      _os_log_error_impl(&dword_191750000, v10, OS_LOG_TYPE_ERROR, "Data for key %{public}@ does not fit in %d bytes (it is %d)", &v16, 0x18u);
    }

    if (size)
    {
      v11 = 0;
LABEL_11:
      *size = v11;
    }
  }

LABEL_12:
  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)setData:(uint64_t)data
{
  v4 = a2;
  if (data)
  {
    *(data + 18) = 1;
    objc_storeStrong((data + 32), a2);
  }

  return data != 0;
}

- (id)initWithKey:(void *)key data:(void *)data error:
{
  v8 = a2;
  keyCopy = key;
  if (!self)
  {
    goto LABEL_9;
  }

  v15.receiver = self;
  v15.super_class = _CDSerializableKeyedData;
  v10 = objc_msgSendSuper2(&v15, sel_init);
  self = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 4, key);
    *(self + 17) = 256;
    objc_storeStrong(self + 3, a2);
    v11 = [v8 dataUsingEncoding:4 allowLossyConversion:0];
    v12 = self[1];
    self[1] = v11;

    if (self[1])
    {
      *(self + 16) = [objc_opt_class() byteChecksumOfData:self[1]];
      goto LABEL_5;
    }

    if (data)
    {
      [objc_opt_class() errorForInvalidKeyEncoding];
      *data = selfCopy = 0;
      goto LABEL_6;
    }

LABEL_9:
    selfCopy = 0;
    goto LABEL_6;
  }

LABEL_5:
  self = self;
  selfCopy = self;
LABEL_6:

  return selfCopy;
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