@interface GCDeviceDBBundle
@end

@implementation GCDeviceDBBundle

void __42___GCDeviceDBBundle_initWithBundle_error___block_invoke(uint64_t a1, void (**a2)(void, void, void), uint64_t a3, _BYTE *a4)
{
  v45[2] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = objc_opt_class();
  v10 = a1 + 56;
  v11 = *(*(a1 + 56) + 8);
  obj = *(v11 + 40);
  v12 = (a2)[2](v8, v9, &obj);

  objc_storeStrong((v11 + 40), obj);
  if (v12)
  {
    v13 = [_GCDeviceDBBundleDevice alloc];
    v14 = *(a1 + 32);
    v15 = *(*(a1 + 56) + 8);
    v33 = 0;
    v16 = [(_GCDeviceDBBundleDevice *)v13 initWithBundle:v14 dictionary:v12 error:&v33];
    objc_storeStrong((v15 + 40), v33);
    if (v16)
    {
      [*(a1 + 48) addObject:v16];
    }

    else
    {
      v26 = [*(*(*v10 + 8) + 40) code];
      v27 = _gc_log_devicedb();
      v28 = v27;
      if (v26 == 5)
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v29 = *(a1 + 40);
          v30 = [*(*(*(a1 + 56) + 8) + 40) localizedFailureReason];
          *buf = 138413058;
          v36 = v29;
          v37 = 2114;
          v38 = @"Devices";
          v39 = 2048;
          v40 = a3;
          v41 = 2114;
          v42 = v30;
          _os_log_debug_impl(&dword_1D2C3B000, v28, OS_LOG_TYPE_DEBUG, "📦 Skipping loading device definition at '%@' > '%{public}@' > [%zd]: %{public}@.", buf, 0x2Au);
        }
      }

      else if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        __42___GCDeviceDBBundle_initWithBundle_error___block_invoke_cold_1((a1 + 32), a1 + 56, v28);
      }

      v31 = *(*v10 + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = 0;
    }
  }

  else
  {
    v18 = MEMORY[0x1E696ABC0];
    v44[0] = *MEMORY[0x1E696A588];
    v19 = [*(*(*v10 + 8) + 40) localizedFailureReason];
    v44[1] = 0x1F4E1C010;
    v45[0] = v19;
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%zd]", a3];
    v43 = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
    v45[1] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
    v23 = [(NSError *)v18 gc_deviceDBError:v22 userInfo:?];
    v24 = *(*v10 + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v23;

    *a4 = 1;
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __42___GCDeviceDBBundle_initWithBundle_error___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(*(*a2 + 8) + 40);
  v6 = 138412546;
  v7 = v3;
  v8 = 2114;
  v9 = v4;
  _os_log_fault_impl(&dword_1D2C3B000, log, OS_LOG_TYPE_FAULT, "📦 Error loading device definition in bundle %@: %{public}@", &v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end