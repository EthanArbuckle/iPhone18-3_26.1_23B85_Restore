@interface CCSetChangeXPCNotifier
+ (id)sharedInstance;
- (CCSetChangeXPCNotifier)init;
- (void)_handlePublisherAction:(unsigned int)a3 token:(unint64_t)a4 descriptor:(id)a5;
- (void)notifyChangeToSet:(id)a3;
@end

@implementation CCSetChangeXPCNotifier

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CCSetChangeXPCNotifier_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance__pasOnceToken2_1 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_1, block);
  }

  v2 = sharedInstance__pasExprOnceResult_1;

  return v2;
}

void __40__CCSetChangeXPCNotifier_sharedInstance__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = sharedInstance__pasExprOnceResult_1;
  sharedInstance__pasExprOnceResult_1 = v4;

  objc_autoreleasePoolPop(v2);
}

- (CCSetChangeXPCNotifier)init
{
  v18.receiver = self;
  v18.super_class = CCSetChangeXPCNotifier;
  v2 = [(CCSetChangeXPCNotifier *)&v18 init];
  if (v2)
  {
    v3 = objc_opt_new();
    tokens = v2->_tokens;
    v2->_tokens = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.cascade.setChange.xpc.notifier", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1B6DB2000, v8, OS_LOG_TYPE_DEFAULT, "CCSetChangeXPCNotifier setting up XPC event publisher", buf, 2u);
    }

    v9 = v2->_queue;
    v10 = xpc_event_publisher_create();
    publisher = v2->_publisher;
    v2->_publisher = v10;

    objc_initWeak(buf, v2);
    v12 = v2->_publisher;
    objc_copyWeak(&v16, buf);
    xpc_event_publisher_set_handler();
    v13 = v2->_publisher;
    xpc_event_publisher_set_error_handler();
    v14 = v2->_publisher;
    xpc_event_publisher_activate();
    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  return v2;
}

void __30__CCSetChangeXPCNotifier_init__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePublisherAction:a2 token:a3 descriptor:v7];
}

void __30__CCSetChangeXPCNotifier_init__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = xpc_strerror();
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __30__CCSetChangeXPCNotifier_init__block_invoke_2_cold_1(a2, v3, v4);
  }
}

- (void)_handlePublisherAction:(unsigned int)a3 token:(unint64_t)a4 descriptor:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  switch(a3)
  {
    case 2u:
      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_1B6DB2000, v11, OS_LOG_TYPE_DEFAULT, "CCSetChangeXPCNotifier _handlePublisherAction: initial barrier", &v18, 2u);
      }

      goto LABEL_15;
    case 1u:
      v12 = __biome_log_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
        v18 = 138412290;
        v19 = v13;
        _os_log_impl(&dword_1B6DB2000, v12, OS_LOG_TYPE_DEFAULT, "CCSetChangeXPCNotifier removing listener with token: %@", &v18, 0xCu);
      }

      tokens = self->_tokens;
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
      LOBYTE(tokens) = [(NSMutableArray *)tokens containsObject:v15];

      if (tokens)
      {
        v16 = self->_tokens;
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
        [(NSMutableArray *)v16 removeObject:v11];
      }

      else
      {
        v11 = __biome_log_for_category();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [CCSetChangeXPCNotifier _handlePublisherAction:a4 token:v11 descriptor:?];
        }
      }

      goto LABEL_15;
    case 0u:
      v8 = __biome_log_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
        v18 = 138412290;
        v19 = v9;
        _os_log_impl(&dword_1B6DB2000, v8, OS_LOG_TYPE_DEFAULT, "CCSetChangeXPCNotifier adding listener with token: %@", &v18, 0xCu);
      }

      v10 = self->_tokens;
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
      [(NSMutableArray *)v10 addObject:v11];
LABEL_15:

      break;
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)notifyChangeToSet:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__CCSetChangeXPCNotifier_notifyChangeToSet___block_invoke;
  v7[3] = &unk_1E7C8B0D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __44__CCSetChangeXPCNotifier_notifyChangeToSet___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v26;
    *&v4 = 138413058;
    v24 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v25 + 1) + 8 * v7);
        v9 = [*(a1 + 40) toXPCDictionary];
        v10 = __biome_log_for_category();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 32);
          v12 = objc_opt_class();
          v13 = *(a1 + 40);
          *buf = 138412546;
          v30 = v12;
          v31 = 2112;
          *v32 = v13;
          _os_log_impl(&dword_1B6DB2000, v10, OS_LOG_TYPE_DEFAULT, "%@ firing xpc_event for set: %@", buf, 0x16u);
        }

        v14 = *(*(a1 + 32) + 8);
        [v8 unsignedLongValue];
        v15 = xpc_event_publisher_fire();
        if (v15)
        {
          v16 = v15;
          v17 = __biome_log_for_category();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = *(a1 + 32);
            v19 = objc_opt_class();
            v20 = __error();
            v21 = strerror(*v20);
            v22 = *(a1 + 40);
            *buf = v24;
            v30 = v19;
            v31 = 1024;
            *v32 = v16;
            *&v32[4] = 2080;
            *&v32[6] = v21;
            v33 = 2112;
            v34 = v22;
            _os_log_error_impl(&dword_1B6DB2000, v17, OS_LOG_TYPE_ERROR, "%@ firing xpc_event returned %d with error %s for set: %@", buf, 0x26u);
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v5);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __30__CCSetChangeXPCNotifier_init__block_invoke_2_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v8 = 138412546;
  v9 = v5;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_1B6DB2000, a3, OS_LOG_TYPE_ERROR, "CCSetChangeXPCNotifier XPC event publisher error: %@ %@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_handlePublisherAction:(uint64_t)a1 token:(NSObject *)a2 descriptor:.cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a1];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_ERROR, "Unknown token to remove: %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end