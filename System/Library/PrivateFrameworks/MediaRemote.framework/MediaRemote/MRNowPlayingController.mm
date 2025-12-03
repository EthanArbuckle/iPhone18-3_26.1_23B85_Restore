@interface MRNowPlayingController
+ (id)localRouteController;
+ (id)proactiveEndpointController;
+ (id)userSelectedEndpointController;
+ (void)performRequest:(id)request withCompletion:(id)completion;
+ (void)sendCommand:(unsigned int)command toDestination:(id)destination options:(id)options appOptions:(unsigned int)appOptions withCompletion:(id)completion;
- (MRDestination)destination;
- (MRNowPlayingController)initWithConfiguration:(id)configuration;
- (MRNowPlayingController)initWithDestination:(id)destination;
- (MRNowPlayingController)initWithUID:(id)d;
- (MRNowPlayingControllerDelegate)delegate;
- (MRNowPlayingControllerImpl)impl;
- (MRNowPlayingPlayerResponse)response;
- (id)_createImplWithConfiguration:(id)configuration;
- (id)_makeHelper;
- (id)debugDescription;
- (id)description;
- (id)playerPath;
- (void)_notifyDelegateOfError:(id)error;
- (void)_notifyDelegateOfInvalidation;
- (void)_notifyDelegateOfNewResponse:(id)response;
- (void)_notifyDelegateOfPlaybackQueueChange:(id)change;
- (void)_notifyDelegateOfPlayerPathChange:(id)change;
- (void)_notifyDelegateOfSupportedCommandsChange:(id)change;
- (void)_notifyDelegateOfUpdate;
- (void)_notifyDelegateOfUpdatedArtwork:(id)artwork;
- (void)_notifyDelegateOfUpdatedClientProperties:(id)properties;
- (void)_notifyDelegateOfUpdatedContentItemsWithContentItems:(id)items;
- (void)_notifyDelegateOfUpdatedDeviceLastPlayingDate:(id)date;
- (void)_notifyDelegateOfUpdatedPlayerLastPlayingDate:(id)date;
- (void)beginLoadingUpdates;
- (void)dealloc;
- (void)endLoadingUpdates;
- (void)performRequestWithCompletion:(id)completion;
- (void)sendCommand:(unsigned int)command options:(id)options appOptions:(unsigned int)appOptions completion:(id)completion;
- (void)setDelegate:(id)delegate;
@end

@implementation MRNowPlayingController

- (void)beginLoadingUpdates
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [MEMORY[0x1E695DF00] now];
  beginDate = obj->_beginDate;
  obj->_beginDate = v2;

  impl = [(MRNowPlayingController *)obj impl];
  [impl beginLoadingUpdates];

  objc_sync_exit(obj);
}

- (MRNowPlayingControllerImpl)impl
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  impl = selfCopy->_impl;
  if (!impl)
  {
    v4 = [(MRNowPlayingController *)selfCopy _createImplWithConfiguration:selfCopy->_configuration];
    v5 = selfCopy->_impl;
    selfCopy->_impl = v4;

    _makeHelper = [(MRNowPlayingController *)selfCopy _makeHelper];
    [(MRNowPlayingControllerImpl *)selfCopy->_impl setHelper:_makeHelper];

    impl = selfCopy->_impl;
  }

  v7 = impl;
  objc_sync_exit(selfCopy);

  return v7;
}

- (id)_makeHelper
{
  v3 = objc_alloc_init(MRNowPlayingControllerHelper);
  objc_initWeak(location, self);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __37__MRNowPlayingController__makeHelper__block_invoke;
  v25[3] = &unk_1E76A3288;
  objc_copyWeak(&v26, location);
  [(MRNowPlayingControllerHelper *)v3 setDidLoadResponse:v25];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __37__MRNowPlayingController__makeHelper__block_invoke_3;
  v23[3] = &unk_1E76A32B0;
  objc_copyWeak(&v24, location);
  [(MRNowPlayingControllerHelper *)v3 setPlaybackStateDidChange:v23];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __37__MRNowPlayingController__makeHelper__block_invoke_5;
  v21[3] = &unk_1E76A32D8;
  objc_copyWeak(&v22, location);
  [(MRNowPlayingControllerHelper *)v3 setPlaybackQueueDidChange:v21];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __37__MRNowPlayingController__makeHelper__block_invoke_7;
  v19[3] = &unk_1E769B720;
  objc_copyWeak(&v20, location);
  [(MRNowPlayingControllerHelper *)v3 setContentItemsDidUpdate:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __37__MRNowPlayingController__makeHelper__block_invoke_9;
  v17[3] = &unk_1E769B720;
  objc_copyWeak(&v18, location);
  [(MRNowPlayingControllerHelper *)v3 setContentItemsDidLoadArtwork:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __37__MRNowPlayingController__makeHelper__block_invoke_11;
  v15[3] = &unk_1E769B720;
  objc_copyWeak(&v16, location);
  [(MRNowPlayingControllerHelper *)v3 setSupportedCommandsDidChange:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __37__MRNowPlayingController__makeHelper__block_invoke_13;
  v13[3] = &unk_1E76A3300;
  objc_copyWeak(&v14, location);
  [(MRNowPlayingControllerHelper *)v3 setPlayerLastPlayingDateDidChange:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __37__MRNowPlayingController__makeHelper__block_invoke_15;
  v11[3] = &unk_1E76A3328;
  objc_copyWeak(&v12, location);
  [(MRNowPlayingControllerHelper *)v3 setClientPropertiesDidChange:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__MRNowPlayingController__makeHelper__block_invoke_17;
  v9[3] = &unk_1E769E668;
  objc_copyWeak(&v10, location);
  [(MRNowPlayingControllerHelper *)v3 setPlayerPathDidChange:v9];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__MRNowPlayingController__makeHelper__block_invoke_19;
  v7[3] = &unk_1E769B178;
  objc_copyWeak(&v8, location);
  [(MRNowPlayingControllerHelper *)v3 setDidInvalidate:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__MRNowPlayingController__makeHelper__block_invoke_21;
  v5[3] = &unk_1E769D2F8;
  objc_copyWeak(&v6, location);
  [(MRNowPlayingControllerHelper *)v3 setDidFailWithError:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(location);

  return v3;
}

void __37__MRNowPlayingController__makeHelper__block_invoke_19(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[5];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__MRNowPlayingController__makeHelper__block_invoke_20;
    block[3] = &unk_1E769A228;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

- (void)_notifyDelegateOfInvalidation
{
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_workerQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = [MEMORY[0x1E695DF00] now];
  lastInvalidationDate = selfCopy->_lastInvalidationDate;
  selfCopy->_lastInvalidationDate = v4;

  response = selfCopy->_response;
  selfCopy->_response = 0;

  objc_sync_exit(selfCopy);
  if (![(MRNowPlayingControllerConfiguration *)selfCopy->_configuration isSingleShot])
  {
    v7 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      delegate = [(MRNowPlayingController *)selfCopy delegate];
      v13 = 138412546;
      v14 = selfCopy;
      v15 = 2112;
      v16 = delegate;
      _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingController] %@ NotifyInvalidated %@", &v13, 0x16u);
    }
  }

  delegate2 = [(MRNowPlayingController *)selfCopy delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate3 = [(MRNowPlayingController *)selfCopy delegate];
    [delegate3 controllerWillReloadForInvalidation:selfCopy];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __37__MRNowPlayingController__makeHelper__block_invoke_21(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[5];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__MRNowPlayingController__makeHelper__block_invoke_22;
    v7[3] = &unk_1E769A4A0;
    v7[4] = WeakRetained;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

- (MRNowPlayingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingController] <%@> Deallocating.", buf, 0xCu);
  }

  [(MRNowPlayingController *)self endLoadingUpdates];
  v4 = +[MRMediaRemoteServiceClient sharedServiceClient];
  [v4 removeNowPlayingController:self];

  v6.receiver = self;
  v6.super_class = MRNowPlayingController;
  [(MRNowPlayingController *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)endLoadingUpdates
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [MEMORY[0x1E695DF00] now];
  endDate = obj->_endDate;
  obj->_endDate = v2;

  [(MRNowPlayingControllerImpl *)obj->_impl setHelper:0];
  impl = obj->_impl;
  obj->_impl = 0;

  objc_sync_exit(obj);
}

+ (id)localRouteController
{
  v2 = [MRNowPlayingController alloc];
  v3 = +[MRDestination localDestination];
  v4 = [(MRNowPlayingController *)v2 initWithDestination:v3];

  return v4;
}

+ (id)userSelectedEndpointController
{
  v2 = [[MRNowPlayingController alloc] initWithUID:@"userSelectedEndpoint"];

  return v2;
}

+ (id)proactiveEndpointController
{
  v2 = [[MRNowPlayingController alloc] initWithUID:@"proactiveEndpoint"];

  return v2;
}

- (MRNowPlayingController)initWithUID:(id)d
{
  dCopy = d;
  if ([dCopy isEqualToString:@"proactiveEndpoint"])
  {
    v5 = +[MRDestination proactiveDestination];
  }

  else if ([dCopy isEqualToString:@"userSelectedEndpoint"])
  {
    v5 = +[MRDestination userSelectedDestination];
  }

  else
  {
    v5 = [[MRDestination alloc] initWithOutputDeviceUID:dCopy];
  }

  v6 = v5;
  v7 = [(MRNowPlayingController *)self initWithDestination:v5];

  return v7;
}

- (MRNowPlayingController)initWithDestination:(id)destination
{
  destinationCopy = destination;
  v5 = [[MRNowPlayingControllerConfiguration alloc] initWithDestination:destinationCopy];

  [(MRNowPlayingControllerConfiguration *)v5 setRequestPlaybackQueue:1];
  [(MRNowPlayingControllerConfiguration *)v5 setRequestSupportedCommands:1];
  [(MRNowPlayingControllerConfiguration *)v5 setRequestPlaybackState:1];
  v6 = [(MRNowPlayingController *)self initWithConfiguration:v5];

  return v6;
}

- (MRNowPlayingController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = MRNowPlayingController;
  v6 = [(MRNowPlayingController *)&v14 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF00] now];
    allocationDate = v6->_allocationDate;
    v6->_allocationDate = v7;

    objc_storeStrong(&v6->_configuration, configuration);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.MediaRemote.MRNowPlayingController.workerQueue", v9);
    workerQueue = v6->_workerQueue;
    v6->_workerQueue = v10;

    v12 = +[MRMediaRemoteServiceClient sharedServiceClient];
    [v12 addNowPlayingController:v6];
  }

  return v6;
}

- (id)description
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  configuration = [(MRNowPlayingController *)selfCopy configuration];
  v6 = [v3 stringWithFormat:@"<%@: %p> %@ %@", v4, selfCopy, configuration, selfCopy->_impl];

  objc_sync_exit(selfCopy);

  return v6;
}

- (id)debugDescription
{
  v35 = objc_alloc(MEMORY[0x1E696AEC0]);
  v33 = objc_opt_class();
  configuration = [(MRNowPlayingController *)self configuration];
  v32 = MRCreateIndentedDebugDescriptionFromObject(configuration);
  allocationDate = [(MRNowPlayingController *)self allocationDate];
  allocationDate2 = [(MRNowPlayingController *)self allocationDate];
  [allocationDate2 timeIntervalSinceNow];
  v4 = -v3;
  beginDate = [(MRNowPlayingController *)self beginDate];
  beginDate2 = [(MRNowPlayingController *)self beginDate];
  [beginDate2 timeIntervalSinceNow];
  v6 = -v5;
  endDate = [(MRNowPlayingController *)self endDate];
  endDate2 = [(MRNowPlayingController *)self endDate];
  [endDate2 timeIntervalSinceNow];
  v8 = -v7;
  lastInitialLoadDate = [(MRNowPlayingController *)self lastInitialLoadDate];
  lastInitialLoadDate2 = [(MRNowPlayingController *)self lastInitialLoadDate];
  [lastInitialLoadDate2 timeIntervalSinceNow];
  v10 = -v9;
  lastUpdateDate = [(MRNowPlayingController *)self lastUpdateDate];
  lastUpdateDate2 = [(MRNowPlayingController *)self lastUpdateDate];
  [lastUpdateDate2 timeIntervalSinceNow];
  v12 = -v11;
  lastInvalidationDate = [(MRNowPlayingController *)self lastInvalidationDate];
  lastInvalidationDate2 = [(MRNowPlayingController *)self lastInvalidationDate];
  [lastInvalidationDate2 timeIntervalSinceNow];
  v14 = -v13;
  lastErrorDate = [(MRNowPlayingController *)self lastErrorDate];
  lastErrorDate2 = [(MRNowPlayingController *)self lastErrorDate];
  [lastErrorDate2 timeIntervalSinceNow];
  v18 = -v17;
  lastError = [(MRNowPlayingController *)self lastError];
  impl = [(MRNowPlayingController *)self impl];
  v21 = MRCreateIndentedDebugDescriptionFromObject(impl);
  response = [(MRNowPlayingController *)self response];
  v23 = MRCreateIndentedDebugDescriptionFromObject(response);
  v24 = [v35 initWithFormat:@"<%@ %p {\n   configuration=      %@   allocationDate=     %@ (%lf seconds ago)\n   beginDate=          %@ (%lf seconds ago)\n   endDate=            %@ (%lf seconds ago)\n   intialLoadDate=     %@ (%lf seconds ago)\n   updateDate=         %@ (%lf seconds ago)\n   invalidationDate=   %@ (%lf seconds ago)\n   lastErrorDate=      %@ (%lf seconds ago)\n   lastError=          %@\n   impl=               %@\n   response=           %@\n}>\n", v33, self, v32, allocationDate, *&v4, beginDate, *&v6, endDate, *&v8, lastInitialLoadDate, *&v10, lastUpdateDate, *&v12, lastInvalidationDate, *&v14, lastErrorDate, *&v18, lastError, v21, v23];

  return v24;
}

- (void)setDelegate:(id)delegate
{
  obj = self;
  delegateCopy = delegate;
  objc_sync_enter(obj);
  objc_storeWeak(&obj->_delegate, delegateCopy);

  objc_sync_exit(obj);
}

- (void)performRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_opt_class();
  configuration = [(MRNowPlayingController *)self configuration];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__MRNowPlayingController_performRequestWithCompletion___block_invoke;
  v8[3] = &unk_1E769E1E0;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [v5 performRequest:configuration withCompletion:v8];
}

void __55__MRNowPlayingController_performRequestWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = *(a1 + 32);
  v6(v5, a2, a3);
}

+ (void)performRequest:(id)request withCompletion:(id)completion
{
  v54 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  if (!completionCopy)
  {
    [MRNowPlayingController performRequest:a2 withCompletion:self];
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v11 = [MEMORY[0x1E695DF00] now];
  v12 = [requestCopy copy];
  [v12 setSingleShot:1];
  v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"performRequestWithCompletion<%@>", uUIDString];
  [v12 setLabel:v13];

  v14 = [[MRNowPlayingController alloc] initWithConfiguration:v12];
  v15 = objc_alloc_init(MRNowPlayingControllerHelper);
  v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"NowPlayingController<%p>.performRequestWithCompletion", v14];
  v17 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", v16, uUIDString];
  v18 = v17;
  if (requestCopy)
  {
    [v17 appendFormat:@" for %@", requestCopy];
  }

  v19 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v53 = v18;
    _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __56__MRNowPlayingController_performRequest_withCompletion___block_invoke;
  v44[3] = &unk_1E769D430;
  v45 = v14;
  v46 = requestCopy;
  v47 = v16;
  v48 = uUIDString;
  v50 = v15;
  v51 = completionCopy;
  v49 = v11;
  v20 = v15;
  v21 = completionCopy;
  v22 = v11;
  v23 = uUIDString;
  v24 = v16;
  v25 = requestCopy;
  v26 = v14;
  v27 = MEMORY[0x1A58E3570](v44);
  v28 = [MRBlockGuard alloc];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __56__MRNowPlayingController_performRequest_withCompletion___block_invoke_269;
  v42[3] = &unk_1E769AD80;
  v29 = v27;
  v43 = v29;
  v30 = [(MRBlockGuard *)v28 initWithTimeout:v24 reason:v42 handler:30.0];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __56__MRNowPlayingController_performRequest_withCompletion___block_invoke_2;
  v39[3] = &unk_1E76A3210;
  v31 = v30;
  v40 = v31;
  v32 = v29;
  v41 = v32;
  [(MRNowPlayingControllerHelper *)v20 setDidLoadResponse:v39];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __56__MRNowPlayingController_performRequest_withCompletion___block_invoke_3;
  v36[3] = &unk_1E769BCD0;
  v37 = v31;
  v38 = v32;
  v33 = v32;
  v34 = v31;
  [(MRNowPlayingControllerHelper *)v20 setDidFailWithError:v36];
  [(MRNowPlayingController *)v26 setDelegate:v20];
  [(MRNowPlayingController *)v26 beginLoadingUpdates];

  v35 = *MEMORY[0x1E69E9840];
}

void __56__MRNowPlayingController_performRequest_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) endLoadingUpdates];
  v7 = *(a1 + 40);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = v8;
  if (v5 && !v6)
  {
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v10)
      {
        v12 = *(a1 + 48);
        v11 = *(a1 + 56);
        v13 = *(a1 + 40);
        v14 = [MEMORY[0x1E695DF00] date];
        [v14 timeIntervalSinceDate:*(a1 + 64)];
        v36 = 138544386;
        v37 = v12;
        v38 = 2114;
        v39 = v11;
        v40 = 2112;
        v41 = v5;
        v42 = 2114;
        v43 = v13;
        v44 = 2048;
        v45 = v15;
        v16 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v17 = v9;
        v18 = 52;
LABEL_16:
        _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, v16, &v36, v18);
        goto LABEL_17;
      }

      goto LABEL_22;
    }

    if (!v10)
    {
      goto LABEL_22;
    }

    v29 = *(a1 + 48);
    v30 = *(a1 + 56);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 64)];
    v36 = 138544130;
    v37 = v29;
    v38 = 2114;
    v39 = v30;
    v40 = 2112;
    v41 = v5;
    v42 = 2048;
    v43 = v31;
    v16 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_15:
    v17 = v9;
    v18 = 42;
    goto LABEL_16;
  }

  if (v6)
  {
    v19 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v19)
      {
        v21 = *(a1 + 48);
        v20 = *(a1 + 56);
        v22 = *(a1 + 40);
        v14 = [MEMORY[0x1E695DF00] date];
        [v14 timeIntervalSinceDate:*(a1 + 64)];
        v36 = 138544386;
        v37 = v21;
        v38 = 2114;
        v39 = v20;
        v40 = 2114;
        v41 = v6;
        v42 = 2114;
        v43 = v22;
        v44 = 2048;
        v45 = v23;
        _os_log_error_impl(&dword_1A2860000, v9, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v36, 0x34u);
LABEL_17:

        goto LABEL_22;
      }
    }

    else if (v19)
    {
      __56__MRNowPlayingController_performRequest_withCompletion___block_invoke_cold_1(a1);
    }

    goto LABEL_22;
  }

  v24 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (!v24)
    {
      goto LABEL_22;
    }

    v32 = *(a1 + 48);
    v33 = *(a1 + 56);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 64)];
    v36 = 138543874;
    v37 = v32;
    v38 = 2114;
    v39 = v33;
    v40 = 2048;
    v41 = v34;
    v16 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v17 = v9;
    v18 = 32;
    goto LABEL_16;
  }

  if (v24)
  {
    v26 = *(a1 + 48);
    v25 = *(a1 + 56);
    v27 = *(a1 + 40);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 64)];
    v36 = 138544130;
    v37 = v26;
    v38 = 2114;
    v39 = v25;
    v40 = 2114;
    v41 = v27;
    v42 = 2048;
    v43 = v28;
    v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_15;
  }

LABEL_22:

  (*(*(a1 + 80) + 16))();
  [*(a1 + 72) setDidLoadResponse:0];
  [*(a1 + 72) setDidFailWithError:0];

  v35 = *MEMORY[0x1E69E9840];
}

void __56__MRNowPlayingController_performRequest_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __56__MRNowPlayingController_performRequest_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

+ (void)sendCommand:(unsigned int)command toDestination:(id)destination options:(id)options appOptions:(unsigned int)appOptions withCompletion:(id)completion
{
  v65 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  optionsCopy = options;
  completionCopy = completion;
  v12 = [[MRNowPlayingControllerConfiguration alloc] initWithDestination:destinationCopy];
  [(MRNowPlayingControllerConfiguration *)v12 setSingleShot:1];
  v13 = [[MRNowPlayingController alloc] initWithConfiguration:v12];
  v14 = [optionsCopy objectForKeyedSubscript:@"kMRMediaRemoteOptionCommandID"];
  v15 = v14;
  if (v14)
  {
    uUIDString = v14;
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
  }

  v18 = [MEMORY[0x1E695DF00] now];
  v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"NowPlayingController<%p>.sendCommand", v13];
  v20 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", v19, uUIDString];
  v21 = v20;
  if (destinationCopy)
  {
    [v20 appendFormat:@" for %@", destinationCopy];
  }

  v22 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v64 = v21;
    _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v23 = qos_class_self();
  v24 = dispatch_get_global_queue(v23, 0);
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __86__MRNowPlayingController_sendCommand_toDestination_options_appOptions_withCompletion___block_invoke;
  v56[3] = &unk_1E76A3238;
  v57 = destinationCopy;
  v58 = v19;
  v59 = uUIDString;
  v60 = v18;
  v25 = v24;
  v61 = v25;
  v62 = completionCopy;
  v42 = completionCopy;
  v41 = v18;
  v40 = uUIDString;
  v26 = v19;
  v27 = destinationCopy;
  v28 = MEMORY[0x1A58E3570](v56);
  v29 = [MRBlockGuard alloc];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __86__MRNowPlayingController_sendCommand_toDestination_options_appOptions_withCompletion___block_invoke_2;
  v54[3] = &unk_1E769AD80;
  v30 = v28;
  v55 = v30;
  v31 = [(MRBlockGuard *)v29 initWithTimeout:v26 reason:v54 handler:45.0];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __86__MRNowPlayingController_sendCommand_toDestination_options_appOptions_withCompletion___block_invoke_3;
  v51[3] = &unk_1E769FBA8;
  v52 = v31;
  v53 = v30;
  v32 = v30;
  v33 = v31;
  v34 = MEMORY[0x1A58E3570](v51);
  impl = [(MRNowPlayingController *)v13 impl];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __86__MRNowPlayingController_sendCommand_toDestination_options_appOptions_withCompletion___block_invoke_4;
  v45[3] = &unk_1E76A3260;
  commandCopy = command;
  appOptionsCopy = appOptions;
  v46 = optionsCopy;
  v47 = v25;
  v48 = v34;
  v36 = v34;
  v37 = v25;
  v38 = optionsCopy;
  [impl destinationWithCompletion:v45];

  v39 = *MEMORY[0x1E69E9840];
}

void __86__MRNowPlayingController_sendCommand_toDestination_options_appOptions_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];

  if (v3 && !v4)
  {
    v5 = *(a1 + 32);
    v6 = _MRLogForCategory(0xAuLL);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v9 = *(a1 + 40);
        v8 = *(a1 + 48);
        v10 = *(a1 + 32);
        v11 = [MEMORY[0x1E695DF00] date];
        [v11 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544386;
        v42 = v9;
        v43 = 2114;
        v44 = v8;
        v45 = 2112;
        v46 = v3;
        v47 = 2114;
        v48 = v10;
        v49 = 2048;
        v50 = v12;
        v13 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v14 = v6;
        v15 = 52;
LABEL_16:
        _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
        goto LABEL_17;
      }

      goto LABEL_22;
    }

    if (!v7)
    {
      goto LABEL_22;
    }

    v30 = *(a1 + 40);
    v31 = *(a1 + 48);
    v11 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544130;
    v42 = v30;
    v43 = 2114;
    v44 = v31;
    v45 = 2112;
    v46 = v3;
    v47 = 2048;
    v48 = v32;
    v13 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_15:
    v14 = v6;
    v15 = 42;
    goto LABEL_16;
  }

  v16 = [v3 error];

  v17 = *(a1 + 32);
  v18 = _MRLogForCategory(0xAuLL);
  v6 = v18;
  if (v16)
  {
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (v17)
    {
      if (v19)
      {
        v20 = *(a1 + 40);
        v21 = *(a1 + 48);
        v11 = [v3 error];
        v22 = *(a1 + 32);
        v23 = [MEMORY[0x1E695DF00] date];
        [v23 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544386;
        v42 = v20;
        v43 = 2114;
        v44 = v21;
        v45 = 2114;
        v46 = v11;
        v47 = 2114;
        v48 = v22;
        v49 = 2048;
        v50 = v24;
        _os_log_error_impl(&dword_1A2860000, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);

LABEL_17:
        goto LABEL_22;
      }
    }

    else if (v19)
    {
      __86__MRNowPlayingController_sendCommand_toDestination_options_appOptions_withCompletion___block_invoke_cold_1(a1, v3);
    }

    goto LABEL_22;
  }

  v25 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (!v17)
  {
    if (!v25)
    {
      goto LABEL_22;
    }

    v33 = *(a1 + 40);
    v34 = *(a1 + 48);
    v11 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138543874;
    v42 = v33;
    v43 = 2114;
    v44 = v34;
    v45 = 2048;
    v46 = v35;
    v13 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v14 = v6;
    v15 = 32;
    goto LABEL_16;
  }

  if (v25)
  {
    v27 = *(a1 + 40);
    v26 = *(a1 + 48);
    v28 = *(a1 + 32);
    v11 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544130;
    v42 = v27;
    v43 = 2114;
    v44 = v26;
    v45 = 2114;
    v46 = v28;
    v47 = 2048;
    v48 = v29;
    v13 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_15;
  }

LABEL_22:

  v36 = *(a1 + 64);
  v39 = v3;
  v40 = *(a1 + 72);
  v37 = v3;
  msv_dispatch_async_on_queue();

  v38 = *MEMORY[0x1E69E9840];
}

void __86__MRNowPlayingController_sendCommand_toDestination_options_appOptions_withCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[MRCommandResult alloc] initWithWithSendError:5 description:@"Timedout waiting for command result"];
  (*(v1 + 16))(v1, v2);
}

void __86__MRNowPlayingController_sendCommand_toDestination_options_appOptions_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __86__MRNowPlayingController_sendCommand_toDestination_options_appOptions_withCompletion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v9 origin];

  if (v6)
  {
    MRMediaRemoteSendCommandToPlayerWithResult(*(a1 + 56), *(a1 + 32), v9, *(a1 + 60), *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = [[MRCommandResult alloc] initWithError:v5];
    (*(v7 + 16))(v7, v8);
  }
}

- (void)sendCommand:(unsigned int)command options:(id)options appOptions:(unsigned int)appOptions completion:(id)completion
{
  v55 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  completionCopy = completion;
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"NowPlayingController<%p>.sendCommand", self];
  v11 = [optionsCopy objectForKeyedSubscript:@"kMRMediaRemoteOptionCommandID"];
  v12 = v11;
  if (v11)
  {
    uUIDString = v11;
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
  }

  v15 = [MEMORY[0x1E695DF00] now];
  v16 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", v10, uUIDString];
  configuration = [(MRNowPlayingController *)self configuration];
  destination = [configuration destination];

  if (destination)
  {
    configuration2 = [(MRNowPlayingController *)self configuration];
    destination2 = [configuration2 destination];
    [v16 appendFormat:@" for %@", destination2];
  }

  v42 = optionsCopy;
  v21 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v54 = v16;
    _os_log_impl(&dword_1A2860000, v21, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __68__MRNowPlayingController_sendCommand_options_appOptions_completion___block_invoke;
  v48[3] = &unk_1E769FA08;
  v48[4] = self;
  v22 = v10;
  v49 = v22;
  v23 = uUIDString;
  v50 = v23;
  v24 = v15;
  v51 = v24;
  v25 = completionCopy;
  v52 = v25;
  v26 = MEMORY[0x1A58E3570](v48);
  v27 = [MRBlockGuard alloc];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __68__MRNowPlayingController_sendCommand_options_appOptions_completion___block_invoke_283;
  v46[3] = &unk_1E769AD80;
  v28 = v26;
  v47 = v28;
  v29 = [(MRBlockGuard *)v27 initWithTimeout:v22 reason:v46 handler:63.0];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __68__MRNowPlayingController_sendCommand_options_appOptions_completion___block_invoke_2;
  v43[3] = &unk_1E769FBA8;
  v30 = v29;
  v44 = v30;
  v31 = v28;
  v45 = v31;
  v32 = MEMORY[0x1A58E3570](v43);
  playerPath = [(MRNowPlayingController *)self playerPath];
  origin = [playerPath origin];

  if (origin)
  {
    workerQueue = [(MRNowPlayingController *)self workerQueue];
    v36 = v42;
    MRMediaRemoteSendCommandToPlayerWithResult(command, v42, playerPath, appOptions, workerQueue, v32);
  }

  else
  {
    v37 = objc_opt_class();
    workerQueue = [(MRNowPlayingControllerConfiguration *)self->_configuration destination];
    v38 = v37;
    v36 = v42;
    [v38 sendCommand:command toDestination:workerQueue options:v42 appOptions:appOptions withCompletion:v32];
  }

  v39 = *MEMORY[0x1E69E9840];
}

void __68__MRNowPlayingController_sendCommand_options_appOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];

  if (v3 && !v4)
  {
    v5 = [*(a1 + 32) configuration];
    v6 = [v5 destination];

    v7 = _MRLogForCategory(0xAuLL);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (!v8)
      {
        goto LABEL_23;
      }

      v10 = *(a1 + 40);
      v9 = *(a1 + 48);
      v11 = [*(a1 + 32) configuration];
      v12 = [v11 destination];
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 56)];
      v42 = 138544386;
      v43 = v10;
      v44 = 2114;
      v45 = v9;
      v46 = 2112;
      v47 = v3;
      v48 = 2114;
      v49 = v12;
      v50 = 2048;
      v51 = v14;
      v15 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v16 = v7;
      v17 = 52;
LABEL_13:
      _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, v15, &v42, v17);
LABEL_14:

LABEL_22:
      goto LABEL_23;
    }

    if (!v8)
    {
      goto LABEL_23;
    }

    v31 = *(a1 + 40);
    v32 = *(a1 + 48);
    v11 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSinceDate:*(a1 + 56)];
    v42 = 138544130;
    v43 = v31;
    v44 = 2114;
    v45 = v32;
    v46 = 2112;
    v47 = v3;
    v48 = 2048;
    v49 = v33;
    v34 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v35 = v7;
    v36 = 42;
    goto LABEL_21;
  }

  v18 = [v3 error];

  v19 = [*(a1 + 32) configuration];
  v20 = [v19 destination];

  v21 = _MRLogForCategory(0xAuLL);
  v7 = v21;
  if (!v18)
  {
    v27 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (!v27)
      {
        goto LABEL_23;
      }

      v29 = *(a1 + 40);
      v28 = *(a1 + 48);
      v11 = [*(a1 + 32) configuration];
      v12 = [v11 destination];
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 56)];
      v42 = 138544130;
      v43 = v29;
      v44 = 2114;
      v45 = v28;
      v46 = 2114;
      v47 = v12;
      v48 = 2048;
      v49 = v30;
      v15 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v16 = v7;
      v17 = 42;
      goto LABEL_13;
    }

    if (!v27)
    {
      goto LABEL_23;
    }

    v37 = *(a1 + 40);
    v38 = *(a1 + 48);
    v11 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSinceDate:*(a1 + 56)];
    v42 = 138543874;
    v43 = v37;
    v44 = 2114;
    v45 = v38;
    v46 = 2048;
    v47 = v39;
    v34 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v35 = v7;
    v36 = 32;
LABEL_21:
    _os_log_impl(&dword_1A2860000, v35, OS_LOG_TYPE_DEFAULT, v34, &v42, v36);
    goto LABEL_22;
  }

  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_23;
    }

    v23 = *(a1 + 40);
    v24 = *(a1 + 48);
    v11 = [v3 error];
    v12 = [*(a1 + 32) configuration];
    v13 = [v12 destination];
    v25 = [MEMORY[0x1E695DF00] date];
    [v25 timeIntervalSinceDate:*(a1 + 56)];
    v42 = 138544386;
    v43 = v23;
    v44 = 2114;
    v45 = v24;
    v46 = 2114;
    v47 = v11;
    v48 = 2114;
    v49 = v13;
    v50 = 2048;
    v51 = v26;
    _os_log_error_impl(&dword_1A2860000, v7, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v42, 0x34u);

    goto LABEL_14;
  }

  if (v22)
  {
    __86__MRNowPlayingController_sendCommand_toDestination_options_appOptions_withCompletion___block_invoke_cold_1(a1, v3);
  }

LABEL_23:

  v40 = *(a1 + 64);
  if (v40)
  {
    (*(v40 + 16))(v40, v3);
  }

  v41 = *MEMORY[0x1E69E9840];
}

void __68__MRNowPlayingController_sendCommand_options_appOptions_completion___block_invoke_283(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[MRCommandResult alloc] initWithWithSendError:5 description:@"Timedout waiting for command result"];
  (*(v1 + 16))(v1, v2);
}

void __68__MRNowPlayingController_sendCommand_options_appOptions_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (id)playerPath
{
  destination = [(MRNowPlayingController *)self destination];
  playerPath = [destination playerPath];

  return playerPath;
}

- (MRDestination)destination
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  destination = [(MRNowPlayingPlayerResponse *)selfCopy->_response destination];
  destination2 = destination;
  if (!destination)
  {
    destination2 = [(MRNowPlayingControllerConfiguration *)selfCopy->_configuration destination];
  }

  v5 = [destination2 copy];
  if (!destination)
  {
  }

  objc_sync_exit(selfCopy);

  return v5;
}

- (MRNowPlayingPlayerResponse)response
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(MRNowPlayingPlayerResponse *)selfCopy->_response copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_notifyDelegateOfNewResponse:(id)response
{
  v61 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  dispatch_assert_queue_V2(self->_workerQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = selfCopy->_response;
  objc_storeStrong(&selfCopy->_response, response);
  v8 = [MEMORY[0x1E695DF00] now];
  lastInitialLoadDate = selfCopy->_lastInitialLoadDate;
  selfCopy->_lastInitialLoadDate = v8;

  objc_sync_exit(selfCopy);
  if (![(MRNowPlayingControllerConfiguration *)selfCopy->_configuration isSingleShot])
  {
    v10 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      delegate = [(MRNowPlayingController *)selfCopy delegate];
      configuration = [(MRNowPlayingController *)selfCopy configuration];
      customDescriptionForResponse = [configuration customDescriptionForResponse];
      response = [(MRNowPlayingController *)selfCopy response];
      v15 = (customDescriptionForResponse)[2](customDescriptionForResponse, response);
      *buf = 138412802;
      v56 = selfCopy;
      v57 = 2112;
      v58 = delegate;
      v59 = 2112;
      v60 = v15;
      _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingController] %@ NotifyLoadResponse %@ %@", buf, 0x20u);
    }
  }

  delegate2 = [(MRNowPlayingController *)selfCopy delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    delegate3 = [(MRNowPlayingController *)selfCopy delegate];
    response2 = [(MRNowPlayingController *)selfCopy response];
    [delegate3 controller:selfCopy didLoadResponse:response2];
  }

  if ([(MRNowPlayingControllerConfiguration *)selfCopy->_configuration wantsChangeCallbacksDuringInitialLoad])
  {
    playbackState = [(MRNowPlayingPlayerResponse *)v7 playbackState];
    playbackState2 = [responseCopy playbackState];
    if (playbackState != playbackState2)
    {
      delegate4 = [(MRNowPlayingController *)selfCopy delegate];
      v23 = objc_opt_respondsToSelector();

      if (v23)
      {
        delegate5 = [(MRNowPlayingController *)selfCopy delegate];
        [delegate5 controller:selfCopy playbackStateDidChangeFrom:playbackState to:playbackState2];
      }
    }

    playbackQueue = [(MRNowPlayingPlayerResponse *)v7 playbackQueue];
    playbackQueue2 = [responseCopy playbackQueue];
    if (playbackQueue != playbackQueue2 && ([playbackQueue isEqual:playbackQueue2] & 1) == 0)
    {
      delegate6 = [(MRNowPlayingController *)selfCopy delegate];
      v27 = objc_opt_respondsToSelector();

      if (v27)
      {
        delegate7 = [(MRNowPlayingController *)selfCopy delegate];
        [delegate7 controller:selfCopy playbackQueueDidChangeFrom:playbackQueue to:playbackQueue2];
      }
    }

    [(MRNowPlayingPlayerResponse *)v7 playbackRate];
    v30 = v29;
    [responseCopy playbackRate];
    v32 = v31;
    if (vabds_f32(v31, v30) > 0.001)
    {
      delegate8 = [(MRNowPlayingController *)selfCopy delegate];
      v34 = objc_opt_respondsToSelector();

      if (v34)
      {
        delegate9 = [(MRNowPlayingController *)selfCopy delegate];
        *&v36 = v30;
        *&v37 = v32;
        [delegate9 controller:selfCopy playbackRateDidChangeFrom:v36 to:v37];
      }
    }

    supportedCommands = [(MRNowPlayingPlayerResponse *)v7 supportedCommands];
    supportedCommands2 = [responseCopy supportedCommands];
    delegate10 = [(MRNowPlayingController *)selfCopy delegate];
    v41 = objc_opt_respondsToSelector();

    if (v41)
    {
      delegate11 = [(MRNowPlayingController *)selfCopy delegate];
      [delegate11 controller:selfCopy supportedCommandsDidChangeFrom:supportedCommands to:supportedCommands2];
    }

    repeatMode = [(MRNowPlayingPlayerResponse *)v7 repeatMode];
    repeatMode2 = [responseCopy repeatMode];
    if (repeatMode != repeatMode2)
    {
      delegate12 = [(MRNowPlayingController *)selfCopy delegate];
      v46 = objc_opt_respondsToSelector();

      if (v46)
      {
        delegate13 = [(MRNowPlayingController *)selfCopy delegate];
        [delegate13 controller:selfCopy repeatModeDidChangeFrom:repeatMode to:repeatMode2];
      }
    }

    shuffleMode = [(MRNowPlayingPlayerResponse *)v7 shuffleMode];
    shuffleMode2 = [responseCopy shuffleMode];
    if (shuffleMode != shuffleMode2)
    {
      delegate14 = [(MRNowPlayingController *)selfCopy delegate];
      v51 = objc_opt_respondsToSelector();

      if (v51)
      {
        delegate15 = [(MRNowPlayingController *)selfCopy delegate];
        [delegate15 controller:selfCopy shuffleModeDidChangeFrom:shuffleMode to:shuffleMode2];
      }
    }

    [(MRNowPlayingController *)selfCopy _notifyDelegateOfUpdate];
  }

  v53 = *MEMORY[0x1E69E9840];
}

- (void)_notifyDelegateOfPlaybackQueueChange:(id)change
{
  changeCopy = change;
  dispatch_assert_queue_V2(self->_workerQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  response = selfCopy->_response;
  if (!response)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"MRNowPlayingController.m" lineNumber:718 description:{@"Invalid parameter not satisfying: %@", @"_response"}];

    response = selfCopy->_response;
  }

  playbackQueue = [(MRNowPlayingPlayerResponse *)response playbackQueue];
  [(MRNowPlayingPlayerResponse *)selfCopy->_response playbackRate];
  v10 = v9;
  v11 = playbackQueue;
  v12 = changeCopy;
  v25 = v12;
  if (v11 == v12)
  {

    goto LABEL_12;
  }

  v13 = [v11 isEqual:v12];

  if (v13)
  {
LABEL_12:
    objc_sync_exit(selfCopy);

    goto LABEL_13;
  }

  [(MRNowPlayingPlayerResponse *)selfCopy->_response setPlaybackQueue:v25];
  [(MRNowPlayingPlayerResponse *)selfCopy->_response playbackRate];
  v15 = v14;
  objc_sync_exit(selfCopy);

  delegate = [(MRNowPlayingController *)selfCopy delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    delegate2 = [(MRNowPlayingController *)selfCopy delegate];
    [delegate2 controller:selfCopy playbackQueueDidChangeFrom:v11 to:v25];
  }

  if (vabds_f32(v15, v10) > 0.001)
  {
    delegate3 = [(MRNowPlayingController *)selfCopy delegate];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      delegate4 = [(MRNowPlayingController *)selfCopy delegate];
      *&v22 = v10;
      *&v23 = v15;
      [delegate4 controller:selfCopy playbackRateDidChangeFrom:v22 to:v23];
    }
  }

  [(MRNowPlayingController *)selfCopy _notifyDelegateOfUpdate];
LABEL_13:
}

- (void)_notifyDelegateOfUpdatedContentItemsWithContentItems:(id)items
{
  v39 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  dispatch_assert_queue_V2(self->_workerQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  response = selfCopy->_response;
  if (!response)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"MRNowPlayingController.m" lineNumber:750 description:{@"Invalid parameter not satisfying: %@", @"_response"}];

    response = selfCopy->_response;
  }

  [(MRNowPlayingPlayerResponse *)response playbackRate];
  v9 = v8;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = itemsCopy;
  v11 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v11)
  {
    v12 = *v35;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        playbackQueue = [(MRNowPlayingPlayerResponse *)selfCopy->_response playbackQueue];
        identifier = [v14 identifier];
        v17 = [playbackQueue contentItemForIdentifier:identifier];

        if (v17)
        {
          [v17 mergeFrom:v14];
        }

        [(MRNowPlayingPlayerResponse *)selfCopy->_response playbackRate];
        v19 = v18;
      }

      v11 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v11);
  }

  else
  {
    v19 = 0.0;
  }

  objc_sync_exit(selfCopy);
  if ([v10 count])
  {
    delegate = [(MRNowPlayingController *)selfCopy delegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      delegate2 = [(MRNowPlayingController *)selfCopy delegate];
      [delegate2 controller:selfCopy contentItemsDidUpdateWithContentItemChanges:v10];
    }

    delegate3 = [(MRNowPlayingController *)selfCopy delegate];
    v24 = objc_opt_respondsToSelector();

    if (v24)
    {
      v25 = [v10 mr_compactMap:&__block_literal_global_307];
      delegate4 = [(MRNowPlayingController *)selfCopy delegate];
      [delegate4 controller:selfCopy contentItemsDidUpdate:v25];
    }

    if (vabds_f32(v19, v9) > 0.001)
    {
      delegate5 = [(MRNowPlayingController *)selfCopy delegate];
      v28 = objc_opt_respondsToSelector();

      if (v28)
      {
        delegate6 = [(MRNowPlayingController *)selfCopy delegate];
        *&v30 = v9;
        *&v31 = v19;
        [delegate6 controller:selfCopy playbackRateDidChangeFrom:v30 to:v31];
      }
    }

    [(MRNowPlayingController *)selfCopy _notifyDelegateOfUpdate];
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)_notifyDelegateOfUpdatedArtwork:(id)artwork
{
  v33 = *MEMORY[0x1E69E9840];
  artworkCopy = artwork;
  dispatch_assert_queue_V2(self->_workerQueue);
  v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(artworkCopy, "count")}];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_response)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"MRNowPlayingController.m" lineNumber:786 description:{@"Invalid parameter not satisfying: %@", @"_response"}];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = artworkCopy;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        playbackQueue = [(MRNowPlayingPlayerResponse *)selfCopy->_response playbackQueue];
        identifier = [v11 identifier];
        v14 = [playbackQueue contentItemForIdentifier:identifier];

        if (v14)
        {
          artwork = [v14 artwork];
          artwork2 = [v11 artwork];
          identifier2 = artwork;
          v18 = artwork2;
          v19 = v18;
          if (identifier2 == v18)
          {
          }

          else
          {
            v20 = [identifier2 isEqual:v18];

            if (v20)
            {
              goto LABEL_14;
            }

            artwork3 = [v11 artwork];
            [v14 setArtwork:artwork3];

            identifier2 = [v11 identifier];
            [v27 addObject:identifier2];
          }
        }

LABEL_14:
      }

      v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  objc_sync_exit(selfCopy);
  if ([v27 count])
  {
    delegate = [(MRNowPlayingController *)selfCopy delegate];
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      delegate2 = [(MRNowPlayingController *)selfCopy delegate];
      [delegate2 controller:selfCopy didLoadArtworkForContentItems:v27];
    }

    [(MRNowPlayingController *)selfCopy _notifyDelegateOfUpdate];
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_notifyDelegateOfSupportedCommandsChange:(id)change
{
  changeCopy = change;
  dispatch_assert_queue_V2(self->_workerQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  response = selfCopy->_response;
  if (!response)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"MRNowPlayingController.m" lineNumber:820 description:{@"Invalid parameter not satisfying: %@", @"_response"}];

    response = selfCopy->_response;
  }

  supportedCommands = [(MRNowPlayingPlayerResponse *)response supportedCommands];
  shuffleMode = [(MRNowPlayingPlayerResponse *)selfCopy->_response shuffleMode];
  repeatMode = [(MRNowPlayingPlayerResponse *)selfCopy->_response repeatMode];
  v11 = supportedCommands;
  v12 = changeCopy;
  v26 = v12;
  if (v11 == v12)
  {

    goto LABEL_15;
  }

  v13 = [v11 isEqual:v12];

  if (v13)
  {
LABEL_15:
    objc_sync_exit(selfCopy);

    goto LABEL_16;
  }

  [(MRNowPlayingPlayerResponse *)selfCopy->_response setSupportedCommands:v26];
  shuffleMode2 = [(MRNowPlayingPlayerResponse *)selfCopy->_response shuffleMode];
  repeatMode2 = [(MRNowPlayingPlayerResponse *)selfCopy->_response repeatMode];
  objc_sync_exit(selfCopy);

  delegate = [(MRNowPlayingController *)selfCopy delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    delegate2 = [(MRNowPlayingController *)selfCopy delegate];
    [delegate2 controller:selfCopy supportedCommandsDidChangeFrom:v11 to:v26];
  }

  if (repeatMode != repeatMode2)
  {
    delegate3 = [(MRNowPlayingController *)selfCopy delegate];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      delegate4 = [(MRNowPlayingController *)selfCopy delegate];
      [delegate4 controller:selfCopy repeatModeDidChangeFrom:repeatMode to:repeatMode2];
    }
  }

  if (shuffleMode != shuffleMode2)
  {
    delegate5 = [(MRNowPlayingController *)selfCopy delegate];
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      delegate6 = [(MRNowPlayingController *)selfCopy delegate];
      [delegate6 controller:selfCopy shuffleModeDidChangeFrom:shuffleMode to:shuffleMode2];
    }
  }

  [(MRNowPlayingController *)selfCopy _notifyDelegateOfUpdate];
LABEL_16:
}

- (void)_notifyDelegateOfUpdatedDeviceLastPlayingDate:(id)date
{
  dateCopy = date;
  dispatch_assert_queue_V2(self->_workerQueue);
  delegate = [(MRNowPlayingController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(MRNowPlayingController *)self delegate];
    [delegate2 controller:self deviceLastPlayingDateDidChange:dateCopy];
  }

  [(MRNowPlayingController *)self _notifyDelegateOfUpdate];
}

- (void)_notifyDelegateOfUpdatedPlayerLastPlayingDate:(id)date
{
  dateCopy = date;
  dispatch_assert_queue_V2(self->_workerQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  response = selfCopy->_response;
  if (!response)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"MRNowPlayingController.m" lineNumber:865 description:{@"Invalid parameter not satisfying: %@", @"_response"}];

    response = selfCopy->_response;
  }

  playerLastPlayingDate = [(MRNowPlayingPlayerResponse *)response playerLastPlayingDate];
  v8 = playerLastPlayingDate;
  if (!selfCopy->_response)
  {
    goto LABEL_10;
  }

  v9 = playerLastPlayingDate;
  v10 = dateCopy;
  v11 = v10;
  if (v9 == v10)
  {

    goto LABEL_10;
  }

  v12 = [v9 isEqual:v10];

  if (v12)
  {
LABEL_10:

    objc_sync_exit(selfCopy);
    goto LABEL_11;
  }

  [(MRNowPlayingPlayerResponse *)selfCopy->_response setPlayerLastPlayingDate:v11];

  objc_sync_exit(selfCopy);
  delegate = [(MRNowPlayingController *)selfCopy delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    delegate2 = [(MRNowPlayingController *)selfCopy delegate];
    [delegate2 controller:selfCopy playerLastPlayingDateDidChange:v11];
  }

  [(MRNowPlayingController *)selfCopy _notifyDelegateOfUpdate];
LABEL_11:
}

- (void)_notifyDelegateOfUpdatedClientProperties:(id)properties
{
  propertiesCopy = properties;
  dispatch_assert_queue_V2(self->_workerQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  response = selfCopy->_response;
  if (!response)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"MRNowPlayingController.m" lineNumber:889 description:{@"Invalid parameter not satisfying: %@", @"_response"}];

    response = selfCopy->_response;
  }

  clientProperties = [(MRNowPlayingPlayerResponse *)response clientProperties];
  v8 = clientProperties;
  if (selfCopy->_response)
  {
    data = [clientProperties data];
    data2 = [propertiesCopy data];
    v11 = data;
    v12 = data2;
    v13 = v12;
    if (v11 == v12)
    {
    }

    else
    {
      v14 = [v11 isEqual:v12];

      if ((v14 & 1) == 0)
      {
        [(MRNowPlayingPlayerResponse *)selfCopy->_response setClientProperties:propertiesCopy];
      }
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)_notifyDelegateOfPlayerPathChange:(id)change
{
  changeCopy = change;
  dispatch_assert_queue_V2(self->_workerQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  playerPath = [(MRNowPlayingPlayerResponse *)selfCopy->_response playerPath];
  v7 = changeCopy;
  v12 = v7;
  if (playerPath == v7)
  {

    goto LABEL_6;
  }

  v8 = [playerPath isEqual:v7];

  if (v8)
  {
LABEL_6:
    objc_sync_exit(selfCopy);
    goto LABEL_7;
  }

  objc_sync_exit(selfCopy);

  delegate = [(MRNowPlayingController *)selfCopy delegate];
  v10 = objc_opt_respondsToSelector();

  if ((v10 & 1) == 0)
  {
    goto LABEL_8;
  }

  delegate2 = [(MRNowPlayingController *)selfCopy delegate];
  [(MRNowPlayingController *)delegate2 controller:selfCopy playerPathDidChange:v12];
  selfCopy = delegate2;
LABEL_7:

LABEL_8:
}

- (void)_notifyDelegateOfUpdate
{
  v22 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_workerQueue);
  v3 = [MEMORY[0x1E695DF00] now];
  lastUpdateDate = self->_lastUpdateDate;
  self->_lastUpdateDate = v3;

  if (![(MRNowPlayingControllerConfiguration *)self->_configuration isSingleShot])
  {
    v5 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      delegate = [(MRNowPlayingController *)self delegate];
      configuration = [(MRNowPlayingController *)self configuration];
      customDescriptionForResponse = [configuration customDescriptionForResponse];
      response = [(MRNowPlayingController *)self response];
      v10 = (customDescriptionForResponse)[2](customDescriptionForResponse, response);
      v16 = 138412802;
      selfCopy = self;
      v18 = 2112;
      v19 = delegate;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingController] %@ NotifyUpdate %@ %@", &v16, 0x20u);
    }
  }

  delegate2 = [(MRNowPlayingController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate3 = [(MRNowPlayingController *)self delegate];
    response2 = [(MRNowPlayingController *)self response];
    [delegate3 controller:self didUpdateResponse:response2];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_notifyDelegateOfError:(id)error
{
  v21 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  dispatch_assert_queue_V2(self->_workerQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [MEMORY[0x1E695DF00] now];
  lastErrorDate = selfCopy->_lastErrorDate;
  selfCopy->_lastErrorDate = v7;

  objc_storeStrong(&selfCopy->_lastError, error);
  objc_sync_exit(selfCopy);

  if (![(MRNowPlayingControllerConfiguration *)selfCopy->_configuration isSingleShot])
  {
    v9 = _MRLogForCategory(1uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      delegate = [(MRNowPlayingController *)selfCopy delegate];
      v15 = 138412802;
      v16 = selfCopy;
      v17 = 2112;
      v18 = errorCopy;
      v19 = 2112;
      v20 = delegate;
      _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[MRNowPlayingController] %@ NotifyError %@ %@", &v15, 0x20u);
    }
  }

  delegate2 = [(MRNowPlayingController *)selfCopy delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate3 = [(MRNowPlayingController *)selfCopy delegate];
    [delegate3 controller:selfCopy didFailWithError:errorCopy];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)_createImplWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = +[MRUserSettings currentSettings];
  nowPlayingControllerVersion = [v4 nowPlayingControllerVersion];

  if ((nowPlayingControllerVersion - 1) > 2)
  {
    v6 = off_1E76993C8;
  }

  else
  {
    v6 = off_1E76A3368[nowPlayingControllerVersion - 1];
  }

  v7 = [objc_alloc(*v6) initWithConfiguration:configurationCopy];

  return v7;
}

void __37__MRNowPlayingController__makeHelper__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[5];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__MRNowPlayingController__makeHelper__block_invoke_2;
    v7[3] = &unk_1E769A4A0;
    v7[4] = WeakRetained;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __37__MRNowPlayingController__makeHelper__block_invoke_3(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[5];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __37__MRNowPlayingController__makeHelper__block_invoke_4;
    v6[3] = &unk_1E769E760;
    v6[4] = v4;
    v7 = a2;
    dispatch_async(v5, v6);
  }
}

void __37__MRNowPlayingController__makeHelper__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[5];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__MRNowPlayingController__makeHelper__block_invoke_6;
    v7[3] = &unk_1E769A4A0;
    v7[4] = WeakRetained;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __37__MRNowPlayingController__makeHelper__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[5];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__MRNowPlayingController__makeHelper__block_invoke_8;
    v7[3] = &unk_1E769A4A0;
    v7[4] = WeakRetained;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __37__MRNowPlayingController__makeHelper__block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[5];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__MRNowPlayingController__makeHelper__block_invoke_10;
    v7[3] = &unk_1E769A4A0;
    v7[4] = WeakRetained;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __37__MRNowPlayingController__makeHelper__block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[5];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__MRNowPlayingController__makeHelper__block_invoke_12;
    v7[3] = &unk_1E769A4A0;
    v7[4] = WeakRetained;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __37__MRNowPlayingController__makeHelper__block_invoke_13(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[5];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__MRNowPlayingController__makeHelper__block_invoke_14;
    v7[3] = &unk_1E769A4A0;
    v7[4] = WeakRetained;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __37__MRNowPlayingController__makeHelper__block_invoke_15(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[5];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__MRNowPlayingController__makeHelper__block_invoke_16;
    v7[3] = &unk_1E769A4A0;
    v7[4] = WeakRetained;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __37__MRNowPlayingController__makeHelper__block_invoke_17(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[5];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__MRNowPlayingController__makeHelper__block_invoke_18;
    v7[3] = &unk_1E769A4A0;
    v7[4] = WeakRetained;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

+ (void)performRequest:(uint64_t)a1 withCompletion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRNowPlayingController.m" lineNumber:480 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

void __56__MRNowPlayingController_performRequest_withCompletion___block_invoke_cold_1(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a1[6];
  v3 = a1[7];
  v4 = [MEMORY[0x1E695DF00] date];
  [v4 timeIntervalSinceDate:a1[8]];
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_1(&dword_1A2860000, v5, v6, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __86__MRNowPlayingController_sendCommand_toDestination_options_appOptions_withCompletion___block_invoke_cold_1(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1[5];
  v4 = a1[6];
  v5 = [a2 error];
  v6 = [MEMORY[0x1E695DF00] date];
  [v6 timeIntervalSinceDate:a1[7]];
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_1(&dword_1A2860000, v7, v8, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x1E69E9840];
}

@end