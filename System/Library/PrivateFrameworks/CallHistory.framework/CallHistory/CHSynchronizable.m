@interface CHSynchronizable
- (BOOL)executeSyncWithBOOL:(id)a3;
- (CHSynchronizable)initWithName:(const char *)a3;
- (CHSynchronizable)initWithQueue:(id)a3;
- (id)executeSyncWithResult:(id)a3;
- (void)execute:(id)a3;
- (void)executeSync:(id)a3;
@end

@implementation CHSynchronizable

- (CHSynchronizable)initWithName:(const char *)a3
{
  v10.receiver = self;
  v10.super_class = CHSynchronizable;
  v4 = [(CHSynchronizable *)&v10 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_UTILITY, 0);

    v7 = dispatch_queue_create(a3, v6);
    queue = v4->_queue;
    v4->_queue = v7;
  }

  return v4;
}

- (CHSynchronizable)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CHSynchronizable;
  v6 = [(CHSynchronizable *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

- (void)execute:(id)a3
{
  v4 = a3;
  v5 = [(CHSynchronizable *)self queue];
  dispatch_async(v5, v4);
}

- (void)executeSync:(id)a3
{
  v4 = a3;
  v5 = [(CHSynchronizable *)self queue];
  dispatch_sync(v5, v4);
}

- (id)executeSyncWithResult:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v5 = [(CHSynchronizable *)self queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__CHSynchronizable_executeSyncWithResult___block_invoke;
  v9[3] = &unk_1E81DBEB0;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(v5, v9);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __42__CHSynchronizable_executeSyncWithResult___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)executeSyncWithBOOL:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(CHSynchronizable *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__CHSynchronizable_executeSyncWithBOOL___block_invoke;
  v8[3] = &unk_1E81DBEB0;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(v5, v8);

  LOBYTE(v5) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v5;
}

uint64_t __40__CHSynchronizable_executeSyncWithBOOL___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end