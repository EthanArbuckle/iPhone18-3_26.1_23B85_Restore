@interface FBSApplicationDataStoreClientFactory
+ (BOOL)isServerProcess;
+ (id)sharedInstance;
- (FBSApplicationDataStoreClientFactory)init;
- (id)checkout;
- (void)checkin;
@end

@implementation FBSApplicationDataStoreClientFactory

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[FBSApplicationDataStoreClientFactory sharedInstance];
  }

  v3 = sharedInstance___singleton;

  return v3;
}

void __48__FBSApplicationDataStoreClientFactory_checkout__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (!v3)
  {
    if (!*(v2 + 24))
    {
      v5 = NSClassFromString(&cfstr_Fbapplicationd.isa);
      if (+[FBSApplicationDataStoreClientFactory isServerProcess])
      {
        v6 = v5 == 0;
      }

      else
      {
        v6 = 1;
      }

      if (v6)
      {
        v7 = objc_alloc_init(FBSApplicationDataStoreRepositoryClient);
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __48__FBSApplicationDataStoreClientFactory_checkout__block_invoke_2;
        v15[3] = &unk_1E76BCDB0;
        v8 = v7;
        v16 = v8;
        v4 = MEMORY[0x1A58E80F0](v15);
        v9 = *(a1 + 32);
        v10 = *(v9 + 24);
        *(v9 + 24) = v8;
        v11 = v8;
      }

      else
      {
        v12 = objc_alloc_init(v5);
        v13 = *(a1 + 32);
        v14 = *(v13 + 24);
        *(v13 + 24) = v12;

        v4 = 0;
      }

      [*(*(a1 + 32) + 24) addPrefetchedKeys:*(*(a1 + 32) + 32)];
      v2 = *(a1 + 32);
      v3 = *(v2 + 8);
      goto LABEL_5;
    }

    v3 = 0;
  }

  v4 = 0;
LABEL_5:
  *(v2 + 8) = v3 + 1;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 24));
  if (v4)
  {
    v4[2](v4);
  }
}

- (id)checkout
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__FBSApplicationDataStoreClientFactory_checkout__block_invoke;
  v5[3] = &unk_1E76BD530;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)checkin
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__FBSApplicationDataStoreClientFactory_checkin__block_invoke;
  block[3] = &unk_1E76BCDB0;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __47__FBSApplicationDataStoreClientFactory_checkin__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  if (v2)
  {
    *(v1 + 8) = v2 - 1;
    v4 = *(a1 + 32);
    if (!*(v4 + 8))
    {
      [*(v4 + 24) invalidate];
      v5 = *(a1 + 32);
      v6 = *(v5 + 24);
      *(v5 + 24) = 0;
    }
  }
}

- (FBSApplicationDataStoreClientFactory)init
{
  v3.receiver = self;
  v3.super_class = FBSApplicationDataStoreClientFactory;
  if ([(FBSApplicationDataStoreClientFactory *)&v3 init])
  {
    BSDispatchQueueCreateSerial();
  }

  return 0;
}

uint64_t __54__FBSApplicationDataStoreClientFactory_sharedInstance__block_invoke()
{
  sharedInstance___singleton = objc_alloc_init(FBSApplicationDataStoreClientFactory);

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)isServerProcess
{
  environmentAliases = [off_1E76BC9E0 environmentAliases];
  defaultShellMachName = [off_1E76BCA30 defaultShellMachName];
  v4 = [environmentAliases resolveMachService:defaultShellMachName];

  bootstrapConfiguration = [off_1E76BCA60 bootstrapConfiguration];
  v6 = [bootstrapConfiguration domainForMachName:v4];

  v7 = +[FBSSystemServiceSpecification identifier];
  v8 = [v6 serviceForIdentifier:v7];

  return v8 != 0;
}

void __48__FBSApplicationDataStoreClientFactory_checkout__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) calloutQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__FBSApplicationDataStoreClientFactory_checkout__block_invoke_3;
  block[3] = &unk_1E76BCDB0;
  v4 = *(a1 + 32);
  dispatch_async(v2, block);
}

@end