@interface CBAPEndpoint
- (BOOL)enqueueCommandSync:(int)a3 inputBuffer:(const void *)a4 inputBufferSize:(unint64_t)a5 responseObj:(id *)a6 options:(unsigned int)a7;
- (BOOL)sendCommand:(int)a3 inputBuffer:(const void *)a4 inputBufferSize:(unint64_t)a5;
- (BOOL)sendOOBCommand:(int)a3 inputBuffer:(const void *)a4 inputBufferSize:(unint64_t)a5;
- (BOOL)setProperty:(id)a3 property:(id)a4;
- (CBAPEndpoint)initWithServiceName:(id)a3 role:(id)a4;
- (id)copyProperty:(id)a3;
- (unsigned)findDCPServiceWithName:(id)a3 role:(id)a4;
- (void)dealloc;
@end

@implementation CBAPEndpoint

- (CBAPEndpoint)initWithServiceName:(id)a3 role:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  if (([a3 isEqualToString:&stru_1F599E370] & 1) == 0)
  {
    v12.receiver = v16;
    v12.super_class = CBAPEndpoint;
    v16 = [(CBAPEndpoint *)&v12 init];
    if (v16)
    {
      v4 = [(CBAPEndpoint *)v16 findDCPServiceWithName:v14 role:v13];
      v16->_service = v4;
      if (v16->_service)
      {
        IOObjectRetain(v16->_service);
        v5 = os_log_create("com.apple.CoreBrightness.CBAPEndpoint", "BuiltIn");
        v16->_logHandle = v5;
        v6 = objc_alloc(MEMORY[0x1E6985F68]);
        v7 = [v6 initWithService:v16->_service];
        v16->_endpoint = v7;
        v8 = dispatch_queue_create("CBAFKEndpointQueue", 0);
        v16->_epQueue = v8;
        if (v16->_endpoint && v16->_epQueue)
        {
          [(AFKEndpointInterface *)v16->_endpoint setDispatchQueue:v16->_epQueue];
          [(AFKEndpointInterface *)v16->_endpoint activate:0];
          v17 = v16;
          goto LABEL_18;
        }

        if (v16->_logHandle)
        {
          logHandle = v16->_logHandle;
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
          __os_log_helper_16_2_1_8_32(v18, [v14 UTF8String]);
          _os_log_error_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_ERROR, "ERROR initializing CBAPEndpoint for service: %s", v18, 0xCu);
        }
      }
    }

    MEMORY[0x1E69E5920](v16);
    v16 = 0;
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
  v4 = self;
  v3 = a2;
  if (self->_endpoint)
  {
    [(AFKEndpointInterface *)v4->_endpoint cancel];
    MEMORY[0x1E69E5920](v4->_endpoint);
    v4->_endpoint = 0;
  }

  if (v4->_epQueue)
  {
    dispatch_release(v4->_epQueue);
    v4->_epQueue = 0;
  }

  if (v4->_logHandle)
  {
    MEMORY[0x1E69E5920](v4->_logHandle);
    v4->_logHandle = 0;
  }

  if (v4->_service)
  {
    IOObjectRelease(v4->_service);
    v4->_service = 0;
  }

  v2.receiver = v4;
  v2.super_class = CBAPEndpoint;
  [(CBAPEndpoint *)&v2 dealloc];
}

- (BOOL)setProperty:(id)a3 property:(id)a4
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
    __os_log_helper_16_2_4_8_32_8_32_8_32_8_64(v28, v12, "-[CBAPEndpoint setProperty:property:]", [a3 UTF8String], a4);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "%s:%s called for key: %s, property: %@", v28, 0x2Au);
  }

  if (a3 && a4)
  {
    v19 = [a3 lengthOfBytesUsingEncoding:4];
    if (v19 >= 0x40)
    {
      [a3 UTF8String];
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
        __os_log_helper_16_2_2_8_32_8_32(v26, [a3 UTF8String], v27);
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
        [a3 UTF8String];
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
          __os_log_helper_16_2_3_8_32_8_0_8_0(v24, [a3 UTF8String], 486 - v19, -[__CFData length](v18, "length"));
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
        __os_log_helper_16_2_2_8_32_8_64(v25, [a3 UTF8String], a4);
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

- (id)copyProperty:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = self;
  v16 = a2;
  v15 = a3;
  if (self->_logHandle)
  {
    logHandle = v17->_logHandle;
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
    __os_log_helper_16_2_3_8_32_8_32_8_32(v21, v6, "-[CBAPEndpoint copyProperty:]", [v15 UTF8String]);
    _os_log_impl(&dword_1DE8E5000, oslog, type, "%s:%s called for key: %s", v21, 0x20u);
  }

  if ([v15 lengthOfBytesUsingEncoding:4] < 0x40)
  {
    memset(__b, 0, sizeof(__b));
    [v15 UTF8String];
    __strlcpy_chk();
    v10 = 66;
    v9 = 0;
    if ([(CBAPEndpoint *)v17 enqueueCommandSync:66 inputBuffer:__b inputBufferSize:64 responseObj:&v9 options:0])
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
    if (v17->_logHandle)
    {
      v5 = v17->_logHandle;
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
      __os_log_helper_16_2_1_8_32(v20, [v15 UTF8String]);
      _os_log_error_impl(&dword_1DE8E5000, v12, v11, "Property name is too long, %s\n", v20, 0xCu);
    }

    v18 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v18;
}

- (BOOL)sendCommand:(int)a3 inputBuffer:(const void *)a4 inputBufferSize:(unint64_t)a5
{
  v14 = *MEMORY[0x1E69E9840];
  if (a4 && a5)
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
      __os_log_helper_16_0_1_4_0(v13, a3);
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Send command = 0x%x", v13, 8u);
    }

    v12 = [(CBAPEndpoint *)self enqueueCommandSync:a3 inputBuffer:a4 inputBufferSize:a5 responseObj:0 options:0];
  }

  else
  {
    v12 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v12 & 1;
}

- (BOOL)sendOOBCommand:(int)a3 inputBuffer:(const void *)a4 inputBufferSize:(unint64_t)a5
{
  v14 = *MEMORY[0x1E69E9840];
  if (a4 && a5)
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
      __os_log_helper_16_0_1_4_0(v13, a3);
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Send OOB command = 0x%x", v13, 8u);
    }

    v12 = [(CBAPEndpoint *)self enqueueCommandSync:a3 inputBuffer:a4 inputBufferSize:a5 responseObj:0 options:?];
  }

  else
  {
    v12 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v12 & 1;
}

- (BOOL)enqueueCommandSync:(int)a3 inputBuffer:(const void *)a4 inputBufferSize:(unint64_t)a5 responseObj:(id *)a6 options:(unsigned int)a7
{
  v44 = *MEMORY[0x1E69E9840];
  v38 = self;
  v37 = a2;
  v36 = a3;
  v35 = a4;
  v34 = a5;
  v33 = a6;
  v32 = a7;
  if (self->_logHandle)
  {
    logHandle = v38->_logHandle;
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
    __os_log_helper_16_0_1_4_0(v43, v36);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, v31, v30, v29, "enqueueCommandSync", "0x%x", v43, 8u);
  }

  v28 = 486;
  v27 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:486];
  v26 = 0;
  v25 = 0;
  v24 = 0;
  if (v33)
  {
    *v33 = 0;
  }

  LODWORD(v10) = v32;
  v25 = -[AFKEndpointInterface enqueueCommandSync:timestamp:inputBuffer:inputBufferSize:responseTimestamp:outputBuffer:inOutBufferSize:options:](v38->_endpoint, "enqueueCommandSync:timestamp:inputBuffer:inputBufferSize:responseTimestamp:outputBuffer:inOutBufferSize:options:", v36, mach_continuous_time(), v35, v34, &v26, [v27 mutableBytes], &v28, v10);
  if (v25)
  {
    if (v38->_logHandle)
    {
      v18 = v38->_logHandle;
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

  else if ([v27 mutableBytes] && v33)
  {
    v21 = 0;
    v7 = [v27 mutableBytes];
    v8 = IOCFUnserializeBinary(v7, v28, *MEMORY[0x1E695E480], 0, &v21);
    *v33 = v8;
    if (v21)
    {
      if (v38->_logHandle)
      {
        v16 = v38->_logHandle;
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
      if (v38->_logHandle)
      {
        v14 = v38->_logHandle;
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
        __os_log_helper_16_2_1_8_64(v40, *v33);
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
  if (v38->_logHandle)
  {
    v12 = v38->_logHandle;
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
    __os_log_helper_16_0_2_4_0_4_0(v39, v36, v24 & 1);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "enqueueCommandSync", "0x%x, status: %d", v39, 0xEu);
  }

  *MEMORY[0x1E69E9840];
  return v24 & 1;
}

- (unsigned)findDCPServiceWithName:(id)a3 role:(id)a4
{
  v18[2] = *MEMORY[0x1E69E9840];
  v13 = self;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = 0;
  matching = IOServiceMatching("AFKEndpointInterface");
  v17[0] = @"IOPropertyMatch";
  v15 = @"role";
  v16 = v10;
  v18[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v17[1] = @"IONameMatch";
  v18[1] = v11;
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
        if (v13->_logHandle)
        {
          logHandle = v13->_logHandle;
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
          __os_log_helper_16_2_1_8_32(v14, [v11 UTF8String]);
          _os_log_error_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_ERROR, "ERROR: %s sevice not found", v14, 0xCu);
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
  return v9;
}

@end