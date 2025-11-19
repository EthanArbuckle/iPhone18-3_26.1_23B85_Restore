@interface MRUNowPlayingControllerManager
- (MRUNowPlayingControllerManager)init;
- (void)endpointsManager:(id)a3 defersRoutesReplacement:(id)a4;
- (void)notifyObserversDidChangeActiveController:(id)a3;
- (void)setActiveController:(id)a3;
- (void)updateActiveController;
- (void)updateAutomaticResponseLoading;
- (void)updateDiscoveryMode;
- (void)updateNowPlayingControllers;
@end

@implementation MRUNowPlayingControllerManager

- (MRUNowPlayingControllerManager)init
{
  v12.receiver = self;
  v12.super_class = MRUNowPlayingControllerManager;
  v2 = [(MRUNowPlayingControllerManager *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF20] dictionary];
    controllerMap = v2->_controllerMap;
    v2->_controllerMap = v3;

    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v5;

    if (MRAVOutputContextGetSharedAudioPresentationContext())
    {
      v7 = objc_alloc_init(MEMORY[0x1E69705B8]);
      [v7 setStyle:0];
      v8 = MRAVOutputContextCopyUniqueIdentifier();
      [v7 setRoutingContextUID:v8];

      [v7 setAllowsNowPlayingApplicationLaunch:1];
      v9 = [[MediaControlsEndpointsManager alloc] initWithConfiguration:v7];
      endpointsManager = v2->_endpointsManager;
      v2->_endpointsManager = v9;

      [(MediaControlsEndpointsManager *)v2->_endpointsManager setDelegate:v2];
    }

    [(MRUNowPlayingControllerManager *)v2 updateNowPlayingControllers];
    [(MRUNowPlayingControllerManager *)v2 updateActiveController];
  }

  return v2;
}

- (void)setActiveController:(id)a3
{
  v5 = a3;
  if (self->_activeController != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_activeController, a3);
    v6 = [(MRUNowPlayingController *)v9 endpointController];
    v7 = [v6 route];

    v8 = [objc_alloc(MEMORY[0x1E69B0AE0]) initWithName:@"collectionView:didSelectItemAtIndexPath:" requestID:0 reason:@"User selected active system endpoint" userInitiated:1];
    [(MediaControlsEndpointsManager *)self->_endpointsManager setActiveSystemRoute:v7 requestDetails:v8];
    [(MRUNowPlayingControllerManager *)self notifyObserversDidChangeActiveController:v9];

    v5 = v9;
  }
}

- (void)updateDiscoveryMode
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(NSHashTable *)self->_observers copy];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) discoveryMode];
        if (v6 <= v9)
        {
          v6 = v9;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if (v6 >= 3)
  {
    v10 = 3;
  }

  else
  {
    v10 = v6;
  }

  [(MediaControlsEndpointsManager *)self->_endpointsManager setDiscoveryMode:v10];
}

- (void)updateAutomaticResponseLoading
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSArray *)self->_controllers copy];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) updateAutomaticResponseLoading];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)endpointsManager:(id)a3 defersRoutesReplacement:(id)a4
{
  v5 = (*(a4 + 2))(a4, a2, a3);
  [(MRUNowPlayingControllerManager *)self updateNowPlayingControllers];

  [(MRUNowPlayingControllerManager *)self updateActiveController];
}

- (void)updateNowPlayingControllers
{
  v2 = self;
  v51 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = [(MediaControlsEndpointsManager *)self->_endpointsManager routes];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v6 = [(NSDictionary *)v2->_controllerMap mutableCopy];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v7 = [(MediaControlsEndpointsManager *)v2->_endpointsManager routes];
  v8 = [v7 copy];

  v9 = [v8 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v42;
    *&v10 = 138412546;
    v35 = v10;
    do
    {
      v13 = 0;
      v36 = v11;
      do
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v41 + 1) + 8 * v13);
        v15 = [v14 routeUID];
        if (v15)
        {
          v16 = [v6 objectForKeyedSubscript:v15];
          if (!v16)
          {
            v17 = [(MediaControlsEndpointsManager *)v2->_endpointsManager endpointControllerForRoute:v14];
            v18 = v12;
            v19 = v6;
            v20 = v5;
            v21 = v2;
            v22 = v8;
            v23 = [[MRUEndpointController alloc] initWithEndpointController:v17];
            v16 = [[MRUNowPlayingController alloc] initWithEndpointController:v23];

            v8 = v22;
            v2 = v21;
            v5 = v20;
            v6 = v19;
            v12 = v18;
            v11 = v36;
          }

          [v5 addObject:v16];
          [v6 setObject:v16 forKeyedSubscript:v15];
        }

        else
        {
          v16 = MCLogCategoryDefault();
          if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_ERROR))
          {
            v24 = objc_opt_class();
            *buf = v35;
            v47 = v24;
            v48 = 2112;
            v49 = v14;
            _os_log_impl(&dword_1A20FC000, &v16->super, OS_LOG_TYPE_ERROR, "%@ ignoring endpoint route with no routeUID: %@", buf, 0x16u);
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v8 countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v11);
  }

  v25 = [(NSArray *)v2->_controllers isEqualToArray:v5];
  v26 = [v5 copy];
  controllers = v2->_controllers;
  v2->_controllers = v26;

  v28 = [v6 copy];
  controllerMap = v2->_controllerMap;
  v2->_controllerMap = v28;

  if (!v25)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v30 = [(NSHashTable *)v2->_observers copy];
    v31 = [v30 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v38;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v38 != v33)
          {
            objc_enumerationMutation(v30);
          }

          [*(*(&v37 + 1) + 8 * i) nowPlayingControllerManager:v2 didChangeControllers:v5];
        }

        v32 = [v30 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v32);
    }
  }
}

- (void)updateActiveController
{
  v3 = [(MediaControlsEndpointsManager *)self->_endpointsManager activeSystemRoute];
  v4 = [v3 routeUID];
  obj = [(MRUNowPlayingControllerManager *)self controllerForIdentifier:v4];

  if (self->_activeController != obj)
  {
    objc_storeStrong(&self->_activeController, obj);
    [(MRUNowPlayingControllerManager *)self notifyObserversDidChangeActiveController:obj];
  }
}

- (void)notifyObserversDidChangeActiveController:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSHashTable *)self->_observers copy];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) nowPlayingControllerManager:self didChangeActiveController:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end