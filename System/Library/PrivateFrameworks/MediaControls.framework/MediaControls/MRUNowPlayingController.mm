@interface MRUNowPlayingController
- (MRUMediaSuggestionsController)mediaSuggestionsController;
- (MRUNowPlayingController)initWithEndpointController:(id)a3;
- (NSString)description;
- (NSString)nowPlayingInfoIdentifier;
- (id)deviceSymbolName;
- (id)outputDevicesSymbolName;
- (void)addObserver:(id)a3;
- (void)endpointController:(id)a3 didChangeRoute:(id)a4;
- (void)imageForRoute:(id)a3 completion:(id)a4;
- (void)mediaSuggestionsController:(id)a3 didChangeMediaSuggestions:(id)a4;
- (void)metadataController:(id)a3 didChangeArtwork:(id)a4;
- (void)metadataController:(id)a3 didChangeBundleID:(id)a4;
- (void)metadataController:(id)a3 didChangeNowPlayingInfo:(id)a4;
- (void)metadataController:(id)a3 didChangeTimeControls:(id)a4;
- (void)metadataController:(id)a3 didChangeTransportControls:(id)a4;
- (void)queueHandoffCoordinator:(id)a3 didChangeResponse:(id)a4;
- (void)queueHandoffCoordinator:(id)a3 didChangeState:(int64_t)a4;
- (void)removeObserver:(id)a3;
- (void)routingDeviceImage:(id)a3;
- (void)setQueueHandoffCoordinator:(id)a3;
- (void)tvRemoteController:(id)a3 didChangeShowTVRemote:(BOOL)a4;
- (void)updateAutomaticResponseLoading;
- (void)updateQuickTransportItem;
@end

@implementation MRUNowPlayingController

- (MRUNowPlayingController)initWithEndpointController:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = MRUNowPlayingController;
  v6 = [(MRUNowPlayingController *)&v16 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = v7;

    objc_storeStrong(&v6->_endpointController, a3);
    [(MRUEndpointController *)v6->_endpointController addObserver:v6];
    v9 = [[MRUTVRemoteController alloc] initWithEndpointController:v5];
    tvRemoteController = v6->_tvRemoteController;
    v6->_tvRemoteController = v9;

    [(MRUTVRemoteController *)v6->_tvRemoteController setDelegate:v6];
    v11 = [[MRUMPCMetadataDataSource alloc] initWithEndpointController:v5];
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
  v5 = [(MRUEndpointController *)self->_endpointController route];
  v6 = [v3 stringWithFormat:@"<%@:%p %@>", v4, self, v5];

  return v6;
}

- (NSString)nowPlayingInfoIdentifier
{
  v3 = [(MRUNowPlayingController *)self identifier];
  v4 = [(MRUNowPlayingController *)self metadataController];
  v5 = [v4 nowPlayingInfo];
  v6 = [v5 identifier];
  v7 = [v3 stringByAppendingFormat:@"|%@", v6];

  return v7;
}

- (void)setQueueHandoffCoordinator:(id)a3
{
  objc_storeStrong(&self->_queueHandoffCoordinator, a3);
  v5 = a3;
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
    v8 = [(MRUNowPlayingController *)self endpointController];
    v9 = [(MRUNowPlayingController *)self metadataController];
    v10 = [(MRUMediaSuggestionsController *)v7 initWithEndpointController:v8 metadataController:v9 dataSource:v6];
    v11 = self->_mediaSuggestionsController;
    self->_mediaSuggestionsController = v10;

    [(MRUMediaSuggestionsController *)self->_mediaSuggestionsController setDelegate:self];
    mediaSuggestionsController = self->_mediaSuggestionsController;
  }

  return mediaSuggestionsController;
}

- (void)addObserver:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->_observers addObject:?];

    [(MRUNowPlayingController *)self updateAutomaticResponseLoading];
  }
}

- (void)removeObserver:(id)a3
{
  if (a3)
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

  v10 = [(MRUEndpointController *)self->_endpointController endpointController];
  [v10 setAllowsAutomaticResponseLoading:v6 & 1];
  [v10 setOnScreen:v6 & 1];
  [v10 setDeviceUnlocked:v6 & 1];
  v11 = [v10 proxyDelegate];
  v12 = v11;
  if (v6)
  {
    [v11 beginObserving];
  }

  else
  {
    [v11 endObserving];
  }
}

- (id)deviceSymbolName
{
  v3 = [(MRUEndpointController *)self->_endpointController route];
  if (v3 && [(MRUEndpointController *)self->_endpointController isDeviceSystemRoute])
  {
    v4 = [MEMORY[0x1E6970490] _currentDeviceRoutingSymbolName];
  }

  else
  {
    v4 = [(MRUNowPlayingController *)self outputDevicesSymbolName];
  }

  v5 = v4;

  return v5;
}

- (id)outputDevicesSymbolName
{
  v34[1] = *MEMORY[0x1E69E9840];
  v2 = [(MRUEndpointController *)self->_endpointController route];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 endpointObject];
    v4 = [v3 predictedOutputDevice];
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  if ([v2 isSplitRoute])
  {
    v5 = @"person.2.fill";
  }

  else
  {
    v6 = [v2 isDeviceSpeakerRoute] ^ 1;
    if (v4)
    {
      v6 = 1;
    }

    if (v6 != 1 || v3 == 0)
    {
      v5 = @"airplayaudio";
    }

    else
    {
      v8 = [v3 outputDevices];
      v23 = v3;
      if (v4)
      {
        v34[0] = v4;
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];

        v8 = v9;
      }

      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v11 = v8;
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

      v3 = v23;
    }
  }

  return v5;
}

- (void)imageForRoute:(id)a3 completion:(id)a4
{
  v44[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 endpointObject];
    v9 = [v8 predictedOutputDevice];
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  if ([v6 isSplitRoute])
  {
    v10 = +[MRUAssetsProvider wirelessSharing];
LABEL_6:
    v11 = v10;
    v7[2](v7, v10);

    goto LABEL_25;
  }

  v12 = [v6 isDeviceSpeakerRoute] ^ 1;
  if (v9)
  {
    v12 = 1;
  }

  if (v12 != 1 || !v8)
  {
    v28 = [(MRUMetadataController *)self->_metadataController bundleID];

    if (v28)
    {
      metadataController = self->_metadataController;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __52__MRUNowPlayingController_imageForRoute_completion___block_invoke;
      v36[3] = &unk_1E7664700;
      v36[4] = self;
      v37 = v7;
      [(MRUMetadataController *)metadataController representsLongFormVideoContentWithCompletion:v36];

      goto LABEL_25;
    }

    v10 = +[MRUAssetsProvider airplay];
    goto LABEL_6;
  }

  v13 = [v8 outputDevices];
  v31 = v7;
  v30 = v9;
  if (v9)
  {
    v44[0] = v9;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];

    v13 = v14;
  }

  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v13, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v16 = v13;
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
  v7 = v31;
  v31[2](v31, v27);

  v9 = v30;
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

- (void)routingDeviceImage:(id)a3
{
  endpointController = self->_endpointController;
  v5 = a3;
  v6 = [(MRUEndpointController *)endpointController route];
  [(MRUNowPlayingController *)self imageForRoute:v6 completion:v5];
}

- (void)endpointController:(id)a3 didChangeRoute:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
          [v13 nowPlayingController:self endpointController:v6 didChangeRoute:v7];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)tvRemoteController:(id)a3 didChangeShowTVRemote:(BOOL)a4
{
  v4 = a4;
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
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
          [v12 nowPlayingController:self tvRemoteController:v6 didChangeShowTVRemote:v4];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  if (v4)
  {
    v13 = [(MRUEndpointController *)self->_endpointController endpointController];
    v14 = [v13 allowsAutomaticResponseLoading];

    if (v14)
    {
      [v6 prewarmIfNeeded];
    }
  }

  [(MRUNowPlayingController *)self updateQuickTransportItem];
}

- (void)metadataController:(id)a3 didChangeBundleID:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
          [v13 nowPlayingController:self metadataController:v6 didChangeBundleID:v7];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)metadataController:(id)a3 didChangeArtwork:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
          [v13 nowPlayingController:self metadataController:v6 didChangeArtwork:v7];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)metadataController:(id)a3 didChangeNowPlayingInfo:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
          [v13 nowPlayingController:self metadataController:v6 didChangeNowPlayingInfo:v7];
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

- (void)metadataController:(id)a3 didChangeTimeControls:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
          [v13 nowPlayingController:self metadataController:v6 didChangeTimeControls:v7];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)metadataController:(id)a3 didChangeTransportControls:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
          [v13 nowPlayingController:self metadataController:v6 didChangeTransportControls:v7];
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

- (void)mediaSuggestionsController:(id)a3 didChangeMediaSuggestions:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
          [v13 nowPlayingController:self mediaSuggestionsController:v6 didChangeMediaSuggestions:v7];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)queueHandoffCoordinator:(id)a3 didChangeState:(int64_t)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4 == 4)
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

  if (a4 != 1)
  {
    goto LABEL_8;
  }

  v7 = [MRUMRMetadataDataSource alloc];
  endpointController = self->_endpointController;
  v9 = [v6 response];
  v10 = [(MRUMRMetadataDataSource *)v7 initWithEndpointController:endpointController response:v9];
  p_metadataDataSource = &self->_handoffDataSource;
  v11 = self->_handoffDataSource;
  self->_handoffDataSource = v10;

  v13 = [v6 response];

  v14 = 1;
  if (v13)
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
          [v22 nowPlayingController:self queueHandoffCoordinator:v6 didChangeState:a4];
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v19);
  }
}

- (void)queueHandoffCoordinator:(id)a3 didChangeResponse:(id)a4
{
  v6 = [a3 response];
  [(MRUMRMetadataDataSource *)self->_handoffDataSource setResponse:v6];

  v7 = 64;
  if (!a4)
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
  v3 = [(MRUMetadataController *)self->_metadataController nowPlayingInfo];
  v4 = [(MRUNowPlayingController *)self tvRemoteController];
  objc_initWeak(&location, v4);

  if (-[MRUEndpointController state](self->_endpointController, "state") == 3 && ([v3 showPlaceholder] & 1) == 0)
  {
    v6 = [(MRUMetadataController *)self->_metadataController transportControls];
    v8 = [v6 centerItem];
  }

  else
  {
    if (!-[MRUTVRemoteController showTVRemote](self->_tvRemoteController, "showTVRemote") || ![v3 showPlaceholder])
    {
      v8 = 0;
      goto LABEL_9;
    }

    v5 = +[MRUAssetsProvider tvRemote];
    v6 = [MRUAsset image:v5];

    v7 = [MRUTransportControlItem alloc];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __51__MRUNowPlayingController_updateQuickTransportItem__block_invoke;
    v20[3] = &unk_1E7663AE8;
    objc_copyWeak(&v21, &location);
    v8 = [(MRUTransportControlItem *)v7 initWithIdentifier:@"tvremote" asset:v6 mainAction:v20];
    objc_destroyWeak(&v21);
  }

LABEL_9:
  objc_storeStrong(&self->_quickControlItem, v8);
  v9 = MCLogCategoryDefault();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    *buf = 138543618;
    v25 = v10;
    v26 = 2114;
    v27 = v8;
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
          [v15 nowPlayingController:self didChangeQuickControlItem:v8];
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