@interface ISStore
- (BOOL)removeUnitForUUID:(id)a3;
- (BOOL)writeStoreUnit:(id)a3;
- (ISStore)initWithURL:(id)a3;
- (id)addUnitWithData:(id)a3;
- (id)unitForUUID:(id)a3;
@end

@implementation ISStore

- (ISStore)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ISStore;
  v6 = [(ISStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeURL, a3);
  }

  return v7;
}

- (id)unitForUUID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_registryLock);
    v5 = [(NSMutableDictionary *)self->_registry objectForKey:v4];
    os_unfair_lock_unlock(&self->_registryLock);
    if (!v5)
    {
      v6 = [(ISStore *)self storeURL];
      v5 = [ISStoreUnit storeUnitWithStoreURL:v6 UUID:v4];

      if (v5)
      {
        os_unfair_lock_lock(&self->_registryLock);
        [(NSMutableDictionary *)self->_registry setObject:v5 forKey:v4];
        os_unfair_lock_unlock(&self->_registryLock);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)writeStoreUnit:(id)a3
{
  v44[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 data];
  v6 = [v4 UUID];

  if ([v5 length])
  {
    v7 = [(NSURL *)self->_storeURL path];
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = *MEMORY[0x1E696A370];
    v43 = *MEMORY[0x1E696A370];
    v44[0] = &unk_1F1A652C8;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    v34 = 0;
    v11 = [v8 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:v10 error:&v34];
    v12 = v34;

    if ((v11 & 1) == 0)
    {
      v16 = _ISDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [ISStore writeStoreUnit:];
      }

      v26 = 0;
      goto LABEL_23;
    }

    v13 = MEMORY[0x1E696AEC0];
    v14 = [v6 UUIDString];
    v15 = [v13 stringWithFormat:@"%@.%s", v14, "isdata"];
    v16 = [v7 stringByAppendingPathComponent:v15];

    v17 = [v16 stringByAppendingPathExtension:@"tmp"];
    v33 = v12;
    v18 = [v5 writeToFile:v17 options:0x10000000 error:&v33];
    v19 = v33;

    if (v18)
    {
      v20 = [MEMORY[0x1E696AC08] defaultManager];
      v41 = v9;
      v42 = &unk_1F1A652E0;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v32 = v19;
      v22 = [v20 setAttributes:v21 ofItemAtPath:v17 error:&v32];
      v23 = v32;

      if (v22)
      {
        v24 = [MEMORY[0x1E696AC08] defaultManager];
        v31 = v23;
        v25 = [v24 moveItemAtPath:v17 toPath:v16 error:&v31];
        v19 = v31;

        if (v25)
        {
          v26 = 1;
LABEL_22:

          v12 = v19;
LABEL_23:

          goto LABEL_24;
        }

        v28 = _ISDefaultLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412802;
          v36 = v17;
          v37 = 2112;
          v38 = v16;
          v39 = 2112;
          v40 = v19;
          _os_log_fault_impl(&dword_1A77B8000, v28, OS_LOG_TYPE_FAULT, "Failed to move temp file %@ to %@ with error: %@", buf, 0x20u);
        }

        v27 = [MEMORY[0x1E696AC08] defaultManager];
        [v27 removeItemAtPath:v17 error:0];
      }

      else
      {
        v27 = _ISDefaultLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          [ISStore writeStoreUnit:];
        }

        v19 = v23;
      }
    }

    else
    {
      v27 = _ISDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        [ISStore writeStoreUnit:];
      }
    }

    v26 = 0;
    goto LABEL_22;
  }

  v7 = _ISDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    [ISStore writeStoreUnit:v7];
  }

  v26 = 0;
LABEL_24:

  v29 = *MEMORY[0x1E69E9840];
  return v26;
}

- (id)addUnitWithData:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [ISStoreUnit storeUnitWithData:a3];
  if ([v4 isValid])
  {
    v5 = [v4 UUID];
    v6 = [(ISStore *)self unitForUUID:v5];

    if ([v6 isValid])
    {
      v7 = v6;
    }

    else
    {
      v10 = _ISDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v4 UUID];
        v12 = [v11 UUIDString];
        v14 = 138412290;
        v15 = v12;
        _os_log_impl(&dword_1A77B8000, v10, OS_LOG_TYPE_INFO, "ADDING_NEW_STORE_ENTRY with UUID: %@", &v14, 0xCu);
      }

      v7 = v4;
      if ([(ISStore *)self writeStoreUnit:v7])
      {
        v13 = [(ISStore *)self storeURL];
        [v7 remapWithStoreURL:v13];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)removeUnitForUUID:(id)a3
{
  v4 = a3;
  v5 = [(NSURL *)self->_storeURL path];
  v6 = MEMORY[0x1E696AEC0];
  v7 = [v4 UUIDString];
  v8 = [v6 stringWithFormat:@"%@.%s", v7, "isdata"];
  v9 = [v5 stringByAppendingPathComponent:v8];

  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v15 = 0;
  v11 = [v10 removeItemAtPath:v9 error:&v15];
  v12 = v15;

  if ((v11 & 1) == 0 && [v12 code] != 4)
  {
    v13 = _ISDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ISStore *)v4 removeUnitForUUID:v12, v13];
    }
  }

  return v11;
}

- (void)writeStoreUnit:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_4(&dword_1A77B8000, v0, v1, "Error creating cache folder at path: %@. Error: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)writeStoreUnit:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_4(&dword_1A77B8000, v0, v1, "Error writing to data to file at path: %@. Error: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)writeStoreUnit:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_4(&dword_1A77B8000, v0, v1, "Error setting permissions on file at path: %@. Error: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)removeUnitForUUID:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [a1 UUIDString];
  OUTLINED_FUNCTION_0_4();
  v8 = a2;
  _os_log_error_impl(&dword_1A77B8000, a3, OS_LOG_TYPE_ERROR, "Failed to remove store entry for UUID: %@ with error: %@", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end