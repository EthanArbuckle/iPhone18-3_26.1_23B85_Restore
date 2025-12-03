@interface VirtualGaragePersister
- (NSString)selectedVehicleIdentifier;
- (VGVirtualGaragePersistingDelegate)delegate;
- (VirtualGaragePersister)init;
- (id)_processUpdatedSyncVehicles:(id)vehicles;
- (id)persistedVehicleForVehicle:(id)vehicle;
- (void)_addOrEditVehicle:(id)vehicle;
- (void)_removeSyncVehicle:(id)vehicle;
- (void)addVehicle:(id)vehicle;
- (void)loadVehiclesWithCompletion:(id)completion;
- (void)removeVehicle:(id)vehicle;
- (void)saveVehicle:(id)vehicle syncAcrossDevices:(BOOL)devices;
- (void)setSelectedVehicleIdentifier:(id)identifier;
- (void)storeDidChange:(id)change;
@end

@implementation VirtualGaragePersister

- (NSString)selectedVehicleIdentifier
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"VGVirtualGarageSelectedVehicleStorageKey"];

  return v3;
}

- (VirtualGaragePersister)init
{
  v12.receiver = self;
  v12.super_class = VirtualGaragePersister;
  v2 = [(VirtualGaragePersister *)&v12 init];
  if (v2)
  {
    v3 = [NSString stringWithFormat:@"com.apple.Navigation.persister.%@.%p", objc_opt_class(), v2];
    uTF8String = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(uTF8String, v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
    [v8 subscribe:v2];

    v13 = objc_opt_class();
    v9 = [NSArray arrayWithObjects:&v13 count:1];
    storeSubscriptionTypes = v2->storeSubscriptionTypes;
    v2->storeSubscriptionTypes = v9;
  }

  return v2;
}

- (void)loadVehiclesWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(MSVehicleRequest);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100021E38;
  v7[3] = &unk_100065E58;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [v5 fetchWithCompletionHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)addVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = vehicleCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Trying to add vehicle: %@", buf, 0xCu);
  }

  v6 = [vehicleCopy copy];
  objc_initWeak(buf, self);
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000221C8;
  v9[3] = &unk_100064F58;
  objc_copyWeak(&v11, buf);
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)removeVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = vehicleCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Trying to remove vehicle: %@", buf, 0xCu);
  }

  v6 = [vehicleCopy copy];
  objc_initWeak(buf, self);
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100022384;
  v9[3] = &unk_100064F80;
  v10 = v6;
  v8 = v6;
  objc_copyWeak(&v11, buf);
  dispatch_async(queue, v9);
  objc_destroyWeak(&v11);

  objc_destroyWeak(buf);
}

- (void)_removeSyncVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v5 = vehicleCopy;
  if (vehicleCopy)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002275C;
    block[3] = &unk_100065180;
    v10 = vehicleCopy;
    dispatch_async(queue, block);
    v7 = v10;
  }

  else
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      identifier = [0 identifier];
      *buf = 138412290;
      v12 = identifier;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Vehicle: %@ not found in MapsSync storage. Ignoring the call.", buf, 0xCu);
    }
  }
}

- (void)saveVehicle:(id)vehicle syncAcrossDevices:(BOOL)devices
{
  vehicleCopy = vehicle;
  v7 = GEOFindOrCreateLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (devices)
  {
    if (v8)
    {
      *buf = 138412290;
      v15 = vehicleCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Trying to save vehicle: %@", buf, 0xCu);
    }

    v9 = [vehicleCopy copy];
    objc_initWeak(buf, self);
    queue = self->_queue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100022B54;
    v11[3] = &unk_100064F58;
    objc_copyWeak(&v13, buf);
    vehicleCopy = v9;
    v12 = vehicleCopy;
    dispatch_async(queue, v11);

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v8)
    {
      *buf = 138412290;
      v15 = vehicleCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Persister won't save vehicle, as we don't want it to sync: %@", buf, 0xCu);
    }
  }
}

- (id)persistedVehicleForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_lastPersistedVehicles;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        identifier = [v9 identifier];
        identifier2 = [vehicleCopy identifier];
        v12 = [identifier isEqual:identifier2];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)setSelectedVehicleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setObject:identifierCopy forKey:@"VGVirtualGarageSelectedVehicleStorageKey"];
}

- (void)_addOrEditVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = vehicleCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Trying to add or edit vehicle: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  objc_initWeak(&location, vehicleCopy);
  identifier = [vehicleCopy identifier];
  v17 = identifier;
  v7 = [NSArray arrayWithObjects:&v17 count:1];
  v8 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:@"vehicleIdentifier == %@" argumentArray:v7];

  v9 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v8 sortDescriptors:0 range:0];
  v10 = objc_alloc_init(MSVehicleRequest);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100022FD8;
  v12[3] = &unk_100065F60;
  objc_copyWeak(&v14, buf);
  objc_copyWeak(&v15, &location);
  v11 = vehicleCopy;
  v13 = v11;
  [v10 fetchWithOptions:v9 completionHandler:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);

  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

- (id)_processUpdatedSyncVehicles:(id)vehicles
{
  vehiclesCopy = vehicles;
  v17 = objc_opt_new();
  v5 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = vehiclesCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        vehicleIdentifier = [v11 vehicleIdentifier];
        if (vehicleIdentifier && ([v5 containsObject:vehicleIdentifier] & 1) == 0)
        {
          [v5 addObject:vehicleIdentifier];
          v14 = [[VGVehicle alloc] initWithMapsSyncVehicle:v11];
          [v17 addObject:v14];
        }

        else
        {
          v13 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v23 = v11;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Discard duplicate vehicle: %@", buf, 0xCu);
          }

          [(VirtualGaragePersister *)self _removeSyncVehicle:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v8);
  }

  v15 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Loaded vehicles: %@", buf, 0xCu);
  }

  return v17;
}

- (void)storeDidChange:(id)change
{
  changeCopy = change;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100023EF0;
  v5[3] = &unk_100065E80;
  objc_copyWeak(&v6, &location);
  [(VirtualGaragePersister *)self loadVehiclesWithCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (VGVirtualGaragePersistingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end