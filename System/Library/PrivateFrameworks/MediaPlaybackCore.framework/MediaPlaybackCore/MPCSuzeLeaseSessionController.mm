@interface MPCSuzeLeaseSessionController
+ (MPCSuzeLeaseSessionController)sharedController;
- (id)_init;
- (void)startLeaseSessionWithConfiguration:(id)a3 completion:(id)a4;
- (void)stopLeaseSession:(id)a3 completion:(id)a4;
- (void)suzeLeaseSession:(id)a3 leaseRenewalDidFailWithError:(id)a4;
@end

@implementation MPCSuzeLeaseSessionController

- (void)suzeLeaseSession:(id)a3 leaseRenewalDidFailWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__MPCSuzeLeaseSessionController_suzeLeaseSession_leaseRenewalDidFailWithError___block_invoke;
  block[3] = &unk_1E82391C0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(accessQueue, block);
}

void __79__MPCSuzeLeaseSessionController_suzeLeaseSession_leaseRenewalDidFailWithError___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v18 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = [*(*(a1 + 32) + 24) objectForKey:*(*(&v17 + 1) + 8 * v6)];
      v8 = [v7 icLeaseSession];
      v9 = *(a1 + 40);

      if (v8 == v9)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    if (!v7)
    {
      return;
    }

    v10 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__MPCSuzeLeaseSessionController_suzeLeaseSession_leaseRenewalDidFailWithError___block_invoke_2;
    block[3] = &unk_1E82391C0;
    v14 = v7;
    v11 = *(a1 + 48);
    v12 = *(a1 + 32);
    v15 = v11;
    v16 = v12;
    v2 = v7;
    dispatch_async(v10, block);
  }

LABEL_12:
}

void __79__MPCSuzeLeaseSessionController_suzeLeaseSession_leaseRenewalDidFailWithError___block_invoke_2(uint64_t a1)
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2 = [*(a1 + 32) mpcLeaseSession];
  [v5 setObject:v2 forKey:@"MPCSuzeLeaseControllerUserInfoKeySession"];

  v3 = *(a1 + 40);
  if (v3)
  {
    [v5 setObject:v3 forKey:@"MPCSuzeLeaseControllerUserInfoKeyError"];
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"MPCSuzeLeaseSessionControllerLeaseSessionRenewDidFailNotification" object:*(a1 + 48) userInfo:v5];
}

- (void)stopLeaseSession:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__MPCSuzeLeaseSessionController_stopLeaseSession_completion___block_invoke;
  block[3] = &unk_1E8239198;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_after(v8, MEMORY[0x1E69E96A0], block);
}

void __61__MPCSuzeLeaseSessionController_stopLeaseSession_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__MPCSuzeLeaseSessionController_stopLeaseSession_completion___block_invoke_2;
  block[3] = &unk_1E8239198;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  dispatch_barrier_async(v2, block);
}

void __61__MPCSuzeLeaseSessionController_stopLeaseSession_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) icSuzeLeaseSession];
  v3 = [v2 configuration];
  v4 = [v3 leaseID];

  if (v4 && ([*(*(a1 + 40) + 24) objectForKey:v4], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v5 clientCount];
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    [v6 setClientCount:v8 - 1];
    if ([v6 clientCount] <= 0)
    {
      v11 = [v6 icLeaseSession];
      [*(*(a1 + 40) + 24) removeObjectForKey:v4];
      if (![*(*(a1 + 40) + 24) count])
      {
        v14 = *(a1 + 40);
        v15 = *(v14 + 24);
        *(v14 + 24) = 0;
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __61__MPCSuzeLeaseSessionController_stopLeaseSession_completion___block_invoke_3;
      v21[3] = &unk_1E82352D0;
      v16 = *(a1 + 48);
      v21[4] = *(a1 + 40);
      v22 = v16;
      [v11 stopLeaseSessionWithCompletionHandler:v21];

      goto LABEL_15;
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      v10 = *(*(a1 + 40) + 16);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __61__MPCSuzeLeaseSessionController_stopLeaseSession_completion___block_invoke_5;
      block[3] = &unk_1E8239528;
      v20 = v9;
      dispatch_async(v10, block);
      v11 = v20;
LABEL_15:
    }
  }

  else
  {
    v12 = *(a1 + 48);
    if (v12)
    {
      v13 = *(*(a1 + 40) + 16);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __61__MPCSuzeLeaseSessionController_stopLeaseSession_completion___block_invoke_6;
      v17[3] = &unk_1E8239528;
      v18 = v12;
      dispatch_async(v13, v17);
      v6 = 0;
      v11 = v18;
      goto LABEL_15;
    }

    v6 = 0;
  }
}

void __61__MPCSuzeLeaseSessionController_stopLeaseSession_completion___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__MPCSuzeLeaseSessionController_stopLeaseSession_completion___block_invoke_4;
    block[3] = &unk_1E82336A0;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

void __61__MPCSuzeLeaseSessionController_stopLeaseSession_completion___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCError" code:9 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)startLeaseSessionWithConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__MPCSuzeLeaseSessionController_startLeaseSessionWithConfiguration_completion___block_invoke;
  block[3] = &unk_1E8239198;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_barrier_async(accessQueue, block);
}

void __79__MPCSuzeLeaseSessionController_startLeaseSessionWithConfiguration_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) leaseID];
  v3 = [*(*(a1 + 40) + 24) objectForKey:v2];
  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69E4638]) initWithConfiguration:*(a1 + 32)];
    [v4 setDelegate:*(a1 + 40)];
    v3 = [[_MPCSuzeLeaseSessionInfo alloc] initWithICLeaseSession:v4];
    v5 = *(*(a1 + 40) + 24);
    if (!v5)
    {
      v6 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      v7 = *(a1 + 40);
      v8 = *(v7 + 24);
      *(v7 + 24) = v6;

      v5 = *(*(a1 + 40) + 24);
    }

    [v5 setObject:v3 forKey:v2];
  }

  [(_MPCSuzeLeaseSessionInfo *)v3 setClientCount:[(_MPCSuzeLeaseSessionInfo *)v3 clientCount]+ 1];
  v9 = [(_MPCSuzeLeaseSessionInfo *)v3 icLeaseSession];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__MPCSuzeLeaseSessionController_startLeaseSessionWithConfiguration_completion___block_invoke_2;
  v13[3] = &unk_1E8233678;
  v10 = *(a1 + 48);
  v13[4] = *(a1 + 40);
  v15 = v2;
  v16 = v10;
  v14 = v3;
  v11 = v2;
  v12 = v3;
  [v9 startLeaseSessionWithCompletionHandler:v13];
}

void __79__MPCSuzeLeaseSessionController_startLeaseSessionWithConfiguration_completion___block_invoke_2(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  if (a2)
  {
    v10 = *(v9 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__MPCSuzeLeaseSessionController_startLeaseSessionWithConfiguration_completion___block_invoke_3;
    block[3] = &unk_1E8239198;
    v22 = *(a1 + 56);
    v20 = *(a1 + 40);
    v21 = v7;
    dispatch_async(v10, block);

    v11 = v22;
  }

  else
  {
    v12 = *(v9 + 8);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __79__MPCSuzeLeaseSessionController_startLeaseSessionWithConfiguration_completion___block_invoke_4;
    v13[3] = &unk_1E8239388;
    v13[4] = v9;
    v14 = *(a1 + 48);
    v15 = *(a1 + 40);
    v18 = *(a1 + 56);
    v16 = v7;
    v17 = v8;
    dispatch_barrier_async(v12, v13);

    v11 = v14;
  }
}

void __79__MPCSuzeLeaseSessionController_startLeaseSessionWithConfiguration_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) mpcLeaseSession];
  (*(v2 + 16))(v2, v3, *(a1 + 40), 0);
}

void __79__MPCSuzeLeaseSessionController_startLeaseSessionWithConfiguration_completion___block_invoke_4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  v3 = *(a1 + 48);

  if (v2 == v3)
  {
    [*(*(a1 + 32) + 24) removeObjectForKey:*(a1 + 40)];
    if (![*(*(a1 + 32) + 24) count])
    {
      v4 = *(a1 + 32);
      v5 = *(v4 + 24);
      *(v4 + 24) = 0;
    }
  }

  v6 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__MPCSuzeLeaseSessionController_startLeaseSessionWithConfiguration_completion___block_invoke_5;
  block[3] = &unk_1E8239198;
  v10 = *(a1 + 72);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  dispatch_async(v6, block);
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = MPCSuzeLeaseSessionController;
  v2 = [(MPCSuzeLeaseSessionController *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.MediaPlaybackCore.MPCSuzeLeaseSessionController.accessQueue", MEMORY[0x1E69E96A8]);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v5 = dispatch_queue_create("com.apple.MediaPlaybackCore.MPCSuzeLeaseSessionController.calloutQueue", 0);
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v5;
  }

  return v2;
}

+ (MPCSuzeLeaseSessionController)sharedController
{
  if (sharedController_sOnceToken != -1)
  {
    dispatch_once(&sharedController_sOnceToken, &__block_literal_global_10384);
  }

  v3 = sharedController_sSharedController;

  return v3;
}

uint64_t __49__MPCSuzeLeaseSessionController_sharedController__block_invoke()
{
  v0 = [[MPCSuzeLeaseSessionController alloc] _init];
  v1 = sharedController_sSharedController;
  sharedController_sSharedController = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end