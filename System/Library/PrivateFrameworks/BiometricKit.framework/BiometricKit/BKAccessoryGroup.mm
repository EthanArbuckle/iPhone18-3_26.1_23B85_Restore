@interface BKAccessoryGroup
- (BKAccessoryGroup)initWithServerAccessoryGroup:(id)a3 device:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAccessoryGroup:(id)a3;
- (BOOL)isEqualToServerAccessoryGroup:(id)a3;
- (id)accessoriesWithError:(id *)a3;
- (id)connectedAccessoriesWithError:(id *)a3;
- (id)serverAccessoryGroup;
@end

@implementation BKAccessoryGroup

- (BKAccessoryGroup)initWithServerAccessoryGroup:(id)a3 device:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = BKAccessoryGroup;
  v8 = [(BKAccessoryGroup *)&v15 init];
  v9 = v8;
  if (v8)
  {
    if (v6)
    {
      v8->_type = [v6 type];
      v10 = [v6 uuid];
      uuid = v9->_uuid;
      v9->_uuid = v10;

      v12 = [v6 name];
      name = v9->_name;
      v9->_name = v12;

      objc_storeStrong(&v9->_device, a4);
    }

    else
    {
      [BKAccessoryGroup initWithServerAccessoryGroup:v8 device:?];
      v9 = 0;
    }
  }

  return v9;
}

- (id)serverAccessoryGroup
{
  v3 = objc_alloc_init(BiometricKitAccessoryGroup);
  [(BiometricKitAccessoryGroup *)v3 setType:self->_type];
  [(BiometricKitAccessoryGroup *)v3 setUuid:self->_uuid];
  [(BiometricKitAccessoryGroup *)v3 setName:self->_name];

  return v3;
}

- (id)accessoriesWithError:(id *)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_device->_xpcClient;
    v7 = v5;
    *buf = 134217984;
    v36 = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v7, OS_LOG_TYPE_DEFAULT, "BKAccessoryGroup::accessories (_cid:%lu)\n", buf, 0xCu);
  }

  v8 = self->_device->_xpcClient;
  v34 = 0;
  v9 = [(BiometricKitXPCClient *)v8 listAccessories:&v34, a3];
  v10 = v34;
  if (v9)
  {
    [(BKAccessoryGroup *)v9 accessoriesWithError:v9, v28];
  }

  else
  {
    v11 = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v29 = v10;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v31;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v30 + 1) + 8 * i);
          v18 = [v17 group];
          v19 = [(BKAccessoryGroup *)self isEqualToServerAccessoryGroup:v18];

          if (v19)
          {
            v20 = [[BKAccessory alloc] initWithServerAccessory:v17 device:self->_device];
            [v11 addObject:v20];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v14);
    }

    v10 = v29;
    v4 = MEMORY[0x1E69E9C10];
    if (v11)
    {
      if (__osLogTrace)
      {
        v21 = __osLogTrace;
      }

      else
      {
        v21 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v28;
        if (v28)
        {
          v22 = *v28;
        }

        *buf = 138412546;
        v36 = v11;
        v37 = 2112;
        v38 = v22;
        _os_log_impl(&dword_1C82AD000, v21, OS_LOG_TYPE_DEFAULT, "BKAccessoryGroup::accessories -> %@, error:%@\n", buf, 0x16u);
      }

      goto LABEL_33;
    }
  }

  if (__osLogTrace)
  {
    v23 = __osLogTrace;
  }

  else
  {
    v23 = v4;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = v28;
    if (v28)
    {
      v24 = *v28;
    }

    *buf = 138412546;
    v36 = 0;
    v37 = 2112;
    v38 = v24;
    _os_log_impl(&dword_1C82AD000, v23, OS_LOG_TYPE_ERROR, "BKAccessoryGroup::accessories -> %@, error:%@\n", buf, 0x16u);
  }

  v11 = 0;
LABEL_33:

  v25 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)connectedAccessoriesWithError:(id *)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_device->_xpcClient;
    v7 = v5;
    *buf = 134217984;
    v35 = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v7, OS_LOG_TYPE_DEFAULT, "BKAccessoryGroup::connectedAccessories (_cid:%lu)\n", buf, 0xCu);
  }

  v8 = self->_device->_xpcClient;
  v33 = 0;
  v9 = [(BiometricKitXPCClient *)v8 listAccessories:&v33, a3];
  v10 = v33;
  if (v9)
  {
    [(BKAccessoryGroup *)v9 connectedAccessoriesWithError:v9, v27];
    goto LABEL_27;
  }

  v11 = [MEMORY[0x1E695DF70] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v28 = v10;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = v13;
  v15 = *v30;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v30 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v29 + 1) + 8 * i);
      v18 = [v17 group];
      if ([(BKAccessoryGroup *)self isEqualToServerAccessoryGroup:v18])
      {
        v19 = [v17 flags];

        if ((v19 & 2) == 0)
        {
          continue;
        }

        v18 = [[BKAccessory alloc] initWithServerAccessory:v17 device:self->_device];
        [v11 addObject:v18];
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
  }

  while (v14);
LABEL_18:

  v10 = v28;
  v4 = MEMORY[0x1E69E9C10];
  if (v11)
  {
    if (__osLogTrace)
    {
      v20 = __osLogTrace;
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v27;
      if (v27)
      {
        v21 = *v27;
      }

      *buf = 138412546;
      v35 = v11;
      v36 = 2112;
      v37 = v21;
      _os_log_impl(&dword_1C82AD000, v20, OS_LOG_TYPE_DEFAULT, "BKAccessoryGroup::connectedAccessories -> %@, error:%@\n", buf, 0x16u);
    }

    goto LABEL_35;
  }

LABEL_27:
  if (__osLogTrace)
  {
    v22 = __osLogTrace;
  }

  else
  {
    v22 = v4;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = v27;
    if (v27)
    {
      v23 = *v27;
    }

    *buf = 138412546;
    v35 = 0;
    v36 = 2112;
    v37 = v23;
    _os_log_impl(&dword_1C82AD000, v22, OS_LOG_TYPE_ERROR, "BKAccessoryGroup::connectedAccessories -> %@, error:%@\n", buf, 0x16u);
  }

  v11 = 0;
LABEL_35:

  v24 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)isEqualToServerAccessoryGroup:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (type = self->_type, type == [v4 type]))
  {
    uuid = self->_uuid;
    v8 = [v5 uuid];
    v9 = [(NSUUID *)uuid isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqualToAccessoryGroup:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && self->_type == *(v4 + 2))
  {
    v6 = [(NSUUID *)self->_uuid isEqual:*(v4 + 2)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BKAccessoryGroup *)self isEqualToAccessoryGroup:v4];
  }

  return v5;
}

- (void)initWithServerAccessoryGroup:(void *)a1 device:.cold.1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (__osLog)
  {
    v2 = __osLog;
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_0();
    v5 = 0;
    v6 = 2080;
    v7 = &unk_1C82F52EE;
    OUTLINED_FUNCTION_1();
    v8 = 33;
    _os_log_impl(&dword_1C82AD000, v2, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, 0x30u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (id)accessoriesWithError:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v5, v6, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v7, v8, v9, v10, v13);
  }

  result = setErrorWithOSStatus(a2, a3);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)connectedAccessoriesWithError:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v5, v6, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v7, v8, v9, v10, v13);
  }

  result = setErrorWithOSStatus(a2, a3);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

@end