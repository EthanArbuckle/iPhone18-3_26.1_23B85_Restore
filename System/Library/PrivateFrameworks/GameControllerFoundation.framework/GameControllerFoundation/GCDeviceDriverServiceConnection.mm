@interface GCDeviceDriverServiceConnection
@end

@implementation GCDeviceDriverServiceConnection

id __75___GCDeviceDriverServiceConnection_connectionToServiceInDriver_withClient___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [[v3 alloc] initWithDriverConnection:*(a1 + 32) serviceVendor:v4];

  return v5;
}

void __75___GCDeviceDriverServiceConnection_initWithDriverConnection_serviceVendor___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = _gc_log_ipc();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v38 = v3;
    _os_log_impl(&dword_1D2C3B000, v2, OS_LOG_TYPE_INFO, "%@: Invalidating", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v6 = atomic_load((*(a1 + 32) + 40));
  if (v6)
  {
    objc_sync_exit(v4);
  }

  else
  {
    atomic_store(1u, (*(a1 + 32) + 40));
    Property = *(a1 + 40);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 48, 1);
    }

    v8 = Property;
    v10 = *(a1 + 32);
    v9 = a1 + 32;
    v11 = *(v10 + 16);
    *(v10 + 16) = 0;

    v12 = *(*v9 + 24);
    *(*v9 + 24) = 0;

    objc_sync_exit(v4);
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A588];
    v35[0] = *MEMORY[0x1E696A578];
    v35[1] = v14;
    v36[0] = @"Request failed.";
    v36[1] = @"Service connection invalidated.";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
    v16 = [v13 gc_IPCError:1 userInfo:v15];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = [0 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v17)
    {
      v18 = *v30;
      do
      {
        v19 = 0;
        do
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(0);
          }

          [*(*(&v29 + 1) + 8 * v19++) failWithError:v16];
        }

        while (v17 != v19);
        v17 = [0 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v17);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v20 = [v8 reverseObjectEnumerator];
    v21 = [v20 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v21)
    {
      v22 = *v26;
      do
      {
        v23 = 0;
        do
        {
          if (*v26 != v22)
          {
            objc_enumerationMutation(v20);
          }

          (*(*(*(&v25 + 1) + 8 * v23++) + 16))();
        }

        while (v21 != v23);
        v21 = [v20 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v21);
    }

    v4 = v8;
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __59___GCDeviceDriverServiceConnection_addInvalidationHandler___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 48, 1);
  }

  v4 = Property;
  v5 = [v4 mutableCopy];

  v6 = _Block_copy(*(a1 + 40));
  [v5 removeObject:v6];

  v8 = *(a1 + 32);
  if (v8)
  {
    objc_setProperty_atomic_copy(v8, v7, v5, 48);
  }

  objc_sync_exit(obj);
}

id __74___GCDeviceDriverServiceConnection_serviceVendorRequestWithLabel_handler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v36[2] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  objc_sync_enter(v5);
  v6 = atomic_load((*(a1 + 32) + 40));
  if (v6)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A588];
    v35[0] = *MEMORY[0x1E696A578];
    v35[1] = v8;
    v36[0] = @"Request failed.";
    v36[1] = @"Service connection is invalid.";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
    v10 = [v7 gc_IPCError:1 userInfo:v9];

    v11 = v10;
    *a3 = v10;

    objc_sync_exit(v5);
    v12 = 0;
  }

  else
  {
    objc_sync_exit(v5);

    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__4;
    v33 = __Block_byref_object_dispose__4;
    v34 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__4;
    v27 = __Block_byref_object_dispose__4;
    v28 = 0;
    v13 = *(*(a1 + 32) + 32);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __74___GCDeviceDriverServiceConnection_serviceVendorRequestWithLabel_handler___block_invoke_23;
    v22[3] = &unk_1E84144F0;
    v22[4] = &v23;
    v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v22];
    v15 = *(a1 + 40);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __74___GCDeviceDriverServiceConnection_serviceVendorRequestWithLabel_handler___block_invoke_2;
    v21[3] = &unk_1E8414518;
    v21[4] = &v29;
    v21[5] = &v23;
    (*(v15 + 16))(v15, v14, v21, v16, v17, v18);
    *a3 = v24[5];
    v12 = v30[5];

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v29, 8);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v12;
}

void __74___GCDeviceDriverServiceConnection_serviceVendorRequestWithLabel_handler___block_invoke_23(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else
  {
    v5 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A578];
    v12[0] = @"The request failed, but an error was not provided.";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v7 = [v5 gc_IPCError:0 userInfo:v6];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __74___GCDeviceDriverServiceConnection_serviceVendorRequestWithLabel_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6)
  {
    v9 = (*(*(a1 + 32) + 8) + 40);
    v10 = a2;
  }

  else
  {
    if (!v7)
    {
      v12 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A578];
      v18[0] = @"The request did not return a result, but an error was not provided.";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v14 = [v12 gc_IPCError:0 userInfo:v13];
      v15 = *(*(a1 + 40) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      goto LABEL_6;
    }

    v9 = (*(*(a1 + 40) + 8) + 40);
    v10 = a3;
  }

  objc_storeStrong(v9, v10);
LABEL_6:

  v11 = *MEMORY[0x1E69E9840];
}

void __74___GCDeviceDriverServiceConnection_serviceVendorRequestWithLabel_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = atomic_load((*(a1 + 32) + 40));
  if (v5)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E696A588];
    v19[0] = *MEMORY[0x1E696A578];
    v19[1] = v7;
    v20[0] = @"Request failed.";
    v20[1] = @"Service connection is invalid.";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v9 = [v6 gc_IPCError:1 userInfo:v8];

    [v3 failWithError:v9];
    objc_sync_exit(v4);
  }

  else
  {
    objc_sync_exit(v4);

    v10 = *(*(a1 + 32) + 32);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __74___GCDeviceDriverServiceConnection_serviceVendorRequestWithLabel_handler___block_invoke_4;
    v17[3] = &unk_1E8414568;
    v11 = v3;
    v18 = v11;
    v12 = [v10 remoteObjectProxyWithErrorHandler:v17];
    v13 = *(a1 + 40);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __74___GCDeviceDriverServiceConnection_serviceVendorRequestWithLabel_handler___block_invoke_5;
    v15[3] = &unk_1E8414590;
    v16 = v11;
    (*(v13 + 16))(v13, v12, v15);

    v4 = v18;
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __74___GCDeviceDriverServiceConnection_serviceVendorRequestWithLabel_handler___block_invoke_4(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v4 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E696A578];
    v8[0] = @"The request failed, but an error was not provided.";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v3 = [v4 gc_IPCError:0 userInfo:v5];
  }

  [*(a1 + 32) failWithError:v3];

  v6 = *MEMORY[0x1E69E9840];
}

void __74___GCDeviceDriverServiceConnection_serviceVendorRequestWithLabel_handler___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    [*(a1 + 32) succeedWithResult:v5];
  }

  else
  {
    v8 = *(a1 + 32);
    if (v6)
    {
      [v8 failWithError:v6];
    }

    else
    {
      v9 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E696A578];
      v14[0] = @"The request did not return a result, but an error was not provided.";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v11 = [v9 gc_IPCError:0 userInfo:v10];
      [v8 failWithError:v11];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end