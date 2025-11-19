@interface GCIOService
+ (id)addMatchingNotification:(id)a3 type:(const char *)a4 matching:(id)a5 handler:(id)a6;
- (IOCFPlugInInterfaceStruct)createCFPlugInInterface:(__CFUUID *)a3 score:(int *)a4 error:(id *)a5;
- (id)addInterestNotification:(id)a3 type:(const char *)a4 handler:(id)a5;
@end

@implementation GCIOService

+ (id)addMatchingNotification:(id)a3 type:(const char *)a4 matching:(id)a5 handler:(id)a6
{
  v45 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  notification = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__5;
  v41 = __Block_byref_object_dispose__5;
  v42 = 0;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __61__GCIOService_addMatchingNotification_type_matching_handler___block_invoke;
  v34[3] = &unk_1E8414828;
  v36 = &v37;
  v12 = v11;
  v35 = v12;
  v13 = [v34 copy];
  v14 = v9;
  v15 = [v9 port];
  v16 = v10;
  v17 = IOServiceAddMatchingNotification(v15, a4, v16, __IOServiceMatchingCallback, v13, &notification);
  if (v17)
  {
    v20 = _gc_log_iokit();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [GCIOService addMatchingNotification:a4 type:v17 matching:v20 handler:?];
    }

    v24 = 0;
  }

  else
  {
    v18 = [GCIOIterator alloc];
    v33 = 0;
    v19 = [(GCIOIterator *)v18 initWithPort:notification objectClass:objc_opt_class() error:&v33];
    v20 = v33;
    v21 = v38[5];
    v38[5] = v19;

    if (v38[5])
    {
      IOObjectRelease(notification);
      v22 = [v9 queue];
      dispatch_async(v22, v13);

      v23 = [GCDisposable alloc];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __61__GCIOService_addMatchingNotification_type_matching_handler___block_invoke_7;
      v29[3] = &unk_1E8414878;
      v32 = &v37;
      v30 = v9;
      v31 = v13;
      v24 = [(GCDisposable *)v23 initWithCleanupHandler:v29];

      v25 = v30;
    }

    else
    {
      v25 = _gc_log_iokit();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v28 = [v20 localizedFailureReason];
        [GCIOService addMatchingNotification:a4 type:v28 matching:buf handler:v25];
      }

      v24 = 0;
    }
  }

  _Block_object_dispose(&v37, 8);
  v26 = *MEMORY[0x1E69E9840];

  return v24;
}

uint64_t __61__GCIOService_addMatchingNotification_type_matching_handler___block_invoke(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __61__GCIOService_addMatchingNotification_type_matching_handler___block_invoke_7(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__GCIOService_addMatchingNotification_type_matching_handler___block_invoke_2;
  block[3] = &unk_1E8414850;
  v6 = *(a1 + 40);
  dispatch_async(v4, block);
}

- (id)addInterestNotification:(id)a3 type:(const char *)a4 handler:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  notification = 0;
  v9 = [a5 copy];
  v10 = [v8 port];
  v11 = [(GCIOObject *)self port];
  v12 = IOServiceAddInterestNotification(v10, v11, a4, __IOServiceNotificationCallback, v9, &notification);
  if (v12)
  {
    v18 = v12;
    v15 = _gc_log_iokit();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v25 = self;
      v26 = 2082;
      v27 = a4;
      v28 = 1024;
      v29 = v18;
      _os_log_error_impl(&dword_1D2C3B000, v15, OS_LOG_TYPE_ERROR, "%@ Error registering interest notification for '%{public}s': %{mach.errno}d", buf, 0x1Cu);
    }

    v14 = 0;
  }

  else
  {
    v13 = [GCDisposable alloc];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __52__GCIOService_addInterestNotification_type_handler___block_invoke;
    v19[3] = &unk_1E84148A0;
    v22 = notification;
    v20 = v8;
    v21 = v9;
    v14 = [(GCDisposable *)v13 initWithCleanupHandler:v19];

    v15 = v20;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

void __52__GCIOService_addInterestNotification_type_handler___block_invoke(uint64_t a1)
{
  IOObjectRelease(*(a1 + 48));
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__GCIOService_addInterestNotification_type_handler___block_invoke_2;
  block[3] = &unk_1E8414850;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

- (IOCFPlugInInterfaceStruct)createCFPlugInInterface:(__CFUUID *)a3 score:(int *)a4 error:(id *)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  theScore = 0;
  theInterface = 0;
  v8 = [(GCIOObject *)self port];
  v9 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
  v10 = IOCreatePlugInInterfaceForService(v8, a3, v9, &theInterface, &theScore);
  if (v10)
  {
    if (a5)
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A5A0];
      v15 = v10;
      v19 = *MEMORY[0x1E696A580];
      v20[0] = @"CFPlugIn instantiation failed.";
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      *a5 = [v13 errorWithDomain:v14 code:v15 userInfo:v16];
    }

    result = 0;
  }

  else
  {
    if (a4)
    {
      *a4 = theScore;
    }

    result = theInterface;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)addMatchingNotification:(os_log_t)log type:matching:handler:.cold.1(uint64_t a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 136446466;
  v5 = a1;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&dword_1D2C3B000, log, OS_LOG_TYPE_ERROR, "<IOService> Error registering matching notification for '%{public}s': %{mach.errno}d", &v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)addMatchingNotification:(uint64_t)a1 type:(void *)a2 matching:(uint8_t *)buf handler:(os_log_t)log .cold.2(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 136446466;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1D2C3B000, log, OS_LOG_TYPE_ERROR, "<IOService> Error creating iterator for matching notification for '%{public}s': %{public}@", buf, 0x16u);
}

@end