@interface MRUNowPlayingController
- (MRUMediaSuggestionsController)mediaSuggestionsController;
- (MRUNowPlayingController)initWithEndpointController:(id)controller;
- (NSString)description;
- (NSString)nowPlayingInfoIdentifier;
- (id)deviceSymbolName;
- (id)outputDevicesSymbolName;
- (void)addObserver:(id)observer;
- (void)endpointController:(id)controller didChangeRoute:(id)route;
- (void)imageForRoute:(id)route completion:(id)completion;
- (void)mediaSuggestionsController:(id)controller didChangeMediaSuggestions:(id)suggestions;
- (void)metadataController:(id)controller didChangeArtwork:(id)artwork;
- (void)metadataController:(id)controller didChangeBundleID:(id)d;
- (void)metadataController:(id)controller didChangeNowPlayingInfo:(id)info;
- (void)metadataController:(id)controller didChangeTimeControls:(id)controls;
- (void)metadataController:(id)controller didChangeTransportControls:(id)controls;
- (void)queueHandoffCoordinator:(id)coordinator didChangeResponse:(id)response;
- (void)queueHandoffCoordinator:(id)coordinator didChangeState:(int64_t)state;
- (void)removeObserver:(id)observer;
- (void)routingDeviceImage:(id)image;
- (void)setQueueHandoffCoordinator:(id)coordinator;
- (void)tvRemoteController:(id)controller didChangeShowTVRemote:(BOOL)remote;
- (void)updateAutomaticResponseLoading;
- (void)updateQuickTransportItem;
@end

@implementation MRUNowPlayingController

- (MRUNowPlayingController)initWithEndpointController:(id)controller
{
  controllerCopy = controller;
  v16.receiver = self;
  v16.super_class = MRUNowPlayingController;
  v6 = [(MRUNowPlayingController *)&v16 init];
  if (v6)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = weakObjectsHashTable;

    objc_storeStrong(&v6->_endpointController, controller);
    [(MRUEndpointController *)v6->_endpointController addObserver:v6];
    v9 = [[MRUTVRemoteController alloc] initWithEndpointController:controllerCopy];
    tvRemoteController = v6->_tvRemoteController;
    v6->_tvRemoteController = v9;

    [(MRUTVRemoteController *)v6->_tvRemoteController setDelegate:v6];
    v11 = [[MRUMPCMetadataDataSource alloc] initWithEndpointController:controllerCopy];
    metadataDataSource = v6->_metadataDataSource;
    v6->_metadataDataSource = v11;

    v13 = [[MRUMetadataController alloc] initWithDataSource:v6->_metadataDataSource];
    metadataController = v6->_metadataController;
    v6->_metadataController = v13;

    [(MRUMetadataController *)v6->_metadataController addObserver:v6];
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  route = [(MRUEndpointController *)self->_endpointController route];
  v6 = [v3 stringWithFormat:@"<%@:%p %@>", v4, self, route];

  return v6;
}

- (NSString)nowPlayingInfoIdentifier
{
  identifier = [(MRUNowPlayingController *)self identifier];
  metadataController = [(MRUNowPlayingController *)self metadataController];
  nowPlayingInfo = [metadataController nowPlayingInfo];
  identifier2 = [nowPlayingInfo identifier];
  v7 = [identifier stringByAppendingFormat:@"|%@", identifier2];

  return v7;
}

- (void)setQueueHandoffCoordinator:(id)coordinator
{
  objc_storeStrong(&self->_queueHandoffCoordinator, coordinator);
  coordinatorCopy = coordinator;
  [(MRUNowPlayingQueueHandoffCoordinator *)self->_queueHandoffCoordinator setDelegate:self];
}

- (MRUMediaSuggestionsController)mediaSuggestionsController
{
  mediaSuggestionsController = self->_mediaSuggestionsController;
  if (!mediaSuggestionsController)
  {
    v4 = +[MRUFeatureFlagProvider isMediaSuggestionsPushEnabled];
    v5 = off_1E76621E0;
    if (!v4)
    {
      v5 = off_1E76621D8;
    }

    v6 = objc_alloc_init(*v5);
    v7 = [MRUMediaSuggestionsController alloc];
    endpointController = [(MRUNowPlayingController *)self endpointController];
    metadataController = [(MRUNowPlayingController *)self metadataController];
    v10 = [(MRUMediaSuggestionsController *)v7 initWithEndpointController:endpointController metadataController:metadataController dataSource:v6];
    v11 = self->_mediaSuggestionsController;
    self->_mediaSuggestionsController = v10;

    [(MRUMediaSuggestionsController *)self->_mediaSuggestionsController setDelegate:self];
    mediaSuggestionsController = self->_mediaSuggestionsController;
  }

  return mediaSuggestionsController;
}

- (void)addObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_observers addObject:?];

    [(MRUNowPlayingController *)self updateAutomaticResponseLoading];
  }
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_observers removeObject:?];

    [(MRUNowPlayingController *)self updateAutomaticResponseLoading];
  }
}

- (void)updateAutomaticResponseLoading
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(NSHashTable *)self->_observers copy];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v6 |= [v9 nowPlayingControllerShouldAutomaticallyUpdateResponse:self];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  endpointController = [(MRUEndpointController *)self->_endpointController endpointController];
  [endpointController setAllowsAutomaticResponseLoading:v6 & 1];
  [endpointController setOnScreen:v6 & 1];
  [endpointController setDeviceUnlocked:v6 & 1];
  proxyDelegate = [endpointController proxyDelegate];
  v12 = proxyDelegate;
  if (v6)
  {
    [proxyDelegate beginObserving];
  }

  else
  {
    [proxyDelegate endObserving];
  }
}

- (id)deviceSymbolName
{
  route = [(MRUEndpointController *)self->_endpointController route];
  if (route && [(MRUEndpointController *)self->_endpointController isDeviceSystemRoute])
  {
    _currentDeviceRoutingSymbolName = [MEMORY[0x1E6970490] _currentDeviceRoutingSymbolName];
  }

  else
  {
    _currentDeviceRoutingSymbolName = [(MRUNowPlayingController *)self outputDevicesSymbolName];
  }

  v5 = _currentDeviceRoutingSymbolName;

  return v5;
}

- (id)outputDevicesSymbolName
{
  v34[1] = *MEMORY[0x1E69E9840];
  route = [(MRUEndpointController *)self->_endpointController route];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    endpointObject = [route endpointObject];
    predictedOutputDevice = [endpointObject predictedOutputDevice];
  }

  else
  {
    endpointObject = 0;
    predictedOutputDevice = 0;
  }

  if ([route isSplitRoute])
  {
    v5 = @"person.2.fill";
  }

  else
  {
    v6 = [route isDeviceSpeakerRoute] ^ 1;
    if (predictedOutputDevice)
    {
      v6 = 1;
    }

    if (v6 != 1 || endpointObject == 0)
    {
      v5 = @"airplayaudio";
    }

    else
    {
      outputDevices = [endpointObject outputDevices];
      v23 = endpointObject;
      if (predictedOutputDevice)
      {
        v34[0] = predictedOutputDevice;
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];

        outputDevices = v9;
      }

      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(outputDevices, "count")}];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v11 = outputDevices;
      v12 = [v11 countByEnumeratingWithState:&v24 objects:v33 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v25;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v25 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v24 + 1) + 8 * i);
            v17 = objc_alloc(MEMORY[0x1E6970470]);
            v32 = v16;
            v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
            v19 = [v17 initWithOutputDevices:v18];
            [v10 addObject:v19];
          }

          v13 = [v11 countByEnumeratingWithState:&v24 objects:v33 count:16];
        }

        while (v13);
      }

      v20 = MCLogCategoryDefault();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = objc_opt_class();
        *buf = 138543618;
        v29 = v21;
        v30 = 2114;
        v31 = v10;
        _os_log_impl(&dword_1A20FC000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ imageForRoute routes: %{public}@", buf, 0x16u);
      }

      v5 = [MEMORY[0x1E6970490] _symbolNameForRoutes:v10];

      endpointObject = v23;
    }
  }

  return v5;
}

- (void)imageForRoute:(id)route completion:(id)completion
{
  v44[1] = *MEMORY[0x1E69E9840];
  routeCopy = route;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    endpointObject = [routeCopy endpointObject];
    predictedOutputDevice = [endpointObject predictedOutputDevice];
  }

  else
  {
    endpointObject = 0;
    predictedOutputDevice = 0;
  }

  if ([routeCopy isSplitRoute])
  {
    v10 = +[MRUAssetsProvider wirelessSharing];
LABEL_6:
    v11 = v10;
    completionCopy[2](completionCopy, v10);

    goto LABEL_25;
  }

  v12 = [routeCopy isDeviceSpeakerRoute] ^ 1;
  if (predictedOutputDevice)
  {
    v12 = 1;
  }

  if (v12 != 1 || !endpointObject)
  {
    bundleID = [(MRUMetadataController *)self->_metadataController bundleID];

    if (bundleID)
    {
      metadataController = self->_metadataController;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __52__MRUNowPlayingController_imageForRoute_completion___block_invoke;
      v36[3] = &unk_1E7664700;
      v36[4] = self;
      v37 = completionCopy;
      [(MRUMetadataController *)metadataController representsLongFormVideoContentWithCompletion:v36];

      goto LABEL_25;
    }

    v10 = +[MRUAssetsProvider airplay];
    goto LABEL_6;
  }

  outputDevices = [endpointObject outputDevices];
  v31 = completionCopy;
  v30 = predictedOutputDevice;
  if (predictedOutputDevice)
  {
    v44[0] = predictedOutputDevice;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];

    outputDevices = v14;
  }

  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(outputDevices, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v16 = outputDevices;
  v17 = [v16 countByEnumeratingWithState:&v32 objects:v43 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v32 + 1) + 8 * i);
        v22 = objc_alloc(MEMORY[0x1E6970470]);
        v42 = v21;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
        v24 = [v22 initWithOutputDevices:v23];
        [v15 addObject:v24];
      }

      v18 = [v16 countByEnumeratingWithState:&v32 objects:v43 count:16];
    }

    while (v18);
  }

  v25 = MCLogCategoryDefault();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = objc_opt_class();
    *buf = 138543618;
    v39 = v26;
    v40 = 2114;
    v41 = v15;
    _os_log_impl(&dword_1A20FC000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ imageForRoute routes: %{public}@", buf, 0x16u);
  }

  v27 = [MEMORY[0x1E6970490] _symbolImageForRoutes:v15];
  completionCopy = v31;
  v31[2](v31, v27);

  predictedOutputDevice = v30;
LABEL_25:
}

void __52__MRUNowPlayingController_imageForRoute_completion___block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = MCLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = objc_opt_class();
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ imageForRoute representsLongFormVideoContent: %d", &v7, 0x12u);
  }

  v5 = *(a1 + 40);
  if (a2)
  {
    +[MRUAssetsProvider airplayVideo];
  }

  else
  {
    +[MRUAssetsProvider airplay];
  }
  v6 = ;
  (*(v5 + 16))(v5, v6);
}

- (void)routingDeviceImage:(id)image
{
  endpointController = self->_endpointController;
  imageCopy = image;
  route = [(MRUEndpointController *)endpointController route];
  [(MRUNowPlayingController *)self imageForRoute:route completion:imageCopy];
}

- (void)endpointController:(id)controller didChangeRoute:(id)route
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  routeCopy = route;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSHashTable *)self->_observers copy];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 nowPlayingController:self endpointController:controllerCopy didChangeRoute:routeCopy];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)tvRemoteController:(id)controller didChangeShowTVRemote:(BOOL)remote
{
  remoteCopy = remote;
  v20 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(NSHashTable *)self->_observers copy];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 nowPlayingController:self tvRemoteController:controllerCopy didChangeShowTVRemote:remoteCopy];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  if (remoteCopy)
  {
    endpointController = [(MRUEndpointController *)self->_endpointController endpointController];
    allowsAutomaticResponseLoading = [endpointController allowsAutomaticResponseLoading];

    if (allowsAutomaticResponseLoading)
    {
      [controllerCopy prewarmIfNeeded];
    }
  }

  [(MRUNowPlayingController *)self updateQuickTransportItem];
}

- (void)metadataController:(id)controller didChangeBundleID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSHashTable *)self->_observers copy];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 nowPlayingController:self metadataController:controllerCopy didChangeBundleID:dCopy];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)metadataController:(id)controller didChangeArtwork:(id)artwork
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  artworkCopy = artwork;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSHashTable *)self->_observers copy];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 nowPlayingController:self metadataController:controllerCopy didChangeArtwork:artworkCopy];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)metadataController:(id)controller didChangeNowPlayingInfo:(id)info
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  infoCopy = info;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSHashTable *)self->_observers copy];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 nowPlayingController:self metadataController:controllerCopy didChangeNowPlayingInfo:infoCopy];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [(MRUNowPlayingController *)self updateQuickTransportItem];
}

- (void)metadataController:(id)controller didChangeTimeControls:(id)controls
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  controlsCopy = controls;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSHashTable *)self->_observers copy];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 nowPlayingController:self metadataController:controllerCopy didChangeTimeControls:controlsCopy];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)metadataController:(id)controller didChangeTransportControls:(id)controls
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  controlsCopy = controls;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSHashTable *)self->_observers copy];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 nowPlayingController:self metadataController:controllerCopy didChangeTransportControls:controlsCopy];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [(MRUNowPlayingController *)self updateQuickTransportItem];
}

- (void)mediaSuggestionsController:(id)controller didChangeMediaSuggestions:(id)suggestions
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  suggestionsCopy = suggestions;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSHashTable *)self->_observers copy];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 nowPlayingController:self mediaSuggestionsController:controllerCopy didChangeMediaSuggestions:suggestionsCopy];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)queueHandoffCoordinator:(id)coordinator didChangeState:(int64_t)state
{
  v28 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  if (state == 4)
  {
    queueHandoffCoordinator = self->_queueHandoffCoordinator;
    self->_queueHandoffCoordinator = 0;

    handoffDataSource = self->_handoffDataSource;
    self->_handoffDataSource = 0;

    v14 = 0;
    p_metadataDataSource = &self->_metadataDataSource;
LABEL_6:
    [(MRUMetadataController *)self->_metadataController setDataSource:*p_metadataDataSource];
    goto LABEL_7;
  }

  if (state != 1)
  {
    goto LABEL_8;
  }

  v7 = [MRUMRMetadataDataSource alloc];
  endpointController = self->_endpointController;
  response = [coordinatorCopy response];
  v10 = [(MRUMRMetadataDataSource *)v7 initWithEndpointController:endpointController response:response];
  p_metadataDataSource = &self->_handoffDataSource;
  v11 = self->_handoffDataSource;
  self->_handoffDataSource = v10;

  response2 = [coordinatorCopy response];

  v14 = 1;
  if (response2)
  {
    goto LABEL_6;
  }

LABEL_7:
  [(MRUMediaSuggestionsController *)self->_mediaSuggestionsController setIsQueueHandoffActive:v14];
LABEL_8:
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = [(NSHashTable *)self->_observers copy];
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    do
    {
      v21 = 0;
      do
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v23 + 1) + 8 * v21);
        if (objc_opt_respondsToSelector())
        {
          [v22 nowPlayingController:self queueHandoffCoordinator:coordinatorCopy didChangeState:state];
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v19);
  }
}

- (void)queueHandoffCoordinator:(id)coordinator didChangeResponse:(id)response
{
  response = [coordinator response];
  [(MRUMRMetadataDataSource *)self->_handoffDataSource setResponse:response];

  v7 = 64;
  if (!response)
  {
    v7 = 72;
  }

  v8 = *(&self->super.isa + v7);
  metadataController = self->_metadataController;

  [(MRUMetadataController *)metadataController setDataSource:v8];
}

- (void)updateQuickTransportItem
{
  v28 = *MEMORY[0x1E69E9840];
  nowPlayingInfo = [(MRUMetadataController *)self->_metadataController nowPlayingInfo];
  tvRemoteController = [(MRUNowPlayingController *)self tvRemoteController];
  objc_initWeak(&location, tvRemoteController);

  if (-[MRUEndpointController state](self->_endpointController, "state") == 3 && ([nowPlayingInfo showPlaceholder] & 1) == 0)
  {
    transportControls = [(MRUMetadataController *)self->_metadataController transportControls];
    centerItem = [transportControls centerItem];
  }

  else
  {
    if (!-[MRUTVRemoteController showTVRemote](self->_tvRemoteController, "showTVRemote") || ![nowPlayingInfo showPlaceholder])
    {
      centerItem = 0;
      goto LABEL_9;
    }

    v5 = +[MRUAssetsProvider tvRemote];
    transportControls = [MRUAsset image:v5];

    v7 = [MRUTransportControlItem alloc];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __51__MRUNowPlayingController_updateQuickTransportItem__block_invoke;
    v20[3] = &unk_1E7663AE8;
    objc_copyWeak(&v21, &location);
    centerItem = [(MRUTransportControlItem *)v7 initWithIdentifier:@"tvremote" asset:transportControls mainAction:v20];
    objc_destroyWeak(&v21);
  }

LABEL_9:
  objc_storeStrong(&self->_quickControlItem, centerItem);
  v9 = MCLogCategoryDefault();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    *buf = 138543618;
    v25 = v10;
    v26 = 2114;
    v27 = centerItem;
    _os_log_impl(&dword_1A20FC000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ update quick transport controls: %{public}@", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = [(NSHashTable *)self->_observers copy];
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v23 count:16];
  if (v12)
  {
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v16 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          [v15 nowPlayingController:self didChangeQuickControlItem:centerItem];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v16 objects:v23 count:16];
    }

    while (v12);
  }

  objc_destroyWeak(&location);
}

void __51__MRUNowPlayingController_updateQuickTransportItem__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentTVRemoteUsingApp:0];
}

@end