@interface _FBSDisplayLayoutEndpointServices
+ (id)_checkoutServiceWithEndpoint:(id)endpoint qos:(char)qos;
+ (void)_checkinService:(id)service;
@end

@implementation _FBSDisplayLayoutEndpointServices

+ (id)_checkoutServiceWithEndpoint:(id)endpoint qos:(char)qos
{
  qosCopy = qos;
  endpointCopy = endpoint;
  if (!endpointCopy)
  {
    [_FBSDisplayLayoutEndpointServices _checkoutServiceWithEndpoint:a2 qos:?];
  }

  v7 = endpointCopy;
  v8 = +[FBSDisplayLayoutMonitor serviceIdentifier];
  service = [v7 service];
  v10 = [v8 isEqualToString:service];

  if ((v10 & 1) == 0)
  {
    [_FBSDisplayLayoutEndpointServices _checkoutServiceWithEndpoint:v7 qos:a2];
  }

  if (qosCopy >= 3)
  {
    [_FBSDisplayLayoutEndpointServices _checkoutServiceWithEndpoint:qosCopy qos:a2];
  }

  os_unfair_lock_lock(&__sharedEndpointServicesLock);
  v11 = __sharedEndpointServices;
  if (!__sharedEndpointServices)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v13 = __sharedEndpointServices;
    __sharedEndpointServices = dictionary;

    v11 = __sharedEndpointServices;
  }

  v14 = [v11 objectForKey:v7];
  if (!v14)
  {
    v14 = objc_opt_new();
    [__sharedEndpointServices setObject:v14 forKey:v7];
  }

  ++*&v14[8 * qosCopy + 32];
  v15 = v14 + 8;
  v16 = *&v14[8 * qosCopy + 8];
  if (!v16)
  {
    v16 = [[_FBSDisplayLayoutService alloc] _initWithEndpoint:v7 qos:qosCopy];
    v17 = *&v15[8 * qosCopy];
    *&v15[8 * qosCopy] = v16;
  }

  os_unfair_lock_unlock(&__sharedEndpointServicesLock);

  return v16;
}

+ (void)_checkinService:(id)service
{
  serviceCopy = service;
  if (!serviceCopy)
  {
    [_FBSDisplayLayoutEndpointServices _checkinService:a2];
  }

  v18 = serviceCopy;
  endpoint = [serviceCopy endpoint];
  os_unfair_lock_lock(&__sharedEndpointServicesLock);
  v6 = [__sharedEndpointServices objectForKey:endpoint];
  v7 = v18;
  v8 = v6;
  if (v6)
  {
    v9 = 0;
    v10 = v6 + 8;
    v11 = v6 + 32;
    v12 = 1;
    do
    {
      while (1)
      {
        v13 = *(v11 + 8 * v9);
        if (*(v10 + 8 * v9) == v7)
        {
          break;
        }

        v12 &= v13 == 0;
LABEL_6:
        if (++v9 == 3)
        {
          if (v12)
          {
            [__sharedEndpointServices removeObjectForKey:endpoint];
            if (![__sharedEndpointServices count])
            {
              v16 = __sharedEndpointServices;
              __sharedEndpointServices = 0;
            }
          }

          goto LABEL_16;
        }
      }

      if (!v13)
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid refcnt for qos=%i endpoint=%@", v9, endpoint];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [_FBSDisplayLayoutEndpointServices _checkinService:a2];
        }

        [v17 UTF8String];
        _bs_set_crash_log_message();
      }

      v14 = v13 - 1;
      *(v11 + 8 * v9) = v14;
      if (!v14)
      {
        [v7 invalidate];
        v15 = *(v10 + 8 * v9);
        *(v10 + 8 * v9) = 0;

        v7 = v18;
        goto LABEL_6;
      }

      v12 = 0;
      ++v9;
    }

    while (v9 != 3);
  }

LABEL_16:
  os_unfair_lock_unlock(&__sharedEndpointServicesLock);
}

+ (void)_checkoutServiceWithEndpoint:(uint64_t)a1 qos:(char *)a2 .cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"endpoint's service is unexpected : %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)_checkoutServiceWithEndpoint:(char)a1 qos:(char *)a2 .cold.2(char a1, char *a2)
{
  v11 = a1;
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid QOS %d"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)_checkoutServiceWithEndpoint:(char *)a1 qos:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"endpoint", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)_checkinService:(const char *)a1 .cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, 2u);
}

+ (void)_checkinService:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"service", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

@end