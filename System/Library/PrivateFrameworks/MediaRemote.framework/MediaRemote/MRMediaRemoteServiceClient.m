@interface MRMediaRemoteServiceClient
+ (id)sharedServiceClient;
- (MRMediaRemoteServiceClient)init;
- (MRPlayerPath)activePlayerPath;
- (MRPlayerPath)currentSessionPlayerPath;
- (NSString)currentSessionRoutingContextID;
- (id)addPlayerPathInvalidationHandler:(id)a3;
- (id)debugDescription;
- (void)_callInvalidationHandler:(uint64_t)a1;
- (void)_initializeConnectionWithCompletion:(void *)a1;
- (void)_invalidateConnection;
- (void)_onQueue_processPlayerPathInvalidationHandlersWithBlock:(uint64_t)a1;
- (void)_registerCallbacks;
- (void)_restoreConnection;
- (void)_restoreRestrictedCommandClientsState;
- (void)_resumeConnection;
- (void)addDiscoverySession:(id)a3;
- (void)addDistantEndpoint:(id)a3;
- (void)addDistantExternalDevice:(id)a3;
- (void)addEndpointObserver:(id)a3;
- (void)addMediaSuggestionElectedDeviceObserver:(id)a3;
- (void)addNowPlayingController:(id)a3;
- (void)dealloc;
- (void)processPlayerPathInvalidationHandlersWithBlock:(id)a3;
- (void)processPlayerPathInvalidationHandlersWithInvalidOrigin:(id)a3;
- (void)removeDiscoverySession:(id)a3;
- (void)removeDistantEndpoint:(id)a3;
- (void)removeDistantExternalDevice:(id)a3;
- (void)removeEndpointObserver:(id)a3;
- (void)removeInvalidationHandler:(id)a3;
- (void)removeMediaSuggestionElectedDeviceObserver:(id)a3;
- (void)removeNowPlayingController:(id)a3;
- (void)setActivePlayerPath:(id)a3;
- (void)setCurrentSessionPlayerPath:(id)a3;
- (void)setCurrentSessionRoutingContextID:(id)a3;
@end

@implementation MRMediaRemoteServiceClient

+ (id)sharedServiceClient
{
  if (sharedServiceClient___once != -1)
  {
    +[MRMediaRemoteServiceClient sharedServiceClient];
  }

  v3 = sharedServiceClient___sharedServiceClient;

  return v3;
}

void __49__MRMediaRemoteServiceClient_sharedServiceClient__block_invoke()
{
  v0 = objc_alloc_init(MRMediaRemoteServiceClient);
  v1 = sharedServiceClient___sharedServiceClient;
  sharedServiceClient___sharedServiceClient = v0;
}

- (MRMediaRemoteServiceClient)init
{
  v36.receiver = self;
  v36.super_class = MRMediaRemoteServiceClient;
  v2 = [(MRMediaRemoteServiceClient *)&v36 init];
  if (v2)
  {
    v3 = *MEMORY[0x1E695E480];
    v4 = MRMediaRemoteServiceCreate();
    v5 = *(v2 + 17);
    *(v2 + 17) = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.MediaRemote.MRMediaRemoteServiceClient.accessQueue", v6);
    v8 = *(v2 + 1);
    *(v2 + 1) = v7;

    v9 = [[MRAVRoutingClientController alloc] initWithMediaRemoteService:*(v2 + 17)];
    v10 = *(v2 + 2);
    *(v2 + 2) = v9;

    v11 = [[MRNotificationServiceClient alloc] initWithServiceClient:v2];
    v12 = *(v2 + 15);
    *(v2 + 15) = v11;

    v13 = objc_alloc_init(MRNotificationClient);
    v14 = *(v2 + 18);
    *(v2 + 18) = v13;

    v15 = [[MRNowPlayingSessionServiceClient alloc] initWithService:v2];
    v16 = *(v2 + 16);
    *(v2 + 16) = v15;

    v17 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v18 = *(v2 + 10);
    *(v2 + 10) = v17;

    v19 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v20 = *(v2 + 9);
    *(v2 + 9) = v19;

    v21 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v22 = *(v2 + 11);
    *(v2 + 11) = v21;

    v23 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v24 = *(v2 + 12);
    *(v2 + 12) = v23;

    v25 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v26 = *(v2 + 13);
    *(v2 + 13) = v25;

    v27 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v28 = *(v2 + 14);
    *(v2 + 14) = v27;

    v29 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v30 = dispatch_queue_create("com.apple.MediaRemote.PlaybackQueue.serialQueue", v29);
    [v2 setPlaybackQueueDispatchQueue:v30];

    qword_1ED7E7E98 = v2;
    MRMediaRemoteServiceSetClientModule(*(v2 + 17), init___clientModule);
    [(MRMediaRemoteServiceClient *)v2 _registerCallbacks];
    objc_initWeak(&location, v2);
    v31 = *(v2 + 17);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __34__MRMediaRemoteServiceClient_init__block_invoke;
    v33[3] = &unk_1E769B178;
    objc_copyWeak(&v34, &location);
    MRMediaRemoteServiceStart(v31, v33);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (MRPlayerPath)activePlayerPath
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__24;
  v9 = __Block_byref_object_dispose__24;
  v10 = 0;
  accessQueue = self->_accessQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __46__MRMediaRemoteServiceClient_activePlayerPath__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_registerCallbacks
{
  if (val)
  {
    objc_initWeak(&location, val);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __48__MRMediaRemoteServiceClient__registerCallbacks__block_invoke;
    v17[3] = &unk_1E769B178;
    objc_copyWeak(&v18, &location);
    v2 = MEMORY[0x1A58E3570](v17);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __48__MRMediaRemoteServiceClient__registerCallbacks__block_invoke_2;
    v15[3] = &unk_1E769B178;
    objc_copyWeak(&v16, &location);
    v3 = MEMORY[0x1A58E3570](v15);
    MRMediaRemoteServiceSetInvalidationHandler(val[17], v2);
    MRMediaRemoteServiceSetResumeHandler(val[17], v3);
    v4 = [val[17] mrXPCConnection];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __48__MRMediaRemoteServiceClient__registerCallbacks__block_invoke_3;
    v13 = &unk_1E769F738;
    objc_copyWeak(&v14, &location);
    [v4 addCustomXPCHandler:&v10 forKey:0x700000000000009];

    v5 = [val[17] mrXPCConnection];
    [v5 addCustomXPCHandler:&__block_literal_global_26 forKey:0x200000000000030];

    v6 = [val[17] mrXPCConnection];
    [v6 addCustomXPCHandler:&__block_literal_global_29_0 forKey:0x400000000000007];

    v7 = [val[17] mrXPCConnection];
    [v7 addCustomXPCHandler:&__block_literal_global_33_0 forKey:0x400000000000008];

    v8 = [val[17] mrXPCConnection];
    [v8 addCustomXPCHandler:&__block_literal_global_36 forKey:0x400000000000009];

    v9 = [val[17] mrXPCConnection];
    [v9 addCustomXPCHandler:&__block_literal_global_38 forKey:0x40000000000000ALL];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __34__MRMediaRemoteServiceClient_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(MRMediaRemoteServiceClient *)WeakRetained _initializeConnectionWithCompletion:?];
}

- (void)dealloc
{
  MRMediaRemoteServiceDestroy(self->_service);
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MRMediaRemoteServiceClient;
  [(MRMediaRemoteServiceClient *)&v4 dealloc];
}

void __48__MRMediaRemoteServiceClient__registerCallbacks__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(MRMediaRemoteServiceClient *)WeakRetained _invalidateConnection];
}

void __48__MRMediaRemoteServiceClient__registerCallbacks__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(MRMediaRemoteServiceClient *)WeakRetained _resumeConnection];
}

void __48__MRMediaRemoteServiceClient__registerCallbacks__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained processPlayerPathInvalidationHandlersWithBlock:0];
    WeakRetained = v2;
  }
}

void __48__MRMediaRemoteServiceClient__registerCallbacks__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__MRMediaRemoteServiceClient__registerCallbacks__block_invoke_5;
  v8[3] = &unk_1E769F760;
  v9 = v2;
  v3 = v2;
  v4 = MEMORY[0x1A58E3570](v8);
  v5 = MRCreateProtobufFromXPCMessage(v3);
  v6 = [v5 request];
  v7 = [v5 playerPath];
  MRServiceClientPlaybackSessionCallback(v7, v6, v4);
}

void __48__MRMediaRemoteServiceClient__registerCallbacks__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  if (v6)
  {
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    if (reply)
    {
      [v8 setError:v5];
      MRAddProtobufToXPCMessage(reply, v8);
      xpc_connection_send_message(v6, reply);
    }
  }
}

void __48__MRMediaRemoteServiceClient__registerCallbacks__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__MRMediaRemoteServiceClient__registerCallbacks__block_invoke_7;
  v9[3] = &unk_1E769F788;
  v10 = v2;
  v3 = v2;
  v4 = MEMORY[0x1A58E3570](v9);
  v5 = MRCreatePlayerPathFromXPCMessage(v3);
  v6 = MRCreateProtobufFromXPCMessage(v3);
  v7 = [v6 playbackSession];
  v8 = [v6 request];
  MRServiceClientPlaybackSessionMigrateRequestCallback(v5, v7, v8, v4);
}

void __48__MRMediaRemoteServiceClient__registerCallbacks__block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  if (v6)
  {
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    if (reply)
    {
      v8 = [[MRPlaybackSessionMigrateResponseMessage alloc] initWithRequest:v9];
      [(MRProtocolMessage *)v8 setError:v5];
      MRAddProtobufToXPCMessage(reply, v8);
      xpc_connection_send_message(v6, reply);
    }
  }
}

void __48__MRMediaRemoteServiceClient__registerCallbacks__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MRCreateProtobufFromXPCMessage(v2);
  v4 = [v3 playerPath];
  v5 = [v3 request];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__MRMediaRemoteServiceClient__registerCallbacks__block_invoke_9;
  v7[3] = &unk_1E769F7B0;
  v8 = v2;
  v6 = v2;
  MRServiceClientPlaybackSessionMigrateBeginCallback(v4, v5, v7);
}

void __48__MRMediaRemoteServiceClient__registerCallbacks__block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  if (v6)
  {
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    if (reply)
    {
      [v8 setError:v5];
      MRAddProtobufToXPCMessage(reply, v8);
      xpc_connection_send_message(v6, reply);
    }
  }
}

void __48__MRMediaRemoteServiceClient__registerCallbacks__block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MRCreateProtobufFromXPCMessage(v2);
  v4 = [v3 playerPath];
  v5 = [v3 error];
  v6 = [v3 request];
  v7 = [v3 setPlaybackSessionCommandStatus];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__MRMediaRemoteServiceClient__registerCallbacks__block_invoke_11;
  v9[3] = &unk_1E769F7B0;
  v10 = v2;
  v8 = v2;
  MRServiceClientPlaybackSessionMigrateFinalizeCallback(v4, v5, v6, v7, v9);
}

void __48__MRMediaRemoteServiceClient__registerCallbacks__block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  if (v6)
  {
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    if (reply)
    {
      [v8 setError:v5];
      MRAddProtobufToXPCMessage(reply, v8);
      xpc_connection_send_message(v6, reply);
    }
  }
}

void __48__MRMediaRemoteServiceClient__registerCallbacks__block_invoke_12(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MRCreateProtobufFromXPCMessage(v2);
  v4 = [v3 request];
  v5 = [v3 setPlaybackSessionCommandID];
  v6 = [v3 playerPath];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__MRMediaRemoteServiceClient__registerCallbacks__block_invoke_13;
  v8[3] = &unk_1E769F7D8;
  v9 = v2;
  v7 = v2;
  MRServiceClientPlaybackSessionMigratePostCallback(v4, v5, v6, v8);
}

void __48__MRMediaRemoteServiceClient__registerCallbacks__block_invoke_13(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  if (v6)
  {
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    if (reply)
    {
      [v8 setError:v5];
      MRAddProtobufToXPCMessage(reply, v8);
      xpc_connection_send_message(v6, reply);
    }
  }
}

void __66__MRMediaRemoteServiceClient__initializeConnectionWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = a2;
  if (*(a1 + 32) != v5)
  {
    [*(a1 + 40) setActivePlayerPath:v5];
  }

  [*(a1 + 40) processPlayerPathInvalidationHandlersWithBlock:&__block_literal_global_42];
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, v7);
  }
}

void __47__MRMediaRemoteServiceClient__resumeConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _MRLogForCategory(8uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __47__MRMediaRemoteServiceClient__resumeConnection__block_invoke_cold_1(v3, v4);
    }

    v5 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__MRMediaRemoteServiceClient__resumeConnection__block_invoke_46;
    block[3] = &unk_1E769A228;
    block[4] = *(a1 + 32);
    dispatch_after(v5, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    [(MRMediaRemoteServiceClient *)*(a1 + 32) _restoreConnection];
  }
}

- (id)debugDescription
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  accessQueue = self->_accessQueue;
  v41 = MEMORY[0x1E69E9820];
  v42 = 3221225472;
  v43 = __46__MRMediaRemoteServiceClient_debugDescription__block_invoke;
  v44 = &unk_1E769A4A0;
  v45 = self;
  v5 = v3;
  v46 = v5;
  msv_dispatch_sync_on_queue();
  v6 = self->_weakEndpointObservers;
  objc_sync_enter(v6);
  v7 = [(NSHashTable *)self->_weakEndpointObservers allObjects];
  if ([v7 count])
  {
    v8 = MRCreateIndentedDebugDescriptionFromArray(v7);
    [v5 appendFormat:@"endpointObservers = %@\n", v8];
  }

  objc_sync_exit(v6);
  v9 = self->_weakNowPlayingControllers;
  objc_sync_enter(v9);
  v10 = [(NSHashTable *)self->_weakNowPlayingControllers allObjects];
  if ([(NSHashTable *)self->_weakNowPlayingControllers count])
  {
    v11 = MRCreateIndentedDebugDescriptionFromArray(v10);
    [v5 appendFormat:@"nowPlayingControllers = %@\n", v11];
  }

  objc_sync_exit(v9);
  v12 = self->_weakDiscoverySessions;
  objc_sync_enter(v12);
  v13 = [(NSHashTable *)self->_weakDiscoverySessions allObjects];
  objc_sync_exit(v12);

  if ([v13 count])
  {
    v14 = [v13 mr_formattedDebugDescription];
    [v5 appendFormat:@"discoverySessions = %@\n", v14];
  }

  v15 = self->_weakEndpoints;
  objc_sync_enter(v15);
  v16 = [(NSHashTable *)self->_weakEndpoints allObjects];
  objc_sync_exit(v15);

  v17 = self->_weakExternalDevices;
  objc_sync_enter(v17);
  v18 = [(NSHashTable *)self->_weakExternalDevices allObjects];
  v19 = [v18 mutableCopy];

  objc_sync_exit(v17);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v20 = v16;
  v21 = [v20 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v21)
  {
    v22 = *v38;
    do
    {
      v23 = 0;
      do
      {
        if (*v38 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = [*(*(&v37 + 1) + 8 * v23) externalDevice];
        [v19 removeObject:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [v20 countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v21);
  }

  if ([v20 count])
  {
    v25 = [v20 mr_formattedDebugDescription];
    [v5 appendFormat:@"distantEndpoints = %@\n", v25];
  }

  if ([v19 count])
  {
    v26 = [v19 mr_formattedDebugDescription];
    [v5 appendFormat:@"remaining distantExternalDevices = %@\n", v26];
  }

  v27 = +[MRAVDistantEndpoint externalDeviceFactory];
  [v5 appendFormat:@"external device cache = %@\n", v27];

  v28 = [(MRNotificationClient *)self->_notificationClient debugDescription];
  [v5 appendString:v28];

  v29 = +[MRNowPlayingOriginClientManager sharedManager];
  v30 = [v29 debugDescription];
  [v5 appendString:v30];

  v31 = self->_weakMediaSuggestionElectedDeviceObservers;
  objc_sync_enter(v31);
  v32 = [(NSHashTable *)self->_weakMediaSuggestionElectedDeviceObservers allObjects];
  if ([v32 count])
  {
    v33 = [v32 mr_formattedDebugDescription];
    [v5 appendFormat:@"mediaSuggestionElectedDeviceObservers = %@\n", v33];
  }

  objc_sync_exit(v31);
  v34 = v5;

  v35 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t __46__MRMediaRemoteServiceClient_debugDescription__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24))
  {
    [*(a1 + 40) appendFormat:@"activePlayerPath = %@\n", *(v2 + 24)];
    v2 = *(a1 + 32);
  }

  if ([*(v2 + 64) count])
  {
    [*(a1 + 40) appendFormat:@"playerPathInvalidationHandlers = %@\n", *(*(a1 + 32) + 64)];
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v3 + 32);
  [*(v3 + 40) timeIntervalSinceNow];
  objc_msgSend(v4, "appendFormat:", @"currentSessionPlayerPath = %@ (%lf seconds ago\n"), v5, v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(v7 + 48);
  [*(v7 + 56) timeIntervalSinceNow];
  return [v8 appendFormat:@"currentSessionRoutingContextID = %@ (%lf seconds ago)\n", v9, v10];
}

- (void)setActivePlayerPath:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__MRMediaRemoteServiceClient_setActivePlayerPath___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(accessQueue, v7);
}

- (MRPlayerPath)currentSessionPlayerPath
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__24;
  v10 = __Block_byref_object_dispose__24;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__MRMediaRemoteServiceClient_currentSessionPlayerPath__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __54__MRMediaRemoteServiceClient_currentSessionPlayerPath__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setCurrentSessionPlayerPath:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__MRMediaRemoteServiceClient_setCurrentSessionPlayerPath___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

void __58__MRMediaRemoteServiceClient_setCurrentSessionPlayerPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  v5 = [MEMORY[0x1E695DF00] now];
  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (NSString)currentSessionRoutingContextID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__24;
  v10 = __Block_byref_object_dispose__24;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__MRMediaRemoteServiceClient_currentSessionRoutingContextID__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __60__MRMediaRemoteServiceClient_currentSessionRoutingContextID__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setCurrentSessionRoutingContextID:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__MRMediaRemoteServiceClient_setCurrentSessionRoutingContextID___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

void __64__MRMediaRemoteServiceClient_setCurrentSessionRoutingContextID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 48);
  v4 = v3;
  if (v3 != v2)
  {
    v8 = v3;
    v5 = [v3 isEqual:v2];

    if (v5)
    {
      return;
    }

    objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
    v6 = [MEMORY[0x1E695DF00] now];
    v7 = *(a1 + 32);
    v4 = *(v7 + 56);
    *(v7 + 56) = v6;
  }
}

- (id)addPlayerPathInvalidationHandler:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _MRLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 playerPath];
    *buf = 134218242;
    v16 = v4;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "Added PlayerPathInvalidationHandler %p for %{public}@", buf, 0x16u);
  }

  accessQueue = self->_accessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__MRMediaRemoteServiceClient_addPlayerPathInvalidationHandler___block_invoke;
  v13[3] = &unk_1E769A4A0;
  v13[4] = self;
  v8 = v4;
  v14 = v8;
  dispatch_async(accessQueue, v13);
  v9 = v14;
  v10 = v8;

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

void __63__MRMediaRemoteServiceClient_addPlayerPathInvalidationHandler___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 64))
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v3 = *(a1 + 32);
    v4 = *(v3 + 64);
    *(v3 + 64) = v2;
  }

  v5 = [*(a1 + 40) playerPath];
  v6 = [v5 origin];

  if (v6 && ([v6 isLocal] & 1) == 0 && objc_msgSend(*(a1 + 40), "invalidateImmediatlyIfInvalid"))
  {
    objc_initWeak(&location, *(a1 + 40));
    v7 = [*(a1 + 40) playerPath];
    v8 = [*(a1 + 32) workerQueue];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __63__MRMediaRemoteServiceClient_addPlayerPathInvalidationHandler___block_invoke_2;
    v14 = &unk_1E769F848;
    objc_copyWeak(&v17, &location);
    v9 = v6;
    v10 = *(a1 + 32);
    v15 = v9;
    v16 = v10;
    MRMediaRemoteNowPlayingResolvePlayerPath(v7, v8, &v11);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  [*(*(a1 + 32) + 64) addObject:{*(a1 + 40), v11, v12, v13, v14}];
  if ([*(*(a1 + 32) + 64) count] >= 0x4C && MRMediaRemoteServiceDidInvalidateNotification_block_invoke_onceToken != -1)
  {
    __63__MRMediaRemoteServiceClient_addPlayerPathInvalidationHandler___block_invoke_cold_1();
  }
}

void __63__MRMediaRemoteServiceClient_addPlayerPathInvalidationHandler___block_invoke_2(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v7 = WeakRetained;
    v6 = [a2 origin];
    LOBYTE(v5) = [v5 isEqual:v6];

    WeakRetained = v7;
    if ((v5 & 1) == 0)
    {
      [(MRMediaRemoteServiceClient *)*(a1 + 40) _callInvalidationHandler:v7];
      WeakRetained = v7;
    }
  }
}

- (void)removeInvalidationHandler:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__MRMediaRemoteServiceClient_removeInvalidationHandler___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

void __56__MRMediaRemoteServiceClient_removeInvalidationHandler___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if ([*(*(a1 + 40) + 64) containsObject:v2])
  {
    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [v2 playerPath];
      v6 = 134218242;
      v7 = v2;
      v8 = 2114;
      v9 = v4;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "Removing PlayerPathInvalidationHandler %p for %{public}@", &v6, 0x16u);
    }

    [*(*(a1 + 40) + 64) removeObject:v2];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)processPlayerPathInvalidationHandlersWithInvalidOrigin:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__MRMediaRemoteServiceClient_processPlayerPathInvalidationHandlersWithInvalidOrigin___block_invoke;
  v6[3] = &unk_1E769F870;
  v7 = v4;
  v5 = v4;
  [(MRMediaRemoteServiceClient *)self processPlayerPathInvalidationHandlersWithBlock:v6];
}

uint64_t __85__MRMediaRemoteServiceClient_processPlayerPathInvalidationHandlersWithInvalidOrigin___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 origin];
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 origin];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)processPlayerPathInvalidationHandlersWithBlock:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__MRMediaRemoteServiceClient_processPlayerPathInvalidationHandlersWithBlock___block_invoke;
  v7[3] = &unk_1E769A0A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

void __86__MRMediaRemoteServiceClient__onQueue_processPlayerPathInvalidationHandlersWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 playerPath];
  v4 = [v3 copy];

  v5 = *(a1 + 40);
  if (!v5 || (*(v5 + 16))(v5, v4))
  {
    [(MRMediaRemoteServiceClient *)*(a1 + 32) _callInvalidationHandler:v6];
  }
}

void __55__MRMediaRemoteServiceClient__callInvalidationHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callback];
  v2[2](v2, *(a1 + 40));
}

- (void)addEndpointObserver:(id)a3
{
  v5 = a3;
  v4 = self->_weakEndpointObservers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_weakEndpointObservers addObject:v5];
  objc_sync_exit(v4);
}

- (void)removeEndpointObserver:(id)a3
{
  v5 = a3;
  v4 = self->_weakEndpointObservers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_weakEndpointObservers removeObject:v5];
  objc_sync_exit(v4);
}

- (void)addNowPlayingController:(id)a3
{
  v8 = a3;
  v4 = self->_weakNowPlayingControllers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_weakNowPlayingControllers addObject:v8];
  if ((addNowPlayingController__captured & 1) == 0 && [(NSHashTable *)self->_weakNowPlayingControllers count]== 100)
  {
    v5 = +[MRUserSettings currentSettings];
    v6 = [v5 excessiveNowPlayingControllersABC];

    if (v6)
    {
      v7 = dispatch_get_global_queue(-2, 0);
      dispatch_async(v7, &__block_literal_global_117_0);

      addNowPlayingController__captured = 1;
    }
  }

  objc_sync_exit(v4);
}

- (void)removeNowPlayingController:(id)a3
{
  v5 = a3;
  v4 = self->_weakNowPlayingControllers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_weakNowPlayingControllers removeObject:v5];
  objc_sync_exit(v4);
}

- (void)addDiscoverySession:(id)a3
{
  v5 = a3;
  v4 = self->_weakDiscoverySessions;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_weakDiscoverySessions addObject:v5];
  objc_sync_exit(v4);
}

- (void)removeDiscoverySession:(id)a3
{
  v5 = a3;
  v4 = self->_weakDiscoverySessions;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_weakDiscoverySessions removeObject:v5];
  objc_sync_exit(v4);
}

- (void)addDistantEndpoint:(id)a3
{
  v5 = a3;
  v4 = self->_weakEndpoints;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_weakEndpoints addObject:v5];
  objc_sync_exit(v4);
}

- (void)removeDistantEndpoint:(id)a3
{
  v5 = a3;
  v4 = self->_weakEndpoints;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_weakEndpoints removeObject:v5];
  objc_sync_exit(v4);
}

- (void)addDistantExternalDevice:(id)a3
{
  v5 = a3;
  v4 = self->_weakExternalDevices;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_weakExternalDevices addObject:v5];
  objc_sync_exit(v4);
}

- (void)removeDistantExternalDevice:(id)a3
{
  v5 = a3;
  v4 = self->_weakExternalDevices;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_weakExternalDevices removeObject:v5];
  objc_sync_exit(v4);
}

- (void)addMediaSuggestionElectedDeviceObserver:(id)a3
{
  v5 = a3;
  v4 = self->_weakMediaSuggestionElectedDeviceObservers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_weakMediaSuggestionElectedDeviceObservers addObject:v5];
  objc_sync_exit(v4);
}

- (void)removeMediaSuggestionElectedDeviceObserver:(id)a3
{
  v5 = a3;
  v4 = self->_weakMediaSuggestionElectedDeviceObservers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_weakMediaSuggestionElectedDeviceObservers removeObject:v5];
  objc_sync_exit(v4);
}

- (void)_initializeConnectionWithCompletion:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = _MRLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "MediaRemote server initializing", buf, 2u);
    }

    v5 = [a1 activePlayerPath];
    v6 = [v5 copy];

    v7 = a1[17];
    v8 = [a1 workerQueue];
    OUTLINED_FUNCTION_0_3();
    v11 = 3221225472;
    v12 = __66__MRMediaRemoteServiceClient__initializeConnectionWithCompletion___block_invoke;
    v13 = &unk_1E769F820;
    v14 = v6;
    v15 = a1;
    v16 = v3;
    v9 = v6;
    MRMediaRemoteServiceResolvePlayerPath(v7, 0, v8, v10);
  }
}

- (void)_invalidateConnection
{
  if (a1 && (MRProcessIsMediaRemoteDaemon() & 1) == 0)
  {
    v2 = _MRLogForCategory(8uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 0;
      OUTLINED_FUNCTION_4_6(&dword_1A2860000, v3, v4, "MediaRemote server disconnected");
    }

    v5 = a1[1];
    OUTLINED_FUNCTION_0_3();
    v12 = 3221225472;
    v13 = __51__MRMediaRemoteServiceClient__invalidateConnection__block_invoke;
    v14 = &unk_1E769A228;
    v15 = a1;
    dispatch_async(v6, block);
    v7 = [a1 notificationClient];
    OUTLINED_FUNCTION_3_9();
    [v8 dispatchNotification:? userInfo:? object:?];

    v9 = [a1 notificationClient];
    OUTLINED_FUNCTION_3_9();
    [v10 dispatchNotification:? userInfo:? object:?];
  }
}

- (void)_resumeConnection
{
  if (a1 && (MRProcessIsMediaRemoteDaemon() & 1) == 0)
  {
    v2 = _MRLogForCategory(8uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      OUTLINED_FUNCTION_4_6(&dword_1A2860000, v3, v4, "MediaRemote server restarted");
    }

    OUTLINED_FUNCTION_0_3();
    v6 = 3221225472;
    v7 = __47__MRMediaRemoteServiceClient__resumeConnection__block_invoke;
    v8 = &unk_1E769AFC0;
    v9 = a1;
    [(MRMediaRemoteServiceClient *)a1 _initializeConnectionWithCompletion:v5];
  }
}

void __51__MRMediaRemoteServiceClient__invalidateConnection__block_invoke(uint64_t a1)
{
  v2 = [MRPlayerPath alloc];
  v3 = +[MROrigin localOrigin];
  OUTLINED_FUNCTION_3_9();
  v9 = [v4 initWithOrigin:? client:? player:?];

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [v9 copy];
    v7 = *(v5 + 24);
    *(v5 + 24) = v6;

    v8 = *(a1 + 32);
  }

  else
  {
    v8 = 0;
  }

  [(MRMediaRemoteServiceClient *)v8 _onQueue_processPlayerPathInvalidationHandlersWithBlock:?];
}

- (void)_onQueue_processPlayerPathInvalidationHandlersWithBlock:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v4 = *(a1 + 64);
    OUTLINED_FUNCTION_1_0();
    v5[1] = 3221225472;
    v5[2] = __86__MRMediaRemoteServiceClient__onQueue_processPlayerPathInvalidationHandlersWithBlock___block_invoke;
    v5[3] = &unk_1E769F898;
    v5[4] = a1;
    v6 = v3;
    [v4 enumerateObjectsUsingBlock:v5];
  }
}

- (void)_restoreConnection
{
  if (a1)
  {
    [a1[18] restoreNowPlayingClientState];
    v2 = +[MRNowPlayingOriginClientManager sharedManager];
    [v2 clearActiveSystemEndpointsWithReason:@"restore connection"];

    v3 = +[MRNowPlayingOriginClientManager sharedManager];
    [v3 restoreNowPlayingClientState];

    v4 = +[MRGroupSessionRequestManager sharedManager];
    [v4 restoreState];

    [(MRMediaRemoteServiceClient *)a1 _restoreRestrictedCommandClientsState];
    v11 = [a1 currentSessionPlayerPath];
    if (v11)
    {
      v5 = MRCreateXPCMessage(0x30000000000002DuLL);
      MRAddPlayerPathToXPCMessage(v5, v11);
      v6 = [a1 service];
      v7 = [v6 mrXPCConnection];
      OUTLINED_FUNCTION_3_9();
      [v8 sendMessage:? queue:? reply:?];
    }

    v9 = [a1 notificationClient];
    OUTLINED_FUNCTION_3_9();
    [v10 dispatchNotification:? userInfo:? object:?];
  }
}

- (void)_restoreRestrictedCommandClientsState
{
  if (a1 && (MRProcessIsMediaRemoteDaemon() & 1) == 0)
  {
    v1 = +[MRRestrictedCommandClientsManager sharedManager];
    [v1 republishStateIfNeeded];
  }
}

void __50__MRMediaRemoteServiceClient_setActivePlayerPath___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [*(a1 + 40) copy];
    v3 = *(v1 + 24);
    *(v1 + 24) = v2;
  }
}

- (void)_callInvalidationHandler:(uint64_t)a1
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRMediaRemoteServiceClient _callInvalidationHandler:]"];
      [v13 handleFailureInFunction:v14 file:@"MRMediaRemoteServiceClient.m" lineNumber:586 description:{@"Invalid parameter not satisfying: %@", @"invalidationHandler"}];
    }

    v5 = [v4 playerPath];
    v6 = [v5 copy];

    v7 = _MRLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v19 = v4;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "Calling PlayerPathInvalidationHandler %p for %{public}@", buf, 0x16u);
    }

    v8 = [v4 queue];
    if (v8)
    {
      v9 = [v4 queue];
    }

    else
    {
      v9 = MEMORY[0x1E69E96A0];
      v10 = MEMORY[0x1E69E96A0];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__MRMediaRemoteServiceClient__callInvalidationHandler___block_invoke;
    block[3] = &unk_1E769A4A0;
    v16 = v4;
    v17 = v6;
    v11 = v6;
    dispatch_async(v9, block);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __47__MRMediaRemoteServiceClient__resumeConnection__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A2860000, a2, OS_LOG_TYPE_ERROR, "Error %@ initializing Connection. Trying again...", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end