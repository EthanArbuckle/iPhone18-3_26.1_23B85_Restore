@interface ISStore
- (BOOL)removeUnitForUUID:(id)d;
- (BOOL)writeStoreUnit:(id)unit;
- (ISStore)initWithURL:(id)l;
- (id)addUnitWithData:(id)data;
- (id)unitForUUID:(id)d;
@end

@implementation ISStore

- (ISStore)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = ISStore;
  v6 = [(ISStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeURL, l);
  }

  return v7;
}

- (id)unitForUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    os_unfair_lock_lock(&self->_registryLock);
    v5 = [(NSMutableDictionary *)self->_registry objectForKey:dCopy];
    os_unfair_lock_unlock(&self->_registryLock);
    if (!v5)
    {
      storeURL = [(ISStore *)self storeURL];
      v5 = [ISStoreUnit storeUnitWithStoreURL:storeURL UUID:dCopy];

      if (v5)
      {
        os_unfair_lock_lock(&self->_registryLock);
        [(NSMutableDictionary *)self->_registry setObject:v5 forKey:dCopy];
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

- (BOOL)writeStoreUnit:(id)unit
{
  v44[1] = *MEMORY[0x1E69E9840];
  unitCopy = unit;
  data = [unitCopy data];
  uUID = [unitCopy UUID];

  if ([data length])
  {
    path = [(NSURL *)self->_storeURL path];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v9 = *MEMORY[0x1E696A370];
    v43 = *MEMORY[0x1E696A370];
    v44[0] = &unk_1F1A652C8;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    v34 = 0;
    v11 = [defaultManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:v10 error:&v34];
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
    uUIDString = [uUID UUIDString];
    v15 = [v13 stringWithFormat:@"%@.%s", uUIDString, "isdata"];
    v16 = [path stringByAppendingPathComponent:v15];

    v17 = [v16 stringByAppendingPathExtension:@"tmp"];
    v33 = v12;
    v18 = [data writeToFile:v17 options:0x10000000 error:&v33];
    v19 = v33;

    if (v18)
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v41 = v9;
      v42 = &unk_1F1A652E0;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v32 = v19;
      v22 = [defaultManager2 setAttributes:v21 ofItemAtPath:v17 error:&v32];
      v23 = v32;

      if (v22)
      {
        defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
        v31 = v23;
        v25 = [defaultManager3 moveItemAtPath:v17 toPath:v16 error:&v31];
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

        defaultManager4 = [MEMORY[0x1E696AC08] defaultManager];
        [defaultManager4 removeItemAtPath:v17 error:0];
      }

      else
      {
        defaultManager4 = _ISDefaultLog();
        if (os_log_type_enabled(defaultManager4, OS_LOG_TYPE_FAULT))
        {
          [ISStore writeStoreUnit:];
        }

        v19 = v23;
      }
    }

    else
    {
      defaultManager4 = _ISDefaultLog();
      if (os_log_type_enabled(defaultManager4, OS_LOG_TYPE_FAULT))
      {
        [ISStore writeStoreUnit:];
      }
    }

    v26 = 0;
    goto LABEL_22;
  }

  path = _ISDefaultLog();
  if (os_log_type_enabled(path, OS_LOG_TYPE_FAULT))
  {
    [ISStore writeStoreUnit:path];
  }

  v26 = 0;
LABEL_24:

  v29 = *MEMORY[0x1E69E9840];
  return v26;
}

- (id)addUnitWithData:(id)data
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [ISStoreUnit storeUnitWithData:data];
  if ([v4 isValid])
  {
    uUID = [v4 UUID];
    v6 = [(ISStore *)self unitForUUID:uUID];

    if ([v6 isValid])
    {
      v7 = v6;
    }

    else
    {
      v10 = _ISDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        uUID2 = [v4 UUID];
        uUIDString = [uUID2 UUIDString];
        v14 = 138412290;
        v15 = uUIDString;
        _os_log_impl(&dword_1A77B8000, v10, OS_LOG_TYPE_INFO, "ADDING_NEW_STORE_ENTRY with UUID: %@", &v14, 0xCu);
      }

      v7 = v4;
      if ([(ISStore *)self writeStoreUnit:v7])
      {
        storeURL = [(ISStore *)self storeURL];
        [v7 remapWithStoreURL:storeURL];
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

- (BOOL)removeUnitForUUID:(id)d
{
  dCopy = d;
  path = [(NSURL *)self->_storeURL path];
  v6 = MEMORY[0x1E696AEC0];
  uUIDString = [dCopy UUIDString];
  v8 = [v6 stringWithFormat:@"%@.%s", uUIDString, "isdata"];
  v9 = [path stringByAppendingPathComponent:v8];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v15 = 0;
  v11 = [defaultManager removeItemAtPath:v9 error:&v15];
  v12 = v15;

  if ((v11 & 1) == 0 && [v12 code] != 4)
  {
    v13 = _ISDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ISStore *)dCopy removeUnitForUUID:v12, v13];
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