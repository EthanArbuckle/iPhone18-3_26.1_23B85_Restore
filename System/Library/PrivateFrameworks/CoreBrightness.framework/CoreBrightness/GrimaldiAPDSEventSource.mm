@interface GrimaldiAPDSEventSource
- (GrimaldiAPDSEventSource)init;
- (int)requestEventOn:(id)a3 withNsamples:(unsigned __int8)a4 withCallback:(id)a5;
- (void)dealloc;
@end

@implementation GrimaldiAPDSEventSource

- (GrimaldiAPDSEventSource)init
{
  v12 = self;
  v11 = a2;
  v10.receiver = self;
  v10.super_class = GrimaldiAPDSEventSource;
  v12 = [(GrimaldiAPDSEventSource *)&v10 init];
  if (v12)
  {
    v2 = os_log_create(CBGrimaldiModuleName, "APDSEventSource");
    v12->_logHandle = v2;
    if (v12->_logHandle)
    {
      if (!ApplePhotonDetectorServicesOpen())
      {
        return v12;
      }
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

      v9 = inited;
      v8 = 16;
      if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
      {
        log = v9;
        type = v8;
        __os_log_helper_16_0_0(v7);
        _os_log_error_impl(&dword_1DE8E5000, log, type, "failed to create log handle", v7, 2u);
      }
    }

    MEMORY[0x1E69E5920](v12);
    return 0;
  }

  return 0;
}

- (void)dealloc
{
  v6 = self;
  v5 = a2;
  if (self->_apdsHandle)
  {
    apdsHandle = v6->_apdsHandle;
    ApplePhotonDetectorServicesClose();
  }

  *&v3 = MEMORY[0x1E69E5920](v6->_logHandle).n128_u64[0];
  v4.receiver = v6;
  v4.super_class = GrimaldiAPDSEventSource;
  [(GrimaldiAPDSEventSource *)&v4 dealloc];
}

- (int)requestEventOn:(id)a3 withNsamples:(unsigned __int8)a4 withCallback:(id)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v46 = self;
  v45 = a2;
  v44 = a3;
  v43 = a4;
  v42 = a5;
  v41 = 0;
  if (a5)
  {
    v37 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
    if (v37)
    {
      *v37 = _Block_copy(v42);
      if (*v37)
      {
        v31 = malloc_type_calloc(1uLL, 0x28uLL, 0x1090040653BC2AFuLL);
        if (v31)
        {
          *v31 = malloc_type_calloc(v43, 4uLL, 0x100004052888210uLL);
          *(v31 + 1) = malloc_type_calloc(v43, 4uLL, 0x100004052888210uLL);
          *(v31 + 2) = malloc_type_calloc(v43, 8uLL, 0x100004000313F17uLL);
          *(v31 + 3) = malloc_type_calloc(v43, 1uLL, 0x100004077774924uLL);
          if (*v31 && *(v31 + 1) && *(v31 + 2) && *(v31 + 3))
          {
            *(v31 + 8) = 0;
            *(v31 + 36) = v43;
            apdsHandle = v46->_apdsHandle;
            LuxAsync = ApplePhotonDetectorServicesGetLuxAsync();
            goto LABEL_57;
          }

          if (v46->_logHandle)
          {
            logHandle = v46->_logHandle;
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

          v27 = logHandle;
          v26 = 16;
          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
          {
            v7 = v27;
            v8 = v26;
            __os_log_helper_16_0_0(v25);
            _os_log_error_impl(&dword_1DE8E5000, v7, v8, "Failed to allocate memory for luxInfo member", v25, 2u);
          }

          v41 = -536870211;
          free(*v31);
          free(*(v31 + 1));
          free(*(v31 + 2));
          free(*(v31 + 3));
          free(v31);
        }

        else
        {
          if (v46->_logHandle)
          {
            v14 = v46->_logHandle;
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

          v30 = v14;
          v29 = 16;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v11 = v30;
            v12 = v29;
            __os_log_helper_16_0_0(v28);
            _os_log_error_impl(&dword_1DE8E5000, v11, v12, "Failed to allocate memory for luxInfo", v28, 2u);
          }

          v41 = -536870211;
        }

        _Block_release(*v37);
      }

      else
      {
        if (v46->_logHandle)
        {
          v16 = v46->_logHandle;
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

        v33 = v16;
        v32 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_0_1_8_0(v48, v42);
          _os_log_error_impl(&dword_1DE8E5000, v33, v32, "Failed to copy block from %p", v48, 0xCu);
        }

        v41 = -536870211;
      }

      free(v37);
      LuxAsync = v41;
      goto LABEL_57;
    }

    if (v46->_logHandle)
    {
      v20 = v46->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v19 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v19 = init_default_corebrightness_log();
      }

      v20 = v19;
    }

    v36 = v20;
    v35 = 16;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v17 = v36;
      v18 = v35;
      __os_log_helper_16_0_0(v34);
      _os_log_error_impl(&dword_1DE8E5000, v17, v18, "Failed to allocate memory for APDSCallbackWrapper", v34, 2u);
    }

    LuxAsync = -536870211;
  }

  else
  {
    if (v46->_logHandle)
    {
      v24 = v46->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v23 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v23 = init_default_corebrightness_log();
      }

      v24 = v23;
    }

    v40 = v24;
    v39 = 16;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      log = v40;
      type = v39;
      __os_log_helper_16_0_0(v38);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Callback is NULL", v38, 2u);
    }

    LuxAsync = -536870911;
  }

LABEL_57:
  *MEMORY[0x1E69E9840];
  return LuxAsync;
}

@end