@interface MRUVendorSpecificDeviceManager
- (BOOL)isGroupingAvailableFor:(id)for activatedIDs:(id)ds forProtocolID:(id)d;
- (BOOL)isGroupingAvailableForDevice:(id)device;
- (BOOL)resolverAddNativeRoute:(id)route forRouteUID:(id)d;
- (MRUVendorSpecificDeviceManager)initWithAppBundleID:(id)d serviceIdentifiers:(id)identifiers;
- (MRUVendorSpecificDeviceManagerDelegate)delegate;
- (NSArray)activatedDeviceIDs;
- (NSArray)activatingDeviceIDs;
- (NSArray)availableDeviceIDs;
- (NSArray)coalescedDevices;
- (NSArray)devices;
- (NSArray)invalidatingDeviceIDs;
- (NSArray)pendingDeviceIDs;
- (int64_t)latestStateForDevice:(id)device;
- (void)connectToDevice:(id)device;
- (void)dealloc;
- (void)disconnectAllDevices;
- (void)handleDiscoveryEvent:(id)event;
- (void)handleResolverEvent:(id)event;
- (void)resolverAddNativeRoutes:(id)routes;
- (void)resolverAddVendorSpecificDevice:(id)device;
- (void)resolverRemoveNativeRouteforRouteUID:(id)d;
- (void)resolverRemoveNativeRoutes:(id)routes;
- (void)resolverRemoveVendorSpecificRoute:(id)route;
- (void)resolverSetLastSelectedRoute:(id)route;
- (void)setDevice:(id)device picked:(BOOL)picked;
- (void)startDiscovery;
- (void)stopDiscovery;
- (void)updateLocalMapWith:(id)with deviceIsLost:(BOOL)lost;
@end

@implementation MRUVendorSpecificDeviceManager

- (MRUVendorSpecificDeviceManager)initWithAppBundleID:(id)d serviceIdentifiers:(id)identifiers
{
  dCopy = d;
  identifiersCopy = identifiers;
  v31.receiver = self;
  v31.super_class = MRUVendorSpecificDeviceManager;
  v9 = [(MRUVendorSpecificDeviceManager *)&v31 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appBundleID, d);
    objc_storeStrong(&v10->_serviceIdentifiers, identifiers);
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    deviceMap = v10->_deviceMap;
    v10->_deviceMap = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    coalescedDeviceMap = v10->_coalescedDeviceMap;
    v10->_coalescedDeviceMap = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    activatingDeviceMap = v10->_activatingDeviceMap;
    v10->_activatingDeviceMap = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    activatedDeviceMap = v10->_activatedDeviceMap;
    v10->_activatedDeviceMap = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    invalidatingDeviceMap = v10->_invalidatingDeviceMap;
    v10->_invalidatingDeviceMap = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    groupableDeviceIDs = v10->_groupableDeviceIDs;
    v10->_groupableDeviceIDs = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    mutableResolverManagedAirPlayRouteIDs = v10->_mutableResolverManagedAirPlayRouteIDs;
    v10->_mutableResolverManagedAirPlayRouteIDs = v23;

    v25 = objc_alloc_init(MEMORY[0x1E6999E50]);
    resolver = v10->_resolver;
    v10->_resolver = v25;

    [(DADeviceResolver *)v10->_resolver setBundleID:dCopy];
    objc_initWeak(&location, v10);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __73__MRUVendorSpecificDeviceManager_initWithAppBundleID_serviceIdentifiers___block_invoke;
    v28[3] = &unk_1E7664190;
    objc_copyWeak(&v29, &location);
    [(DADeviceResolver *)v10->_resolver setEventHandler:v28];
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __73__MRUVendorSpecificDeviceManager_initWithAppBundleID_serviceIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleResolverEvent:v3];
}

- (NSArray)devices
{
  if ([(NSMutableDictionary *)self->_deviceMap count])
  {
    allValues = [(NSMutableDictionary *)self->_deviceMap allValues];
  }

  else
  {
    allValues = MEMORY[0x1E695E0F0];
  }

  return allValues;
}

- (NSArray)coalescedDevices
{
  if ([(NSMutableDictionary *)self->_coalescedDeviceMap count])
  {
    allValues = [(NSMutableDictionary *)self->_coalescedDeviceMap allValues];
  }

  else
  {
    allValues = MEMORY[0x1E695E0F0];
  }

  return allValues;
}

- (NSArray)activatedDeviceIDs
{
  if ([(NSMutableDictionary *)self->_activatedDeviceMap count])
  {
    allValues = [(NSMutableDictionary *)self->_activatedDeviceMap allValues];
    v4 = [allValues msv_map:&__block_literal_global_10];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (NSArray)activatingDeviceIDs
{
  if ([(NSMutableDictionary *)self->_activatingDeviceMap count])
  {
    allValues = [(NSMutableDictionary *)self->_activatingDeviceMap allValues];
    v4 = [allValues msv_map:&__block_literal_global_5];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (NSArray)invalidatingDeviceIDs
{
  if ([(NSMutableDictionary *)self->_invalidatingDeviceMap count])
  {
    allValues = [(NSMutableDictionary *)self->_invalidatingDeviceMap allValues];
    v4 = [allValues msv_map:&__block_literal_global_7_0];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (NSArray)pendingDeviceIDs
{
  activatingDeviceIDs = [(MRUVendorSpecificDeviceManager *)self activatingDeviceIDs];
  invalidatingDeviceIDs = [(MRUVendorSpecificDeviceManager *)self invalidatingDeviceIDs];
  v5 = [activatingDeviceIDs arrayByAddingObjectsFromArray:invalidatingDeviceIDs];

  return v5;
}

- (NSArray)availableDeviceIDs
{
  deviceMap = [(MRUVendorSpecificDeviceManager *)self deviceMap];
  allValues = [deviceMap allValues];
  v4 = [allValues msv_map:&__block_literal_global_9];

  return v4;
}

- (int64_t)latestStateForDevice:(id)device
{
  deviceCopy = device;
  deviceMap = self->_deviceMap;
  identifier = [deviceCopy identifier];
  v7 = [(NSMutableDictionary *)deviceMap objectForKeyedSubscript:identifier];

  if (v7)
  {
    v8 = self->_deviceMap;
    identifier2 = [deviceCopy identifier];
    v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:identifier2];
    state = [v10 state];
  }

  else
  {
    state = 0;
  }

  return state;
}

- (BOOL)isGroupingAvailableForDevice:(id)device
{
  v23 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  if ([deviceCopy supportsGrouping])
  {
    groupableDeviceIDs = self->_groupableDeviceIDs;
    protocolType = [deviceCopy protocolType];
    identifier = [protocolType identifier];
    v8 = [(NSMutableDictionary *)groupableDeviceIDs objectForKeyedSubscript:identifier];

    if (v8 && [v8 count] >= 2)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [(NSMutableDictionary *)self->_deviceMap objectForKeyedSubscript:*(*(&v18 + 1) + 8 * i), v18];
            state = [v14 state];

            if (state == 20)
            {
              v16 = 1;
              v8 = v9;
              goto LABEL_16;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v16 = 0;
LABEL_16:
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)isGroupingAvailableFor:(id)for activatedIDs:(id)ds forProtocolID:(id)d
{
  v27 = *MEMORY[0x1E69E9840];
  forCopy = for;
  dsCopy = ds;
  dCopy = d;
  if ([dsCopy count])
  {
    v11 = [(NSMutableDictionary *)self->_groupableDeviceIDs objectForKeyedSubscript:dCopy];
    if (v11)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v12 = forCopy;
      v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        v20 = dCopy;
        v21 = forCopy;
        v14 = 0;
        v15 = 0;
        v16 = *v23;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v23 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v18 = *(*(&v22 + 1) + 8 * i);
            if ([v11 containsObject:{v18, v20, v21, v22}])
            {
              ++v14;
              if ([dsCopy containsObject:v18])
              {
                v15 = 1;
              }

              if (v14 >= 2u && v15)
              {
                LOBYTE(v13) = 1;
                goto LABEL_19;
              }
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }

LABEL_19:
        dCopy = v20;
        forCopy = v21;
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (void)startDiscovery
{
  if (!self->_discovery)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6999E60]);
    [v3 setBundleID:self->_appBundleID];
    [v3 setBluetoothServices:MEMORY[0x1E695E0F0]];
    v4 = [objc_alloc(MEMORY[0x1E6999E58]) initWithConfiguration:v3 error:0];
    discovery = self->_discovery;
    self->_discovery = v4;

    objc_initWeak(&location, self);
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __48__MRUVendorSpecificDeviceManager_startDiscovery__block_invoke;
    v9 = &unk_1E7664190;
    objc_copyWeak(&v10, &location);
    [(DADiscovery *)self->_discovery setEventHandler:&v6];
    [(DADiscovery *)self->_discovery activate:v6];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __48__MRUVendorSpecificDeviceManager_startDiscovery__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleDiscoveryEvent:v3];
}

- (void)updateLocalMapWith:(id)with deviceIsLost:(BOOL)lost
{
  lostCopy = lost;
  withCopy = with;
  deviceMap = self->_deviceMap;
  identifier = [withCopy identifier];
  if (lostCopy)
  {
    [(NSMutableDictionary *)deviceMap setObject:0 forKeyedSubscript:identifier];

    activatingDeviceMap = self->_activatingDeviceMap;
    identifier2 = [withCopy identifier];
    [(NSMutableDictionary *)activatingDeviceMap setObject:0 forKeyedSubscript:identifier2];

    activatedDeviceMap = self->_activatedDeviceMap;
    identifier3 = [withCopy identifier];
    [(NSMutableDictionary *)activatedDeviceMap setObject:0 forKeyedSubscript:identifier3];

    invalidatingDeviceMap = self->_invalidatingDeviceMap;
    identifier4 = [withCopy identifier];
    [(NSMutableDictionary *)invalidatingDeviceMap setObject:0 forKeyedSubscript:identifier4];

    groupableDeviceIDs = self->_groupableDeviceIDs;
    protocolType = [withCopy protocolType];
    identifier5 = [protocolType identifier];
    v17 = [(NSMutableDictionary *)groupableDeviceIDs objectForKeyedSubscript:identifier5];
    identifier6 = [withCopy identifier];
    [v17 removeObject:identifier6];

LABEL_22:
    v33 = withCopy;
    goto LABEL_23;
  }

  [(NSMutableDictionary *)deviceMap setObject:withCopy forKeyedSubscript:identifier];

  supportsGrouping = [withCopy supportsGrouping];
  v20 = self->_groupableDeviceIDs;
  protocolType2 = [withCopy protocolType];
  identifier7 = [protocolType2 identifier];
  v23 = [(NSMutableDictionary *)v20 objectForKeyedSubscript:identifier7];
  v24 = v23;
  if (supportsGrouping)
  {

    if (!v24)
    {
      v25 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v26 = self->_groupableDeviceIDs;
      protocolType3 = [withCopy protocolType];
      identifier8 = [protocolType3 identifier];
      [(NSMutableDictionary *)v26 setObject:v25 forKeyedSubscript:identifier8];
    }

    v29 = self->_groupableDeviceIDs;
    protocolType2 = [withCopy protocolType];
    identifier7 = [protocolType2 identifier];
    v24 = [(NSMutableDictionary *)v29 objectForKeyedSubscript:identifier7];
    identifier9 = [withCopy identifier];
    [v24 addObject:identifier9];
  }

  else
  {
    identifier9 = [withCopy identifier];
    [v24 removeObject:identifier9];
  }

  state = [withCopy state];
  if (state <= 19)
  {
    if (state)
    {
      v32 = state == 10;
      v33 = withCopy;
      if (!v32)
      {
        goto LABEL_23;
      }

      v34 = self->_activatingDeviceMap;
      identifier10 = [withCopy identifier];
      v36 = v34;
      v37 = withCopy;
    }

    else
    {
      v45 = self->_activatingDeviceMap;
      identifier10 = [withCopy identifier];
      v36 = v45;
      v37 = 0;
    }

    [(NSMutableDictionary *)v36 setObject:v37 forKeyedSubscript:identifier10];

    v46 = self->_activatedDeviceMap;
    identifier11 = [withCopy identifier];
    v48 = v46;
    v49 = 0;
    goto LABEL_20;
  }

  if (state == 20)
  {
    v50 = self->_activatingDeviceMap;
    identifier12 = [withCopy identifier];
    [(NSMutableDictionary *)v50 setObject:0 forKeyedSubscript:identifier12];

    v52 = self->_activatedDeviceMap;
    identifier11 = [withCopy identifier];
    v48 = v52;
    v49 = withCopy;
LABEL_20:
    [(NSMutableDictionary *)v48 setObject:v49 forKeyedSubscript:identifier11];

    v53 = self->_invalidatingDeviceMap;
    protocolType = [withCopy identifier];
    v43 = v53;
    v44 = 0;
    goto LABEL_21;
  }

  v32 = state == 30;
  v33 = withCopy;
  if (v32)
  {
    v38 = self->_activatingDeviceMap;
    identifier13 = [withCopy identifier];
    [(NSMutableDictionary *)v38 setObject:0 forKeyedSubscript:identifier13];

    v40 = self->_activatedDeviceMap;
    identifier14 = [withCopy identifier];
    [(NSMutableDictionary *)v40 setObject:0 forKeyedSubscript:identifier14];

    v42 = self->_invalidatingDeviceMap;
    protocolType = [withCopy identifier];
    v43 = v42;
    v44 = withCopy;
LABEL_21:
    [(NSMutableDictionary *)v43 setObject:v44 forKeyedSubscript:protocolType];
    goto LABEL_22;
  }

LABEL_23:
}

- (void)resolverSetLastSelectedRoute:(id)route
{
  routeCopy = route;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = routeCopy;
    v5 = objc_alloc_init(MEMORY[0x1E6999E68]);
    if ([v4 isAirPlayRoute])
    {
      underlyingNativeRoute = [v4 underlyingNativeRoute];
      routeUID = [underlyingNativeRoute routeUID];
      if (routeUID)
      {
        v8 = routeUID;
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-AirPlay", routeUID];
        [v5 setIdentifier:v9];

        [(DADeviceResolver *)self->_resolver selectEndpoint:v5];
      }

      goto LABEL_9;
    }

    device = [v4 device];
    underlyingNativeRoute = [device identifier];

    if (underlyingNativeRoute)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-DeviceAccess", underlyingNativeRoute];
      [v5 setIdentifier:v13];

      [(DADeviceResolver *)self->_resolver selectEndpoint:v5];
LABEL_9:
    }
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E6999E68]);
    routeUID2 = [routeCopy routeUID];
    if (!routeUID2)
    {
      goto LABEL_11;
    }

    v5 = routeUID2;
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-AirPlay", routeUID2];
    [v4 setIdentifier:v11];

    [(DADeviceResolver *)self->_resolver selectEndpoint:v4];
  }

LABEL_11:
}

- (void)resolverAddNativeRoutes:(id)routes
{
  v25 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [routesCopy countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v17;
    *&v6 = 138412546;
    v15 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(routesCopy);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        routeUID = [v10 routeUID];
        if (routeUID)
        {
          if ([(MRUVendorSpecificDeviceManager *)self resolverAddNativeRoute:v10 forRouteUID:routeUID])
          {
            [(NSMutableSet *)self->_mutableResolverManagedAirPlayRouteIDs addObject:routeUID];
          }

          else
          {
            v12 = MCLogCategoryDeviceAccess();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              routeName = [v10 routeName];
              dnsNames = [v10 dnsNames];
              *buf = v15;
              v21 = routeName;
              v22 = 2112;
              v23 = dnsNames;
              _os_log_impl(&dword_1A20FC000, v12, OS_LOG_TYPE_DEFAULT, "Resolver: not able to find a proper dnsName for route: %@, its DNS Names are: %@", buf, 0x16u);
            }

            [(NSMutableSet *)self->_mutableResolverManagedAirPlayRouteIDs removeObject:routeUID];
          }
        }
      }

      v7 = [routesCopy countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v7);
  }
}

- (void)resolverRemoveNativeRoutes:(id)routes
{
  v15 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [routesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(routesCopy);
        }

        routeUID = [*(*(&v10 + 1) + 8 * v8) routeUID];
        if (routeUID)
        {
          [(MRUVendorSpecificDeviceManager *)self resolverRemoveNativeRouteforRouteUID:routeUID];
          [(NSMutableSet *)self->_mutableResolverManagedAirPlayRouteIDs removeObject:routeUID];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [routesCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (BOOL)resolverAddNativeRoute:(id)route forRouteUID:(id)d
{
  v63 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  dCopy = d;
  v8 = routeCopy;
  [v8 dnsNames];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v9 = v57 = 0u;
  v41 = [v9 countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (v41)
  {
    selfCopy = self;
    v42 = *v55;
    v10 = 0x1E6999000uLL;
    v38 = v8;
    v40 = v9;
    while (2)
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v55 != v42)
        {
          objc_enumerationMutation(v9);
        }

        v12 = *(*(&v54 + 1) + 8 * i);
        if ([v12 containsString:@"_airplay._tcp"])
        {
          v13 = MCLogCategoryDeviceAccess();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v61 = v12;
            _os_log_impl(&dword_1A20FC000, v13, OS_LOG_TYPE_DEFAULT, "dnsName: %@", buf, 0xCu);
          }

          v14 = objc_alloc_init(*(v10 + 3688));
          [v14 setAirplayDeviceID:dCopy];
          v15 = [v12 componentsSeparatedByString:@"\x1E"];
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          obj = v15;
          v16 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
          if (v16)
          {
            v17 = v16;
            v44 = *v51;
            v39 = dCopy;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v51 != v44)
                {
                  objc_enumerationMutation(obj);
                }

                v19 = *(*(&v50 + 1) + 8 * j);
                if (([v19 containsString:@":"] & 1) != 0 || !objc_msgSend(v19, "containsString:", @".local."))
                {
                  v21 = MCLogCategoryDeviceAccess();
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v61 = v19;
                    _os_log_impl(&dword_1A20FC000, v21, OS_LOG_TYPE_DEFAULT, "AirPlay DNSName Parsing: Skip wrong string: %@", buf, 0xCu);
                  }
                }

                else
                {
                  v20 = [v19 componentsSeparatedByString:@"%"];
                  v46 = 0u;
                  v47 = 0u;
                  v48 = 0u;
                  v49 = 0u;
                  v21 = v20;
                  v22 = [v21 countByEnumeratingWithState:&v46 objects:v58 count:16];
                  if (v22)
                  {
                    v23 = v22;
                    v24 = *v47;
                    while (2)
                    {
                      for (k = 0; k != v23; ++k)
                      {
                        if (*v47 != v24)
                        {
                          objc_enumerationMutation(v21);
                        }

                        v26 = *(*(&v46 + 1) + 8 * k);
                        if ([v26 containsString:@".local."])
                        {
                          [v14 setBonjourFullName:v26];
                          [v14 setProtocolTypeString:@"com.apple.airplay"];
                          v8 = v38;
                          routeName = [v38 routeName];
                          [v14 setName:routeName];

                          dCopy = v39;
                          v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-AirPlay", v39];
                          [v14 setIdentifier:v31];

                          [(DADeviceResolver *)selfCopy->_resolver addEndpoint:v14];
                          v9 = v40;
                          goto LABEL_35;
                        }
                      }

                      v23 = [v21 countByEnumeratingWithState:&v46 objects:v58 count:16];
                      if (v23)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v10 = 0x1E6999000;
                }
              }

              v17 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
              dCopy = v39;
            }

            while (v17);
          }

          v9 = v40;
        }

        else
        {
          v27 = [v12 componentsSeparatedByString:@":"];
          v14 = [v27 objectAtIndexedSubscript:0];

          uTF8String = [v14 UTF8String];
          v45 = 0;
          if (inet_pton(2, uTF8String, &v45) >= 1)
          {
            v33 = MCLogCategoryDeviceAccess();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v61 = v14;
              _os_log_impl(&dword_1A20FC000, v33, OS_LOG_TYPE_DEFAULT, "found IPv4 address: %@", buf, 0xCu);
            }

            v34 = objc_alloc_init(*(v10 + 3688));
            [v34 setAirplayDeviceID:dCopy];
            [v34 setProtocolTypeString:@"com.apple.airplay"];
            v8 = v38;
            routeName2 = [v38 routeName];
            [v34 setName:routeName2];

            dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-AirPlay", dCopy];
            [v34 setIdentifier:dCopy];

            [v34 setIpv4String:v14];
            [(DADeviceResolver *)selfCopy->_resolver addEndpoint:v34];

LABEL_35:
            v29 = 1;
            goto LABEL_37;
          }
        }
      }

      v29 = 0;
      v8 = v38;
      v41 = [v9 countByEnumeratingWithState:&v54 objects:v62 count:16];
      if (v41)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v29 = 0;
  }

LABEL_37:

  return v29;
}

- (void)resolverRemoveNativeRouteforRouteUID:(id)d
{
  v4 = MEMORY[0x1E6999E68];
  dCopy = d;
  v7 = objc_alloc_init(v4);
  dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-AirPlay", dCopy];

  [v7 setIdentifier:dCopy];
  [(DADeviceResolver *)self->_resolver removeEndpoint:v7];
}

- (void)connectToDevice:(id)device
{
  v36 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v22 = deviceCopy;
  if ([deviceCopy supportsGrouping])
  {
    groupableDeviceIDs = self->_groupableDeviceIDs;
    protocolType = [deviceCopy protocolType];
    identifier = [protocolType identifier];
    v8 = [(NSMutableDictionary *)groupableDeviceIDs objectForKeyedSubscript:identifier];
  }

  else
  {
    v8 = 0;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  devices = [(MRUVendorSpecificDeviceManager *)self devices];
  v10 = [devices countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(devices);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        if ([v14 state] == 10 || objc_msgSend(v14, "state") == 20)
        {
          identifier2 = [v14 identifier];
          v16 = [v8 containsObject:identifier2];

          if ((v16 & 1) == 0)
          {
            v17 = MCLogCategoryDeviceAccess();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              [v14 state];
              v18 = DADeviceStateToString();
              *buf = 138412546;
              v32 = v18;
              v33 = 2112;
              v34 = v14;
              _os_log_impl(&dword_1A20FC000, v17, OS_LOG_TYPE_DEFAULT, "Automatically unselecting %@ vendor specific device: %@", buf, 0x16u);
            }

            [(DADiscovery *)self->_discovery setState:30 device:v14 completionHandler:&__block_literal_global_39];
          }
        }
      }

      v11 = [devices countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v11);
  }

  discovery = self->_discovery;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __50__MRUVendorSpecificDeviceManager_connectToDevice___block_invoke_40;
  v23[3] = &unk_1E76641F8;
  v24 = v22;
  v25 = v8;
  selfCopy = self;
  v20 = v8;
  v21 = v22;
  [(DADiscovery *)discovery getAuthorizedDevices:v23];
}

void __50__MRUVendorSpecificDeviceManager_connectToDevice___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = MCLogCategoryDeviceAccess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1A20FC000, v3, OS_LOG_TYPE_DEFAULT, "set state error: %@", &v4, 0xCu);
  }
}

void __50__MRUVendorSpecificDeviceManager_connectToDevice___block_invoke_40(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MCLogCategoryDeviceAccess();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v29 = [v3 count];
    v30 = 2112;
    v31 = v3;
    _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "%lu authorized devices to unselect first, %@", buf, 0x16u);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v24;
    *&v7 = 138412290;
    v22 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        if ([v11 state] == 25 && (objc_msgSend(v11, "identifier"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "identifier"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqualToString:", v13), v13, v12, (v14 & 1) == 0))
        {
          v16 = *(a1 + 40);
          v17 = [v11 identifier];
          LOBYTE(v16) = [v16 containsObject:v17];

          if ((v16 & 1) == 0)
          {
            v18 = MCLogCategoryDeviceAccess();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v22;
              v29 = v11;
              _os_log_impl(&dword_1A20FC000, v18, OS_LOG_TYPE_DEFAULT, "Automatically unselecting authorized vendor specific device: %@", buf, 0xCu);
            }

            [*(*(a1 + 48) + 32) setState:30 device:v11 completionHandler:&__block_literal_global_43];
          }
        }

        else
        {
          v15 = MCLogCategoryDeviceAccess();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v22;
            v29 = v11;
            _os_log_impl(&dword_1A20FC000, v15, OS_LOG_TYPE_DEFAULT, "Did not unselect authorized device: %@", buf, 0xCu);
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v19 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
      v8 = v19;
    }

    while (v19);
  }

  v20 = MCLogCategoryDeviceAccess();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 32);
    *buf = 138412290;
    v29 = v21;
    _os_log_impl(&dword_1A20FC000, v20, OS_LOG_TYPE_DEFAULT, "Connecting to picked device: %@", buf, 0xCu);
  }

  [*(*(a1 + 48) + 32) setState:10 device:*(a1 + 32) completionHandler:&__block_literal_global_46];
}

void __50__MRUVendorSpecificDeviceManager_connectToDevice___block_invoke_41(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = MCLogCategoryDeviceAccess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1A20FC000, v3, OS_LOG_TYPE_DEFAULT, "set state error: %@", &v4, 0xCu);
  }
}

void __50__MRUVendorSpecificDeviceManager_connectToDevice___block_invoke_44(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = MCLogCategoryDeviceAccess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1A20FC000, v3, OS_LOG_TYPE_DEFAULT, "set state error: %@", &v4, 0xCu);
  }
}

- (void)disconnectAllDevices
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = MCLogCategoryDeviceAccess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A20FC000, v3, OS_LOG_TYPE_DEFAULT, "Unselecting all vendor specific devices", buf, 2u);
  }

  discovery = self->_discovery;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__MRUVendorSpecificDeviceManager_disconnectAllDevices__block_invoke;
  v15[3] = &unk_1E7664220;
  v15[4] = self;
  [(DADiscovery *)discovery getAuthorizedDevices:v15];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  devices = [(MRUVendorSpecificDeviceManager *)self devices];
  v6 = [devices countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(devices);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([v10 state] == 10 || objc_msgSend(v10, "state") == 20)
        {
          [(DADiscovery *)self->_discovery setState:30 device:v10 completionHandler:&__block_literal_global_50];
        }
      }

      v7 = [devices countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v7);
  }
}

void __54__MRUVendorSpecificDeviceManager_disconnectAllDevices__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 state] == 25)
        {
          v12 = *(*(a1 + 32) + 32);
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __54__MRUVendorSpecificDeviceManager_disconnectAllDevices__block_invoke_2;
          v13[3] = &unk_1E7663C68;
          v14 = v6;
          [v12 setState:30 device:v11 completionHandler:v13];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

void __54__MRUVendorSpecificDeviceManager_disconnectAllDevices__block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = MCLogCategoryDeviceAccess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1A20FC000, v2, OS_LOG_TYPE_DEFAULT, "set state error: %@", &v4, 0xCu);
  }
}

void __54__MRUVendorSpecificDeviceManager_disconnectAllDevices__block_invoke_48(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = MCLogCategoryDeviceAccess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1A20FC000, v3, OS_LOG_TYPE_DEFAULT, "set state error: %@", &v4, 0xCu);
  }
}

- (void)stopDiscovery
{
  [(DADiscovery *)self->_discovery invalidate];
  [(NSMutableDictionary *)self->_deviceMap removeAllObjects];
  discovery = self->_discovery;
  self->_discovery = 0;
}

- (void)setDevice:(id)device picked:(BOOL)picked
{
  v16 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v6 = MCLogCategoryDeviceAccess();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    name = [deviceCopy name];
    v14 = 138412290;
    v15 = name;
    _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "setting picked for device: %@", &v14, 0xCu);
  }

  deviceMap = self->_deviceMap;
  identifier = [deviceCopy identifier];
  v10 = [(NSMutableDictionary *)deviceMap objectForKeyedSubscript:identifier];

  if (!v10)
  {
    v12 = MCLogCategoryDeviceAccess();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_1A20FC000, v12, OS_LOG_TYPE_DEFAULT, "Picked device from UI is not found in the device map, some discrepancy happened", &v14, 2u);
    }

    goto LABEL_15;
  }

  state = [v10 state];
  if (state > 19)
  {
    if (state == 20)
    {
      [(DADiscovery *)self->_discovery setState:30 device:v10 completionHandler:&__block_literal_global_52];
      goto LABEL_18;
    }

    if (state != 25)
    {
      if (state != 30)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

LABEL_16:
    [(MRUVendorSpecificDeviceManager *)self connectToDevice:v10];
    goto LABEL_18;
  }

  if (!state)
  {
    goto LABEL_16;
  }

  if (state == 10)
  {
LABEL_13:
    v12 = MCLogCategoryDeviceAccess();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      [v10 state];
      v13 = DADeviceStateToString();
      v14 = 138412290;
      v15 = v13;
      _os_log_impl(&dword_1A20FC000, v12, OS_LOG_TYPE_DEFAULT, "Not sending the pick event again because device is already in a pending state: %@", &v14, 0xCu);
    }

LABEL_15:
  }

LABEL_18:
}

void __51__MRUVendorSpecificDeviceManager_setDevice_picked___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = MCLogCategoryDeviceAccess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_1A20FC000, v3, OS_LOG_TYPE_DEFAULT, "set state error: %@", &v4, 0xCu);
  }
}

- (void)handleResolverEvent:(id)event
{
  v41 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  eventType = [eventCopy eventType];
  switch(eventType)
  {
    case '*':
      device = [eventCopy device];
      v26 = MCLogCategoryDeviceAccess();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        endpoints = [device endpoints];
        *buf = 138412546;
        v38 = device;
        v39 = 2048;
        v40 = [endpoints count];
        _os_log_impl(&dword_1A20FC000, v26, OS_LOG_TYPE_DEFAULT, "Resolver - device changed %@, %lu endpoints", buf, 0x16u);
      }

      goto LABEL_24;
    case ')':
      device = [eventCopy device];
      if (device)
      {
        v22 = MCLogCategoryDeviceAccess();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          endpoints2 = [device endpoints];
          *buf = 138412546;
          v38 = device;
          v39 = 2048;
          v40 = [endpoints2 count];
          _os_log_impl(&dword_1A20FC000, v22, OS_LOG_TYPE_DEFAULT, "Resolver - device lost %@, %lu endpoints", buf, 0x16u);
        }

        coalescedDeviceMap = self->_coalescedDeviceMap;
        identifier = [device identifier];
        [(NSMutableDictionary *)coalescedDeviceMap setObject:0 forKeyedSubscript:identifier];

        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __54__MRUVendorSpecificDeviceManager_handleResolverEvent___block_invoke_56;
        v30[3] = &unk_1E7663898;
        v30[4] = self;
        dispatch_async(MEMORY[0x1E69E96A0], v30);
      }

      goto LABEL_24;
    case '(':
      device2 = [eventCopy device];
      device = device2;
      if (device2)
      {
        selfCopy = self;
        v8 = self->_coalescedDeviceMap;
        identifier2 = [device2 identifier];
        [(NSMutableDictionary *)v8 setObject:device forKeyedSubscript:identifier2];

        v10 = MCLogCategoryDeviceAccess();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          endpoints3 = [device endpoints];
          *buf = 138412546;
          v38 = device;
          v39 = 2048;
          v40 = [endpoints3 count];
          _os_log_impl(&dword_1A20FC000, v10, OS_LOG_TYPE_DEFAULT, "Resolver - device found %@, %lu endpoints", buf, 0x16u);
        }

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v29 = device;
        endpoints4 = [device endpoints];
        allValues = [endpoints4 allValues];

        v14 = [allValues countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v33;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v33 != v16)
              {
                objc_enumerationMutation(allValues);
              }

              v18 = *(*(&v32 + 1) + 8 * i);
              v19 = MCLogCategoryDeviceAccess();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                name = [v18 name];
                identifier3 = [v18 identifier];
                *buf = 138412546;
                v38 = name;
                v39 = 2112;
                v40 = identifier3;
                _os_log_impl(&dword_1A20FC000, v19, OS_LOG_TYPE_DEFAULT, "Resolver - endpoint: %@, %@", buf, 0x16u);
              }
            }

            v15 = [allValues countByEnumeratingWithState:&v32 objects:v36 count:16];
          }

          while (v15);
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __54__MRUVendorSpecificDeviceManager_handleResolverEvent___block_invoke;
        block[3] = &unk_1E7663898;
        block[4] = selfCopy;
        dispatch_async(MEMORY[0x1E69E96A0], block);
        device = v29;
      }

LABEL_24:

      break;
  }
}

void __54__MRUVendorSpecificDeviceManager_handleResolverEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained vendorSpecificManagerDeviceListDidChange:*(a1 + 32)];
  }
}

void __54__MRUVendorSpecificDeviceManager_handleResolverEvent___block_invoke_56(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained vendorSpecificManagerDeviceListDidChange:*(a1 + 32)];
  }
}

- (void)handleDiscoveryEvent:(id)event
{
  v69 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  eventType = [eventCopy eventType];
  if (eventType <= 40)
  {
    if (eventType == 10)
    {
      v43 = MCLogCategoryDeviceAccess();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        discoveredDevices = [(DADiscovery *)self->_discovery discoveredDevices];
        *buf = 138412290;
        v66 = discoveredDevices;
        _os_log_impl(&dword_1A20FC000, v43, OS_LOG_TYPE_DEFAULT, "discovered devices cache: %@", buf, 0xCu);
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      discoveredDevices2 = [(DADiscovery *)self->_discovery discoveredDevices];
      v45 = [discoveredDevices2 countByEnumeratingWithState:&v55 objects:v64 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v56;
        do
        {
          for (i = 0; i != v46; ++i)
          {
            if (*v56 != v47)
            {
              objc_enumerationMutation(discoveredDevices2);
            }

            v49 = *(*(&v55 + 1) + 8 * i);
            [(MRUVendorSpecificDeviceManager *)self updateLocalMapWith:v49 deviceIsLost:0];
            [(MRUVendorSpecificDeviceManager *)self resolverAddVendorSpecificDevice:v49];
          }

          v46 = [discoveredDevices2 countByEnumeratingWithState:&v55 objects:v64 count:16];
        }

        while (v46);
      }
    }

    else
    {
      if (eventType != 40)
      {
        goto LABEL_50;
      }

      device = [eventCopy device];
      if (!device)
      {
        goto LABEL_50;
      }

      discoveredDevices2 = device;
      v14 = MCLogCategoryDeviceAccess();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        name = [discoveredDevices2 name];
        [discoveredDevices2 state];
        v16 = DADeviceStateToString();
        *buf = 138412546;
        v66 = name;
        v67 = 2112;
        v68 = v16;
        _os_log_impl(&dword_1A20FC000, v14, OS_LOG_TYPE_DEFAULT, "Discovery - got device found: %@, %@", buf, 0x16u);
      }

      [(MRUVendorSpecificDeviceManager *)self updateLocalMapWith:discoveredDevices2 deviceIsLost:0];
      [(MRUVendorSpecificDeviceManager *)self resolverAddVendorSpecificDevice:discoveredDevices2];
    }

LABEL_46:

    goto LABEL_50;
  }

  switch(eventType)
  {
    case ')':
      device2 = [eventCopy device];
      if (!device2)
      {
        break;
      }

      discoveredDevices2 = device2;
      v18 = MCLogCategoryDeviceAccess();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        name2 = [discoveredDevices2 name];
        [discoveredDevices2 state];
        v20 = DADeviceStateToString();
        *buf = 138412546;
        v66 = name2;
        v67 = 2112;
        v68 = v20;
        _os_log_impl(&dword_1A20FC000, v18, OS_LOG_TYPE_DEFAULT, "Discovery - got device lost: %@, %@", buf, 0x16u);
      }

      [(MRUVendorSpecificDeviceManager *)self updateLocalMapWith:discoveredDevices2 deviceIsLost:1];
      [(MRUVendorSpecificDeviceManager *)self resolverRemoveVendorSpecificRoute:discoveredDevices2];
      goto LABEL_46;
    case '*':
      device3 = [eventCopy device];
      if (!device3)
      {
        break;
      }

      v22 = device3;
      v23 = MCLogCategoryDeviceAccess();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        name3 = [v22 name];
        [v22 state];
        v25 = DADeviceStateToString();
        *buf = 138412546;
        v66 = name3;
        v67 = 2112;
        v68 = v25;
        _os_log_impl(&dword_1A20FC000, v23, OS_LOG_TYPE_DEFAULT, "Discovery - got device change: %@, %@", buf, 0x16u);
      }

      deviceMap = self->_deviceMap;
      identifier = [v22 identifier];
      v28 = [(NSMutableDictionary *)deviceMap objectForKeyedSubscript:identifier];

      if (v28)
      {
        v29 = self->_deviceMap;
        identifier2 = [v22 identifier];
        v31 = [(NSMutableDictionary *)v29 objectForKeyedSubscript:identifier2];
        mediaPlaybackState = [v31 mediaPlaybackState];

        if (mediaPlaybackState != [v22 mediaPlaybackState])
        {
          goto LABEL_48;
        }

        v33 = self->_deviceMap;
        identifier3 = [v22 identifier];
        v35 = [(NSMutableDictionary *)v33 objectForKeyedSubscript:identifier3];
        nowPlayingSubtitle = [v35 nowPlayingSubtitle];

        nowPlayingSubtitle2 = [v22 nowPlayingSubtitle];
        v38 = nowPlayingSubtitle2;
        v39 = nowPlayingSubtitle != 0;
        v40 = nowPlayingSubtitle == 0;
        if (nowPlayingSubtitle2)
        {
          v39 = 0;
        }

        else
        {
          v40 = 0;
        }

        v41 = v40 || v39;
        if (nowPlayingSubtitle && nowPlayingSubtitle2)
        {
          v42 = v41 | [nowPlayingSubtitle isEqualToString:nowPlayingSubtitle2] ^ 1;

          if ((v42 & 1) == 0)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        }

        if (v41)
        {
LABEL_48:
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __55__MRUVendorSpecificDeviceManager_handleDiscoveryEvent___block_invoke;
          block[3] = &unk_1E76639D0;
          block[4] = self;
          v62 = v22;
          dispatch_async(MEMORY[0x1E69E96A0], block);
        }
      }

LABEL_49:
      [(MRUVendorSpecificDeviceManager *)self updateLocalMapWith:v22 deviceIsLost:0];
      [(MRUVendorSpecificDeviceManager *)self resolverAddVendorSpecificDevice:v22];
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __55__MRUVendorSpecificDeviceManager_handleDiscoveryEvent___block_invoke_2;
      v59[3] = &unk_1E76639D0;
      v59[4] = self;
      v60 = v22;
      v50 = v22;
      dispatch_async(MEMORY[0x1E69E96A0], v59);

      break;
    case '<':
      v6 = MCLogCategoryDeviceAccess();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "XPC to dataaccessd interrupted, clearing devices", buf, 2u);
      }

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      devices = [(MRUVendorSpecificDeviceManager *)self devices];
      v8 = [devices countByEnumeratingWithState:&v51 objects:v63 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v52;
        do
        {
          for (j = 0; j != v9; ++j)
          {
            if (*v52 != v10)
            {
              objc_enumerationMutation(devices);
            }

            [(MRUVendorSpecificDeviceManager *)self resolverRemoveVendorSpecificRoute:*(*(&v51 + 1) + 8 * j)];
          }

          v9 = [devices countByEnumeratingWithState:&v51 objects:v63 count:16];
        }

        while (v9);
      }

      [(NSMutableDictionary *)self->_deviceMap removeAllObjects];
      [(NSMutableDictionary *)self->_activatingDeviceMap removeAllObjects];
      [(NSMutableDictionary *)self->_activatedDeviceMap removeAllObjects];
      [(NSMutableDictionary *)self->_invalidatingDeviceMap removeAllObjects];
      break;
  }

LABEL_50:
}

void __55__MRUVendorSpecificDeviceManager_handleDiscoveryEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained vendorSpecificManager:*(a1 + 32) deviceNowPlayingInfoDidChange:*(a1 + 40)];
  }
}

void __55__MRUVendorSpecificDeviceManager_handleDiscoveryEvent___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained vendorSpecificManager:*(a1 + 32) deviceStateDidChange:*(a1 + 40)];
  }
}

- (void)dealloc
{
  [(DADiscovery *)self->_discovery invalidate];
  [(DADeviceResolver *)self->_resolver invalidate];
  v3.receiver = self;
  v3.super_class = MRUVendorSpecificDeviceManager;
  [(MRUVendorSpecificDeviceManager *)&v3 dealloc];
}

- (MRUVendorSpecificDeviceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)resolverAddVendorSpecificDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    v5 = objc_alloc_init(MEMORY[0x1E6999E68]);
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-DeviceAccess", identifier];
    [v5 setIdentifier:v6];

    name = [deviceCopy name];
    [v5 setName:name];

    protocolType = [deviceCopy protocolType];
    identifier2 = [protocolType identifier];
    [v5 setProtocolTypeString:identifier2];

    [v5 setUnderlyingDADevice:deviceCopy];
    networkEndpoint = [deviceCopy networkEndpoint];
    v11 = [networkEndpoint description];
    [v5 setBonjourFullName:v11];

    [(DADeviceResolver *)self->_resolver addEndpoint:v5];
  }
}

- (void)resolverRemoveVendorSpecificRoute:(id)route
{
  identifier = [route identifier];
  if (identifier)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6999E68]);
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-DeviceAccess", identifier];
    [v4 setIdentifier:v5];

    [(DADeviceResolver *)self->_resolver removeEndpoint:v4];
  }
}

@end