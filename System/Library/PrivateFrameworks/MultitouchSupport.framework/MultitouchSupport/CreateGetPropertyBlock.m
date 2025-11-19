@interface CreateGetPropertyBlock
@end

@implementation CreateGetPropertyBlock

id __mt_CreateGetPropertyBlock_block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v22 = 0;
  v23 = 0;
  v5 = [v4 getProperty:v3 property:&v23 options:0 error:&v22];
  v6 = v23;
  v7 = v22;
  v8 = *(a1 + 40);
  if (v5)
  {
    if (v8)
    {
      if (*(v8 + 133) == 1)
      {
        mt_CachePropertiesForDevice(v8);
      }

      v9 = MTLoggingFramework();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_8;
      }

      v10 = [v6 length];
      v11 = *(*(a1 + 40) + 64);
      *buf = 138543874;
      v25 = v3;
      v26 = 1024;
      *v27 = v10;
      *&v27[4] = 2048;
      *&v27[6] = v11;
      v12 = "Getting property '%{public}@' from bootloader: %u bytes (deviceID 0x%llX)";
      v13 = v9;
      v14 = 28;
    }

    else
    {
      v9 = MTLoggingFramework();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_8;
      }

      v21 = [v6 length];
      *buf = 138543618;
      v25 = v3;
      v26 = 1024;
      *v27 = v21;
      v12 = "Getting property '%{public}@' from bootloader: %u bytes";
      v13 = v9;
      v14 = 18;
    }

    _os_log_impl(&dword_25AD59000, v13, OS_LOG_TYPE_DEBUG, v12, buf, v14);
LABEL_8:

    v15 = v6;
    goto LABEL_16;
  }

  if (v8)
  {
    if (*(v8 + 133) == 1)
    {
      mt_CachePropertiesForDevice(v8);
    }

    v16 = MTLoggingFramework();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [v7 localizedDescription];
      v18 = *(*(a1 + 40) + 64);
      *buf = 138543874;
      v25 = v3;
      v26 = 2114;
      *v27 = v17;
      *&v27[8] = 2048;
      *&v27[10] = v18;
      _os_log_impl(&dword_25AD59000, v16, OS_LOG_TYPE_ERROR, "Error getting property '%{public}@' from bootloader: %{public}@ (deviceID 0x%llX)", buf, 0x20u);
    }
  }

  else
  {
    __mt_CreateGetPropertyBlock_block_invoke_cold_1(v3, v7);
  }

  v15 = 0;
LABEL_16:

  v19 = *MEMORY[0x277D85DE8];

  return v15;
}

void __mt_CreateGetPropertyBlock_block_invoke_cold_1(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = MTLoggingFramework();
  if (OUTLINED_FUNCTION_1(v4))
  {
    v11 = [a2 localizedDescription];
    OUTLINED_FUNCTION_0();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end