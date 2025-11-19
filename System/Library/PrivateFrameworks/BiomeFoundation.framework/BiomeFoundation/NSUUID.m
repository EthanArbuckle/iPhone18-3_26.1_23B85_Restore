@interface NSUUID
@end

@implementation NSUUID

void __41__NSUUID_BMUtilities__bm_bootSessionUUID__block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  memset(v7, 0, sizeof(v7));
  v6 = 37;
  if (sysctlbyname("kern.bootsessionuuid", v7, &v6, 0, 0))
  {
    v0 = __biome_log_for_category(0);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
    {
      __41__NSUUID_BMUtilities__bm_bootSessionUUID__block_invoke_cold_1(v0);
    }

    v1 = [MEMORY[0x1E696AFB0] UUID];
    v2 = bm_bootSessionUUID__bootSessionUUID;
    bm_bootSessionUUID__bootSessionUUID = v1;
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v7];
    v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v2];
    v4 = bm_bootSessionUUID__bootSessionUUID;
    bm_bootSessionUUID__bootSessionUUID = v3;
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __41__NSUUID_BMUtilities__bm_bootSessionUUID__block_invoke_cold_1(NSObject *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_fault_impl(&dword_1AC15D000, a1, OS_LOG_TYPE_FAULT, "Failed to retrieve boot session UUID with error %{darwin.errno}d", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

@end