@interface MRAVRoutingDiscoverySession
+ (NSMutableArray)discoverySessionFactories;
+ (OS_dispatch_queue)loggingQueue;
+ (id)discoverySessionWithConfiguration:(id)configuration;
+ (id)sharedDiscoverySessionForClass:(Class)class configuration:(id)configuration;
+ (void)registerDiscoverySessionFactory:(id)factory;
- (BOOL)_shouldLogChanges;
- (MRAVRoutingDiscoverySession)initWithConfiguration:(id)configuration;
- (NSArray)endpointsSnapshot;
- (NSArray)outputDevicesSnapshot;
- (NSMutableDictionary)endpointsAddedCallbacks;
- (NSMutableDictionary)endpointsChangedCallbacks;
- (NSMutableDictionary)endpointsModifiedCallbacks;
- (NSMutableDictionary)endpointsRemovedCallbacks;
- (NSMutableDictionary)outputDevicesAddedCallbacks;
- (NSMutableDictionary)outputDevicesChangedCallbacks;
- (NSMutableDictionary)outputDevicesModifiedCallbacks;
- (NSMutableDictionary)outputDevicesRemovedCallbacks;
- (id)_determineAddedOutputDevices:(uint64_t)devices previousOutputDevices:;
- (id)_determineModifiedEndpoints:(void *)endpoints previousEndpoints:;
- (id)_determineModifiedOutputDevices:(void *)devices previousOutputDevices:;
- (id)_determineRemovedOutputDevices:(uint64_t)devices previousOutputDevices:;
- (id)addEndpointsAddedCallback:(id)callback;
- (id)addEndpointsChangedCallback:(id)callback;
- (id)addEndpointsModifiedCallback:(id)callback;
- (id)addEndpointsRemovedCallback:(id)callback;
- (id)addOutputDevicesAddedCallback:(id)callback;
- (id)addOutputDevicesChangedCallback:(id)callback;
- (id)addOutputDevicesModifiedCallback:(id)callback;
- (id)addOutputDevicesRemovedCallback:(id)callback;
- (void)_performEndpointsCallbacks:(void *)callbacks withEndpoints:(void *)endpoints onQueue:;
- (void)_performOutputDevicesCallbacks:(void *)callbacks withOutputDevices:(void *)devices onQueue:;
- (void)logEndpointsChanged:(id)changed oldEndpoints:(id)endpoints;
- (void)logOutputDevicesChanged:(id)changed oldOutputDevices:(id)devices;
- (void)notifyAvailableEndpointsChanged:(id)changed discoveredEndpoints:(id)endpoints;
- (void)notifyOutputDevicesChanged:(id)changed;
- (void)removeEndpointsAddedCallback:(id)callback;
- (void)removeEndpointsChangedCallback:(id)callback;
- (void)removeEndpointsModifiedCallback:(id)callback;
- (void)removeEndpointsRemovedCallback:(id)callback;
- (void)removeOutputDevicesAddedCallback:(id)callback;
- (void)removeOutputDevicesChangedCallback:(id)callback;
- (void)removeOutputDevicesModifiedCallback:(id)callback;
- (void)removeOutputDevicesRemovedCallback:(id)callback;
- (void)setEndpointsSnapshot:(id)snapshot;
@end

@implementation MRAVRoutingDiscoverySession

void __56__MRAVRoutingDiscoverySession_discoverySessionFactories__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1 = discoverySessionFactories_factories;
  discoverySessionFactories_factories = v0;
}

+ (NSMutableArray)discoverySessionFactories
{
  if (discoverySessionFactories_onceToken != -1)
  {
    +[MRAVRoutingDiscoverySession discoverySessionFactories];
  }

  v3 = discoverySessionFactories_factories;

  return v3;
}

- (NSArray)outputDevicesSnapshot
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__28;
  v10 = __Block_byref_object_dispose__28;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__MRAVRoutingDiscoverySession_outputDevicesSnapshot__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __52__MRAVRoutingDiscoverySession_outputDevicesSnapshot__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSMutableDictionary)outputDevicesRemovedCallbacks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__28;
  v10 = __Block_byref_object_dispose__28;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__MRAVRoutingDiscoverySession_outputDevicesRemovedCallbacks__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __60__MRAVRoutingDiscoverySession_outputDevicesRemovedCallbacks__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 88) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSMutableDictionary)outputDevicesChangedCallbacks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__28;
  v10 = __Block_byref_object_dispose__28;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__MRAVRoutingDiscoverySession_outputDevicesChangedCallbacks__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __60__MRAVRoutingDiscoverySession_outputDevicesChangedCallbacks__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSMutableDictionary)outputDevicesAddedCallbacks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__28;
  v10 = __Block_byref_object_dispose__28;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__MRAVRoutingDiscoverySession_outputDevicesAddedCallbacks__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __58__MRAVRoutingDiscoverySession_outputDevicesAddedCallbacks__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSMutableDictionary)outputDevicesModifiedCallbacks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__28;
  v10 = __Block_byref_object_dispose__28;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__MRAVRoutingDiscoverySession_outputDevicesModifiedCallbacks__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __61__MRAVRoutingDiscoverySession_outputDevicesModifiedCallbacks__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (OS_dispatch_queue)loggingQueue
{
  if (loggingQueue_onceToken != -1)
  {
    +[MRAVRoutingDiscoverySession loggingQueue];
  }

  v3 = loggingQueue_queue;

  return v3;
}

- (NSMutableDictionary)endpointsChangedCallbacks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__28;
  v10 = __Block_byref_object_dispose__28;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__MRAVRoutingDiscoverySession_endpointsChangedCallbacks__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSMutableDictionary)endpointsAddedCallbacks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__28;
  v10 = __Block_byref_object_dispose__28;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__MRAVRoutingDiscoverySession_endpointsAddedCallbacks__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSMutableDictionary)endpointsModifiedCallbacks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__28;
  v10 = __Block_byref_object_dispose__28;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__MRAVRoutingDiscoverySession_endpointsModifiedCallbacks__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSMutableDictionary)endpointsRemovedCallbacks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__28;
  v10 = __Block_byref_object_dispose__28;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__MRAVRoutingDiscoverySession_endpointsRemovedCallbacks__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __43__MRAVRoutingDiscoverySession_loggingQueue__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
  v1 = dispatch_queue_create("com.apple.mediaremote.discoverySession.loggingQueue", v0);
  v2 = loggingQueue_queue;
  loggingQueue_queue = v1;
}

- (NSArray)endpointsSnapshot
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__28;
  v10 = __Block_byref_object_dispose__28;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__MRAVRoutingDiscoverySession_endpointsSnapshot__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __48__MRAVRoutingDiscoverySession_endpointsSnapshot__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __56__MRAVRoutingDiscoverySession_endpointsRemovedCallbacks__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __56__MRAVRoutingDiscoverySession_endpointsChangedCallbacks__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __54__MRAVRoutingDiscoverySession_endpointsAddedCallbacks__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __57__MRAVRoutingDiscoverySession_endpointsModifiedCallbacks__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)discoverySessionWithConfiguration:(id)configuration
{
  v23 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  [objc_opt_class() discoverySessionFactories];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = (*(*(*(&v18 + 1) + 8 * i) + 16))(*(*(&v18 + 1) + 8 * i));
        if (v10)
        {
          v12 = v10;

          goto LABEL_17;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if ([configurationCopy isLocal])
  {
    v11 = off_1E7698BB0;
    if (([configurationCopy features] & 8) == 0 && (objc_msgSend(configurationCopy, "features") & 0x10) == 0)
    {
      v11 = off_1E7698B80;
    }
  }

  else
  {
    v11 = off_1E7698BC8;
  }

  v13 = *v11;
  v12 = objc_opt_class();
  if (v12)
  {
LABEL_17:
    v14 = [self sharedDiscoverySessionForClass:v12 configuration:{configurationCopy, v18}];
    v15 = [[MRAVRoutingDiscoverySessionWrapper alloc] initWithSession:v14 configuration:configurationCopy];
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)sharedDiscoverySessionForClass:(Class)class configuration:(id)configuration
{
  configurationCopy = configuration;
  v6 = objc_opt_class();
  objc_sync_enter(v6);
  v7 = sharedSessionsByClass;
  if (!sharedSessionsByClass)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v9 = sharedSessionsByClass;
    sharedSessionsByClass = weakToStrongObjectsMapTable;

    v7 = sharedSessionsByClass;
  }

  strongToWeakObjectsMapTable = [v7 objectForKey:class];
  if (!strongToWeakObjectsMapTable)
  {
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    [sharedSessionsByClass setObject:strongToWeakObjectsMapTable forKey:class];
  }

  v11 = [strongToWeakObjectsMapTable objectForKey:configurationCopy];
  if (!v11)
  {
    v11 = [[class alloc] initWithConfiguration:configurationCopy];
    [strongToWeakObjectsMapTable setObject:v11 forKey:configurationCopy];
  }

  objc_sync_exit(v6);

  return v11;
}

- (MRAVRoutingDiscoverySession)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v46.receiver = self;
  v46.super_class = MRAVRoutingDiscoverySession;
  v5 = [(MRAVRoutingDiscoverySession *)&v46 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = objc_opt_class();
    v8 = [v6 initWithFormat:@"%s.serialQueue", class_getName(v7)];
    uTF8String = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(uTF8String, v10);
    serialQueue = v5->_serialQueue;
    v5->_serialQueue = v11;

    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = objc_opt_class();
    v15 = [v13 initWithFormat:@"%s.calloutQueue", class_getName(v14)];
    uTF8String2 = [v15 UTF8String];
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create(uTF8String2, v17);
    calloutQueue = v5->_calloutQueue;
    v5->_calloutQueue = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    endpointsChangedCallbacks = v5->_endpointsChangedCallbacks;
    v5->_endpointsChangedCallbacks = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    endpointsAddedCallbacks = v5->_endpointsAddedCallbacks;
    v5->_endpointsAddedCallbacks = v22;

    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    endpointsRemovedCallbacks = v5->_endpointsRemovedCallbacks;
    v5->_endpointsRemovedCallbacks = v24;

    v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    endpointsModifiedCallbacks = v5->_endpointsModifiedCallbacks;
    v5->_endpointsModifiedCallbacks = v26;

    v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
    outputDevicesChangedCallbacks = v5->_outputDevicesChangedCallbacks;
    v5->_outputDevicesChangedCallbacks = v28;

    v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
    outputDevicesAddedCallbacks = v5->_outputDevicesAddedCallbacks;
    v5->_outputDevicesAddedCallbacks = v30;

    v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
    outputDevicesRemovedCallbacks = v5->_outputDevicesRemovedCallbacks;
    v5->_outputDevicesRemovedCallbacks = v32;

    v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
    outputDevicesModifiedCallbacks = v5->_outputDevicesModifiedCallbacks;
    v5->_outputDevicesModifiedCallbacks = v34;

    v36 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    endpointsSnapshot = v5->_endpointsSnapshot;
    v5->_endpointsSnapshot = v36;

    v38 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    outputDevicesSnapshot = v5->_outputDevicesSnapshot;
    v5->_outputDevicesSnapshot = v38;

    v40 = [configurationCopy copy];
    configuration = v5->_configuration;
    v5->_configuration = v40;

    v5->_alwaysAllowUpdates = [configurationCopy alwaysAllowUpdates];
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    clientDiscoveryStates = v5->_clientDiscoveryStates;
    v5->_clientDiscoveryStates = weakToStrongObjectsMapTable;

    v44 = +[MRMediaRemoteServiceClient sharedServiceClient];
    [v44 addDiscoverySession:v5];
  }

  return v5;
}

- (void)setEndpointsSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__MRAVRoutingDiscoverySession_setEndpointsSnapshot___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = snapshotCopy;
  v6 = snapshotCopy;
  dispatch_sync(serialQueue, v7);
}

- (id)addEndpointsChangedCallback:(id)callback
{
  callbackCopy = callback;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__28;
  v20 = __Block_byref_object_dispose__28;
  v21 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__MRAVRoutingDiscoverySession_addEndpointsChangedCallback___block_invoke;
  block[3] = &unk_1E76A07B0;
  v15 = &v16;
  block[4] = self;
  v6 = callbackCopy;
  v14 = v6;
  dispatch_sync(serialQueue, block);
  calloutQueue = self->_calloutQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__MRAVRoutingDiscoverySession_addEndpointsChangedCallback___block_invoke_2;
  v11[3] = &unk_1E769A0A0;
  v11[4] = self;
  v12 = v6;
  v8 = v6;
  dispatch_async(calloutQueue, v11);
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v9;
}

void __59__MRAVRoutingDiscoverySession_addEndpointsChangedCallback___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:arc4random()];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 40);
  v7 = [*(a1 + 40) copy];
  v6 = MEMORY[0x1A58E3570]();
  [v5 setObject:v6 forKey:*(*(*(a1 + 48) + 8) + 40)];
}

void __59__MRAVRoutingDiscoverySession_addEndpointsChangedCallback___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) availableEndpoints];
  if ([v2 count])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (id)addOutputDevicesChangedCallback:(id)callback
{
  callbackCopy = callback;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__28;
  v20 = __Block_byref_object_dispose__28;
  v21 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__MRAVRoutingDiscoverySession_addOutputDevicesChangedCallback___block_invoke;
  block[3] = &unk_1E76A07B0;
  v15 = &v16;
  block[4] = self;
  v6 = callbackCopy;
  v14 = v6;
  dispatch_sync(serialQueue, block);
  calloutQueue = self->_calloutQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__MRAVRoutingDiscoverySession_addOutputDevicesChangedCallback___block_invoke_2;
  v11[3] = &unk_1E769A0A0;
  v11[4] = self;
  v12 = v6;
  v8 = v6;
  dispatch_async(calloutQueue, v11);
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v9;
}

void __63__MRAVRoutingDiscoverySession_addOutputDevicesChangedCallback___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:arc4random()];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 72);
  v7 = [*(a1 + 40) copy];
  v6 = MEMORY[0x1A58E3570]();
  [v5 setObject:v6 forKey:*(*(*(a1 + 48) + 8) + 40)];
}

void __63__MRAVRoutingDiscoverySession_addOutputDevicesChangedCallback___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) availableOutputDevices];
  if ([v2 count])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)removeEndpointsChangedCallback:(id)callback
{
  callbackCopy = callback;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__MRAVRoutingDiscoverySession_removeEndpointsChangedCallback___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  dispatch_sync(serialQueue, v7);
}

- (void)removeOutputDevicesChangedCallback:(id)callback
{
  callbackCopy = callback;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__MRAVRoutingDiscoverySession_removeOutputDevicesChangedCallback___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  dispatch_sync(serialQueue, v7);
}

- (id)addEndpointsAddedCallback:(id)callback
{
  callbackCopy = callback;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__28;
  v20 = __Block_byref_object_dispose__28;
  v21 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__MRAVRoutingDiscoverySession_addEndpointsAddedCallback___block_invoke;
  block[3] = &unk_1E76A07B0;
  v15 = &v16;
  block[4] = self;
  v6 = callbackCopy;
  v14 = v6;
  dispatch_sync(serialQueue, block);
  calloutQueue = self->_calloutQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__MRAVRoutingDiscoverySession_addEndpointsAddedCallback___block_invoke_2;
  v11[3] = &unk_1E769A0A0;
  v11[4] = self;
  v12 = v6;
  v8 = v6;
  dispatch_async(calloutQueue, v11);
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v9;
}

void __57__MRAVRoutingDiscoverySession_addEndpointsAddedCallback___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:arc4random()];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v6 = [*(a1 + 40) copy];
  v5 = MEMORY[0x1A58E3570]();
  [*(*(a1 + 32) + 48) setObject:v5 forKeyedSubscript:*(*(*(a1 + 48) + 8) + 40)];
}

void __57__MRAVRoutingDiscoverySession_addEndpointsAddedCallback___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) availableEndpoints];
  if ([v2 count])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)removeEndpointsAddedCallback:(id)callback
{
  callbackCopy = callback;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__MRAVRoutingDiscoverySession_removeEndpointsAddedCallback___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  dispatch_sync(serialQueue, v7);
}

- (id)addEndpointsRemovedCallback:(id)callback
{
  callbackCopy = callback;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__28;
  v16 = __Block_byref_object_dispose__28;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__MRAVRoutingDiscoverySession_addEndpointsRemovedCallback___block_invoke;
  block[3] = &unk_1E76A07B0;
  v10 = callbackCopy;
  v11 = &v12;
  block[4] = self;
  v6 = callbackCopy;
  dispatch_sync(serialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __59__MRAVRoutingDiscoverySession_addEndpointsRemovedCallback___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:arc4random()];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v6 = [*(a1 + 40) copy];
  v5 = MEMORY[0x1A58E3570]();
  [*(*(a1 + 32) + 56) setObject:v5 forKeyedSubscript:*(*(*(a1 + 48) + 8) + 40)];
}

- (void)removeEndpointsRemovedCallback:(id)callback
{
  callbackCopy = callback;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__MRAVRoutingDiscoverySession_removeEndpointsRemovedCallback___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  dispatch_sync(serialQueue, v7);
}

- (id)addEndpointsModifiedCallback:(id)callback
{
  callbackCopy = callback;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__28;
  v16 = __Block_byref_object_dispose__28;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__MRAVRoutingDiscoverySession_addEndpointsModifiedCallback___block_invoke;
  block[3] = &unk_1E76A07B0;
  v10 = callbackCopy;
  v11 = &v12;
  block[4] = self;
  v6 = callbackCopy;
  dispatch_sync(serialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __60__MRAVRoutingDiscoverySession_addEndpointsModifiedCallback___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:arc4random()];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v6 = [*(a1 + 40) copy];
  v5 = MEMORY[0x1A58E3570]();
  [*(*(a1 + 32) + 64) setObject:v5 forKeyedSubscript:*(*(*(a1 + 48) + 8) + 40)];
}

- (void)removeEndpointsModifiedCallback:(id)callback
{
  callbackCopy = callback;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__MRAVRoutingDiscoverySession_removeEndpointsModifiedCallback___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  dispatch_sync(serialQueue, v7);
}

- (id)addOutputDevicesAddedCallback:(id)callback
{
  callbackCopy = callback;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__28;
  v20 = __Block_byref_object_dispose__28;
  v21 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__MRAVRoutingDiscoverySession_addOutputDevicesAddedCallback___block_invoke;
  block[3] = &unk_1E76A07B0;
  v15 = &v16;
  block[4] = self;
  v6 = callbackCopy;
  v14 = v6;
  dispatch_sync(serialQueue, block);
  calloutQueue = self->_calloutQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__MRAVRoutingDiscoverySession_addOutputDevicesAddedCallback___block_invoke_2;
  v11[3] = &unk_1E769A0A0;
  v11[4] = self;
  v12 = v6;
  v8 = v6;
  dispatch_async(calloutQueue, v11);
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v9;
}

void __61__MRAVRoutingDiscoverySession_addOutputDevicesAddedCallback___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:arc4random()];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v6 = [*(a1 + 40) copy];
  v5 = MEMORY[0x1A58E3570]();
  [*(*(a1 + 32) + 80) setObject:v5 forKeyedSubscript:*(*(*(a1 + 48) + 8) + 40)];
}

void __61__MRAVRoutingDiscoverySession_addOutputDevicesAddedCallback___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) availableOutputDevices];
  if ([v2 count])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)removeOutputDevicesAddedCallback:(id)callback
{
  callbackCopy = callback;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__MRAVRoutingDiscoverySession_removeOutputDevicesAddedCallback___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  dispatch_sync(serialQueue, v7);
}

- (id)addOutputDevicesRemovedCallback:(id)callback
{
  callbackCopy = callback;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__28;
  v16 = __Block_byref_object_dispose__28;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__MRAVRoutingDiscoverySession_addOutputDevicesRemovedCallback___block_invoke;
  block[3] = &unk_1E76A07B0;
  v10 = callbackCopy;
  v11 = &v12;
  block[4] = self;
  v6 = callbackCopy;
  dispatch_sync(serialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __63__MRAVRoutingDiscoverySession_addOutputDevicesRemovedCallback___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:arc4random()];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v6 = [*(a1 + 40) copy];
  v5 = MEMORY[0x1A58E3570]();
  [*(*(a1 + 32) + 88) setObject:v5 forKeyedSubscript:*(*(*(a1 + 48) + 8) + 40)];
}

- (void)removeOutputDevicesRemovedCallback:(id)callback
{
  callbackCopy = callback;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__MRAVRoutingDiscoverySession_removeOutputDevicesRemovedCallback___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  dispatch_sync(serialQueue, v7);
}

- (id)addOutputDevicesModifiedCallback:(id)callback
{
  callbackCopy = callback;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__28;
  v16 = __Block_byref_object_dispose__28;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__MRAVRoutingDiscoverySession_addOutputDevicesModifiedCallback___block_invoke;
  block[3] = &unk_1E76A07B0;
  v10 = callbackCopy;
  v11 = &v12;
  block[4] = self;
  v6 = callbackCopy;
  dispatch_sync(serialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __64__MRAVRoutingDiscoverySession_addOutputDevicesModifiedCallback___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:arc4random()];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v6 = [*(a1 + 40) copy];
  v5 = MEMORY[0x1A58E3570]();
  [*(*(a1 + 32) + 96) setObject:v5 forKeyedSubscript:*(*(*(a1 + 48) + 8) + 40)];
}

- (void)removeOutputDevicesModifiedCallback:(id)callback
{
  callbackCopy = callback;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__MRAVRoutingDiscoverySession_removeOutputDevicesModifiedCallback___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  dispatch_sync(serialQueue, v7);
}

+ (void)registerDiscoverySessionFactory:(id)factory
{
  factoryCopy = factory;
  discoverySessionFactories = [self discoverySessionFactories];
  objc_sync_enter(discoverySessionFactories);
  v5 = MEMORY[0x1A58E3570](factoryCopy);
  [discoverySessionFactories addObject:v5];

  objc_sync_exit(discoverySessionFactories);
}

- (void)notifyOutputDevicesChanged:(id)changed
{
  v48 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  discoveryMode = [(MRAVRoutingDiscoverySession *)self discoveryMode];
  if (discoveryMode)
  {
    alwaysAllowUpdates = 1;
  }

  else
  {
    alwaysAllowUpdates = [(MRAVRoutingDiscoverySession *)self alwaysAllowUpdates];
  }

  outputDevicesSnapshot = [(MRAVRoutingDiscoverySession *)self outputDevicesSnapshot];
  mr_distantOutputDevices = [changedCopy mr_distantOutputDevices];
  [(MRAVRoutingDiscoverySession *)self setOutputDevicesSnapshot:mr_distantOutputDevices];
  if (alwaysAllowUpdates)
  {
    v42 = mr_distantOutputDevices;
    v40 = outputDevicesSnapshot;
    v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(changedCopy, "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v10 = changedCopy;
    v11 = [v10 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v44;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v44 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v43 + 1) + 8 * i);
          v16 = [v15 uid];
          if (v16)
          {
            [v9 setObject:v15 forKeyedSubscript:v16];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v12);
    }

    if (self->_previousOutputDevicesDiscoveryMode == discoveryMode)
    {
      v17 = +[MRUserSettings currentSettings];
      v41 = [v17 calculateDiscoveryUpdates] ^ 1;
    }

    else
    {
      v41 = 1;
    }

    outputDevicesSnapshot = v40;
    outputDevicesRemovedCallbacks = [(MRAVRoutingDiscoverySession *)self outputDevicesRemovedCallbacks];
    v19 = [outputDevicesRemovedCallbacks count];
    outputDevicesChangedCallbacks = [(MRAVRoutingDiscoverySession *)self outputDevicesChangedCallbacks];
    v21 = [outputDevicesChangedCallbacks count];

    if (v19 + v21)
    {
      v31 = [MRAVRoutingDiscoverySession _determineRemovedOutputDevices:? previousOutputDevices:?];
      if ([v31 count])
      {
        outputDevicesRemovedCallbacks2 = [(MRAVRoutingDiscoverySession *)self outputDevicesRemovedCallbacks];
        [(MRAVRoutingDiscoverySession *)self _performOutputDevicesCallbacks:outputDevicesRemovedCallbacks2 withOutputDevices:v31 onQueue:self->_calloutQueue];

        v41 = 1;
      }
    }

    outputDevicesAddedCallbacks = [(MRAVRoutingDiscoverySession *)self outputDevicesAddedCallbacks];
    v23 = [outputDevicesAddedCallbacks count];
    outputDevicesChangedCallbacks2 = [(MRAVRoutingDiscoverySession *)self outputDevicesChangedCallbacks];
    v25 = [outputDevicesChangedCallbacks2 count];

    if (v23 + v25)
    {
      v32 = [MRAVRoutingDiscoverySession _determineAddedOutputDevices:? previousOutputDevices:?];
      v33 = [v32 mr_replaceOutputDevicesWithOutputDevices:v9];

      if ([v33 count])
      {
        outputDevicesAddedCallbacks2 = [(MRAVRoutingDiscoverySession *)self outputDevicesAddedCallbacks];
        [(MRAVRoutingDiscoverySession *)self _performOutputDevicesCallbacks:outputDevicesAddedCallbacks2 withOutputDevices:v33 onQueue:self->_calloutQueue];

        v41 = 1;
      }
    }

    outputDevicesModifiedCallbacks = [(MRAVRoutingDiscoverySession *)self outputDevicesModifiedCallbacks];
    v27 = [outputDevicesModifiedCallbacks count];
    outputDevicesChangedCallbacks3 = [(MRAVRoutingDiscoverySession *)self outputDevicesChangedCallbacks];
    v29 = [outputDevicesChangedCallbacks3 count];

    if (v27 + v29)
    {
      mr_distantOutputDevices = v42;
      v34 = [(MRAVRoutingDiscoverySession *)self _determineModifiedOutputDevices:v42 previousOutputDevices:v40];
      v35 = [v34 mr_replaceOutputDevicesWithOutputDevices:v9];

      if ([v35 count])
      {
        outputDevicesModifiedCallbacks2 = [(MRAVRoutingDiscoverySession *)self outputDevicesModifiedCallbacks];
        [(MRAVRoutingDiscoverySession *)self _performOutputDevicesCallbacks:outputDevicesModifiedCallbacks2 withOutputDevices:v35 onQueue:self->_calloutQueue];
      }

      else
      {

        if ((v41 & 1) == 0)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      mr_distantOutputDevices = v42;
      if (!v41)
      {
LABEL_21:

        goto LABEL_22;
      }
    }

    outputDevicesChangedCallbacks4 = [(MRAVRoutingDiscoverySession *)self outputDevicesChangedCallbacks];
    [(MRAVRoutingDiscoverySession *)self _performOutputDevicesCallbacks:outputDevicesChangedCallbacks4 withOutputDevices:v10 onQueue:self->_calloutQueue];

    goto LABEL_21;
  }

LABEL_22:
  self->_previousOutputDevicesDiscoveryMode = discoveryMode;
  [(MRAVRoutingDiscoverySession *)self logOutputDevicesChanged:changedCopy oldOutputDevices:outputDevicesSnapshot];

  v30 = *MEMORY[0x1E69E9840];
}

- (void)notifyAvailableEndpointsChanged:(id)changed discoveredEndpoints:(id)endpoints
{
  v54 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  endpointsCopy = endpoints;
  v9 = [changedCopy count];
  if (v9 != [endpointsCopy count])
  {
    [MRAVRoutingDiscoverySession notifyAvailableEndpointsChanged:a2 discoveredEndpoints:self];
  }

  discoveryMode = [(MRAVRoutingDiscoverySession *)self discoveryMode];
  if (discoveryMode)
  {
    alwaysAllowUpdates = 1;
  }

  else
  {
    alwaysAllowUpdates = [(MRAVRoutingDiscoverySession *)self alwaysAllowUpdates];
  }

  endpointsSnapshot = [(MRAVRoutingDiscoverySession *)self endpointsSnapshot];
  mr_distantEndpoints = [endpointsCopy mr_distantEndpoints];
  [(MRAVRoutingDiscoverySession *)self setEndpointsSnapshot:mr_distantEndpoints];
  if (alwaysAllowUpdates)
  {
    v45 = discoveryMode;
    if (self->_previousEndpointsDiscoveryMode == discoveryMode)
    {
      v14 = +[MRUserSettings currentSettings];
      v46 = [v14 calculateDiscoveryUpdates] ^ 1;
    }

    else
    {
      v46 = 1;
    }

    v47 = mr_distantEndpoints;
    v48 = endpointsSnapshot;
    v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(changedCopy, "count")}];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v16 = changedCopy;
    v17 = [v16 countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v50;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v50 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v49 + 1) + 8 * i);
          uniqueIdentifier = [v21 uniqueIdentifier];
          [v15 setObject:v21 forKeyedSubscript:uniqueIdentifier];
        }

        v18 = [v16 countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v18);
    }

    endpointsRemovedCallbacks = [(MRAVRoutingDiscoverySession *)self endpointsRemovedCallbacks];
    v24 = [endpointsRemovedCallbacks count];
    endpointsChangedCallbacks = [(MRAVRoutingDiscoverySession *)self endpointsChangedCallbacks];
    v26 = [endpointsChangedCallbacks count];

    if (v24 + v26)
    {
      v36 = [MRAVRoutingDiscoverySession _determineRemovedOutputDevices:? previousOutputDevices:?];
      if ([v36 count])
      {
        endpointsRemovedCallbacks2 = [(MRAVRoutingDiscoverySession *)self endpointsRemovedCallbacks];
        [(MRAVRoutingDiscoverySession *)self _performEndpointsCallbacks:endpointsRemovedCallbacks2 withEndpoints:v36 onQueue:self->_calloutQueue];

        v46 = 1;
      }
    }

    endpointsAddedCallbacks = [(MRAVRoutingDiscoverySession *)self endpointsAddedCallbacks];
    v28 = [endpointsAddedCallbacks count];
    endpointsChangedCallbacks2 = [(MRAVRoutingDiscoverySession *)self endpointsChangedCallbacks];
    v30 = [endpointsChangedCallbacks2 count];

    if (v28 + v30)
    {
      v37 = [MRAVRoutingDiscoverySession _determineAddedOutputDevices:? previousOutputDevices:?];
      v38 = [v37 mr_replaceEndpointsWithEndpoints:v15];

      discoveryMode = v45;
      if ([v38 count])
      {
        endpointsAddedCallbacks2 = [(MRAVRoutingDiscoverySession *)self endpointsAddedCallbacks];
        [(MRAVRoutingDiscoverySession *)self _performEndpointsCallbacks:endpointsAddedCallbacks2 withEndpoints:v38 onQueue:self->_calloutQueue];

        v46 = 1;
      }
    }

    else
    {
      discoveryMode = v45;
    }

    endpointsModifiedCallbacks = [(MRAVRoutingDiscoverySession *)self endpointsModifiedCallbacks];
    v32 = [endpointsModifiedCallbacks count];
    endpointsChangedCallbacks3 = [(MRAVRoutingDiscoverySession *)self endpointsChangedCallbacks];
    v34 = [endpointsChangedCallbacks3 count];

    if (v32 + v34)
    {
      mr_distantEndpoints = v47;
      endpointsSnapshot = v48;
      v39 = [(MRAVRoutingDiscoverySession *)self _determineModifiedEndpoints:v47 previousEndpoints:v48];
      v40 = [v39 mr_replaceEndpointsWithEndpoints:v15];

      if ([v40 count])
      {
        endpointsModifiedCallbacks2 = [(MRAVRoutingDiscoverySession *)self endpointsModifiedCallbacks];
        [(MRAVRoutingDiscoverySession *)self _performEndpointsCallbacks:endpointsModifiedCallbacks2 withEndpoints:v40 onQueue:self->_calloutQueue];
      }

      else
      {

        if ((v46 & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      mr_distantEndpoints = v47;
      endpointsSnapshot = v48;
      if (!v46)
      {
LABEL_22:

        goto LABEL_23;
      }
    }

    endpointsChangedCallbacks4 = [(MRAVRoutingDiscoverySession *)self endpointsChangedCallbacks];
    [(MRAVRoutingDiscoverySession *)self _performEndpointsCallbacks:endpointsChangedCallbacks4 withEndpoints:v16 onQueue:self->_calloutQueue];

    goto LABEL_22;
  }

LABEL_23:
  self->_previousEndpointsDiscoveryMode = discoveryMode;
  [(MRAVRoutingDiscoverySession *)self logEndpointsChanged:changedCopy oldEndpoints:endpointsSnapshot];

  v35 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldLogChanges
{
  if ([(MRAVRoutingDiscoverySession *)self alwaysLogUpdates]|| [(MRAVRoutingDiscoverySession *)self discoveryMode])
  {
    return 1;
  }

  return [(MRAVRoutingDiscoverySession *)self alwaysAllowUpdates];
}

- (void)logOutputDevicesChanged:(id)changed oldOutputDevices:(id)devices
{
  v21 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  devicesCopy = devices;
  if ([(MRAVRoutingDiscoverySession *)self _shouldLogChanges])
  {
    if (devicesCopy)
    {
      v8 = devicesCopy;
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }

    v9 = [v8 changeDescriptionTo:changedCopy keyBlock:&__block_literal_global_117_1 isUpdatedBlock:&__block_literal_global_120_0 descriptionBlock:&__block_literal_global_122];
    if (v9)
    {
      v10 = MRLogCategoryDiscoveryUpdates();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy = self;
        v19 = 2114;
        v20 = v9;
        _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - Output devices changed\n%{public}@", buf, 0x16u);
      }
    }

    loggingQueue = [objc_opt_class() loggingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__MRAVRoutingDiscoverySession_logOutputDevicesChanged_oldOutputDevices___block_invoke_123;
    block[3] = &unk_1E769BA00;
    v14 = devicesCopy;
    v15 = changedCopy;
    selfCopy2 = self;
    dispatch_async(loggingQueue, block);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __72__MRAVRoutingDiscoverySession_logOutputDevicesChanged_oldOutputDevices___block_invoke_123(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  if (a1[4])
  {
    v3 = a1[4];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = [v3 changeDescriptionTo:v2 keyBlock:&__block_literal_global_126 isUpdatedBlock:&__block_literal_global_129_0 descriptionBlock:&__block_literal_global_131];
  if (v4)
  {
    v5 = MRLogCategoryDiscoveryUpdates();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[6];
      v8 = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = v4;
      _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - Output devices changed\n%{public}@", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)logEndpointsChanged:(id)changed oldEndpoints:(id)endpoints
{
  v21 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  endpointsCopy = endpoints;
  if ([(MRAVRoutingDiscoverySession *)self _shouldLogChanges])
  {
    if (endpointsCopy)
    {
      v8 = endpointsCopy;
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }

    v9 = [v8 changeDescriptionTo:changedCopy keyBlock:&__block_literal_global_134 isUpdatedBlock:&__block_literal_global_137 descriptionBlock:&__block_literal_global_140];
    if (v9)
    {
      v10 = MRLogCategoryDiscoveryUpdates();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy = self;
        v19 = 2114;
        v20 = v9;
        _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - Endpoints changed\n%{public}@", buf, 0x16u);
      }
    }

    loggingQueue = [objc_opt_class() loggingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__MRAVRoutingDiscoverySession_logEndpointsChanged_oldEndpoints___block_invoke_141;
    block[3] = &unk_1E769BA00;
    v14 = endpointsCopy;
    v15 = changedCopy;
    selfCopy2 = self;
    dispatch_async(loggingQueue, block);
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __64__MRAVRoutingDiscoverySession_logEndpointsChanged_oldEndpoints___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 outputDeviceUIDs];
  v6 = [v4 outputDeviceUIDs];

  LODWORD(v4) = [v5 isEqualToArray:v6];
  return v4 ^ 1;
}

void __64__MRAVRoutingDiscoverySession_logEndpointsChanged_oldEndpoints___block_invoke_141(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  if (a1[4])
  {
    v3 = a1[4];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = [v3 changeDescriptionTo:v2 keyBlock:&__block_literal_global_144 isUpdatedBlock:&__block_literal_global_147_0 descriptionBlock:&__block_literal_global_149_0];
  if (v4)
  {
    v5 = MRLogCategoryDiscoveryUpdates();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[6];
      v8 = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = v4;
      _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - Endpoints changed\n%{public}@", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __64__MRAVRoutingDiscoverySession_logEndpointsChanged_oldEndpoints___block_invoke_3_145(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 outputDeviceUIDs];
  v6 = [v4 outputDeviceUIDs];

  LODWORD(v4) = [v5 isEqualToArray:v6];
  return v4 ^ 1;
}

uint64_t __77__MRAVRoutingDiscoverySession__determineModifiedEndpoints_previousEndpoints___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) indexOfObject:v3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) objectAtIndexedSubscript:v4];
    v5 = [v3 isEqualToEndpoint:v6] ^ 1;
  }

  return v5;
}

void __80__MRAVRoutingDiscoverySession__performEndpointsCallbacks_withEndpoints_onQueue___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 32) objectForKeyedSubscript:{*(*(&v9 + 1) + 8 * v6), v9}];
        v7[2](v7, *(a1 + 40));

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __85__MRAVRoutingDiscoverySession__determineModifiedOutputDevices_previousOutputDevices___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) indexOfObject:v3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) objectAtIndexedSubscript:v4];
    v7 = +[MRUserSettings currentSettings];
    v8 = [v7 verboseDiscoveryLogging];

    if (v8)
    {
      v21 = 0;
      v22 = 0;
      v20 = 0;
      v9 = [v3 isEqualToOutputDevice:v6 denyList:0 addedProperties:&v22 removedProperties:&v21 changedProperties:&v20];
      v10 = v22;
      v11 = v21;
      v12 = v20;
      if ((v9 & 1) == 0)
      {
        v13 = MRLogCategoryDiscoveryOversize();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 40);
          *buf = 138543362;
          v24 = v14;
          _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - OutputDevice modified", buf, 0xCu);
        }
      }

      if ([v10 count])
      {
        v15 = MRLogCategoryDiscoveryOversize();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v24 = v10;
          _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_DEFAULT, "Added Fields: %{public}@", buf, 0xCu);
        }
      }

      if ([v11 count])
      {
        v16 = MRLogCategoryDiscoveryOversize();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v24 = v11;
          _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, "Removed Fields: %{public}@", buf, 0xCu);
        }
      }

      if ([v12 count])
      {
        v17 = MRLogCategoryDiscoveryOversize();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v24 = v12;
          _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, "Changed Values: %{public}@", buf, 0xCu);
        }
      }
    }

    else
    {
      v9 = [v3 isEqualToOutputDevice:v6];
    }

    v5 = v9 ^ 1u;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

void __88__MRAVRoutingDiscoverySession__performOutputDevicesCallbacks_withOutputDevices_onQueue___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 32) objectForKeyedSubscript:{*(*(&v9 + 1) + 8 * v6), v9}];
        v7[2](v7, *(a1 + 40));

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)_determineRemovedOutputDevices:(uint64_t)devices previousOutputDevices:
{
  if (devices)
  {
    OUTLINED_FUNCTION_6_5();
    v4 = v3;
    [OUTLINED_FUNCTION_3_11() setWithArray:?];
    objc_claimAutoreleasedReturnValue();
    v5 = [OUTLINED_FUNCTION_4_8() setWithArray:?];

    OUTLINED_FUNCTION_7_2();
    allObjects = [v1 allObjects];
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

- (void)_performOutputDevicesCallbacks:(void *)callbacks withOutputDevices:(void *)devices onQueue:
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = a2;
  callbacksCopy = callbacks;
  devicesCopy = devices;
  v18 = devicesCopy;
  if (self)
  {
    if (devicesCopy)
    {
      OUTLINED_FUNCTION_1_19();
      v46 = 3221225472;
      v47 = __88__MRAVRoutingDiscoverySession__performOutputDevicesCallbacks_withOutputDevices_onQueue___block_invoke;
      v48 = &unk_1E769A4A0;
      v49 = v8;
      v50 = callbacksCopy;
      dispatch_async(v18, &block);
    }

    else
    {
      v19 = OUTLINED_FUNCTION_2_10(0, v11, v12, v13, v14, v15, v16, v17, 0, 0, 0, 0, 0, 0, 0, 0, v43, block, v46, v47, v48, v49, v50, v51);
      if (v19)
      {
        v20 = v19;
        v21 = *v37;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v37 != v21)
            {
              objc_enumerationMutation(v8);
            }

            v23 = [v8 objectForKeyedSubscript:*(v36 + 8 * i)];
            v24 = OUTLINED_FUNCTION_5_7(v23);
            v25(v24);
          }

          v20 = OUTLINED_FUNCTION_2_10(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, v38, v39, v40, v41, v42, v44, block, v46, v47, v48, v49, v50, v51);
        }

        while (v20);
      }
    }
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (id)_determineAddedOutputDevices:(uint64_t)devices previousOutputDevices:
{
  if (devices)
  {
    OUTLINED_FUNCTION_6_5();
    v4 = v3;
    [OUTLINED_FUNCTION_3_11() setWithArray:?];
    objc_claimAutoreleasedReturnValue();
    v5 = [OUTLINED_FUNCTION_4_8() setWithArray:?];

    OUTLINED_FUNCTION_7_2();
    allObjects = [v1 allObjects];
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

- (id)_determineModifiedOutputDevices:(void *)devices previousOutputDevices:
{
  devicesCopy = devices;
  if (self)
  {
    OUTLINED_FUNCTION_1_0();
    v8[1] = 3221225472;
    v8[2] = __85__MRAVRoutingDiscoverySession__determineModifiedOutputDevices_previousOutputDevices___block_invoke;
    v8[3] = &unk_1E76A0880;
    v9 = devicesCopy;
    selfCopy = self;
    v6 = [a2 mr_filter:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_performEndpointsCallbacks:(void *)callbacks withEndpoints:(void *)endpoints onQueue:
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = a2;
  callbacksCopy = callbacks;
  endpointsCopy = endpoints;
  v18 = endpointsCopy;
  if (self)
  {
    if (endpointsCopy)
    {
      OUTLINED_FUNCTION_1_19();
      v46 = 3221225472;
      v47 = __80__MRAVRoutingDiscoverySession__performEndpointsCallbacks_withEndpoints_onQueue___block_invoke;
      v48 = &unk_1E769A4A0;
      v49 = v8;
      v50 = callbacksCopy;
      dispatch_async(v18, &block);
    }

    else
    {
      v19 = OUTLINED_FUNCTION_2_10(0, v11, v12, v13, v14, v15, v16, v17, 0, 0, 0, 0, 0, 0, 0, 0, v43, block, v46, v47, v48, v49, v50, v51);
      if (v19)
      {
        v20 = v19;
        v21 = *v37;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v37 != v21)
            {
              objc_enumerationMutation(v8);
            }

            v23 = [v8 objectForKeyedSubscript:*(v36 + 8 * i)];
            v24 = OUTLINED_FUNCTION_5_7(v23);
            v25(v24);
          }

          v20 = OUTLINED_FUNCTION_2_10(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, v38, v39, v40, v41, v42, v44, block, v46, v47, v48, v49, v50, v51);
        }

        while (v20);
      }
    }
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (id)_determineModifiedEndpoints:(void *)endpoints previousEndpoints:
{
  endpointsCopy = endpoints;
  v6 = endpointsCopy;
  if (self)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __77__MRAVRoutingDiscoverySession__determineModifiedEndpoints_previousEndpoints___block_invoke;
    v9[3] = &unk_1E76A0858;
    v10 = endpointsCopy;
    v7 = [a2 mr_filter:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)notifyAvailableEndpointsChanged:(uint64_t)a1 discoveredEndpoints:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRAVRoutingDiscoverySession.m" lineNumber:640 description:@"Mismatch between available and discovered endpoint counts"];
}

@end