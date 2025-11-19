@interface MRDestinationResolverDependencies
+ (id)defaultDependencies;
- (id)addPlayerPathInvalidationHandler:(id)a3 queue:(id)a4 handler:(id)a5;
- (id)createEndpointObserverWithUID:(id)a3;
- (void)createPlayerPathForEndpoint:(id)a3 client:(id)a4 player:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)resolvePlayerPath:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)retrieveEndpointForContextUID:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)retrieveEndpointForUID:(id)a3 endpointGroupUID:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)retrieveOutputDeviceUIDForOrigin:(id)a3 queue:(id)a4 completion:(id)a5;
@end

@implementation MRDestinationResolverDependencies

+ (id)defaultDependencies
{
  if (defaultDependencies_onceToken != -1)
  {
    +[MRDestinationResolverDependencies defaultDependencies];
  }

  v3 = defaultDependencies__defaultDependencies;

  return v3;
}

void __56__MRDestinationResolverDependencies_defaultDependencies__block_invoke()
{
  v0 = objc_alloc_init(MRDestinationResolverDependencies);
  v1 = defaultDependencies__defaultDependencies;
  defaultDependencies__defaultDependencies = v0;
}

- (void)createPlayerPathForEndpoint:(id)a3 client:(id)a4 player:(id)a5 queue:(id)a6 completion:(id)a7
{
  v30[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v29 = @"MREndpointConnectionReasonUserInfoKey";
  v30[0] = @"MRNowPlayingController";
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __96__MRDestinationResolverDependencies_createPlayerPathForEndpoint_client_player_queue_completion___block_invoke;
  v23[3] = &unk_1E769AF98;
  v27 = v13;
  v28 = v15;
  v24 = v14;
  v25 = v11;
  v26 = v12;
  v17 = v13;
  v18 = v12;
  v19 = v11;
  v20 = v15;
  v21 = v14;
  [v19 connectToExternalDeviceWithUserInfo:v16 completion:v23];

  v22 = *MEMORY[0x1E69E9840];
}

void __96__MRDestinationResolverDependencies_createPlayerPathForEndpoint_client_player_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__MRDestinationResolverDependencies_createPlayerPathForEndpoint_client_player_queue_completion___block_invoke_2;
  block[3] = &unk_1E769C388;
  v12 = v3;
  v5 = *(a1 + 64);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *&v8 = *(a1 + 56);
  *(&v8 + 1) = v5;
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v13 = v9;
  v14 = v8;
  v10 = v3;
  dispatch_async(v4, block);
}

void __96__MRDestinationResolverDependencies_createPlayerPathForEndpoint_client_player_queue_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 64);
    v3 = *(*(a1 + 64) + 16);

    v3();
  }

  else
  {
    v4 = [MRPlayerPath alloc];
    v5 = [*(a1 + 40) origin];
    v6 = [(MRPlayerPath *)v4 initWithOrigin:v5 client:*(a1 + 48) player:*(a1 + 56)];

    (*(*(a1 + 64) + 16))();
  }
}

- (void)resolvePlayerPath:(id)a3 queue:(id)a4 completion:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__MRDestinationResolverDependencies_resolvePlayerPath_queue_completion___block_invoke;
  v9[3] = &unk_1E769C298;
  v10 = v7;
  v8 = v7;
  MRMediaRemoteNowPlayingResolvePlayerPath(a3, a4, v9);
}

- (void)retrieveEndpointForContextUID:(id)a3 queue:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __84__MRDestinationResolverDependencies_retrieveEndpointForContextUID_queue_completion___block_invoke;
  v17[3] = &unk_1E769B680;
  v18 = v7;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __84__MRDestinationResolverDependencies_retrieveEndpointForContextUID_queue_completion___block_invoke_2;
  v14[3] = &unk_1E769C360;
  v15 = v10;
  v16 = v8;
  v11 = v8;
  v12 = v10;
  v13 = v7;
  [(MRAVLightweightReconnaissanceSession *)v12 searchEndpointsWithPredicate:v17 timeout:@"MRNowPlayingController-partialGroupUID" reason:v9 queue:v14 completion:3.0];
}

uint64_t __84__MRDestinationResolverDependencies_retrieveEndpointForContextUID_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 outputDevices];
  v4 = [v3 firstObject];
  v5 = [v4 groupContextID];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  return v6;
}

void __84__MRDestinationResolverDependencies_retrieveEndpointForContextUID_queue_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = *(a1 + 32);
  v6(v5, a2, a3);
}

- (void)retrieveEndpointForUID:(id)a3 endpointGroupUID:(id)a4 queue:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 isEqualToString:@"proactiveEndpoint"];
  v14 = [v9 isEqualToString:@"userSelectedEndpoint"];
  if ((v13 & 1) != 0 || v14)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __94__MRDestinationResolverDependencies_retrieveEndpointForUID_endpointGroupUID_queue_completion___block_invoke;
    v25[3] = &unk_1E769C338;
    v26 = v12;
    MRAVEndpointResolveActiveSystemEndpointWithType(v13, v11, v25, 3.0);
    v16 = v26;
  }

  else
  {
    v15 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
    v16 = v15;
    if (v10)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __94__MRDestinationResolverDependencies_retrieveEndpointForUID_endpointGroupUID_queue_completion___block_invoke_2;
      v22[3] = &unk_1E769C360;
      v17 = &v23;
      v23 = v15;
      v18 = &v24;
      v24 = v12;
      [(MRAVLightweightReconnaissanceSession *)v16 searchEndpointsForGroupUID:v10 timeout:@"MRNowPlayingController-recon" reason:v11 queue:v22 completion:3.0];
    }

    else
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __94__MRDestinationResolverDependencies_retrieveEndpointForUID_endpointGroupUID_queue_completion___block_invoke_3;
      v19[3] = &unk_1E769C360;
      v17 = &v20;
      v20 = v15;
      v18 = &v21;
      v21 = v12;
      [(MRAVLightweightReconnaissanceSession *)v16 searchEndpointsForOutputDeviceUID:v9 timeout:@"MRNowPlayingController-recon" reason:v11 queue:v19 completion:3.0];
    }
  }
}

void __94__MRDestinationResolverDependencies_retrieveEndpointForUID_endpointGroupUID_queue_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = *(a1 + 32);
  v6(v5, a2, a3);
}

void __94__MRDestinationResolverDependencies_retrieveEndpointForUID_endpointGroupUID_queue_completion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = *(a1 + 32);
  v6(v5, a2, a3);
}

- (void)retrieveOutputDeviceUIDForOrigin:(id)a3 queue:(id)a4 completion:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__MRDestinationResolverDependencies_retrieveOutputDeviceUIDForOrigin_queue_completion___block_invoke;
  v9[3] = &unk_1E769C298;
  v10 = v7;
  v8 = v7;
  MRMediaRemoteGetDeviceInfo(a3, a4, v9);
}

void __87__MRDestinationResolverDependencies_retrieveOutputDeviceUIDForOrigin_queue_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 deviceUID];
  (*(v4 + 16))(v4, v5, a3);
}

- (id)addPlayerPathInvalidationHandler:(id)a3 queue:(id)a4 handler:(id)a5
{
  v7 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__MRDestinationResolverDependencies_addPlayerPathInvalidationHandler_queue_handler___block_invoke;
  v11[3] = &unk_1E769D570;
  v12 = v7;
  v8 = v7;
  v9 = MRMediaRemoteAddPlayerPathInvalidationHandler(a3, a4, v11);

  return v9;
}

- (id)createEndpointObserverWithUID:(id)a3
{
  v3 = a3;
  v4 = [[MRAVEndpointObserver alloc] initWithOutputDeviceUID:v3];

  return v4;
}

@end