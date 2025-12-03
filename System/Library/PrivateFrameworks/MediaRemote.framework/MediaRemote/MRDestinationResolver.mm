@interface MRDestinationResolver
+ (void)resolveDestination:(id)destination level:(int64_t)level timeout:(double)timeout completion:(id)completion;
+ (void)resolvePartialDestination:(id)destination level:(int64_t)level timeout:(double)timeout completion:(id)completion;
+ (void)resolvePartialDestination:(id)destination level:(int64_t)level timeout:(double)timeout dependencies:(id)dependencies completion:(id)completion;
- (BOOL)isDynamicEndpoint;
- (BOOL)isProactiveEndpoint;
- (BOOL)isUserSelectedEndpoint;
- (MRAVEndpointObserver)endpointObserver;
- (MRDestination)destination;
- (MRDestinationResolver)initWithDestination:(id)destination label:(id)label;
- (MRDestinationResolver)initWithDestination:(id)destination label:(id)label dependencies:(id)dependencies;
- (MRDestinationResolverDelegate)delegate;
- (id)debugDescription;
- (id)description;
- (void)_handleEndpointDidDisconnectNotification:(id)notification;
- (void)beginResolving;
- (void)createPlayerPathForEndpoint:(id)endpoint client:(id)client player:(id)player completion:(id)completion;
- (void)dealloc;
- (void)endpointDidDisconnect:(id)disconnect;
- (void)handleActiveSystemEndpointChangedNotification:(id)notification;
- (void)handleEndpointChanged;
- (void)handleEndpointInvalidated;
- (void)handleEndpointResolution:(id)resolution client:(id)client player:(id)player source:(id)source error:(id)error;
- (void)handlePlayerPathInvalidatedWithPlayerPath:(id)path;
- (void)notifyDelegateOfEndpointChange:(id)change;
- (void)notifyDelegateOfError:(id)error;
- (void)notifyDelegateOfInvalidation;
- (void)notifyDelegateOfOriginChange:(id)change;
- (void)notifyDelegateOfPlayerPathChange:(id)change;
- (void)onQueue_clearStateForEndpoint;
- (void)onQueue_clearStateForOutputDeviceUID;
- (void)onQueue_clearStateForPlayerPath;
- (void)onQueue_registerForEndpointInvalidations:(id)invalidations;
- (void)onQueue_registerForPlayerPathInvalidationsForUnresolvedPlayerPath:(id)path;
- (void)onQueue_retrieveEndpointForContextUID:(id)d completion:(id)completion;
- (void)onQueue_retrieveEndpointForUID:(id)d completion:(id)completion;
- (void)onQueue_setEndpoint:(id)endpoint;
- (void)onQueue_setOrigin:(id)origin;
- (void)onQueue_setResolvedPlayerPath:(id)path;
- (void)onQueue_setUnresolvedPlayerPath:(id)path;
- (void)registerForEndpointChangesForOutputDeviceUID:(id)d;
- (void)resolve;
- (void)resolveForEndpoint:(id)endpoint client:(id)client player:(id)player;
- (void)resolveForOutputContextUID:(id)d client:(id)client player:(id)player;
- (void)resolveForOutputDeviceUID:(id)d client:(id)client player:(id)player;
- (void)resolveForResolvedPlayerPath:(id)path;
- (void)resolveForUnresolvedPlayerPath:(id)path;
- (void)resolvePlayerPath:(id)path completion:(id)completion;
- (void)unregisterForEndpointChanges;
- (void)unregisterForEndpointInvalidations;
- (void)unregisterForPlayerPathInvalidations;
@end

@implementation MRDestinationResolver

- (void)beginResolving
{
  serialQueue = [(MRDestinationResolver *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__MRDestinationResolver_beginResolving__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

uint64_t __39__MRDestinationResolver_beginResolving__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) resolving];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setResolving:1];
    v3 = *(a1 + 32);

    return [v3 resolve];
  }

  return result;
}

- (void)resolve
{
  serialQueue = [(MRDestinationResolver *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__MRDestinationResolver_resolve__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __32__MRDestinationResolver_resolve__block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) resolving])
  {
    v2 = *(*(a1 + 32) + 16);
    v3 = [v2 playerPath];
    v4 = [v3 isResolved];

    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = [v2 playerPath];
      [v5 resolveForResolvedPlayerPath:v6];
LABEL_4:

LABEL_13:
      goto LABEL_14;
    }

    v7 = [v2 endpoint];

    if (v7)
    {
      v8 = *(a1 + 32);
      v9 = [v2 endpoint];
      v10 = [*(a1 + 32) originalDestination];
      v11 = [v10 client];
      v12 = [*(a1 + 32) originalDestination];
      v13 = [v12 player];
      [v8 resolveForEndpoint:v9 client:v11 player:v13];
    }

    else
    {
      v14 = [v2 outputContextUID];

      if (v14)
      {
        v15 = *(a1 + 32);
        v9 = [v2 outputContextUID];
        v10 = [*(a1 + 32) originalDestination];
        v11 = [v10 client];
        v12 = [*(a1 + 32) originalDestination];
        v13 = [v12 player];
        [v15 resolveForOutputContextUID:v9 client:v11 player:v13];
      }

      else
      {
        v16 = [v2 outputDeviceUID];

        if (!v16)
        {
          v19 = [v2 playerPath];
          if (v19)
          {
          }

          else
          {
            v20 = [*(a1 + 32) originalDestination];
            v21 = [v20 playerPath];

            if (!v21)
            {
              v25 = *(a1 + 32);
              v26 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:6];
              [v25 notifyDelegateOfError:v26];

              v6 = _MRLogForCategory(0);
              if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
              {
                v27 = *(a1 + 32);
                v28 = 138412802;
                v29 = v27;
                v30 = 2112;
                v31 = v27;
                v32 = 2112;
                v33 = v2;
                _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "%@ <%@> Unable to resolve destination %@", &v28, 0x20u);
              }

              goto LABEL_4;
            }
          }

          v22 = [v2 playerPath];
          v23 = v22;
          if (v22)
          {
            v9 = v22;
          }

          else
          {
            v24 = [*(a1 + 32) originalDestination];
            v9 = [v24 playerPath];
          }

          [*(a1 + 32) resolveForUnresolvedPlayerPath:v9];
LABEL_12:

          goto LABEL_13;
        }

        v17 = *(a1 + 32);
        v9 = [v2 outputDeviceUID];
        v10 = [*(a1 + 32) originalDestination];
        v11 = [v10 client];
        v12 = [*(a1 + 32) originalDestination];
        v13 = [v12 player];
        [v17 resolveForOutputDeviceUID:v9 client:v11 player:v13];
      }
    }

    goto LABEL_12;
  }

LABEL_14:
  v18 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  label = [(MRDestinationResolver *)self label];
  originalDestination = [(MRDestinationResolver *)self originalDestination];
  destination = [(MRDestinationResolver *)self destination];
  v8 = [v3 initWithFormat:@"<%@ %p %@ : %@->%@", v4, self, label, originalDestination, destination];

  return v8;
}

void __36__MRDestinationResolver_destination__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (MRDestination)destination
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__16;
  v9 = __Block_byref_object_dispose__16;
  v10 = 0;
  serialQueue = [(MRDestinationResolver *)self serialQueue];
  msv_dispatch_sync_on_queue();

  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (MRDestinationResolverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)unregisterForPlayerPathInvalidations
{
  playerPathInvalidationObserver = [(MRDestinationResolver *)self playerPathInvalidationObserver];

  if (playerPathInvalidationObserver)
  {
    dependencies = [(MRDestinationResolver *)self dependencies];
    playerPathInvalidationObserver2 = [(MRDestinationResolver *)self playerPathInvalidationObserver];
    [dependencies removePlayerPathInvalidationHandler:playerPathInvalidationObserver2];

    [(MRDestinationResolver *)self setPlayerPathInvalidationObserver:0];
  }

  [(MRDestinationResolver *)self setRegisteredForPlayerPathInvalidations:0];
}

- (void)dealloc
{
  [(MRDestinationResolver *)self unregisterForPlayerPathInvalidations];
  v3.receiver = self;
  v3.super_class = MRDestinationResolver;
  [(MRDestinationResolver *)&v3 dealloc];
}

+ (void)resolveDestination:(id)destination level:(int64_t)level timeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  destinationCopy = destination;
  v12 = +[MRDestinationResolverDependencies defaultDependencies];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__MRDestinationResolver_resolveDestination_level_timeout_completion___block_invoke;
  v14[3] = &unk_1E769E5A0;
  v15 = completionCopy;
  v13 = completionCopy;
  [self resolvePartialDestination:destinationCopy level:level timeout:v12 dependencies:v14 completion:timeout];
}

uint64_t __69__MRDestinationResolver_resolveDestination_level_timeout_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    if (a3)
    {
      a2 = 0;
    }

    return (*(result + 16))(result, a2);
  }

  return result;
}

+ (void)resolvePartialDestination:(id)destination level:(int64_t)level timeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  destinationCopy = destination;
  v12 = +[MRDestinationResolverDependencies defaultDependencies];
  [self resolvePartialDestination:destinationCopy level:level timeout:v12 dependencies:completionCopy completion:timeout];
}

+ (void)resolvePartialDestination:(id)destination level:(int64_t)level timeout:(double)timeout dependencies:(id)dependencies completion:(id)completion
{
  destinationCopy = destination;
  dependenciesCopy = dependencies;
  completionCopy = completion;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__16;
  v46 = __Block_byref_object_dispose__16;
  v47 = objc_alloc_init(MRDestinationResolverHelper);
  [v43[5] setLevel:level];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__16;
  v40 = __Block_byref_object_dispose__16;
  v41 = [[MRDestinationResolver alloc] initWithDestination:destinationCopy label:@"resolvePartialDestination" dependencies:dependenciesCopy];
  [v37[5] setDelegate:v43[5]];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __89__MRDestinationResolver_resolvePartialDestination_level_timeout_dependencies_completion___block_invoke;
  v31[3] = &unk_1E769E5C8;
  v14 = destinationCopy;
  v32 = v14;
  v15 = completionCopy;
  v33 = v15;
  v34 = &v36;
  v35 = &v42;
  v16 = MEMORY[0x1A58E3570](v31);
  v17 = [MRBlockGuard alloc];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __89__MRDestinationResolver_resolvePartialDestination_level_timeout_dependencies_completion___block_invoke_2;
  v29[3] = &unk_1E769AD80;
  v18 = v16;
  v30 = v18;
  v19 = [(MRBlockGuard *)v17 initWithTimeout:@"MRDestinationResolver" reason:v29 handler:timeout];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __89__MRDestinationResolver_resolvePartialDestination_level_timeout_dependencies_completion___block_invoke_3;
  v25 = &unk_1E769E5F0;
  levelCopy = level;
  v20 = v19;
  v26 = v20;
  v21 = v18;
  v27 = v21;
  [v43[5] setCallback:&v22];
  [v37[5] beginResolving];

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);
}

void __89__MRDestinationResolver_resolvePartialDestination_level_timeout_dependencies_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v14 = [a2 copy];
  v6 = [v14 client];
  if (v6)
  {
    [v14 setClient:v6];
  }

  else
  {
    v7 = [*(a1 + 32) client];
    [v14 setClient:v7];
  }

  v8 = [v14 player];
  if (v8)
  {
    [v14 setPlayer:v8];
  }

  else
  {
    v9 = [*(a1 + 32) player];
    [v14 setPlayer:v9];
  }

  (*(*(a1 + 40) + 16))();
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;

  [*(*(*(a1 + 56) + 8) + 40) setCallback:0];
}

void __89__MRDestinationResolver_resolvePartialDestination_level_timeout_dependencies_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = *(a1 + 48);
  if (v6 == 2)
  {
    v7 = [v11 playerPath];

    if (v7)
    {
      goto LABEL_12;
    }

    v6 = *(a1 + 48);
  }

  if (v6 == 1)
  {
    v8 = [v11 endpoint];

    if (!v8)
    {
      v6 = *(a1 + 48);
      goto LABEL_7;
    }

LABEL_12:
    if (![*(a1 + 32) disarm])
    {
      goto LABEL_15;
    }

    v9 = *(*(a1 + 40) + 16);
    goto LABEL_14;
  }

LABEL_7:
  if (!v6)
  {
    v10 = [v11 origin];

    if (v10)
    {
      goto LABEL_12;
    }
  }

  if (v5 && [*(a1 + 32) disarm])
  {
    v9 = *(*(a1 + 40) + 16);
LABEL_14:
    v9();
  }

LABEL_15:
}

- (MRDestinationResolver)initWithDestination:(id)destination label:(id)label dependencies:(id)dependencies
{
  destinationCopy = destination;
  labelCopy = label;
  dependenciesCopy = dependencies;
  v24.receiver = self;
  v24.super_class = MRDestinationResolver;
  v11 = [(MRDestinationResolver *)&v24 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dependencies, dependencies);
    objc_storeStrong(&v12->_label, label);
    if (destinationCopy)
    {
      v13 = [destinationCopy copy];
    }

    else
    {
      v13 = +[MRDestination localDestination];
    }

    originalDestination = v12->_originalDestination;
    v12->_originalDestination = v13;

    v15 = [(MRDestination *)v12->_originalDestination copy];
    destination = v12->_destination;
    v12->_destination = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.mediaremote.MRDestinationResolver-serial", v17);
    serialQueue = v12->_serialQueue;
    v12->_serialQueue = v18;

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create("com.apple.mediaremote.MRDestinationResolver-delegate", v20);
    delegateQueue = v12->_delegateQueue;
    v12->_delegateQueue = v21;
  }

  return v12;
}

- (MRDestinationResolver)initWithDestination:(id)destination label:(id)label
{
  labelCopy = label;
  destinationCopy = destination;
  v8 = +[MRDestinationResolverDependencies defaultDependencies];
  v9 = [(MRDestinationResolver *)self initWithDestination:destinationCopy label:labelCopy dependencies:v8];

  return v9;
}

- (id)debugDescription
{
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  v16 = objc_opt_class();
  label = [(MRDestinationResolver *)self label];
  originalDestination = [(MRDestinationResolver *)self originalDestination];
  v3 = MRCreateIndentedDebugDescriptionFromObject(originalDestination);
  destination = [(MRDestinationResolver *)self destination];
  v4 = MRCreateIndentedDebugDescriptionFromObject(destination);
  endpointObserver = [(MRDestinationResolver *)self endpointObserver];
  v5 = MRCreateIndentedDebugDescriptionFromObject(endpointObserver);
  playerPathInvalidationObserver = [(MRDestinationResolver *)self playerPathInvalidationObserver];
  if ([(MRDestinationResolver *)self resolving])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  remainingIntervals = [(MSVVariableIntervalTimer *)self->_reconRetryTimer remainingIntervals];
  v9 = MRCreateIndentedDebugDescriptionFromObject(remainingIntervals);
  remainingIntervals2 = [(MSVVariableIntervalTimer *)self->_connectionRetryTimer remainingIntervals];
  v11 = MRCreateIndentedDebugDescriptionFromObject(remainingIntervals2);
  v12 = [v17 initWithFormat:@"<%@ %p %@ {\n   originalDestination = %@\n   resolvedDestination = %@\n   endpointObserver = %@\n   playerPathInvalidationHandler = %@\n   resolving = %@\n   reconRetryTimer = %@\n   connectionRetryTimer = %@\n}\n", v16, self, label, v3, v4, v5, playerPathInvalidationObserver, v7, v9, v11];

  return v12;
}

- (void)onQueue_setEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  dispatch_assert_queue_V2(self->_serialQueue);
  endpoint = [(MRDestination *)self->_destination endpoint];

  if (endpoint != endpointCopy)
  {
    [(MRDestination *)self->_destination setEndpoint:endpointCopy];
    origin = [endpointCopy origin];
    [(MRDestinationResolver *)self onQueue_setOrigin:origin];
  }

  [(MRDestinationResolver *)self notifyDelegateOfEndpointChange:endpointCopy];
}

- (void)onQueue_setOrigin:(id)origin
{
  originCopy = origin;
  dispatch_assert_queue_V2(self->_serialQueue);
  origin = [(MRDestination *)self->_destination origin];
  if (origin == originCopy)
  {
    goto LABEL_5;
  }

  v5 = [originCopy isEqual:origin];

  if (v5)
  {
    goto LABEL_6;
  }

  destination = self->_destination;
  if (originCopy)
  {
    [(MRDestination *)destination setOrigin:originCopy];
    originalDestination = [(MRDestinationResolver *)self originalDestination];
    client = [originalDestination client];
    [(MRDestination *)self->_destination setClient:client];

    origin = [(MRDestinationResolver *)self originalDestination];
    player = [origin player];
    [(MRDestination *)self->_destination setPlayer:player];

LABEL_5:
    goto LABEL_6;
  }

  [(MRDestination *)destination setPlayerPath:0];
LABEL_6:
  [(MRDestinationResolver *)self notifyDelegateOfOriginChange:originCopy];
}

- (void)onQueue_setUnresolvedPlayerPath:(id)path
{
  pathCopy = path;
  dispatch_assert_queue_V2(self->_serialQueue);
  playerPath = [(MRDestination *)self->_destination playerPath];
  if (playerPath == pathCopy)
  {
  }

  else
  {
    v5 = [pathCopy isEqual:playerPath];

    if ((v5 & 1) == 0)
    {
      [(MRDestination *)self->_destination setPlayerPath:pathCopy];
    }
  }
}

- (void)onQueue_setResolvedPlayerPath:(id)path
{
  pathCopy = path;
  dispatch_assert_queue_V2(self->_serialQueue);
  playerPath = [(MRDestination *)self->_destination playerPath];
  if (playerPath == pathCopy)
  {
  }

  else
  {
    v5 = [pathCopy isEqual:playerPath];

    if ((v5 & 1) == 0)
    {
      [(MRDestination *)self->_destination setPlayerPath:pathCopy];
    }
  }

  [(MRDestinationResolver *)self notifyDelegateOfPlayerPathChange:pathCopy];
}

- (MRAVEndpointObserver)endpointObserver
{
  if (!self->_endpointObserver)
  {
    destination = [(MRDestinationResolver *)self destination];
    outputDeviceUID = [destination outputDeviceUID];

    if (outputDeviceUID)
    {
      dependencies = [(MRDestinationResolver *)self dependencies];
      destination2 = [(MRDestinationResolver *)self destination];
      outputDeviceUID2 = [destination2 outputDeviceUID];
      v8 = [dependencies createEndpointObserverWithUID:outputDeviceUID2];
      endpointObserver = self->_endpointObserver;
      self->_endpointObserver = v8;
    }
  }

  v10 = self->_endpointObserver;

  return v10;
}

- (void)resolveForResolvedPlayerPath:(id)path
{
  v14 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  serialQueue = [(MRDestinationResolver *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v6 = _MRLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412802;
    selfCopy = self;
    v10 = 2112;
    selfCopy2 = self;
    v12 = 2112;
    v13 = pathCopy;
    _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "%@ <%@> Resolved playerPath: %@.", &v8, 0x20u);
  }

  [(MRDestinationResolver *)self onQueue_setResolvedPlayerPath:pathCopy];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)resolveForUnresolvedPlayerPath:(id)path
{
  v18 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  serialQueue = [(MRDestinationResolver *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v7 = _MRLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v14 = 2112;
    selfCopy2 = self;
    v16 = 2112;
    v17 = pathCopy;
    _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "%@ <%@> Begin resolving for unresolvedPlayerPath=%@", buf, 0x20u);
  }

  objc_storeStrong(&self->_resolvingPlayerPath, path);
  [(MRDestinationResolver *)self onQueue_registerForPlayerPathInvalidationsForUnresolvedPlayerPath:pathCopy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__MRDestinationResolver_resolveForUnresolvedPlayerPath___block_invoke;
  v10[3] = &unk_1E769E618;
  v10[4] = self;
  v11 = pathCopy;
  v8 = pathCopy;
  [(MRDestinationResolver *)self resolvePlayerPath:v8 completion:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __56__MRDestinationResolver_resolveForUnresolvedPlayerPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (([*(*(a1 + 32) + 128) isEqual:*(a1 + 40)] & 1) == 0)
  {
    v9 = _MRLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v17 = 138412802;
      v18 = v10;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_INFO, "%@ <%@> PlayerPath has changed since we requested to resolve it. Ignoring incoming playerPath: %@", &v17, 0x20u);
    }

    goto LABEL_15;
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 128);
  *(v7 + 128) = 0;

  if (![v5 isResolved])
  {
    if (v6)
    {
      Error = v6;
    }

    else
    {
      Error = MRMediaRemoteNowPlayingPlayerPathCreateError(v5);
    }

    v9 = Error;
    v12 = _MRLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v17 = 138412802;
      v18 = v13;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_1A2860000, v12, OS_LOG_TYPE_DEFAULT, "%@ <%@> Error resolving for unresolvedPlayerPath %@", &v17, 0x20u);
    }

    v14 = [v9 code];
    v15 = *(a1 + 32);
    if (v14 == 5)
    {
      [v15 unregisterForPlayerPathInvalidations];
      [*(a1 + 32) onQueue_clearStateForPlayerPath];
    }

    else
    {
      [v15 onQueue_setUnresolvedPlayerPath:v5];
    }

    [*(a1 + 32) onQueue_setUnresolvedPlayerPath:v5];
    [*(a1 + 32) notifyDelegateOfError:v9];
LABEL_15:

    goto LABEL_16;
  }

  [*(a1 + 32) resolveForResolvedPlayerPath:v5];
LABEL_16:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)resolveForEndpoint:(id)endpoint client:(id)client player:(id)player
{
  v25 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  playerCopy = player;
  clientCopy = client;
  serialQueue = [(MRDestinationResolver *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v13 = _MRLogForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    debugName = [endpointCopy debugName];
    *buf = 138412802;
    selfCopy = self;
    v21 = 2112;
    selfCopy2 = self;
    v23 = 2112;
    v24 = debugName;
    _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "%@ <%@> Begin resolving for endpoint=%@", buf, 0x20u);
  }

  objc_storeStrong(&self->_resolvingEndpoint, endpoint);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58__MRDestinationResolver_resolveForEndpoint_client_player___block_invoke;
  v17[3] = &unk_1E769E618;
  v17[4] = self;
  v18 = endpointCopy;
  v15 = endpointCopy;
  [(MRDestinationResolver *)self createPlayerPathForEndpoint:v15 client:clientCopy player:playerCopy completion:v17];

  v16 = *MEMORY[0x1E69E9840];
}

void __58__MRDestinationResolver_resolveForEndpoint_client_player___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([*(*(a1 + 32) + 120) isEqual:*(a1 + 40)])
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 120);
    *(v7 + 120) = 0;

    v9 = _MRLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = [*(a1 + 40) debugName];
      *buf = 138413058;
      v42 = v10;
      v43 = 2112;
      v44 = v10;
      v45 = 2112;
      v46 = v5;
      v47 = 2112;
      v48 = v11;
      _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "%@ <%@> Setting unresolved playerPath to: %@ for endpoint=%@", buf, 0x2Au);
    }

    v12 = [*(a1 + 32) serialQueue];
    dispatch_assert_queue_V2(v12);

    v13 = [v5 origin];

    if (v13)
    {
      v14 = *(a1 + 32);
      v15 = *(v14 + 144);
      *(v14 + 144) = 0;

      v16 = *(a1 + 32);
      v17 = [v5 origin];
      [v16 onQueue_setOrigin:v17];

      [*(a1 + 32) onQueue_registerForEndpointInvalidations:*(a1 + 40)];
      [*(a1 + 32) resolveForUnresolvedPlayerPath:v5];
    }

    else
    {
      if (v6)
      {
        v20 = v6;
      }

      else
      {
        v20 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:5];
      }

      v21 = v20;
      v22 = *(a1 + 32);
      if (v22[18])
      {
        v23 = _MRLogForCategory(0);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(a1 + 32);
          [*(v24 + 144) timeUntilNextInterval];
          *buf = 138412802;
          v42 = v24;
          v43 = 2112;
          v44 = v24;
          v45 = 2048;
          v46 = v25;
          _os_log_impl(&dword_1A2860000, v23, OS_LOG_TYPE_DEFAULT, "%@ <%@> ConnectionRetryTimer is already scheduled to retry in %lf more seconds", buf, 0x20u);
        }
      }

      else
      {
        objc_initWeak(&location, v22);
        v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"NowPlayingController.connectionRetryTimer<%p>", *(a1 + 32)];
        v27 = objc_alloc(MEMORY[0x1E69B14E0]);
        v28 = +[MRUserSettings currentSettings];
        v29 = [v28 destinationResolverReconRetryIntervals];
        v30 = *(*(a1 + 32) + 40);
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __58__MRDestinationResolver_resolveForEndpoint_client_player___block_invoke_41;
        v38[3] = &unk_1E769B150;
        objc_copyWeak(&v39, &location);
        v38[4] = *(a1 + 32);
        v31 = [v27 initWithIntervals:v29 name:v26 queue:v30 block:v38];
        v32 = *(a1 + 32);
        v33 = *(v32 + 144);
        *(v32 + 144) = v31;

        v34 = _MRLogForCategory(0);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = *(a1 + 32);
          [*(v35 + 144) timeUntilNextInterval];
          *buf = 138412802;
          v42 = v35;
          v43 = 2112;
          v44 = v35;
          v45 = 2048;
          v46 = v36;
          _os_log_impl(&dword_1A2860000, v34, OS_LOG_TYPE_DEFAULT, "%@ <%@> Starting ConnectionRetryTimer to fire in %lf seconds", buf, 0x20u);
        }

        [*(a1 + 32) notifyDelegateOfError:v21];
        objc_destroyWeak(&v39);

        objc_destroyWeak(&location);
      }
    }
  }

  else
  {
    v18 = _MRLogForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = *(a1 + 32);
      *buf = 138412802;
      v42 = v19;
      v43 = 2112;
      v44 = v19;
      v45 = 2112;
      v46 = v5;
      _os_log_impl(&dword_1A2860000, v18, OS_LOG_TYPE_INFO, "%@ <%@> Resolved endpoint has changed since we requested a playerPath for it. Ignoring incoming playerPath: %@", buf, 0x20u);
    }
  }

  v37 = *MEMORY[0x1E69E9840];
}

void __58__MRDestinationResolver_resolveForEndpoint_client_player___block_invoke_41(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      [WeakRetained[18] currentInterval];
      v7 = 138412802;
      v8 = v4;
      v9 = 2112;
      v10 = WeakRetained;
      v11 = 2048;
      v12 = v5;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "%@ <%@> ConnectionRetryTimer fired after %lf total seconds", &v7, 0x20u);
    }

    [WeakRetained resolve];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)resolveForOutputContextUID:(id)d client:(id)client player:(id)player
{
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  clientCopy = client;
  playerCopy = player;
  serialQueue = [(MRDestinationResolver *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"outputContextUID=%@", dCopy];
  v13 = _MRLogForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v24 = 2112;
    selfCopy2 = self;
    v26 = 2112;
    v27 = dCopy;
    _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "%@ <%@> Begin resolving for %@", buf, 0x20u);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66__MRDestinationResolver_resolveForOutputContextUID_client_player___block_invoke;
  v18[3] = &unk_1E769E640;
  v18[4] = self;
  v19 = clientCopy;
  v20 = playerCopy;
  v21 = dCopy;
  v14 = dCopy;
  v15 = playerCopy;
  v16 = clientCopy;
  [(MRDestinationResolver *)self onQueue_retrieveEndpointForContextUID:dCopy completion:v18];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)resolveForOutputDeviceUID:(id)d client:(id)client player:(id)player
{
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  clientCopy = client;
  playerCopy = player;
  serialQueue = [(MRDestinationResolver *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"outputDeviceUID=%@", dCopy];
  v13 = _MRLogForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v24 = 2112;
    selfCopy2 = self;
    v26 = 2112;
    v27 = dCopy;
    _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "%@ <%@> Begin resolving for %@", buf, 0x20u);
  }

  [(MRDestinationResolver *)self registerForEndpointChangesForOutputDeviceUID:dCopy];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__MRDestinationResolver_resolveForOutputDeviceUID_client_player___block_invoke;
  v18[3] = &unk_1E769E640;
  v18[4] = self;
  v19 = clientCopy;
  v20 = playerCopy;
  v21 = dCopy;
  v14 = dCopy;
  v15 = playerCopy;
  v16 = clientCopy;
  [(MRDestinationResolver *)self onQueue_retrieveEndpointForUID:dCopy completion:v18];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)handleEndpointResolution:(id)resolution client:(id)client player:(id)player source:(id)source error:(id)error
{
  v40 = *MEMORY[0x1E69E9840];
  resolutionCopy = resolution;
  clientCopy = client;
  playerCopy = player;
  sourceCopy = source;
  errorCopy = error;
  if (errorCopy)
  {
    v17 = _MRLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MRDestinationResolver handleEndpointResolution:errorCopy client:v17 player:? source:? error:?];
    }

    if (self->_reconRetryTimer)
    {
      v18 = _MRLogForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        [(MSVVariableIntervalTimer *)self->_reconRetryTimer timeUntilNextInterval];
        *buf = 138412802;
        selfCopy3 = self;
        v36 = 2112;
        selfCopy4 = self;
        v38 = 2048;
        v39 = v19;
        _os_log_impl(&dword_1A2860000, v18, OS_LOG_TYPE_DEFAULT, "%@ <%@> ReconRetryTimer is already scheduled to retry in %lf more seconds", buf, 0x20u);
      }
    }

    else
    {
      objc_initWeak(&location, self);
      v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"NowPlayingController.reconRetryTimer<%p>", self];
      v21 = objc_alloc(MEMORY[0x1E69B14E0]);
      v22 = +[MRUserSettings currentSettings];
      destinationResolverReconRetryIntervals = [v22 destinationResolverReconRetryIntervals];
      serialQueue = self->_serialQueue;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __77__MRDestinationResolver_handleEndpointResolution_client_player_source_error___block_invoke;
      v31[3] = &unk_1E769B150;
      objc_copyWeak(&v32, &location);
      v31[4] = self;
      v25 = [v21 initWithIntervals:destinationResolverReconRetryIntervals name:v30 queue:serialQueue block:v31];
      reconRetryTimer = self->_reconRetryTimer;
      self->_reconRetryTimer = v25;

      v27 = _MRLogForCategory(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        [(MSVVariableIntervalTimer *)self->_reconRetryTimer timeUntilNextInterval];
        *buf = 138412802;
        selfCopy3 = self;
        v36 = 2112;
        selfCopy4 = self;
        v38 = 2048;
        v39 = v28;
        _os_log_impl(&dword_1A2860000, v27, OS_LOG_TYPE_DEFAULT, "%@ <%@> Starting ReconRetryTimer to fire in %lf seconds", buf, 0x20u);
      }

      [(MRDestinationResolver *)self notifyDelegateOfError:errorCopy];
      objc_destroyWeak(&v32);

      objc_destroyWeak(&location);
    }
  }

  else
  {
    v20 = self->_reconRetryTimer;
    self->_reconRetryTimer = 0;

    [(MRDestinationResolver *)self resolveForEndpoint:resolutionCopy client:clientCopy player:playerCopy];
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __77__MRDestinationResolver_handleEndpointResolution_client_player_source_error___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      [WeakRetained[17] currentInterval];
      v7 = 138412802;
      v8 = v4;
      v9 = 2112;
      v10 = WeakRetained;
      v11 = 2048;
      v12 = v5;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "%@ <%@> ReconRetryTimer fired after %lf total seconds", &v7, 0x20u);
    }

    [WeakRetained resolve];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)registerForEndpointChangesForOutputDeviceUID:(id)d
{
  dCopy = d;
  if (![(MRDestinationResolver *)self registeredForEndpointChanges])
  {
    if ([(MRDestinationResolver *)self isDynamicEndpoint])
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel_handleActiveSystemEndpointChangedNotification_ name:@"kMRMediaRemoteActiveSystemEndpointDidChangeNotification" object:0];
    }

    else
    {
      objc_initWeak(&location, self);
      v8 = MEMORY[0x1E69E9820];
      objc_copyWeak(&v9, &location);
      v6 = [(MRDestinationResolver *)self endpointObserver:v8];
      [v6 setEndpointChangedCallback:&v8];

      endpointObserver = [(MRDestinationResolver *)self endpointObserver];
      [endpointObserver begin];

      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }

    [(MRDestinationResolver *)self setRegisteredForEndpointChanges:1];
  }
}

void __70__MRDestinationResolver_registerForEndpointChangesForOutputDeviceUID___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = a2;
    v5 = [WeakRetained destination];
    v6 = [v5 endpoint];
    v7 = [v6 uniqueIdentifier];
    v8 = [v4 uniqueIdentifier];
    v9 = [v7 isEqualToString:v8];

    if ((v9 & 1) == 0)
    {
      v10 = _MRLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [WeakRetained destination];
        v12 = [v11 endpoint];
        v17 = 138413058;
        v18 = WeakRetained;
        v19 = 2112;
        v20 = WeakRetained;
        v21 = 2112;
        v22 = v12;
        v23 = 2112;
        v24 = v4;
        _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "%@ <%@> endpoint changed from %@ to %@", &v17, 0x2Au);
      }

      v13 = [v4 outputDevices];
      v14 = [v13 firstObject];
      v15 = [v14 groupID];
      [WeakRetained setEndpointObserverGroupUID:v15];

      [WeakRetained handleEndpointChanged];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)unregisterForEndpointChanges
{
  if ([(MRDestinationResolver *)self isDynamicEndpoint])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"kMRMediaRemoteActiveSystemEndpointDidChangeNotification" object:0];
  }

  else
  {
    defaultCenter = [(MRDestinationResolver *)self endpointObserver];
    [defaultCenter end];
  }

  [(MRDestinationResolver *)self setRegisteredForEndpointChanges:0];
}

- (void)onQueue_registerForEndpointInvalidations:(id)invalidations
{
  invalidationsCopy = invalidations;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (![(MRDestinationResolver *)self registeredForEndpointInvalidations])
  {
    [(MRDestinationResolver *)self onQueue_setEndpoint:invalidationsCopy];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__handleEndpointDidDisconnectNotification_ name:@"MRAVEndpointDidDisconnectNotification" object:invalidationsCopy];

    [(MRDestinationResolver *)self setRegisteredForEndpointInvalidations:1];
  }
}

- (void)unregisterForEndpointInvalidations
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  destination = [(MRDestinationResolver *)self destination];
  endpoint = [destination endpoint];
  [defaultCenter removeObserver:self name:@"MRAVEndpointDidDisconnectNotification" object:endpoint];

  [(MRDestinationResolver *)self setRegisteredForEndpointInvalidations:0];
}

- (void)onQueue_registerForPlayerPathInvalidationsForUnresolvedPlayerPath:(id)path
{
  pathCopy = path;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (![(MRDestinationResolver *)self registeredForPlayerPathInvalidations])
  {
    [(MRDestinationResolver *)self onQueue_setUnresolvedPlayerPath:pathCopy];
    objc_initWeak(&location, self);
    dependencies = [(MRDestinationResolver *)self dependencies];
    playerPath = [(MRDestination *)self->_destination playerPath];
    serialQueue = [(MRDestinationResolver *)self serialQueue];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __91__MRDestinationResolver_onQueue_registerForPlayerPathInvalidationsForUnresolvedPlayerPath___block_invoke;
    v12 = &unk_1E769E668;
    objc_copyWeak(&v13, &location);
    v8 = [dependencies addPlayerPathInvalidationHandler:playerPath queue:serialQueue handler:&v9];
    [(MRDestinationResolver *)self setPlayerPathInvalidationObserver:v8, v9, v10, v11, v12];

    [(MRDestinationResolver *)self setRegisteredForPlayerPathInvalidations:1];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __91__MRDestinationResolver_onQueue_registerForPlayerPathInvalidationsForUnresolvedPlayerPath___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = _MRLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [WeakRetained[2] playerPath];
      v8 = 138413058;
      v9 = WeakRetained;
      v10 = 2112;
      v11 = WeakRetained;
      v12 = 2112;
      v13 = v6;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "%@ <%@> playerPath invalidated %@ -> %@", &v8, 0x2Au);
    }

    [WeakRetained handlePlayerPathInvalidatedWithPlayerPath:v3];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleEndpointChanged
{
  serialQueue = [(MRDestinationResolver *)self serialQueue];
  msv_dispatch_async_on_queue();
}

uint64_t __46__MRDestinationResolver_handleEndpointChanged__block_invoke(uint64_t a1)
{
  [*(a1 + 32) onQueue_clearStateForOutputDeviceUID];
  [*(a1 + 32) notifyDelegateOfInvalidation];
  v2 = *(a1 + 32);

  return [v2 resolve];
}

- (void)handleEndpointInvalidated
{
  serialQueue = [(MRDestinationResolver *)self serialQueue];
  msv_dispatch_async_on_queue();
}

uint64_t __50__MRDestinationResolver_handleEndpointInvalidated__block_invoke(uint64_t a1)
{
  [*(a1 + 32) onQueue_clearStateForEndpoint];
  [*(a1 + 32) notifyDelegateOfInvalidation];
  v2 = *(a1 + 32);

  return [v2 resolve];
}

- (void)handlePlayerPathInvalidatedWithPlayerPath:(id)path
{
  serialQueue = [(MRDestinationResolver *)self serialQueue];
  msv_dispatch_async_on_queue();
}

uint64_t __67__MRDestinationResolver_handlePlayerPathInvalidatedWithPlayerPath___block_invoke(uint64_t a1)
{
  [*(a1 + 32) onQueue_clearStateForPlayerPath];
  [*(a1 + 32) notifyDelegateOfInvalidation];
  v2 = *(a1 + 32);

  return [v2 resolve];
}

- (void)handleActiveSystemEndpointChangedNotification:(id)notification
{
  v13 = *MEMORY[0x1E69E9840];
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"kMRMediaRemoteActiveEndpointTypeUserInfoKey"];
  intValue = [v5 intValue];

  if ([(MRDestinationResolver *)self isProactiveEndpoint]&& intValue == 1 || [(MRDestinationResolver *)self isUserSelectedEndpoint]&& !intValue)
  {
    v7 = _MRLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      selfCopy = self;
      v11 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "%@ <%@> Active system endpoint changed", &v9, 0x16u);
    }

    [(MRDestinationResolver *)self handleEndpointChanged];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_handleEndpointDidDisconnectNotification:(id)notification
{
  object = [notification object];
  [(MRDestinationResolver *)self endpointDidDisconnect:object];
}

- (void)endpointDidDisconnect:(id)disconnect
{
  v16 = *MEMORY[0x1E69E9840];
  disconnectCopy = disconnect;
  destination = [(MRDestinationResolver *)self destination];
  endpoint = [destination endpoint];
  v7 = [endpoint isEqual:disconnectCopy];

  if (v7)
  {
    v8 = _MRLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412802;
      selfCopy = self;
      v12 = 2112;
      selfCopy2 = self;
      v14 = 2112;
      v15 = disconnectCopy;
      _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "%@ <%@> endpoint invalidated %@", &v10, 0x20u);
    }

    [(MRDestinationResolver *)self handleEndpointInvalidated];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateOfEndpointChange:(id)change
{
  changeCopy = change;
  if (self->_delegateEndpoint != changeCopy)
  {
    delegate = [(MRDestinationResolver *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegateQueue = [(MRDestinationResolver *)self delegateQueue];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __56__MRDestinationResolver_notifyDelegateOfEndpointChange___block_invoke;
      v9[3] = &unk_1E769A4A0;
      v9[4] = self;
      v10 = changeCopy;
      dispatch_async(delegateQueue, v9);
    }
  }

  delegateEndpoint = self->_delegateEndpoint;
  self->_delegateEndpoint = changeCopy;
}

void __56__MRDestinationResolver_notifyDelegateOfEndpointChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 destinationResolver:*(a1 + 32) endpointDidChange:*(a1 + 40)];
}

- (void)notifyDelegateOfOriginChange:(id)change
{
  changeCopy = change;
  v5 = changeCopy;
  if (self->_delegateOrigin != changeCopy && ![(MROrigin *)changeCopy isEqual:?])
  {
    delegate = [(MRDestinationResolver *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegateQueue = [(MRDestinationResolver *)self delegateQueue];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __54__MRDestinationResolver_notifyDelegateOfOriginChange___block_invoke;
      v10[3] = &unk_1E769A4A0;
      v10[4] = self;
      v11 = v5;
      dispatch_async(delegateQueue, v10);
    }
  }

  delegateOrigin = self->_delegateOrigin;
  self->_delegateOrigin = v5;
}

void __54__MRDestinationResolver_notifyDelegateOfOriginChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 destinationResolver:*(a1 + 32) originDidChange:*(a1 + 40)];
}

- (void)notifyDelegateOfPlayerPathChange:(id)change
{
  changeCopy = change;
  v5 = changeCopy;
  if (self->_delegatePlayerPath != changeCopy && ![(MRPlayerPath *)changeCopy isEqual:?])
  {
    delegate = [(MRDestinationResolver *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegateQueue = [(MRDestinationResolver *)self delegateQueue];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __58__MRDestinationResolver_notifyDelegateOfPlayerPathChange___block_invoke;
      v10[3] = &unk_1E769A4A0;
      v10[4] = self;
      v11 = v5;
      dispatch_async(delegateQueue, v10);
    }
  }

  delegatePlayerPath = self->_delegatePlayerPath;
  self->_delegatePlayerPath = v5;
}

void __58__MRDestinationResolver_notifyDelegateOfPlayerPathChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 destinationResolver:*(a1 + 32) playerPathDidChange:*(a1 + 40)];
}

- (void)notifyDelegateOfInvalidation
{
  delegate = [(MRDestinationResolver *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegateQueue = [(MRDestinationResolver *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__MRDestinationResolver_notifyDelegateOfInvalidation__block_invoke;
    block[3] = &unk_1E769A228;
    block[4] = self;
    dispatch_async(delegateQueue, block);
  }
}

void __53__MRDestinationResolver_notifyDelegateOfInvalidation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 destinationResolverDestinationDidInvalidate:*(a1 + 32)];
}

- (void)notifyDelegateOfError:(id)error
{
  errorCopy = error;
  delegate = [(MRDestinationResolver *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegateQueue = [(MRDestinationResolver *)self delegateQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__MRDestinationResolver_notifyDelegateOfError___block_invoke;
    v8[3] = &unk_1E769A4A0;
    v8[4] = self;
    v9 = errorCopy;
    dispatch_async(delegateQueue, v8);
  }
}

void __47__MRDestinationResolver_notifyDelegateOfError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 destinationResolver:*(a1 + 32) didFailWithError:*(a1 + 40)];
}

- (void)onQueue_clearStateForOutputDeviceUID
{
  serialQueue = [(MRDestinationResolver *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  reconRetryTimer = self->_reconRetryTimer;
  self->_reconRetryTimer = 0;

  [(MRDestinationResolver *)self unregisterForEndpointChanges];

  [(MRDestinationResolver *)self onQueue_clearStateForEndpoint];
}

- (void)onQueue_clearStateForEndpoint
{
  serialQueue = [(MRDestinationResolver *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  resolvingEndpoint = self->_resolvingEndpoint;
  self->_resolvingEndpoint = 0;

  connectionRetryTimer = self->_connectionRetryTimer;
  self->_connectionRetryTimer = 0;

  [(MRDestinationResolver *)self unregisterForEndpointInvalidations];
  [(MRDestinationResolver *)self unregisterForPlayerPathInvalidations];
  [(MRDestinationResolver *)self onQueue_setEndpoint:0];

  [(MRDestinationResolver *)self onQueue_clearStateForPlayerPath];
}

- (void)onQueue_clearStateForPlayerPath
{
  serialQueue = [(MRDestinationResolver *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  resolvingPlayerPath = self->_resolvingPlayerPath;
  self->_resolvingPlayerPath = 0;

  [(MRDestinationResolver *)self onQueue_setResolvedPlayerPath:0];
}

- (void)createPlayerPathForEndpoint:(id)endpoint client:(id)client player:(id)player completion:(id)completion
{
  completionCopy = completion;
  playerCopy = player;
  clientCopy = client;
  endpointCopy = endpoint;
  dependencies = [(MRDestinationResolver *)self dependencies];
  serialQueue = [(MRDestinationResolver *)self serialQueue];
  [dependencies createPlayerPathForEndpoint:endpointCopy client:clientCopy player:playerCopy queue:serialQueue completion:completionCopy];
}

- (void)resolvePlayerPath:(id)path completion:(id)completion
{
  completionCopy = completion;
  pathCopy = path;
  dependencies = [(MRDestinationResolver *)self dependencies];
  serialQueue = [(MRDestinationResolver *)self serialQueue];
  [dependencies resolvePlayerPath:pathCopy queue:serialQueue completion:completionCopy];
}

- (void)onQueue_retrieveEndpointForUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  serialQueue = [(MRDestinationResolver *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  dependencies = [(MRDestinationResolver *)self dependencies];
  endpointObserverGroupUID = [(MRDestinationResolver *)self endpointObserverGroupUID];
  serialQueue2 = [(MRDestinationResolver *)self serialQueue];
  [dependencies retrieveEndpointForUID:dCopy endpointGroupUID:endpointObserverGroupUID queue:serialQueue2 completion:completionCopy];
}

- (void)onQueue_retrieveEndpointForContextUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  serialQueue = [(MRDestinationResolver *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  dependencies = [(MRDestinationResolver *)self dependencies];
  serialQueue2 = [(MRDestinationResolver *)self serialQueue];
  [dependencies retrieveEndpointForContextUID:dCopy queue:serialQueue2 completion:completionCopy];
}

- (BOOL)isProactiveEndpoint
{
  destination = [(MRDestinationResolver *)self destination];
  outputDeviceUID = [destination outputDeviceUID];
  v4 = [outputDeviceUID isEqualToString:@"proactiveEndpoint"];

  return v4;
}

- (BOOL)isUserSelectedEndpoint
{
  destination = [(MRDestinationResolver *)self destination];
  outputDeviceUID = [destination outputDeviceUID];
  v4 = [outputDeviceUID isEqualToString:@"userSelectedEndpoint"];

  return v4;
}

- (BOOL)isDynamicEndpoint
{
  if ([(MRDestinationResolver *)self isProactiveEndpoint])
  {
    return 1;
  }

  return [(MRDestinationResolver *)self isUserSelectedEndpoint];
}

- (void)handleEndpointResolution:(os_log_t)log client:player:source:error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = 138412802;
  v5 = a1;
  v6 = 2112;
  v7 = a1;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1A2860000, log, OS_LOG_TYPE_ERROR, "%@ <%@> Error resolving for outputDeviceUID %@", &v4, 0x20u);
  v3 = *MEMORY[0x1E69E9840];
}

@end