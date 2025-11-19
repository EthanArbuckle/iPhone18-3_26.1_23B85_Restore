@interface GCGenericDeviceDB
@end

@implementation GCGenericDeviceDB

void __39___GCGenericDeviceDB_initWithProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _os_activity_create(&dword_1D2C3B000, "[Generic Device DB/Config] Did Change", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v2, &state);
    v3 = WeakRetained[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39___GCGenericDeviceDB_initWithProvider___block_invoke_2;
    block[3] = &unk_1E8413DA0;
    v5 = WeakRetained;
    dispatch_async_and_wait(v3, block);

    os_activity_scope_leave(&state);
  }
}

void __39___GCGenericDeviceDB_initWithProvider___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39___GCGenericDeviceDB_initWithProvider___block_invoke_4;
    block[3] = &unk_1E8413DA0;
    v5 = WeakRetained;
    dispatch_async_and_wait(v3, block);
  }
}

void __39___GCGenericDeviceDB_initWithProvider___block_invoke_4(uint64_t a1)
{
  v2 = _os_activity_create(&dword_1D2C3B000, "[Generic Device DB/Config] Refresh", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v3.opaque[0] = 0;
  v3.opaque[1] = 0;
  os_activity_scope_enter(v2, &v3);
  [*(a1 + 32) _onqueue_updateConfigurationBundles];
  os_activity_scope_leave(&v3);
}

void __51___GCGenericDeviceDB_preparedModelForDevice_error___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v31[8] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 predicate];
  v7 = [*(a1 + 32) filteredArrayUsingPredicate:v6];
  if ([v7 count] == 1)
  {
    v8 = [v7 firstObject];
    [v5 setElementCookie:{objc_msgSend(v8, "elementCookie")}];

LABEL_7:
    goto LABEL_8;
  }

  if ([v7 count] < 2)
  {
    if (([v5 optional] & 1) == 0)
    {
      v19 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A588];
      v28[0] = *MEMORY[0x1E696A578];
      v28[1] = v20;
      v29[0] = @"Error preparing model for device.";
      v21 = MEMORY[0x1E696AEC0];
      v22 = [v5 identifier];
      v23 = [v21 stringWithFormat:@"Did not find required element matching predicate for '%@'.", v22];
      v29[1] = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
      v25 = [v19 errorWithDomain:0x1F4E1BFF0 code:7 userInfo:v24];
      v26 = *(*(a1 + 40) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;

      *a3 = 1;
      goto LABEL_8;
    }

    [v5 setElementCookie:0];
    goto LABEL_7;
  }

  v9 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A588];
  v30[0] = *MEMORY[0x1E696A578];
  v30[1] = v10;
  v31[0] = @"Error preparing model for device.";
  v11 = MEMORY[0x1E696AEC0];
  v12 = [v5 identifier];
  v13 = [v11 stringWithFormat:@"Found multiple matching elements matching predicate for '%@'.", v12];
  v31[1] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v15 = [v9 errorWithDomain:0x1F4E1BFF0 code:7 userInfo:v14];
  v16 = *(*(a1 + 40) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  *a3 = 1;
LABEL_8:

  v18 = *MEMORY[0x1E69E9840];
}

@end