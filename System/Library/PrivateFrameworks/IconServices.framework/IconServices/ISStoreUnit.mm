@interface ISStoreUnit
+ (id)storeUnitWithData:(id)data;
+ (id)storeUnitWithStoreURL:(id)l UUID:(id)d;
- (BOOL)isValid;
- (ISStoreUnit)initWithData:(id)data UUID:(id)d;
- (void)remapWithStoreURL:(id)l;
@end

@implementation ISStoreUnit

+ (id)storeUnitWithStoreURL:(id)l UUID:(id)d
{
  dCopy = d;
  lCopy = l;
  uUIDString = [dCopy UUIDString];
  v8 = [lCopy URLByAppendingPathComponent:uUIDString isDirectory:0];

  v9 = [v8 URLByAppendingPathExtension:@"isdata"];
  path = [v9 path];

  v11 = open([path UTF8String], 0, 256);
  if (v11 == -1)
  {
    v15 = _ISDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      +[ISStoreUnit storeUnitWithStoreURL:UUID:];
    }

    v16 = 0;
  }

  else
  {
    v12 = v11;
    v13 = lseek(v11, 0, 2);
    if (v13)
    {
      v14 = mmap(0, v13, 1, 1, v12, 0);
      if (v14 == -1)
      {
        v13 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    close(v12);
    v16 = 0;
    if (v14 && v13)
    {
      v17 = objc_alloc(MEMORY[0x1E695DEF0]);
      v18 = [v17 initWithBytesNoCopy:v14 length:v13 deallocator:*MEMORY[0x1E696A268]];
      v16 = [[ISStoreUnit alloc] initWithData:v18 UUID:dCopy];
    }
  }

  return v16;
}

+ (id)storeUnitWithData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy length];
  if (!v4)
  {
    v9 = _ISDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [ISStoreUnit storeUnitWithData:v9];
    }

    goto LABEL_8;
  }

  v5 = v4;
  v6 = (v4 + *MEMORY[0x1E69E9AC8] + 7) & -*MEMORY[0x1E69E9AC8];
  v7 = mmap(0, v6, 3, 4097, 1224736768, 0);
  if (!v7)
  {
LABEL_9:
    v10 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_10;
  }

  v8 = v7;
  if (v7 == -1)
  {
    v9 = _ISDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [ISStoreUnit storeUnitWithData:v9];
    }

LABEL_8:

    goto LABEL_9;
  }

  v15 = objc_alloc(MEMORY[0x1E695DEF0]);
  v10 = [v15 initWithBytesNoCopy:v8 length:v5 deallocator:*MEMORY[0x1E696A268]];
  bytes = [v10 bytes];
  bytes2 = [dataCopy bytes];
  v18 = [v10 length];
  if (v5 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v5;
  }

  memcpy(bytes, bytes2, v19);
  *&v8[v6 - 8] = v5;
  v20 = [MEMORY[0x1E696AFB0] _IF_UUIDWithBytes:v8 size:v5];
  v21 = MEMORY[0x1E696AEC0];
  v22 = +[ISDefaults sharedInstance];
  cacheSaltString = [v22 cacheSaltString];
  v24 = [v21 stringWithFormat:@"%@-%@", v20, cacheSaltString];

  v11 = [MEMORY[0x1E696AFB0] _IF_UUIDWithString:v24];

  v12 = 0;
  if (v10 && v11)
  {
    v12 = [[ISStoreUnit alloc] initWithData:v10 UUID:v11];
  }

LABEL_10:
  v13 = v12;

  return v12;
}

- (ISStoreUnit)initWithData:(id)data UUID:(id)d
{
  dataCopy = data;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = ISStoreUnit;
  v9 = [(ISStoreUnit *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_data, data);
    objc_storeStrong(&v10->_UUID, d);
  }

  return v10;
}

- (BOOL)isValid
{
  v3 = [(NSData *)self->_data length];
  if (v3)
  {
    LOBYTE(v3) = self->_UUID != 0;
  }

  return v3;
}

- (void)remapWithStoreURL:(id)l
{
  lCopy = l;
  if ([(ISStoreUnit *)self isValid])
  {
    path = [lCopy path];
    uUIDString = [(NSUUID *)self->_UUID UUIDString];
    v7 = [path stringByAppendingPathComponent:uUIDString];
    v8 = [v7 stringByAppendingPathExtension:@"isdata"];

    v9 = open([v8 UTF8String], 0, 256);
    if (v9 == -1)
    {
      v15 = _ISDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        +[ISStoreUnit storeUnitWithStoreURL:UUID:];
      }
    }

    else
    {
      v10 = v9;
      bytes = [(NSData *)self->_data bytes];
      v12 = lseek(v10, 0, 2);
      if (v12 && (v13 = v12, v12 == [(NSData *)self->_data length]))
      {
        mmap(bytes, v13, 1, 17, v10, 0);
      }

      else
      {
        v14 = _ISDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [(ISStoreUnit *)v8 remapWithStoreURL:v14];
        }
      }

      close(v10);
    }
  }
}

+ (void)storeUnitWithStoreURL:UUID:.cold.1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_7(&dword_1A77B8000, v1, v2, "Failed to open cache file for mapping at path: %@ error: %d", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)storeUnitWithData:(NSObject *)a1 .cold.1(NSObject *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_fault_impl(&dword_1A77B8000, a1, OS_LOG_TYPE_FAULT, "Could not mmap(...), error: %d\n", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)remapWithStoreURL:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_DEBUG, "Failed remap store entry with path: %@ due to data size mismatch.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end