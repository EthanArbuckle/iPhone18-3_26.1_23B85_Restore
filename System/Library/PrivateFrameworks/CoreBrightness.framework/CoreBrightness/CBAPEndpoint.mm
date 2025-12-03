@interface CBAPEndpoint
- (BOOL)enqueueCommandSync:(int)sync inputBuffer:(const void *)buffer inputBufferSize:(unint64_t)size responseObj:(id *)obj options:(unsigned int)options;
- (BOOL)sendCommand:(int)command inputBuffer:(const void *)buffer inputBufferSize:(unint64_t)size;
- (BOOL)sendOOBCommand:(int)command inputBuffer:(const void *)buffer inputBufferSize:(unint64_t)size;
- (BOOL)setProperty:(id)property property:(id)a4;
- (CBAPEndpoint)initWithServiceName:(id)name role:(id)role;
- (id)copyProperty:(id)property;
- (unsigned)findDCPServiceWithName:(id)name role:(id)role;
- (void)dealloc;
@end

@implementation CBAPEndpoint

- (CBAPEndpoint)initWithServiceName:(id)name role:(id)role
{
  v19 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v15 = a2;
  nameCopy = name;
  roleCopy = role;
  if (([name isEqualToString:&stru_1F599E370] & 1) == 0)
  {
    v12.receiver = selfCopy;
    v12.super_class = CBAPEndpoint;
    selfCopy = [(CBAPEndpoint *)&v12 init];
    if (selfCopy)
    {
      v4 = [(CBAPEndpoint *)selfCopy findDCPServiceWithName:nameCopy role:roleCopy];
      selfCopy->_service = v4;
      if (selfCopy->_service)
      {
        IOObjectRetain(selfCopy->_service);
        v5 = os_log_create("com.apple.CoreBrightness.CBAPEndpoint", "BuiltIn");
        selfCopy->_logHandle = v5;
        v6 = objc_alloc(MEMORY[0x1E6985F68]);
        v7 = [v6 initWithService:selfCopy->_service];
        selfCopy->_endpoint = v7;
        v8 = dispatch_queue_create("CBAFKEndpointQueue", 0);
        selfCopy->_epQueue = v8;
        if (selfCopy->_endpoint && selfCopy->_epQueue)
        {
          [(AFKEndpointInterface *)selfCopy->_endpoint setDispatchQueue:selfCopy->_epQueue];
          [(AFKEndpointInterface *)selfCopy->_endpoint activate:0];
          v17 = selfCopy;
          goto LABEL_18;
        }

        if (selfCopy->_logHandle)
        {
          logHandle = selfCopy->_logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            inited = init_default_corebrightness_log();
          }

          logHandle = inited;
        }

        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_32(v18, [nameCopy UTF8String]);
          _os_log_error_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_ERROR, "ERROR initializing CBAPEndpoint for service: %s", v18, 0xCu);
        }
      }
    }

    MEMORY[0x1E69E5920](selfCopy);
    selfCopy = 0;
    v17 = 0;
    goto LABEL_18;
  }

  v17 = 0;
LABEL_18:
  *MEMORY[0x1E69E9840];
  return v17;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  if (self->_endpoint)
  {
    [(AFKEndpointInterface *)selfCopy->_endpoint cancel];
    MEMORY[0x1E69E5920](selfCopy->_endpoint);
    selfCopy->_endpoint = 0;
  }

  if (selfCopy->_epQueue)
  {
    dispatch_release(selfCopy->_epQueue);
    selfCopy->_epQueue = 0;
  }

  if (selfCopy->_logHandle)
  {
    MEMORY[0x1E69E5920](selfCopy->_logHandle);
    selfCopy->_logHandle = 0;
  }

  if (selfCopy->_service)
  {
    IOObjectRelease(selfCopy->_service);
    selfCopy->_service = 0;
  }

  v2.receiver = selfCopy;
  v2.super_class = CBAPEndpoint;
  [(CBAPEndpoint *)&v2 dealloc];
}

- (BOOL)setProperty:(id)property property:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  if (self->_logHandle)
  {
    logHandle = self->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [objc_msgSend(objc_opt_class() "description")];
    __os_log_helper_16_2_4_8_32_8_32_8_32_8_64(v28, v12, "-[CBAPEndpoint setProperty:property:]", [property UTF8String], a4);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "%s:%s called for key: %s, property: %@", v28, 0x2Au);
  }

  if (property && a4)
  {
    v19 = [property lengthOfBytesUsingEncoding:4];
    if (v19 >= 0x40)
    {
      [property UTF8String];
      __strlcpy_chk();
      if (self->_logHandle)
      {
        v11 = self->_logHandle;
      }

      else
      {
        v10 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        v11 = v10;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_8_32(v26, [property UTF8String], v27);
        _os_log_debug_impl(&dword_1DE8E5000, v11, OS_LOG_TYPE_DEBUG, "WARNING: Property name is too long it will be truncated, %s -> %s\n", v26, 0x16u);
      }
    }

    v18 = IOCFSerialize(a4, 1uLL);
    if (v18)
    {
      if ([(__CFData *)v18 length]< 486 - v19)
      {
        v17 = v19 + 1 + [(__CFData *)v18 length];
        v16 = malloc_type_malloc(v17 + 4, 0x100004052888210uLL);
        *v16 = v19 + 1;
        [property UTF8String];
        __strlcpy_chk();
        v5 = v16 + *v16 + 4;
        [(__CFData *)v18 bytes];
        [(__CFData *)v18 length];
        __memcpy_chk();
        v15 = [(CBAPEndpoint *)self enqueueCommandSync:67 inputBuffer:v16 inputBufferSize:v17 + 4 responseObj:0 options:0];
        if (v16)
        {
          free(v16);
        }

        MEMORY[0x1E69E5920](v18);
        v23 = v15;
      }

      else
      {
        if (self->_logHandle)
        {
          v7 = self->_logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v6 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v6 = init_default_corebrightness_log();
          }

          v7 = v6;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_3_8_32_8_0_8_0(v24, [property UTF8String], 486 - v19, -[__CFData length](v18, "length"));
          _os_log_error_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_ERROR, "Data for setting property %s is too long, max payload %lu, needed size %lu\n", v24, 0x20u);
        }

        MEMORY[0x1E69E5920](v18);
        v23 = 0;
      }
    }

    else
    {
      if (self->_logHandle)
      {
        v9 = self->_logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v8 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v8 = init_default_corebrightness_log();
        }

        v9 = v8;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_64(v25, [property UTF8String], a4);
        _os_log_error_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_ERROR, "Could not encode value for setting property %s, value: %@\n", v25, 0x16u);
      }

      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v23;
}

- (id)copyProperty:(id)property
{
  v22 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v16 = a2;
  propertyCopy = property;
  if (self->_logHandle)
  {
    logHandle = selfCopy->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  oslog = logHandle;
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [objc_msgSend(objc_opt_class() "description")];
    __os_log_helper_16_2_3_8_32_8_32_8_32(v21, v6, "-[CBAPEndpoint copyProperty:]", [propertyCopy UTF8String]);
    _os_log_impl(&dword_1DE8E5000, oslog, type, "%s:%s called for key: %s", v21, 0x20u);
  }

  if ([propertyCopy lengthOfBytesUsingEncoding:4] < 0x40)
  {
    memset(__b, 0, sizeof(__b));
    [propertyCopy UTF8String];
    __strlcpy_chk();
    v10 = 66;
    v9 = 0;
    if ([(CBAPEndpoint *)selfCopy enqueueCommandSync:66 inputBuffer:__b inputBufferSize:64 responseObj:&v9 options:0])
    {
      v18 = v9;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    if (selfCopy->_logHandle)
    {
      v5 = selfCopy->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v4 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v4 = init_default_corebrightness_log();
      }

      v5 = v4;
    }

    v12 = v5;
    v11 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_32(v20, [propertyCopy UTF8String]);
      _os_log_error_impl(&dword_1DE8E5000, v12, v11, "Property name is too long, %s\n", v20, 0xCu);
    }

    v18 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v18;
}

- (BOOL)sendCommand:(int)command inputBuffer:(const void *)buffer inputBufferSize:(unint64_t)size
{
  v14 = *MEMORY[0x1E69E9840];
  if (buffer && size)
  {
    if (self->_logHandle)
    {
      logHandle = self->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_4_0(v13, command);
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Send command = 0x%x", v13, 8u);
    }

    v12 = [(CBAPEndpoint *)self enqueueCommandSync:command inputBuffer:buffer inputBufferSize:size responseObj:0 options:0];
  }

  else
  {
    v12 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v12 & 1;
}

- (BOOL)sendOOBCommand:(int)command inputBuffer:(const void *)buffer inputBufferSize:(unint64_t)size
{
  v14 = *MEMORY[0x1E69E9840];
  if (buffer && size)
  {
    if (self->_logHandle)
    {
      logHandle = self->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_4_0(v13, command);
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Send OOB command = 0x%x", v13, 8u);
    }

    v12 = [(CBAPEndpoint *)self enqueueCommandSync:command inputBuffer:buffer inputBufferSize:size responseObj:0 options:?];
  }

  else
  {
    v12 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v12 & 1;
}

- (BOOL)enqueueCommandSync:(int)sync inputBuffer:(const void *)buffer inputBufferSize:(unint64_t)size responseObj:(id *)obj options:(unsigned int)options
{
  v44 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v37 = a2;
  syncCopy = sync;
  bufferCopy = buffer;
  sizeCopy = size;
  objCopy = obj;
  optionsCopy = options;
  if (self->_logHandle)
  {
    logHandle = selfCopy->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v31 = logHandle;
  v30 = OS_SIGNPOST_INTERVAL_BEGIN;
  v29 = 0xEEEEB0B5B2B2EEEELL;
  if (os_signpost_enabled(logHandle))
  {
    __os_log_helper_16_0_1_4_0(v43, syncCopy);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, v31, v30, v29, "enqueueCommandSync", "0x%x", v43, 8u);
  }

  v28 = 486;
  v27 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:486];
  v26 = 0;
  v25 = 0;
  v24 = 0;
  if (objCopy)
  {
    *objCopy = 0;
  }

  LODWORD(v10) = optionsCopy;
  v25 = -[AFKEndpointInterface enqueueCommandSync:timestamp:inputBuffer:inputBufferSize:responseTimestamp:outputBuffer:inOutBufferSize:options:](selfCopy->_endpoint, "enqueueCommandSync:timestamp:inputBuffer:inputBufferSize:responseTimestamp:outputBuffer:inOutBufferSize:options:", syncCopy, mach_continuous_time(), bufferCopy, sizeCopy, &v26, [v27 mutableBytes], &v28, v10);
  if (v25)
  {
    if (selfCopy->_logHandle)
    {
      v18 = selfCopy->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v17 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v17 = init_default_corebrightness_log();
      }

      v18 = v17;
    }

    v23 = v18;
    v22 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_4_0(v42, v25);
      _os_log_error_impl(&dword_1DE8E5000, v23, v22, "ERROR! enqueueCommandSync failed result:0x%x", v42, 8u);
    }

    v24 = 0;
  }

  else if ([v27 mutableBytes] && objCopy)
  {
    v21 = 0;
    mutableBytes = [v27 mutableBytes];
    v8 = IOCFUnserializeBinary(mutableBytes, v28, *MEMORY[0x1E695E480], 0, &v21);
    *objCopy = v8;
    if (v21)
    {
      if (selfCopy->_logHandle)
      {
        v16 = selfCopy->_logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v15 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v15 = init_default_corebrightness_log();
        }

        v16 = v15;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v41, v21);
        _os_log_error_impl(&dword_1DE8E5000, v16, OS_LOG_TYPE_ERROR, "ERROR: unable to serialize outputBuffer: %@", v41, 0xCu);
      }

      v24 = 0;
    }

    else
    {
      if (selfCopy->_logHandle)
      {
        v14 = selfCopy->_logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v13 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v13 = init_default_corebrightness_log();
        }

        v14 = v13;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v40, *objCopy);
        _os_log_debug_impl(&dword_1DE8E5000, v14, OS_LOG_TYPE_DEBUG, "Response received from DCP: %@", v40, 0xCu);
      }

      v24 = 1;
    }
  }

  else
  {
    v24 = 1;
  }

  MEMORY[0x1E69E5920](v27);
  if (selfCopy->_logHandle)
  {
    v12 = selfCopy->_logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v11 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v11 = init_default_corebrightness_log();
    }

    v12 = v11;
  }

  if (os_signpost_enabled(v12))
  {
    __os_log_helper_16_0_2_4_0_4_0(v39, syncCopy, v24 & 1);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "enqueueCommandSync", "0x%x, status: %d", v39, 0xEu);
  }

  *MEMORY[0x1E69E9840];
  return v24 & 1;
}

- (unsigned)findDCPServiceWithName:(id)name role:(id)role
{
  v18[2] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v12 = a2;
  nameCopy = name;
  roleCopy = role;
  v9 = 0;
  matching = IOServiceMatching("AFKEndpointInterface");
  v17[0] = @"IOPropertyMatch";
  v15 = @"role";
  v16 = roleCopy;
  v18[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v17[1] = @"IONameMatch";
  v18[1] = nameCopy;
  -[__CFDictionary addEntriesFromDictionary:](matching, "addEntriesFromDictionary:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2]);
  existing = 0;
  if (!IOServiceGetMatchingServices(*MEMORY[0x1E696CD60], matching, &existing))
  {
    if (existing)
    {
      v9 = IOIteratorNext(existing);
      IOObjectRelease(existing);
      if (!v9)
      {
        if (selfCopy->_logHandle)
        {
          logHandle = selfCopy->_logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            inited = init_default_corebrightness_log();
          }

          logHandle = inited;
        }

        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_32(v14, [nameCopy UTF8String]);
          _os_log_error_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_ERROR, "ERROR: %s sevice not found", v14, 0xCu);
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
  return v9;
}

@end