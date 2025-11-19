@interface BKAccessory
- (BKAccessory)initWithServerAccessory:(id)a3 device:(id)a4;
- (BOOL)isAuthorized:(BOOL *)a3 error:(id *)a4;
- (BOOL)isConnected:(BOOL *)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAccessory:(id)a3;
- (BOOL)isEqualToServerAccessory:(id)a3;
- (NSData)uid;
- (id)serverAccessory;
@end

@implementation BKAccessory

- (BKAccessory)initWithServerAccessory:(id)a3 device:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = BKAccessory;
  v8 = [(BKAccessory *)&v19 init];
  v9 = v8;
  if (v8)
  {
    if (v6)
    {
      v8->_type = [v6 type];
      v10 = [v6 uuid];
      uuid = v9->_uuid;
      v9->_uuid = v10;

      v9->_flags = [v6 flags];
      v12 = [v6 name];
      name = v9->_name;
      v9->_name = v12;

      v14 = [BKAccessoryGroup alloc];
      v15 = [v6 group];
      v16 = [(BKAccessoryGroup *)v14 initWithServerAccessoryGroup:v15 device:v7];
      accessoryGroup = v9->_accessoryGroup;
      v9->_accessoryGroup = v16;

      objc_storeStrong(&v9->_device, a4);
    }

    else
    {
      [BKAccessory initWithServerAccessory:v8 device:?];
      v9 = 0;
    }
  }

  return v9;
}

- (id)serverAccessory
{
  v3 = objc_alloc_init(BiometricKitAccessory);
  [(BiometricKitAccessory *)v3 setType:self->_type];
  [(BiometricKitAccessory *)v3 setUuid:self->_uuid];
  [(BiometricKitAccessory *)v3 setName:self->_name];
  [(BiometricKitAccessory *)v3 setFlags:self->_flags];
  v4 = [(BKAccessoryGroup *)self->_accessoryGroup serverAccessoryGroup];
  [(BiometricKitAccessory *)v3 setGroup:v4];

  return v3;
}

- (NSData)uid
{
  v5[2] = *MEMORY[0x1E69E9840];
  if (self->_type == 2)
  {
    v5[0] = 0;
    v5[1] = 0;
    [(NSUUID *)self->_uuid getUUIDBytes:v5];
    v2 = [MEMORY[0x1E695DEF0] dataWithBytes:v5 length:16];
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (BOOL)isEqualToServerAccessory:(id)a3
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

- (BOOL)isEqualToAccessory:(id)a3
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BKAccessory *)self isEqualToAccessory:v4];
  }

  return v5;
}

- (BOOL)isConnected:(BOOL *)a3 error:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_device->_xpcClient;
    v10 = v8;
    *buf = 134218240;
    *v35 = a3;
    *&v35[8] = 2048;
    v36[0] = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKAccessory:isConnected: %p (_cid:%lu)\n", buf, 0x16u);
  }

  if (!a3)
  {
    [BKAccessory isConnected:a4 error:?];
    v14 = 0;
LABEL_30:
    if (__osLogTrace)
    {
      v26 = __osLogTrace;
    }

    else
    {
      v26 = v7;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      if (a3)
      {
        v27 = *a3;
      }

      else
      {
        v27 = -1;
      }

      if (a4)
      {
        v28 = *a4;
      }

      else
      {
        v28 = 0;
      }

      *buf = 67109634;
      *v35 = 0;
      *&v35[4] = 1024;
      *&v35[6] = v27;
      LOWORD(v36[0]) = 2112;
      *(v36 + 2) = v28;
      _os_log_impl(&dword_1C82AD000, v26, OS_LOG_TYPE_ERROR, "BKAccessory::isConnected: -> %d, connected:%d, error:%@\n", buf, 0x18u);
    }

    v23 = 0;
    goto LABEL_27;
  }

  v11 = self->_device->_xpcClient;
  v33 = 0;
  v12 = [(BiometricKitXPCClient *)v11 listAccessories:&v33];
  v13 = v33;
  v14 = v13;
  if (v12)
  {
    [(BKAccessory *)v12 isConnected:v12 error:a4];
    goto LABEL_30;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v29 + 1) + 8 * i);
        if ([(BKAccessory *)self isEqualToServerAccessory:v19, v29])
        {
          *a3 = ([v19 flags] & 2) != 0;
          goto LABEL_18;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  if (__osLogTrace)
  {
    v20 = __osLogTrace;
  }

  else
  {
    v20 = v7;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *a3;
    if (a4)
    {
      v22 = *a4;
    }

    else
    {
      v22 = 0;
    }

    *buf = 67109634;
    v23 = 1;
    *v35 = 1;
    *&v35[4] = 1024;
    *&v35[6] = v21;
    LOWORD(v36[0]) = 2112;
    *(v36 + 2) = v22;
    _os_log_impl(&dword_1C82AD000, v20, OS_LOG_TYPE_DEFAULT, "BKAccessory::isConnected: -> %d, connected:%d, error:%@\n", buf, 0x18u);
  }

  else
  {
    v23 = 1;
  }

LABEL_27:

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (BOOL)isAuthorized:(BOOL *)a3 error:(id *)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = self->_device->_xpcClient;
    v10 = v8;
    *buf = 134218240;
    *v35 = a3;
    *&v35[8] = 2048;
    v36[0] = [(BiometricKitXPCClient *)xpcClient connectionId];
    _os_log_impl(&dword_1C82AD000, v10, OS_LOG_TYPE_DEFAULT, "BKAccessory:isAuthorized: %p (_cid:%lu)\n", buf, 0x16u);
  }

  if (!a3)
  {
    [BKAccessory isAuthorized:a4 error:?];
    v14 = 0;
LABEL_30:
    if (__osLogTrace)
    {
      v26 = __osLogTrace;
    }

    else
    {
      v26 = v7;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      if (a3)
      {
        v27 = *a3;
      }

      else
      {
        v27 = -1;
      }

      if (a4)
      {
        v28 = *a4;
      }

      else
      {
        v28 = 0;
      }

      *buf = 67109634;
      *v35 = 0;
      *&v35[4] = 1024;
      *&v35[6] = v27;
      LOWORD(v36[0]) = 2112;
      *(v36 + 2) = v28;
      _os_log_impl(&dword_1C82AD000, v26, OS_LOG_TYPE_ERROR, "BKAccessory::isAuthorized: -> %d, authorized:%d, error:%@\n", buf, 0x18u);
    }

    v23 = 0;
    goto LABEL_27;
  }

  v11 = self->_device->_xpcClient;
  v33 = 0;
  v12 = [(BiometricKitXPCClient *)v11 listAccessories:&v33];
  v13 = v33;
  v14 = v13;
  if (v12)
  {
    [(BKAccessory *)v12 isAuthorized:v12 error:a4];
    goto LABEL_30;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v29 + 1) + 8 * i);
        if ([(BKAccessory *)self isEqualToServerAccessory:v19, v29])
        {
          *a3 = ([v19 flags] & 4) != 0;
          goto LABEL_18;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  if (__osLogTrace)
  {
    v20 = __osLogTrace;
  }

  else
  {
    v20 = v7;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *a3;
    if (a4)
    {
      v22 = *a4;
    }

    else
    {
      v22 = 0;
    }

    *buf = 67109634;
    v23 = 1;
    *v35 = 1;
    *&v35[4] = 1024;
    *&v35[6] = v21;
    LOWORD(v36[0]) = 2112;
    *(v36 + 2) = v22;
    _os_log_impl(&dword_1C82AD000, v20, OS_LOG_TYPE_DEFAULT, "BKAccessory::isAuthorized: -> %d, authorized:%d, error:%@\n", buf, 0x18u);
  }

  else
  {
    v23 = 1;
  }

LABEL_27:

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (void)initWithServerAccessory:(void *)a1 device:.cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)isConnected:(void *)a3 error:.cold.1(uint64_t a1, void *a2, void *a3)
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

- (id)isConnected:(void *)a1 error:.cold.2(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v10);
  }

  result = setError(1, a1);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)isAuthorized:(void *)a3 error:.cold.1(uint64_t a1, void *a2, void *a3)
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

- (id)isAuthorized:(void *)a1 error:.cold.2(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v10);
  }

  result = setError(1, a1);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

@end