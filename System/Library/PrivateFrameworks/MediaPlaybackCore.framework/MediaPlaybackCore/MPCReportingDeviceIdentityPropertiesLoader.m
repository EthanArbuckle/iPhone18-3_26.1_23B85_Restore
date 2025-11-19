@interface MPCReportingDeviceIdentityPropertiesLoader
+ (MPCReportingDeviceIdentityPropertiesLoader)sharedLoader;
- (MPCReportingDeviceIdentityPropertiesLoader)init;
- (void)loadReportingIdentityPropertiesWithCompletionHandler:(id)a3;
@end

@implementation MPCReportingDeviceIdentityPropertiesLoader

- (void)loadReportingIdentityPropertiesWithCompletionHandler:(id)a3
{
  v4 = a3;
  serialWorkQueue = self->_serialWorkQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __99__MPCReportingDeviceIdentityPropertiesLoader_loadReportingIdentityPropertiesWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8239170;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialWorkQueue, v7);
}

void __99__MPCReportingDeviceIdentityPropertiesLoader_loadReportingIdentityPropertiesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69E4680] activeAccount];
  v3 = [MEMORY[0x1E69E4688] defaultIdentityStore];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __99__MPCReportingDeviceIdentityPropertiesLoader_loadReportingIdentityPropertiesWithCompletionHandler___block_invoke_2;
  v7[3] = &unk_1E82372D8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v2;
  v9 = v4;
  v10 = v5;
  v6 = v2;
  [v3 getPropertiesForUserIdentity:v6 completionHandler:v7];
}

void __99__MPCReportingDeviceIdentityPropertiesLoader_loadReportingIdentityPropertiesWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MPCReportingIdentityProperties);
  v5 = [v3 DSID];
  -[MPCReportingIdentityProperties setStoreAccountID:](v4, "setStoreAccountID:", [v5 unsignedLongLongValue]);

  v6 = [v3 storefrontIdentifier];

  if (v6)
  {
    [(MPCReportingIdentityProperties *)v4 setStoreFrontID:v6];
  }

  else
  {
    v7 = [MEMORY[0x1E69E4688] defaultIdentityStore];
    v8 = [v7 localStoreAccountProperties];
    v9 = [v8 storefrontIdentifier];
    [(MPCReportingIdentityProperties *)v4 setStoreFrontID:v9];
  }

  v10 = [MEMORY[0x1E69704E8] cloudServiceStatusControllerWithUserIdentity:*(a1 + 32)];
  v11 = [v10 musicSubscriptionStatus];
  -[MPCReportingIdentityProperties setHasSubscriptionPlaybackCapability:](v4, "setHasSubscriptionPlaybackCapability:", [v11 hasCapability:1]);
  v12 = *(*(a1 + 40) + 8);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __99__MPCReportingDeviceIdentityPropertiesLoader_loadReportingIdentityPropertiesWithCompletionHandler___block_invoke_3;
  v15[3] = &unk_1E8239170;
  v13 = *(a1 + 48);
  v16 = v4;
  v17 = v13;
  v14 = v4;
  dispatch_async(v12, v15);
}

- (MPCReportingDeviceIdentityPropertiesLoader)init
{
  v8.receiver = self;
  v8.super_class = MPCReportingDeviceIdentityPropertiesLoader;
  v2 = [(MPCReportingDeviceIdentityPropertiesLoader *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.MediaPlaybackCore.MPCReportingDeviceIdentityPropertiesLoader.serialWorkQueue", 0);
    serialWorkQueue = v2->_serialWorkQueue;
    v2->_serialWorkQueue = v3;

    v5 = dispatch_queue_create("com.apple.MediaPlaybackCore.MPCReportingDeviceIdentityPropertiesLoader.calloutQueue", 0);
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v5;
  }

  return v2;
}

+ (MPCReportingDeviceIdentityPropertiesLoader)sharedLoader
{
  if (sharedLoader_sOnceToken != -1)
  {
    dispatch_once(&sharedLoader_sOnceToken, &__block_literal_global_21532);
  }

  v3 = sharedLoader_sSharedLoader;

  return v3;
}

uint64_t __58__MPCReportingDeviceIdentityPropertiesLoader_sharedLoader__block_invoke()
{
  v0 = objc_alloc_init(MPCReportingDeviceIdentityPropertiesLoader);
  v1 = sharedLoader_sSharedLoader;
  sharedLoader_sSharedLoader = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end