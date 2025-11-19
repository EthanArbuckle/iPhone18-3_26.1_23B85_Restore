@interface GCDeviceOnDiskDB
@end

@implementation GCDeviceOnDiskDB

_GCDeviceDBBundle *__37___GCDeviceOnDiskDB_initWithBundles___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _gc_log_devicedb();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __37___GCDeviceOnDiskDB_initWithBundles___block_invoke_cold_1(v2, v3);
  }

  v8 = 0;
  v4 = [[_GCDeviceDBBundle alloc] initWithBundle:v2 error:&v8];
  v5 = v8;
  if (!v4)
  {
    v6 = _gc_log_devicedb();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __37___GCDeviceOnDiskDB_initWithBundles___block_invoke_cold_2();
    }
  }

  return v4;
}

void __37___GCDeviceOnDiskDB_initWithBundles___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [a1 bundleURL];
  v5 = [v4 path];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_debug_impl(&dword_1D2C3B000, a2, OS_LOG_TYPE_DEBUG, "Loading bundle '%{public}@' at '%{public}@'...", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void __37___GCDeviceOnDiskDB_initWithBundles___block_invoke_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_5(&dword_1D2C3B000, v0, v1, "📦 Error loading bundle '%{public}@': %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

@end