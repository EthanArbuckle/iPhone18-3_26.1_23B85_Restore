@interface MRDestinationResolver
+ (void)resolveDestination:(id)a3 level:(int64_t)a4 timeout:(double)a5 completion:(id)a6;
+ (void)resolvePartialDestination:(id)a3 level:(int64_t)a4 timeout:(double)a5 completion:(id)a6;
+ (void)resolvePartialDestination:(id)a3 level:(int64_t)a4 timeout:(double)a5 dependencies:(id)a6 completion:(id)a7;
- (BOOL)isDynamicEndpoint;
- (BOOL)isProactiveEndpoint;
- (BOOL)isUserSelectedEndpoint;
- (MRAVEndpointObserver)endpointObserver;
- (MRDestination)destination;
- (MRDestinationResolver)initWithDestination:(id)a3 label:(id)a4;
- (MRDestinationResolver)initWithDestination:(id)a3 label:(id)a4 dependencies:(id)a5;
- (MRDestinationResolverDelegate)delegate;
- (id)debugDescription;
- (id)description;
- (void)_handleEndpointDidDisconnectNotification:(id)a3;
- (void)beginResolving;
- (void)createPlayerPathForEndpoint:(id)a3 client:(id)a4 player:(id)a5 completion:(id)a6;
- (void)dealloc;
- (void)endpointDidDisconnect:(id)a3;
- (void)handleActiveSystemEndpointChangedNotification:(id)a3;
- (void)handleEndpointChanged;
- (void)handleEndpointInvalidated;
- (void)handleEndpointResolution:(id)a3 client:(id)a4 player:(id)a5 source:(id)a6 error:(id)a7;
- (void)handlePlayerPathInvalidatedWithPlayerPath:(id)a3;
- (void)notifyDelegateOfEndpointChange:(id)a3;
- (void)notifyDelegateOfError:(id)a3;
- (void)notifyDelegateOfInvalidation;
- (void)notifyDelegateOfOriginChange:(id)a3;
- (void)notifyDelegateOfPlayerPathChange:(id)a3;
- (void)onQueue_clearStateForEndpoint;
- (void)onQueue_clearStateForOutputDeviceUID;
- (void)onQueue_clearStateForPlayerPath;
- (void)onQueue_registerForEndpointInvalidations:(id)a3;
- (void)onQueue_registerForPlayerPathInvalidationsForUnresolvedPlayerPath:(id)a3;
- (void)onQueue_retrieveEndpointForContextUID:(id)a3 completion:(id)a4;
- (void)onQueue_retrieveEndpointForUID:(id)a3 completion:(id)a4;
- (void)onQueue_setEndpoint:(id)a3;
- (void)onQueue_setOrigin:(id)a3;
- (void)onQueue_setResolvedPlayerPath:(id)a3;
- (void)onQueue_setUnresolvedPlayerPath:(id)a3;
- (void)registerForEndpointChangesForOutputDeviceUID:(id)a3;
- (void)resolve;
- (void)resolveForEndpoint:(id)a3 client:(id)a4 player:(id)a5;
- (void)resolveForOutputContextUID:(id)a3 client:(id)a4 player:(id)a5;
- (void)resolveForOutputDeviceUID:(id)a3 client:(id)a4 player:(id)a5;
- (void)resolveForResolvedPlayerPath:(id)a3;
- (void)resolveForUnresolvedPlayerPath:(id)a3;
- (void)resolvePlayerPath:(id)a3 completion:(id)a4;
- (void)unregisterForEndpointChanges;
- (void)unregisterForEndpointInvalidations;
- (void)unregisterForPlayerPathInvalidations;
@end

@implementation MRDestinationResolver

- (void)beginResolving
{
  v3 = [(MRDestinationResolver *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__MRDestinationResolver_beginResolving__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_sync(v3, block);
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
  v3 = [(MRDestinationResolver *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__MRDestinationResolver_resolve__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_async(v3, block);
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
  v5 = [(MRDestinationResolver *)self label];
  v6 = [(MRDestinationResolver *)self originalDestination];
  v7 = [(MRDestinationResolver *)self destination];
  v8 = [v3 initWithFormat:@"<%@ %p %@ : %@->%@", v4, self, v5, v6, v7];

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
  v2 = [(MRDestinationResolver *)self serialQueue];
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
  v3 = [(MRDestinationResolver *)self playerPathInvalidationObserver];

  if (v3)
  {
    v4 = [(MRDestinationResolver *)self dependencies];
    v5 = [(MRDestinationResolver *)self playerPathInvalidationObserver];
    [v4 removePlayerPathInvalidationHandler:v5];

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

+ (void)resolveDestination:(id)a3 level:(int64_t)a4 timeout:(double)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = +[MRDestinationResolverDependencies defaultDependencies];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__MRDestinationResolver_resolveDestination_level_timeout_completion___block_invoke;
  v14[3] = &unk_1E769E5A0;
  v15 = v10;
  v13 = v10;
  [a1 resolvePartialDestination:v11 level:a4 timeout:v12 dependencies:v14 completion:a5];
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

+ (void)resolvePartialDestination:(id)a3 level:(int64_t)a4 timeout:(double)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = +[MRDestinationResolverDependencies defaultDependencies];
  [a1 resolvePartialDestination:v11 level:a4 timeout:v12 dependencies:v10 completion:a5];
}

+ (void)resolvePartialDestination:(id)a3 level:(int64_t)a4 timeout:(double)a5 dependencies:(id)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a6;
  v13 = a7;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__16;
  v46 = __Block_byref_object_dispose__16;
  v47 = objc_alloc_init(MRDestinationResolverHelper);
  [v43[5] setLevel:a4];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__16;
  v40 = __Block_byref_object_dispose__16;
  v41 = [[MRDestinationResolver alloc] initWithDestination:v11 label:@"resolvePartialDestination" dependencies:v12];
  [v37[5] setDelegate:v43[5]];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __89__MRDestinationResolver_resolvePartialDestination_level_timeout_dependencies_completion___block_invoke;
  v31[3] = &unk_1E769E5C8;
  v14 = v11;
  v32 = v14;
  v15 = v13;
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
  v19 = [(MRBlockGuard *)v17 initWithTimeout:@"MRDestinationResolver" reason:v29 handler:a5];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __89__MRDestinationResolver_resolvePartialDestination_level_timeout_dependencies_completion___block_invoke_3;
  v25 = &unk_1E769E5F0;
  v28 = a4;
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

- (MRDestinationResolver)initWithDestination:(id)a3 label:(id)a4 dependencies:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = MRDestinationResolver;
  v11 = [(MRDestinationResolver *)&v24 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dependencies, a5);
    objc_storeStrong(&v12->_label, a4);
    if (v8)
    {
      v13 = [v8 copy];
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

- (MRDestinationResolver)initWithDestination:(id)a3 label:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[MRDestinationResolverDependencies defaultDependencies];
  v9 = [(MRDestinationResolver *)self initWithDestination:v7 label:v6 dependencies:v8];

  return v9;
}

- (id)debugDescription
{
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  v16 = objc_opt_class();
  v14 = [(MRDestinationResolver *)self label];
  v19 = [(MRDestinationResolver *)self originalDestination];
  v3 = MRCreateIndentedDebugDescriptionFromObject(v19);
  v18 = [(MRDestinationResolver *)self destination];
  v4 = MRCreateIndentedDebugDescriptionFromObject(v18);
  v15 = [(MRDestinationResolver *)self endpointObserver];
  v5 = MRCreateIndentedDebugDescriptionFromObject(v15);
  v6 = [(MRDestinationResolver *)self playerPathInvalidationObserver];
  if ([(MRDestinationResolver *)self resolving])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [(MSVVariableIntervalTimer *)self->_reconRetryTimer remainingIntervals];
  v9 = MRCreateIndentedDebugDescriptionFromObject(v8);
  v10 = [(MSVVariableIntervalTimer *)self->_connectionRetryTimer remainingIntervals];
  v11 = MRCreateIndentedDebugDescriptionFromObject(v10);
  v12 = [v17 initWithFormat:@"<%@ %p %@ {\n   originalDestination = %@\n   resolvedDestination = %@\n   endpointObserver = %@\n   playerPathInvalidationHandler = %@\n   resolving = %@\n   reconRetryTimer = %@\n   connectionRetryTimer = %@\n}\n", v16, self, v14, v3, v4, v5, v6, v7, v9, v11];

  return v12;
}

- (void)onQueue_setEndpoint:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  v4 = [(MRDestination *)self->_destination endpoint];

  if (v4 != v6)
  {
    [(MRDestination *)self->_destination setEndpoint:v6];
    v5 = [v6 origin];
    [(MRDestinationResolver *)self onQueue_setOrigin:v5];
  }

  [(MRDestinationResolver *)self notifyDelegateOfEndpointChange:v6];
}

- (void)onQueue_setOrigin:(id)a3
{
  v10 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  v4 = [(MRDestination *)self->_destination origin];
  if (v4 == v10)
  {
    goto LABEL_5;
  }

  v5 = [v10 isEqual:v4];

  if (v5)
  {
    goto LABEL_6;
  }

  destination = self->_destination;
  if (v10)
  {
    [(MRDestination *)destination setOrigin:v10];
    v7 = [(MRDestinationResolver *)self originalDestination];
    v8 = [v7 client];
    [(MRDestination *)self->_destination setClient:v8];

    v4 = [(MRDestinationResolver *)self originalDestination];
    v9 = [v4 player];
    [(MRDestination *)self->_destination setPlayer:v9];

LABEL_5:
    goto LABEL_6;
  }

  [(MRDestination *)destination setPlayerPath:0];
LABEL_6:
  [(MRDestinationResolver *)self notifyDelegateOfOriginChange:v10];
}

- (void)onQueue_setUnresolvedPlayerPath:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  v4 = [(MRDestination *)self->_destination playerPath];
  if (v4 == v6)
  {
  }

  else
  {
    v5 = [v6 isEqual:v4];

    if ((v5 & 1) == 0)
    {
      [(MRDestination *)self->_destination setPlayerPath:v6];
    }
  }
}

- (void)onQueue_setResolvedPlayerPath:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  v4 = [(MRDestination *)self->_destination playerPath];
  if (v4 == v6)
  {
  }

  else
  {
    v5 = [v6 isEqual:v4];

    if ((v5 & 1) == 0)
    {
      [(MRDestination *)self->_destination setPlayerPath:v6];
    }
  }

  [(MRDestinationResolver *)self notifyDelegateOfPlayerPathChange:v6];
}

- (MRAVEndpointObserver)endpointObserver
{
  if (!self->_endpointObserver)
  {
    v3 = [(MRDestinationResolver *)self destination];
    v4 = [v3 outputDeviceUID];

    if (v4)
    {
      v5 = [(MRDestinationResolver *)self dependencies];
      v6 = [(MRDestinationResolver *)self destination];
      v7 = [v6 outputDeviceUID];
      v8 = [v5 createEndpointObserverWithUID:v7];
      endpointObserver = self->_endpointObserver;
      self->_endpointObserver = v8;
    }
  }

  v10 = self->_endpointObserver;

  return v10;
}

- (void)resolveForResolvedPlayerPath:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MRDestinationResolver *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = _MRLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412802;
    v9 = self;
    v10 = 2112;
    v11 = self;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "%@ <%@> Resolved playerPath: %@.", &v8, 0x20u);
  }

  [(MRDestinationResolver *)self onQueue_setResolvedPlayerPath:v4];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)resolveForUnresolvedPlayerPath:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(MRDestinationResolver *)self serialQueue];
  dispatch_assert_queue_V2(v6);

  v7 = _MRLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v13 = self;
    v14 = 2112;
    v15 = self;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "%@ <%@> Begin resolving for unresolvedPlayerPath=%@", buf, 0x20u);
  }

  objc_storeStrong(&self->_resolvingPlayerPath, a3);
  [(MRDestinationResolver *)self onQueue_registerForPlayerPathInvalidationsForUnresolvedPlayerPath:v5];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__MRDestinationResolver_resolveForUnresolvedPlayerPath___block_invoke;
  v10[3] = &unk_1E769E618;
  v10[4] = self;
  v11 = v5;
  v8 = v5;
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

- (void)resolveForEndpoint:(id)a3 client:(id)a4 player:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = a4;
  v12 = [(MRDestinationResolver *)self serialQueue];
  dispatch_assert_queue_V2(v12);

  v13 = _MRLogForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v9 debugName];
    *buf = 138412802;
    v20 = self;
    v21 = 2112;
    v22 = self;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "%@ <%@> Begin resolving for endpoint=%@", buf, 0x20u);
  }

  objc_storeStrong(&self->_resolvingEndpoint, a3);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58__MRDestinationResolver_resolveForEndpoint_client_player___block_invoke;
  v17[3] = &unk_1E769E618;
  v17[4] = self;
  v18 = v9;
  v15 = v9;
  [(MRDestinationResolver *)self createPlayerPathForEndpoint:v15 client:v11 player:v10 completion:v17];

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

- (void)resolveForOutputContextUID:(id)a3 client:(id)a4 player:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MRDestinationResolver *)self serialQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"outputContextUID=%@", v8];
  v13 = _MRLogForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v23 = self;
    v24 = 2112;
    v25 = self;
    v26 = 2112;
    v27 = v12;
    _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "%@ <%@> Begin resolving for %@", buf, 0x20u);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66__MRDestinationResolver_resolveForOutputContextUID_client_player___block_invoke;
  v18[3] = &unk_1E769E640;
  v18[4] = self;
  v19 = v9;
  v20 = v10;
  v21 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v9;
  [(MRDestinationResolver *)self onQueue_retrieveEndpointForContextUID:v8 completion:v18];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)resolveForOutputDeviceUID:(id)a3 client:(id)a4 player:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MRDestinationResolver *)self serialQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"outputDeviceUID=%@", v8];
  v13 = _MRLogForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v23 = self;
    v24 = 2112;
    v25 = self;
    v26 = 2112;
    v27 = v12;
    _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "%@ <%@> Begin resolving for %@", buf, 0x20u);
  }

  [(MRDestinationResolver *)self registerForEndpointChangesForOutputDeviceUID:v8];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__MRDestinationResolver_resolveForOutputDeviceUID_client_player___block_invoke;
  v18[3] = &unk_1E769E640;
  v18[4] = self;
  v19 = v9;
  v20 = v10;
  v21 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v9;
  [(MRDestinationResolver *)self onQueue_retrieveEndpointForUID:v8 completion:v18];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)handleEndpointResolution:(id)a3 client:(id)a4 player:(id)a5 source:(id)a6 error:(id)a7
{
  v40 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v16)
  {
    v17 = _MRLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MRDestinationResolver handleEndpointResolution:v16 client:v17 player:? source:? error:?];
    }

    if (self->_reconRetryTimer)
    {
      v18 = _MRLogForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        [(MSVVariableIntervalTimer *)self->_reconRetryTimer timeUntilNextInterval];
        *buf = 138412802;
        v35 = self;
        v36 = 2112;
        v37 = self;
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
      v23 = [v22 destinationResolverReconRetryIntervals];
      serialQueue = self->_serialQueue;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __77__MRDestinationResolver_handleEndpointResolution_client_player_source_error___block_invoke;
      v31[3] = &unk_1E769B150;
      objc_copyWeak(&v32, &location);
      v31[4] = self;
      v25 = [v21 initWithIntervals:v23 name:v30 queue:serialQueue block:v31];
      reconRetryTimer = self->_reconRetryTimer;
      self->_reconRetryTimer = v25;

      v27 = _MRLogForCategory(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        [(MSVVariableIntervalTimer *)self->_reconRetryTimer timeUntilNextInterval];
        *buf = 138412802;
        v35 = self;
        v36 = 2112;
        v37 = self;
        v38 = 2048;
        v39 = v28;
        _os_log_impl(&dword_1A2860000, v27, OS_LOG_TYPE_DEFAULT, "%@ <%@> Starting ReconRetryTimer to fire in %lf seconds", buf, 0x20u);
      }

      [(MRDestinationResolver *)self notifyDelegateOfError:v16];
      objc_destroyWeak(&v32);

      objc_destroyWeak(&location);
    }
  }

  else
  {
    v20 = self->_reconRetryTimer;
    self->_reconRetryTimer = 0;

    [(MRDestinationResolver *)self resolveForEndpoint:v12 client:v13 player:v14];
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

- (void)registerForEndpointChangesForOutputDeviceUID:(id)a3
{
  v4 = a3;
  if (![(MRDestinationResolver *)self registeredForEndpointChanges])
  {
    if ([(MRDestinationResolver *)self isDynamicEndpoint])
    {
      v5 = [MEMORY[0x1E696AD88] defaultCenter];
      [v5 addObserver:self selector:sel_handleActiveSystemEndpointChangedNotification_ name:@"kMRMediaRemoteActiveSystemEndpointDidChangeNotification" object:0];
    }

    else
    {
      objc_initWeak(&location, self);
      v8 = MEMORY[0x1E69E9820];
      objc_copyWeak(&v9, &location);
      v6 = [(MRDestinationResolver *)self endpointObserver:v8];
      [v6 setEndpointChangedCallback:&v8];

      v7 = [(MRDestinationResolver *)self endpointObserver];
      [v7 begin];

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
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self name:@"kMRMediaRemoteActiveSystemEndpointDidChangeNotification" object:0];
  }

  else
  {
    v3 = [(MRDestinationResolver *)self endpointObserver];
    [v3 end];
  }

  [(MRDestinationResolver *)self setRegisteredForEndpointChanges:0];
}

- (void)onQueue_registerForEndpointInvalidations:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (![(MRDestinationResolver *)self registeredForEndpointInvalidations])
  {
    [(MRDestinationResolver *)self onQueue_setEndpoint:v5];
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:self selector:sel__handleEndpointDidDisconnectNotification_ name:@"MRAVEndpointDidDisconnectNotification" object:v5];

    [(MRDestinationResolver *)self setRegisteredForEndpointInvalidations:1];
  }
}

- (void)unregisterForEndpointInvalidations
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = [(MRDestinationResolver *)self destination];
  v5 = [v4 endpoint];
  [v3 removeObserver:self name:@"MRAVEndpointDidDisconnectNotification" object:v5];

  [(MRDestinationResolver *)self setRegisteredForEndpointInvalidations:0];
}

- (void)onQueue_registerForPlayerPathInvalidationsForUnresolvedPlayerPath:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (![(MRDestinationResolver *)self registeredForPlayerPathInvalidations])
  {
    [(MRDestinationResolver *)self onQueue_setUnresolvedPlayerPath:v4];
    objc_initWeak(&location, self);
    v5 = [(MRDestinationResolver *)self dependencies];
    v6 = [(MRDestination *)self->_destination playerPath];
    v7 = [(MRDestinationResolver *)self serialQueue];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __91__MRDestinationResolver_onQueue_registerForPlayerPathInvalidationsForUnresolvedPlayerPath___block_invoke;
    v12 = &unk_1E769E668;
    objc_copyWeak(&v13, &location);
    v8 = [v5 addPlayerPathInvalidationHandler:v6 queue:v7 handler:&v9];
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
  v2 = [(MRDestinationResolver *)self serialQueue];
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
  v2 = [(MRDestinationResolver *)self serialQueue];
  msv_dispatch_async_on_queue();
}

uint64_t __50__MRDestinationResolver_handleEndpointInvalidated__block_invoke(uint64_t a1)
{
  [*(a1 + 32) onQueue_clearStateForEndpoint];
  [*(a1 + 32) notifyDelegateOfInvalidation];
  v2 = *(a1 + 32);

  return [v2 resolve];
}

- (void)handlePlayerPathInvalidatedWithPlayerPath:(id)a3
{
  v3 = [(MRDestinationResolver *)self serialQueue];
  msv_dispatch_async_on_queue();
}

uint64_t __67__MRDestinationResolver_handlePlayerPathInvalidatedWithPlayerPath___block_invoke(uint64_t a1)
{
  [*(a1 + 32) onQueue_clearStateForPlayerPath];
  [*(a1 + 32) notifyDelegateOfInvalidation];
  v2 = *(a1 + 32);

  return [v2 resolve];
}

- (void)handleActiveSystemEndpointChangedNotification:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"kMRMediaRemoteActiveEndpointTypeUserInfoKey"];
  v6 = [v5 intValue];

  if ([(MRDestinationResolver *)self isProactiveEndpoint]&& v6 == 1 || [(MRDestinationResolver *)self isUserSelectedEndpoint]&& !v6)
  {
    v7 = _MRLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = self;
      v11 = 2112;
      v12 = self;
      _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "%@ <%@> Active system endpoint changed", &v9, 0x16u);
    }

    [(MRDestinationResolver *)self handleEndpointChanged];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_handleEndpointDidDisconnectNotification:(id)a3
{
  v4 = [a3 object];
  [(MRDestinationResolver *)self endpointDidDisconnect:v4];
}

- (void)endpointDidDisconnect:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MRDestinationResolver *)self destination];
  v6 = [v5 endpoint];
  v7 = [v6 isEqual:v4];

  if (v7)
  {
    v8 = _MRLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412802;
      v11 = self;
      v12 = 2112;
      v13 = self;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "%@ <%@> endpoint invalidated %@", &v10, 0x20u);
    }

    [(MRDestinationResolver *)self handleEndpointInvalidated];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateOfEndpointChange:(id)a3
{
  v4 = a3;
  if (self->_delegateEndpoint != v4)
  {
    v5 = [(MRDestinationResolver *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(MRDestinationResolver *)self delegateQueue];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __56__MRDestinationResolver_notifyDelegateOfEndpointChange___block_invoke;
      v9[3] = &unk_1E769A4A0;
      v9[4] = self;
      v10 = v4;
      dispatch_async(v7, v9);
    }
  }

  delegateEndpoint = self->_delegateEndpoint;
  self->_delegateEndpoint = v4;
}

void __56__MRDestinationResolver_notifyDelegateOfEndpointChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 destinationResolver:*(a1 + 32) endpointDidChange:*(a1 + 40)];
}

- (void)notifyDelegateOfOriginChange:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_delegateOrigin != v4 && ![(MROrigin *)v4 isEqual:?])
  {
    v6 = [(MRDestinationResolver *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(MRDestinationResolver *)self delegateQueue];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __54__MRDestinationResolver_notifyDelegateOfOriginChange___block_invoke;
      v10[3] = &unk_1E769A4A0;
      v10[4] = self;
      v11 = v5;
      dispatch_async(v8, v10);
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

- (void)notifyDelegateOfPlayerPathChange:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_delegatePlayerPath != v4 && ![(MRPlayerPath *)v4 isEqual:?])
  {
    v6 = [(MRDestinationResolver *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(MRDestinationResolver *)self delegateQueue];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __58__MRDestinationResolver_notifyDelegateOfPlayerPathChange___block_invoke;
      v10[3] = &unk_1E769A4A0;
      v10[4] = self;
      v11 = v5;
      dispatch_async(v8, v10);
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
  v3 = [(MRDestinationResolver *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MRDestinationResolver *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__MRDestinationResolver_notifyDelegateOfInvalidation__block_invoke;
    block[3] = &unk_1E769A228;
    block[4] = self;
    dispatch_async(v5, block);
  }
}

void __53__MRDestinationResolver_notifyDelegateOfInvalidation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 destinationResolverDestinationDidInvalidate:*(a1 + 32)];
}

- (void)notifyDelegateOfError:(id)a3
{
  v4 = a3;
  v5 = [(MRDestinationResolver *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MRDestinationResolver *)self delegateQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__MRDestinationResolver_notifyDelegateOfError___block_invoke;
    v8[3] = &unk_1E769A4A0;
    v8[4] = self;
    v9 = v4;
    dispatch_async(v7, v8);
  }
}

void __47__MRDestinationResolver_notifyDelegateOfError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 destinationResolver:*(a1 + 32) didFailWithError:*(a1 + 40)];
}

- (void)onQueue_clearStateForOutputDeviceUID
{
  v3 = [(MRDestinationResolver *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  reconRetryTimer = self->_reconRetryTimer;
  self->_reconRetryTimer = 0;

  [(MRDestinationResolver *)self unregisterForEndpointChanges];

  [(MRDestinationResolver *)self onQueue_clearStateForEndpoint];
}

- (void)onQueue_clearStateForEndpoint
{
  v3 = [(MRDestinationResolver *)self serialQueue];
  dispatch_assert_queue_V2(v3);

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
  v3 = [(MRDestinationResolver *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  resolvingPlayerPath = self->_resolvingPlayerPath;
  self->_resolvingPlayerPath = 0;

  [(MRDestinationResolver *)self onQueue_setResolvedPlayerPath:0];
}

- (void)createPlayerPathForEndpoint:(id)a3 client:(id)a4 player:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v15 = [(MRDestinationResolver *)self dependencies];
  v14 = [(MRDestinationResolver *)self serialQueue];
  [v15 createPlayerPathForEndpoint:v13 client:v12 player:v11 queue:v14 completion:v10];
}

- (void)resolvePlayerPath:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(MRDestinationResolver *)self dependencies];
  v8 = [(MRDestinationResolver *)self serialQueue];
  [v9 resolvePlayerPath:v7 queue:v8 completion:v6];
}

- (void)onQueue_retrieveEndpointForUID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MRDestinationResolver *)self serialQueue];
  dispatch_assert_queue_V2(v8);

  v11 = [(MRDestinationResolver *)self dependencies];
  v9 = [(MRDestinationResolver *)self endpointObserverGroupUID];
  v10 = [(MRDestinationResolver *)self serialQueue];
  [v11 retrieveEndpointForUID:v7 endpointGroupUID:v9 queue:v10 completion:v6];
}

- (void)onQueue_retrieveEndpointForContextUID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MRDestinationResolver *)self serialQueue];
  dispatch_assert_queue_V2(v8);

  v10 = [(MRDestinationResolver *)self dependencies];
  v9 = [(MRDestinationResolver *)self serialQueue];
  [v10 retrieveEndpointForContextUID:v7 queue:v9 completion:v6];
}

- (BOOL)isProactiveEndpoint
{
  v2 = [(MRDestinationResolver *)self destination];
  v3 = [v2 outputDeviceUID];
  v4 = [v3 isEqualToString:@"proactiveEndpoint"];

  return v4;
}

- (BOOL)isUserSelectedEndpoint
{
  v2 = [(MRDestinationResolver *)self destination];
  v3 = [v2 outputDeviceUID];
  v4 = [v3 isEqualToString:@"userSelectedEndpoint"];

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