@interface MRUSystemOutputDeviceRouteController
+ (MRUSystemOutputDeviceRouteController)sharedController;
+ (id)outputContextDescription;
- (BOOL)isPrimaryOutputDeviceAlternateTransportTypeUSBC;
- (MRUOutputDeviceAsset)primaryOutputDeviceAsset;
- (MRUOutputDeviceAsset)secondaryOutputDeviceAsset;
- (MRUOutputDeviceAsset)systemOutputDeviceAsset;
- (MRUOutputDeviceAsset)systemOutputDeviceAssetWithInCall;
- (MRUSystemOutputDeviceRouteController)init;
- (void)callMonitorDidUpdateOnCall:(id)call isOnCall:(BOOL)onCall;
- (void)routeDidChangeNotification;
- (void)updateOutputDevices;
@end

@implementation MRUSystemOutputDeviceRouteController

- (void)updateOutputDevices
{
  v59 = *MEMORY[0x1E69E9840];
  endpointObject = [(MPAVEndpointRoute *)self->_systemRoute endpointObject];
  outputDevices = [endpointObject outputDevices];

  v5 = MCLogCategoryDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v56 = objc_opt_class();
    v57 = 2114;
    v58 = outputDevices;
    _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ output devices changed: %{public}@", buf, 0x16u);
  }

  if (outputDevices)
  {
    if (-[MPAVEndpointRoute isSplitRoute](self->_systemRoute, "isSplitRoute") && [outputDevices count] == 2)
    {
      isSplitRoute = self->_isSplitRoute;
      if (!isSplitRoute)
      {
        self->_isSplitRoute = 1;
      }

      v6 = [objc_alloc(MEMORY[0x1E6970470]) initWithOutputDevices:outputDevices];
      systemOutputDeviceRoute = self->_systemOutputDeviceRoute;
      self->_systemOutputDeviceRoute = v6;

      [(MPAVOutputDeviceRoute *)self->_primaryOutputDeviceRoute logicalLeaderOutputDevice];
      v8 = MRAVOutputDeviceCopyUniqueIdentifier();
      firstObject = [outputDevices firstObject];
      v10 = MRAVOutputDeviceCopyUniqueIdentifier();

      v11 = objc_alloc(MEMORY[0x1E6970470]);
      firstObject2 = [outputDevices firstObject];
      v54 = firstObject2;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
      v14 = [v11 initWithOutputDevices:v13];
      primaryOutputDeviceRoute = self->_primaryOutputDeviceRoute;
      self->_primaryOutputDeviceRoute = v14;

      v16 = [v10 isEqualToString:v8];
      [(MPAVOutputDeviceRoute *)self->_secondaryOutputDeviceRoute logicalLeaderOutputDevice];
      v17 = MRAVOutputDeviceCopyUniqueIdentifier();
      lastObject = [outputDevices lastObject];
      v19 = MRAVOutputDeviceCopyUniqueIdentifier();

      v20 = objc_alloc(MEMORY[0x1E6970470]);
      lastObject2 = [outputDevices lastObject];
      v53 = lastObject2;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
      v23 = [v20 initWithOutputDevices:v22];
      secondaryOutputDeviceRoute = self->_secondaryOutputDeviceRoute;
      self->_secondaryOutputDeviceRoute = v23;

      LODWORD(v20) = [v19 isEqualToString:v17];
      if (v20 && v16 && isSplitRoute)
      {
        goto LABEL_23;
      }
    }

    else
    {
      self->_isSplitRoute = 0;
      outputDevices2 = [(MPAVOutputDeviceRoute *)self->_systemOutputDeviceRoute outputDevices];
      v26 = [outputDevices2 isEqualToArray:outputDevices];

      v27 = [objc_alloc(MEMORY[0x1E6970470]) initWithOutputDevices:outputDevices];
      v28 = self->_systemOutputDeviceRoute;
      self->_systemOutputDeviceRoute = v27;

      objc_storeStrong(&self->_primaryOutputDeviceRoute, self->_systemOutputDeviceRoute);
      v29 = self->_secondaryOutputDeviceRoute;
      self->_secondaryOutputDeviceRoute = 0;

      if (v26)
      {
LABEL_23:
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v36 = [(NSHashTable *)self->_observers copy];
        v37 = [v36 countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v44;
          do
          {
            for (i = 0; i != v38; ++i)
            {
              if (*v44 != v39)
              {
                objc_enumerationMutation(v36);
              }

              v41 = *(*(&v43 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                [v41 systemOutputDeviceRouteControllerDidUpdateOutputDeviceProperties:self];
              }
            }

            v38 = [v36 countByEnumeratingWithState:&v43 objects:v51 count:16];
          }

          while (v38);
        }

        goto LABEL_33;
      }
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v30 = [(NSHashTable *)self->_observers copy];
    v31 = [v30 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v48;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v48 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v47 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v35 systemOutputDeviceRouteControllerDidUpdateOutputDevices:self];
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v32);
    }

    goto LABEL_23;
  }

LABEL_33:
}

- (void)routeDidChangeNotification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MRUSystemOutputDeviceRouteController_routeDidChangeNotification__block_invoke;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (MRUOutputDeviceAsset)systemOutputDeviceAssetWithInCall
{
  outputDevice = [(MPAVOutputDeviceRoute *)self->_systemOutputDeviceRoute outputDevice];
  deviceType = [outputDevice deviceType];

  v5 = +[MRUCallMonitor sharedMonitor];
  isOnCall = [v5 isOnCall];

  if (isOnCall)
  {
    v7 = deviceType == 4;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    +[MRUOutputDeviceAsset inCallAsset];
  }

  else
  {
    [(MRUSystemOutputDeviceRouteController *)self systemOutputDeviceAsset];
  }
  v8 = ;

  return v8;
}

- (MRUOutputDeviceAsset)systemOutputDeviceAsset
{
  if ([(MPAVEndpointRoute *)self->_systemRoute isSplitRoute])
  {
    v3 = +[MRUOutputDeviceAsset sharingAsset];
  }

  else
  {
    v3 = [[MRUOutputDeviceAsset alloc] initWithOutputDeviceRoute:self->_systemOutputDeviceRoute];
  }

  return v3;
}

- (MRUOutputDeviceAsset)secondaryOutputDeviceAsset
{
  v2 = [[MRUOutputDeviceAsset alloc] initWithOutputDeviceRoute:self->_secondaryOutputDeviceRoute];

  return v2;
}

- (BOOL)isPrimaryOutputDeviceAlternateTransportTypeUSBC
{
  primaryOutputDeviceRoute = [(MRUSystemOutputDeviceRouteController *)self primaryOutputDeviceRoute];
  logicalLeaderOutputDevice = [primaryOutputDeviceRoute logicalLeaderOutputDevice];

  if ([logicalLeaderOutputDevice isAirpodsMaxDevice])
  {
    v4 = [logicalLeaderOutputDevice deviceType] == 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (MRUSystemOutputDeviceRouteController)sharedController
{
  if (sharedController___once != -1)
  {
    +[MRUSystemOutputDeviceRouteController sharedController];
  }

  v3 = sharedController___sharedController;

  return v3;
}

uint64_t __56__MRUSystemOutputDeviceRouteController_sharedController__block_invoke()
{
  sharedController___sharedController = objc_alloc_init(MRUSystemOutputDeviceRouteController);

  return MEMORY[0x1EEE66BB8]();
}

- (MRUSystemOutputDeviceRouteController)init
{
  v10.receiver = self;
  v10.super_class = MRUSystemOutputDeviceRouteController;
  v2 = [(MRUSystemOutputDeviceRouteController *)&v10 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    systemRoute = [MEMORY[0x1E6970490] systemRoute];
    systemRoute = v2->_systemRoute;
    v2->_systemRoute = systemRoute;

    v7 = +[MRUCallMonitor sharedMonitor];
    [v7 addObserver:v2];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_routeDidChangeNotification name:*MEMORY[0x1E696F860] object:v2->_systemRoute];

    [(MRUSystemOutputDeviceRouteController *)v2 updateOutputDevices];
  }

  return v2;
}

- (MRUOutputDeviceAsset)primaryOutputDeviceAsset
{
  v2 = [[MRUOutputDeviceAsset alloc] initWithOutputDeviceRoute:self->_primaryOutputDeviceRoute];

  return v2;
}

+ (id)outputContextDescription
{
  MRAVOutputContextGetSharedAudioPresentationContext();
  v2 = MRAVOutputContextCopyOutputDevices();
  firstObject = [v2 firstObject];
  [firstObject deviceType];
  v4 = MRAVOutputDeviceTypeCopyDescription();

  return v4;
}

- (void)callMonitorDidUpdateOnCall:(id)call isOnCall:(BOOL)onCall
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSHashTable *)self->_observers copy:call];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 systemOutputDeviceRouteControllerDidUpdateOutputDeviceProperties:self];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

@end