@interface GCDeviceConfigurationEvaluator
@end

@implementation GCDeviceConfigurationEvaluator

uint64_t __69___GCDeviceConfigurationEvaluator_viableConfigurations_deviceOwners___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 priority];
  if (v6 <= [v5 priority])
  {
    v8 = [v4 priority];
    v7 = v8 < [v5 priority];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void __69___GCDeviceConfigurationEvaluator_viableConfigurations_deviceOwners___block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _gc_log_device_configuration();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __69___GCDeviceConfigurationEvaluator_viableConfigurations_deviceOwners___block_invoke_10_cold_1();
  }
}

void __69___GCDeviceConfigurationEvaluator_viableConfigurations_deviceOwners___block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _gc_log_device_configuration();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = [*(a1 + 32) objectForKey:v5];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v11 = @"(NONE)";
    if ((isKindOfClass & 1) == 0)
    {
      v11 = v6;
    }

    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v11;
    _os_log_debug_impl(&dword_1D2C3B000, v7, OS_LOG_TYPE_DEBUG, "\t%@ -> %@", &v12, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __43___GCDeviceConfigurationEvaluator_evaluate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = MEMORY[0x1E695DFB0];
  v6 = a3;
  v7 = [v5 null];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    [*(a1 + 32) removeObjectForKey:v9];
  }
}

void __69___GCDeviceConfigurationEvaluator_viableConfigurations_deviceOwners___block_invoke_10_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end