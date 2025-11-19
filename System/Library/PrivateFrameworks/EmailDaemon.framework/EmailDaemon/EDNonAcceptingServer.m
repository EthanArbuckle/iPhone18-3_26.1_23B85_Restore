@interface EDNonAcceptingServer
+ (OS_os_log)log;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (EDNonAcceptingServer)initWithMachServiceNames:(id)a3;
@end

@implementation EDNonAcceptingServer

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__EDNonAcceptingServer_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_70 != -1)
  {
    dispatch_once(&log_onceToken_70, block);
  }

  v2 = log_log_70;

  return v2;
}

void __27__EDNonAcceptingServer_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_70;
  log_log_70 = v1;
}

- (EDNonAcceptingServer)initWithMachServiceNames:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = EDNonAcceptingServer;
  v5 = [(EDNonAcceptingServer *)&v21 init];
  if (v5)
  {
    v6 = objc_opt_new();
    listeners = v5->_listeners;
    v5->_listeners = v6;

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * v11);
          v13 = objc_alloc(MEMORY[0x1E696B0D8]);
          v14 = [v13 initWithMachServiceName:{v12, v17}];
          [v14 setDelegate:v5];
          [(NSMutableArray *)v5->_listeners addObject:v14];
          [v14 resume];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v9);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = +[EDNonAcceptingServer log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Not accepting %@", &v8, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

@end