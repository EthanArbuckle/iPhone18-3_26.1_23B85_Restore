@interface MSKeyValueStore
+ (id)valueForKey:(id)a3;
- (void)_simulateServicesMethod:(id)a3 arguments:(id)a4 callback:(id)a5;
- (void)_valueForKey:(id)a3 handler:(id)a4;
@end

@implementation MSKeyValueStore

+ (id)valueForKey:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MSKeyValueStore);
  [(MSMailDefaultService *)v4 setShouldLaunchMobileMail:1];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v5 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __31__MSKeyValueStore_valueForKey___block_invoke;
  v10[3] = &unk_1E855EC90;
  v6 = v3;
  v12 = v5;
  v13 = &v14;
  v11 = v6;
  v7 = v5;
  [(MSKeyValueStore *)v4 _valueForKey:v6 handler:v10];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __31__MSKeyValueStore_valueForKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = MFLogGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_1D876A000, v8, OS_LOG_TYPE_DEFAULT, "#Warning failed to retrieve value for key '%@' error: %@", &v11, 0x16u);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_valueForKey:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObject:a3 forKey:@"key"];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__MSKeyValueStore__valueForKey_handler___block_invoke;
  v10[3] = &unk_1E855E998;
  v9 = v6;
  v11 = v9;
  [(MSService *)self _callServicesMethod:@"MailValueForKey" arguments:v8 callback:v10];

  objc_autoreleasePoolPop(v7);
}

void __40__MSKeyValueStore__valueForKey_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v5 = [a2 objectForKey:@"value"];
  (*(*(a1 + 32) + 16))();
}

- (void)_simulateServicesMethod:(id)a3 arguments:(id)a4 callback:(id)a5
{
  v22[4] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 isEqualToString:@"MailValueForKey"])
  {
    v11 = [v9 objectForKey:@"key"];
    v21[0] = @"SignatureKey";
    v21[1] = @"UseAccountSignatures";
    v22[0] = @"Sent from my iPhone Simulator";
    v22[1] = MEMORY[0x1E695E110];
    v12 = *MEMORY[0x1E699AB90];
    v21[2] = *MEMORY[0x1E699AB48];
    v21[3] = v12;
    v22[2] = MEMORY[0x1E695E110];
    v22[3] = &unk_1F541F260;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:4];
    v14 = [v13 objectForKeyedSubscript:v11];
    v15 = v14;
    if (v14)
    {
      v19 = @"value";
      v20 = v14;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    }

    else
    {
      v16 = 0;
    }

    v10[2](v10, v16, 0);
  }

  else
  {
    v18.receiver = self;
    v18.super_class = MSKeyValueStore;
    [(MSService *)&v18 _simulateServicesMethod:v8 arguments:v9 callback:v10];
  }

  v17 = *MEMORY[0x1E69E9840];
}

@end