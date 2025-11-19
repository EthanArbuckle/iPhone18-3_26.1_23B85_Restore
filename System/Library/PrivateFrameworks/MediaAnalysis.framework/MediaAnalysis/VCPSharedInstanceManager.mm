@interface VCPSharedInstanceManager
+ (id)sharedManager;
- (VCPSharedInstanceManager)init;
- (id)sharedInstanceWithIdentifier:(id)a3 andCreationBlock:(id)a4;
- (void)reset;
- (void)resetSharedInstanceWithIdentifier:(id)a3;
@end

@implementation VCPSharedInstanceManager

- (VCPSharedInstanceManager)init
{
  v8.receiver = self;
  v8.super_class = VCPSharedInstanceManager;
  v2 = [(VCPSharedInstanceManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.mediaanalysis.VCPSharedInstanceManager", 0);
    serialQueue = v2->serialQueue_;
    v2->serialQueue_ = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    sharedInstances = v2->sharedInstances_;
    v2->sharedInstances_ = v5;
  }

  return v2;
}

+ (id)sharedManager
{
  if (sharedManager_once_token != -1)
  {
    +[VCPSharedInstanceManager sharedManager];
  }

  v3 = sharedManager_instance;

  return v3;
}

void __41__VCPSharedInstanceManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(VCPSharedInstanceManager);
  v1 = sharedManager_instance;
  sharedManager_instance = v0;
}

- (id)sharedInstanceWithIdentifier:(id)a3 andCreationBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__19;
  v21 = __Block_byref_object_dispose__19;
  v22 = 0;
  serialQueue = self->serialQueue_;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__VCPSharedInstanceManager_sharedInstanceWithIdentifier_andCreationBlock___block_invoke;
  v13[3] = &unk_1E834D758;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(serialQueue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __74__VCPSharedInstanceManager_sharedInstanceWithIdentifier_andCreationBlock___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1[7] + 8) + 40))
  {
    v5 = objc_autoreleasePoolPush();
    v6 = (*(a1[6] + 16))();
    v7 = *(a1[7] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = *(*(a1[7] + 8) + 40);
    if (v9)
    {
      [*(a1[4] + 16) setObject:v9 forKeyedSubscript:a1[5]];
    }

    objc_autoreleasePoolPop(v5);
  }
}

- (void)resetSharedInstanceWithIdentifier:(id)a3
{
  v4 = a3;
  serialQueue = self->serialQueue_;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__VCPSharedInstanceManager_resetSharedInstanceWithIdentifier___block_invoke;
  v7[3] = &unk_1E834C3D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (void)reset
{
  serialQueue = self->serialQueue_;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__VCPSharedInstanceManager_reset__block_invoke;
  block[3] = &unk_1E834C010;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

@end