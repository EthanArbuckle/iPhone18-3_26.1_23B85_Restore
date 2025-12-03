@interface CBAPEndpoint
- (BOOL)setProperty:(id)property property:(id)a4;
- (CBAPEndpoint)initWithServiceName:(id)name role:(id)role;
- (id)copyProperty:(id)property;
- (unsigned)findDCPServiceWithName:(id)name role:(id)role;
- (void)dealloc;
@end

@implementation CBAPEndpoint

- (CBAPEndpoint)initWithServiceName:(id)name role:(id)role
{
  if ([name isEqualToString:&stru_283740FA8])
  {
    return 0;
  }

  v15.receiver = self;
  v15.super_class = CBAPEndpoint;
  v7 = [(CBAPEndpoint *)&v15 init];
  v8 = v7;
  if (!v7 || (v9 = [(CBAPEndpoint *)v7 findDCPServiceWithName:name role:role], (v8->_service = v9) == 0))
  {
LABEL_14:

    return 0;
  }

  IOObjectRetain(v9);
  v8->_logHandle = os_log_create("com.apple.CoreBrightness.CBAPEndpoint", "BuiltIn");
  v8->_endpoint = [objc_alloc(MEMORY[0x277CE4810]) initWithService:v8->_service];
  v10 = dispatch_queue_create("CBAFKEndpointQueue", 0);
  v8->_epQueue = v10;
  endpoint = v8->_endpoint;
  if (endpoint)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    logHandle = v8->_logHandle;
    if (!logHandle)
    {
      logHandle = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        logHandle = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      [CBAPEndpoint initWithServiceName:name role:?];
    }

    goto LABEL_14;
  }

  [(AFKEndpointInterface *)endpoint setDispatchQueue:?];
  [(AFKEndpointInterface *)v8->_endpoint activate:0];
  return v8;
}

- (void)dealloc
{
  endpoint = self->_endpoint;
  if (endpoint)
  {
    [(AFKEndpointInterface *)endpoint cancel];

    self->_endpoint = 0;
  }

  epQueue = self->_epQueue;
  if (epQueue)
  {
    dispatch_release(epQueue);
    self->_epQueue = 0;
  }

  logHandle = self->_logHandle;
  if (logHandle)
  {

    self->_logHandle = 0;
  }

  service = self->_service;
  if (service)
  {
    IOObjectRelease(service);
    self->_service = 0;
  }

  v7.receiver = self;
  v7.super_class = CBAPEndpoint;
  [(CBAPEndpoint *)&v7 dealloc];
}

- (BOOL)setProperty:(id)property property:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  logHandle = self->_logHandle;
  if (!logHandle)
  {
    logHandle = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      logHandle = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315906;
    v22 = [objc_msgSend(objc_opt_class() "description")];
    v23 = 2080;
    v24 = "[CBAPEndpoint setProperty:property:]";
    v25 = 2080;
    uTF8String = [property UTF8String];
    v27 = 2112;
    v28 = a4;
    _os_log_impl(&dword_223D10000, logHandle, OS_LOG_TYPE_DEFAULT, "%s:%s called for key: %s, property: %@", &v21, 0x2Au);
  }

  v8 = 0;
  if (property && a4)
  {
    v9 = [property lengthOfBytesUsingEncoding:4];
    if (v9 >= 0x40)
    {
      [property UTF8String];
      __strlcpy_chk();
      inited = self->_logHandle;
      if (!inited)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
      {
        [(CBAPEndpoint *)property setProperty:inited property:?];
      }
    }

    v11 = IOCFSerialize(a4, 1uLL);
    if (v11)
    {
      v12 = v11;
      if ([(__CFData *)v11 length]< 486 - v9)
      {
        v13 = v9 + [(__CFData *)v12 length];
        v14 = malloc_type_malloc(v13 + 5, 0x100004052888210uLL);
        *v14 = v9 + 1;
        strlcpy(v14 + 4, [property UTF8String], 0x40uLL);
        memcpy(&v14[*v14 + 4], [(__CFData *)v12 bytes], [(__CFData *)v12 length]);
        v8 = [(CBAPEndpoint *)self enqueueCommandSync:67 inputBuffer:v14 inputBufferSize:v13 + 5 responseObj:0 options:0];
        free(v14);

        goto LABEL_29;
      }

      v16 = self->_logHandle;
      if (!v16)
      {
        v16 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v16 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        uTF8String2 = [property UTF8String];
        v20 = [(__CFData *)v12 length];
        v21 = 136315650;
        v22 = uTF8String2;
        v23 = 2048;
        v24 = (486 - v9);
        v25 = 2048;
        uTF8String = v20;
        _os_log_error_impl(&dword_223D10000, v16, OS_LOG_TYPE_ERROR, "Data for setting property %s is too long, max payload %lu, needed size %lu\n", &v21, 0x20u);
      }
    }

    else
    {
      v15 = self->_logHandle;
      if (!v15)
      {
        v15 = _COREBRIGHTNESS_LOG_DEFAULT;
        if (!_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v15 = init_default_corebrightness_log();
        }
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CBAPEndpoint setProperty:property property:?];
      }
    }

    v8 = 0;
  }

LABEL_29:
  v17 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)copyProperty:(id)property
{
  v13 = *MEMORY[0x277D85DE8];
  logHandle = self->_logHandle;
  if (!logHandle)
  {
    logHandle = _COREBRIGHTNESS_LOG_DEFAULT;
    if (!_COREBRIGHTNESS_LOG_DEFAULT)
    {
      logHandle = init_default_corebrightness_log();
    }
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = [objc_msgSend(objc_opt_class() "description")];
    *&buf[12] = 2080;
    *&buf[14] = "[CBAPEndpoint copyProperty:]";
    *&buf[22] = 2080;
    *&buf[24] = [property UTF8String];
    _os_log_impl(&dword_223D10000, logHandle, OS_LOG_TYPE_DEFAULT, "%s:%s called for key: %s", buf, 0x20u);
  }

  if ([property lengthOfBytesUsingEncoding:4] < 0x40)
  {
    v11 = 0u;
    v12 = 0u;
    memset(buf, 0, sizeof(buf));
    [property UTF8String];
    __strlcpy_chk();
    v9 = 0;
    if ([(CBAPEndpoint *)self enqueueCommandSync:66 inputBuffer:buf inputBufferSize:64 responseObj:&v9 options:0])
    {
      result = v9;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    inited = self->_logHandle;
    if (!inited)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      [CBAPEndpoint copyProperty:property];
    }

    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (unsigned)findDCPServiceWithName:(id)name role:(id)role
{
  v18[2] = *MEMORY[0x277D85DE8];
  v7 = IOServiceMatching("AFKEndpointInterface");
  roleCopy = role;
  v17[0] = @"IOPropertyMatch";
  v15 = @"role";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&roleCopy forKeys:&v15 count:1];
  v17[1] = @"IONameMatch";
  v18[0] = v8;
  v18[1] = name;
  -[__CFDictionary addEntriesFromDictionary:](v7, "addEntriesFromDictionary:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2]);
  existing = 0;
  if (IOServiceGetMatchingServices(*MEMORY[0x277CD2898], v7, &existing))
  {
    v9 = 1;
  }

  else
  {
    v9 = existing == 0;
  }

  if (v9)
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v10 = IOIteratorNext(existing);
  IOObjectRelease(existing);
  if (!v10)
  {
    logHandle = self->_logHandle;
    if (!logHandle)
    {
      logHandle = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        logHandle = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      [CBAPEndpoint findDCPServiceWithName:name role:?];
    }

    goto LABEL_11;
  }

LABEL_12:
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)initWithServiceName:(void *)a1 role:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 UTF8String];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setProperty:(NSObject *)a3 property:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 UTF8String];
  OUTLINED_FUNCTION_1_1();
  v7 = 2080;
  v8 = a2;
  _os_log_debug_impl(&dword_223D10000, a3, OS_LOG_TYPE_DEBUG, "WARNING: Property name is too long it will be truncated, %s -> %s\n", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setProperty:(void *)a1 property:.cold.2(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 UTF8String];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)copyProperty:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 UTF8String];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendCommand:(int)a1 inputBuffer:(NSObject *)a2 inputBufferSize:.cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_debug_impl(&dword_223D10000, a2, OS_LOG_TYPE_DEBUG, "Send command = 0x%x", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)sendOOBCommand:(int)a1 inputBuffer:(NSObject *)a2 inputBufferSize:.cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_debug_impl(&dword_223D10000, a2, OS_LOG_TYPE_DEBUG, "Send OOB command = 0x%x", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)enqueueCommandSync:(int)a1 inputBuffer:(NSObject *)a2 inputBufferSize:responseObj:options:.cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_223D10000, a2, OS_LOG_TYPE_ERROR, "ERROR! enqueueCommandSync failed result:0x%x", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)enqueueCommandSync:(uint64_t *)a1 inputBuffer:(NSObject *)a2 inputBufferSize:responseObj:options:.cold.2(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_223D10000, a2, OS_LOG_TYPE_ERROR, "ERROR: unable to serialize outputBuffer: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)enqueueCommandSync:(uint64_t *)a1 inputBuffer:(NSObject *)a2 inputBufferSize:responseObj:options:.cold.3(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_223D10000, a2, OS_LOG_TYPE_DEBUG, "Response received from DCP: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)findDCPServiceWithName:(void *)a1 role:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 UTF8String];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end