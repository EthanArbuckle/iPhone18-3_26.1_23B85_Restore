@interface IDSDServiceController
+ (BOOL)shouldLoadService:(id)service;
+ (IDSDServiceController)sharedInstance;
- (BOOL)_anyDeviceUsingSubService:(id)service superService:(id)superService;
- (IDSDServiceController)init;
- (NSArray)allFamilyServices;
- (NSArray)allPinningEnforcedServices;
- (NSArray)allTinkerServices;
- (NSDictionary)serviceNameToControlCategoryMap;
- (id)_combinedServicesForAllDevices;
- (id)_currentSubServicesForDevice:(id)device superService:(id)service;
- (id)adHocServicesForIdentifier:(id)identifier;
- (id)allServicesWithAdHocServiceType:(unsigned int)type;
- (id)linkedServicesForService:(id)service;
- (id)primaryServiceForAdhocServiceType:(unsigned int)type;
- (id)serviceWithIdentifier:(id)identifier;
- (id)serviceWithName:(id)name;
- (id)serviceWithPushTopic:(id)topic;
- (void)_loadService:(id)service;
- (void)_loadServices;
- (void)_loadSubServiceWithName:(id)name usingService:(id)service completionBlock:(id)block;
- (void)_loadSubServices;
- (void)_saveSubServices;
- (void)_unloadServiceWithName:(id)name;
- (void)_updateSubServicesForDevice:(id)device superService:(id)service newSubservices:(id)subservices;
- (void)updateSubServices:(id)services forService:(id)service deviceUniqueID:(id)d;
@end

@implementation IDSDServiceController

+ (IDSDServiceController)sharedInstance
{
  if (qword_100CBF4B8 != -1)
  {
    sub_100017070();
  }

  v3 = qword_100CBF4C0;

  return v3;
}

- (IDSDServiceController)init
{
  v14.receiver = self;
  v14.super_class = IDSDServiceController;
  v2 = [(IDSDServiceController *)&v14 init];
  if (v2)
  {
    v3 = +[NSMapTable strongToStrongObjectsMapTable];
    services = v2->_services;
    v2->_services = v3;

    v5 = +[NSMapTable strongToStrongObjectsMapTable];
    servicesToTopicMap = v2->_servicesToTopicMap;
    v2->_servicesToTopicMap = v5;

    v7 = +[NSMapTable strongToStrongObjectsMapTable];
    servicesToNameMap = v2->_servicesToNameMap;
    v2->_servicesToNameMap = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    deviceIDToSubServicesMap = v2->_deviceIDToSubServicesMap;
    v2->_deviceIDToSubServicesMap = v9;

    v11 = objc_alloc_init(NSMutableDictionary);
    serviceNameToControlCategoryMap = v2->_serviceNameToControlCategoryMap;
    v2->_serviceNameToControlCategoryMap = v11;

    [(IDSDServiceController *)v2 _loadServices];
    [(IDSDServiceController *)v2 _loadSubServices];
  }

  return v2;
}

+ (BOOL)shouldLoadService:(id)service
{
  serviceCopy = service;
  v4 = +[FTDeviceSupport sharedInstance];
  if ([v4 lowRAMDevice])
  {
    disableOnLowRAMDevice = [serviceCopy disableOnLowRAMDevice];

    if ((disableOnLowRAMDevice & 1) == 0)
    {
LABEL_8:
      if ([serviceCopy prototypingOnly])
      {
        v9 = +[IMLockdownManager sharedInstance];
        if (![v9 isInternalInstall])
        {
          v8 = 0;
LABEL_17:

          goto LABEL_18;
        }

        supportsKeySharing = _os_feature_enabled_impl();
      }

      else
      {
        identifier = [serviceCopy identifier];
        v12 = [identifier isEqualToString:@"com.apple.private.alloy.keysharing"];

        if (v12)
        {
          v9 = +[FTDeviceSupport sharedInstance];
          supportsKeySharing = [v9 supportsKeySharing];
        }

        else
        {
          identifier2 = [serviceCopy identifier];
          v14 = [identifier2 isEqualToString:@"com.apple.private.alloy.harmony.pushprovisioning"];

          if (!v14)
          {
            v8 = 1;
            goto LABEL_18;
          }

          v9 = +[FTDeviceSupport sharedInstance];
          supportsKeySharing = [v9 supportsHarmony];
        }
      }

      v8 = supportsKeySharing;
      goto LABEL_17;
    }
  }

  else
  {
    v6 = +[FTDeviceSupport sharedInstance];
    if ([v6 deviceType] != 4)
    {

      goto LABEL_8;
    }

    disableOnLowRAMDevice2 = [serviceCopy disableOnLowRAMDevice];

    if ((disableOnLowRAMDevice2 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v8 = 0;
LABEL_18:

  return v8;
}

- (void)_loadServices
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100931058();
  }

  v25 = objc_alloc_init(NSMutableArray);
  context = objc_autoreleasePoolPush();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  serviceLoader = [(IDSDServiceController *)self serviceLoader];
  loadServiceDictionaries = [serviceLoader loadServiceDictionaries];

  v6 = [loadServiceDictionaries countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      v9 = 0;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(loadServiceDictionaries);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        if ([v10 count])
        {
          v12 = [[IDSServiceProperties alloc] initWithServiceDictionary:v10];
          identifier = [v12 identifier];
          v14 = [identifier length];

          if (v14)
          {
            if ([IDSDServiceController shouldLoadService:v12])
            {
              [v25 addObject:v12];
              goto LABEL_19;
            }

            v15 = +[IMRGLog warning];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v38 = v10;
              _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Not loading service %@", buf, 0xCu);
            }
          }

          else
          {
            v15 = +[IMRGLog warning];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v38 = v10;
              _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "Not loading service, invalid dictionary %@ missing identifier", buf, 0xCu);
            }
          }
        }

        else
        {
          v12 = +[IMRGLog warning];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            sub_10093108C(&v30, v31, v12);
          }
        }

LABEL_19:

        objc_autoreleasePoolPop(v11);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [loadServiceDictionaries countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v7);
  }

  objc_autoreleasePoolPop(context);
  v16 = objc_autoreleasePoolPush();
  v17 = [[NSArray alloc] initWithArray:v25 copyItems:1];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(IDSDServiceController *)self _loadService:*(*(&v26 + 1) + 8 * i)];
      }

      v20 = [v18 countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v20);
  }

  objc_autoreleasePoolPop(v16);
  v23 = +[IMRGLog registration];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    sub_1009310CC();
  }
}

- (void)_loadService:(id)service
{
  serviceCopy = service;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100931100();
  }

  services = self->_services;
  identifier = [serviceCopy identifier];
  [(NSMapTable *)services setObject:serviceCopy forKey:identifier];

  identifier2 = [serviceCopy identifier];
  serviceName = [serviceCopy serviceName];
  v10 = [identifier2 isEqualToString:serviceName];

  if ((v10 & 1) == 0)
  {
    servicesToNameMap = self->_servicesToNameMap;
    serviceName2 = [serviceCopy serviceName];
    [(NSMapTable *)servicesToNameMap setObject:serviceCopy forKey:serviceName2];
  }

  identifier3 = [serviceCopy identifier];
  pushTopic = [serviceCopy pushTopic];
  v15 = [identifier3 isEqualToString:pushTopic];

  if ((v15 & 1) == 0)
  {
    servicesToTopicMap = self->_servicesToTopicMap;
    pushTopic2 = [serviceCopy pushTopic];
    [(NSMapTable *)servicesToTopicMap setObject:serviceCopy forKey:pushTopic2];
  }

  if ([serviceCopy controlCategory])
  {
    serviceNameToControlCategoryMap = self->_serviceNameToControlCategoryMap;
    v19 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [serviceCopy controlCategory]);
    v20 = [(NSMutableDictionary *)serviceNameToControlCategoryMap objectForKey:v19];

    if (!v20)
    {
      v20 = objc_alloc_init(NSMutableArray);
      v21 = self->_serviceNameToControlCategoryMap;
      v22 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [serviceCopy controlCategory]);
      [(NSMutableDictionary *)v21 setObject:v20 forKey:v22];
    }

    identifier4 = [serviceCopy identifier];
    [v20 addObject:identifier4];
  }
}

- (void)_unloadServiceWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy length])
  {
    [(NSMapTable *)self->_services removeObjectForKey:nameCopy];
    [(NSMapTable *)self->_servicesToNameMap removeObjectForKey:nameCopy];
    [(NSMapTable *)self->_servicesToTopicMap removeObjectForKey:nameCopy];
  }

  else
  {
    v5 = +[IMRGLog warning];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_100931174();
    }
  }
}

- (void)_loadSubServiceWithName:(id)name usingService:(id)service completionBlock:(id)block
{
  nameCopy = name;
  serviceCopy = service;
  blockCopy = block;
  v11 = [(IDSDServiceController *)self serviceWithPushTopic:serviceCopy];
  if (v11)
  {
    v12 = [(IDSDServiceController *)self serviceWithPushTopic:nameCopy];

    if (!v12)
    {
      v13 = [v11 copy];
      [v13 setServiceName:nameCopy];
      [v13 setDisplayName:nameCopy];
      [v13 setIdentifier:nameCopy];
      [v13 setPushTopic:nameCopy];
      [v13 setSuperService:serviceCopy];
      [(IDSDServiceController *)self _loadService:v13];
      v14 = +[IMRGLog registration];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = nameCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "   %@", &v16, 0xCu);
      }
    }

    if (blockCopy)
    {
      blockCopy[2](blockCopy, v12 == 0);
    }
  }

  else
  {
    v15 = +[IMRGLog warning];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1009311DC();
    }
  }
}

- (void)updateSubServices:(id)services forService:(id)service deviceUniqueID:(id)d
{
  servicesCopy = services;
  serviceCopy = service;
  dCopy = d;
  v50 = [(IDSDServiceController *)self serviceWithPushTopic:serviceCopy];
  if (v50)
  {
    v9 = +[IDSPairingManager sharedInstance];
    allTraditionallyPairedUniqueIDs = [v9 allTraditionallyPairedUniqueIDs];

    if (([allTraditionallyPairedUniqueIDs containsObject:dCopy]& 1) != 0)
    {
      v47 = [(IDSDServiceController *)self _currentSubServicesForDevice:dCopy superService:serviceCopy];
      v10 = +[IMRGLog sub_services];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = dCopy;
        *&buf[12] = 2112;
        *&buf[14] = v47;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Current sub-services for device %@: %@", buf, 0x16u);
      }

      if (v47 && [v47 isEqualToArray:servicesCopy])
      {
        v11 = +[IMRGLog sub_services];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "New set of subservices are the same, ignoring update", buf, 2u);
        }
      }

      else
      {
        [(IDSDServiceController *)self _updateSubServicesForDevice:dCopy superService:serviceCopy newSubservices:servicesCopy];
        v16 = +[IMRGLog sub_services];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          deviceIDToSubServicesMap = self->_deviceIDToSubServicesMap;
          *buf = 138412290;
          *&buf[4] = deviceIDToSubServicesMap;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Updated sub-services map %@", buf, 0xCu);
        }

        [(IDSDServiceController *)self _saveSubServices];
        v18 = [[NSMutableSet alloc] initWithArray:v47];
        v19 = [NSSet setWithArray:servicesCopy];
        [v18 minusSet:v19];

        allObjects = [v18 allObjects];
        _copyForEnumerating = [allObjects _copyForEnumerating];

        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v22 = _copyForEnumerating;
        v23 = [v22 countByEnumeratingWithState:&v66 objects:v77 count:16];
        if (v23)
        {
          v24 = *v67;
          do
          {
            for (i = 0; i != v23; i = i + 1)
            {
              if (*v67 != v24)
              {
                objc_enumerationMutation(v22);
              }

              v26 = *(*(&v66 + 1) + 8 * i);
              if ([(IDSDServiceController *)self _anyDeviceUsingSubService:v26 superService:serviceCopy])
              {
                v27 = +[IMRGLog sub_services];
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *&buf[4] = v26;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Told to remove %@ but another device still needs it", buf, 0xCu);
                }

                [v18 removeObject:v26];
              }
            }

            v23 = [v22 countByEnumeratingWithState:&v66 objects:v77 count:16];
          }

          while (v23);
        }

        if ([v18 count])
        {
          v28 = [[NSDictionary alloc] initWithObjectsAndKeys:{v18, @"RemovedServices", 0}];
          v29 = +[IMRGLog sub_services];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v28;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Posting notification with userInfo %@", buf, 0xCu);
          }

          v30 = +[NSNotificationCenter defaultCenter];
          [v30 postNotificationName:@"_kIDSDServiceControllerServicesRemovedNotification" object:self userInfo:v28];
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v76 = 0;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        obj = v18;
        v31 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
        if (v31)
        {
          v32 = *v63;
          do
          {
            for (j = 0; j != v31; j = j + 1)
            {
              if (*v63 != v32)
              {
                objc_enumerationMutation(obj);
              }

              v34 = *(*(&v62 + 1) + 8 * j);
              v35 = +[IMRGLog sub_services];
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                *v72 = 138412290;
                v73 = v34;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Unloading   %@", v72, 0xCu);
              }

              [(IDSDServiceController *)self _unloadServiceWithName:v34];
            }

            v31 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
          }

          while (v31);
        }

        v36 = +[IMRGLog sub_services];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *v72 = 0;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Loaded sub-services:", v72, 2u);
        }

        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v37 = servicesCopy;
        v38 = [v37 countByEnumeratingWithState:&v58 objects:v71 count:16];
        if (v38)
        {
          v39 = *v59;
          do
          {
            for (k = 0; k != v38; k = k + 1)
            {
              if (*v59 != v39)
              {
                objc_enumerationMutation(v37);
              }

              v41 = *(*(&v58 + 1) + 8 * k);
              v57[0] = _NSConcreteStackBlock;
              v57[1] = 3221225472;
              v57[2] = sub_1006B10DC;
              v57[3] = &unk_100BE4348;
              v57[4] = buf;
              [(IDSDServiceController *)self _loadSubServiceWithName:v41 usingService:serviceCopy completionBlock:v57];
            }

            v38 = [v37 countByEnumeratingWithState:&v58 objects:v71 count:16];
          }

          while (v38);
        }

        if ([obj count]|| *(*&buf[8] + 24) == 1)
        {
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v42 = NSAllMapTableValues(self->_services);
          v43 = [v42 countByEnumeratingWithState:&v53 objects:v70 count:16];
          if (v43)
          {
            v44 = *v54;
            do
            {
              for (m = 0; m != v43; m = m + 1)
              {
                if (*v54 != v44)
                {
                  objc_enumerationMutation(v42);
                }

                [*(*(&v53 + 1) + 8 * m) reloadAdHocServices];
              }

              v43 = [v42 countByEnumeratingWithState:&v53 objects:v70 count:16];
            }

            while (v43);
          }

          if (*(*&buf[8] + 24))
          {
            v46 = +[NSNotificationCenter defaultCenter];
            [v46 postNotificationName:@"_kIDSDServiceControllerServicesChangedNotification" object:self userInfo:0];
          }
        }

        _Block_object_dispose(buf, 8);
        v11 = obj;
      }

      v15 = v47;
    }

    else
    {
      v14 = +[IMRGLog warning];
      v15 = v14;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_100931260();
        v15 = v14;
      }
    }

    v13 = allTraditionallyPairedUniqueIDs;
  }

  else
  {
    v12 = +[IMRGLog warning];
    v13 = v12;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1009312C8();
      v13 = v12;
    }
  }
}

- (void)_saveSubServices
{
  if ([(NSMutableDictionary *)self->_deviceIDToSubServicesMap count])
  {
    v3 = [NSMutableDictionary alloc];
    userDefaults2 = [v3 initWithObjectsAndKeys:{self->_deviceIDToSubServicesMap, off_100CB2360, &off_100C3D3D8, off_100CB2368, 0}];
    v5 = +[IMRGLog sub_services];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = userDefaults2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Top level map %@", buf, 0xCu);
    }

    userDefaults = [(IDSDServiceController *)self userDefaults];
    v7 = userDefaults;
    v8 = off_100CB2370;
    v9 = userDefaults2;
    v10 = 0;
  }

  else
  {
    userDefaults2 = [(IDSDServiceController *)self userDefaults];
    v14 = off_100CB2360;
    v7 = [NSArray arrayWithObjects:&v14 count:1];
    v8 = off_100CB2370;
    userDefaults = userDefaults2;
    v9 = 0;
    v10 = v7;
  }

  [userDefaults setMultiple:v9 remove:v10 appID:v8];

  userDefaults3 = [(IDSDServiceController *)self userDefaults];
  [userDefaults3 synchronizeAppID:off_100CB2370];
}

- (void)_loadSubServices
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100931330();
  }

  userDefaults = [(IDSDServiceController *)self userDefaults];
  v89[0] = off_100CB2368;
  v89[1] = off_100CB2360;
  v5 = [NSArray arrayWithObjects:v89 count:2];
  v6 = [userDefaults copyMultipleForCurrentKeys:v5 appID:off_100CB2370];

  v7 = +[IMRGLog sub_services];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v88 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Loaded preferences from disk: %@", buf, 0xCu);
  }

  v8 = +[IDSPairingManager sharedInstance];
  pairedDeviceUniqueID = [v8 pairedDeviceUniqueID];

  v10 = [(NSMutableDictionary *)v6 objectForKey:off_100CB2368];
  unsignedIntValue = [v10 unsignedIntValue];

  v62 = pairedDeviceUniqueID;
  if (unsignedIntValue)
  {
    v12 = [NSMutableDictionary alloc];
    v13 = [(NSMutableDictionary *)v6 objectForKey:off_100CB2360];
    v14 = [v12 initWithDictionary:v13];
    deviceIDToSubServicesMap = self->_deviceIDToSubServicesMap;
    self->_deviceIDToSubServicesMap = v14;
  }

  else
  {
    if ([pairedDeviceUniqueID length])
    {
      v16 = [NSMutableDictionary alloc];
      v17 = [(NSMutableDictionary *)v6 objectForKey:off_100CB2360];
      v18 = [v16 initWithObjectsAndKeys:{v17, pairedDeviceUniqueID, 0}];
      v19 = self->_deviceIDToSubServicesMap;
      self->_deviceIDToSubServicesMap = v18;
    }

    else
    {
      v17 = self->_deviceIDToSubServicesMap;
      self->_deviceIDToSubServicesMap = 0;
    }

    [(IDSDServiceController *)self _saveSubServices];
  }

  v20 = +[IMRGLog sub_services];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = self->_deviceIDToSubServicesMap;
    *buf = 138412290;
    v88 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Loaded sub services from disk: %@", buf, 0xCu);
  }

  v63 = objc_alloc_init(NSMutableSet);
  v22 = +[IDSPairingManager sharedInstance];
  allTraditionallyPairedUniqueIDs = [v22 allTraditionallyPairedUniqueIDs];

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  allKeys = [(NSMutableDictionary *)self->_deviceIDToSubServicesMap allKeys];
  v24 = [allKeys countByEnumeratingWithState:&v79 objects:v86 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v80;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v80 != v26)
        {
          objc_enumerationMutation(allKeys);
        }

        v28 = *(*(&v79 + 1) + 8 * i);
        if (([allTraditionallyPairedUniqueIDs containsObject:v28] & 1) == 0)
        {
          [(NSMutableDictionary *)v63 addObject:v28];
        }
      }

      v25 = [allKeys countByEnumeratingWithState:&v79 objects:v86 count:16];
    }

    while (v25);
  }

  v29 = +[IMRGLog sub_services];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v88 = v63;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Stale entries: %@", buf, 0xCu);
  }

  v30 = v62;
  if ([(NSMutableDictionary *)v63 count])
  {
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    allObjects = [(NSMutableDictionary *)v63 allObjects];
    v32 = [allObjects countByEnumeratingWithState:&v75 objects:v85 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v76;
      do
      {
        for (j = 0; j != v33; j = j + 1)
        {
          if (*v76 != v34)
          {
            objc_enumerationMutation(allObjects);
          }

          [(NSMutableDictionary *)self->_deviceIDToSubServicesMap removeObjectForKey:*(*(&v75 + 1) + 8 * j)];
        }

        v33 = [allObjects countByEnumeratingWithState:&v75 objects:v85 count:16];
      }

      while (v33);
    }

    v36 = +[IMRGLog sub_services];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = self->_deviceIDToSubServicesMap;
      *buf = 138412290;
      v88 = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Cleaned up map: %@", buf, 0xCu);
    }

    [(IDSDServiceController *)self _saveSubServices];
  }

  if (!-[NSMutableDictionary count](self->_deviceIDToSubServicesMap, "count") && [v62 length])
  {
    v38 = +[NSDictionary dictionary];
    v39 = [NSDictionary dictionaryWithObject:v38 forKey:off_100CB2360];

    v40 = [NSMutableDictionary alloc];
    v41 = [v39 objectForKey:off_100CB2360];
    v42 = [v40 initWithObjectsAndKeys:{v41, v62, 0}];
    v43 = self->_deviceIDToSubServicesMap;
    self->_deviceIDToSubServicesMap = v42;

    v44 = +[IMRGLog sub_services];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = self->_deviceIDToSubServicesMap;
      *buf = 138412290;
      v88 = v45;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Fixed empty map %@", buf, 0xCu);
    }

    [(IDSDServiceController *)self _saveSubServices];
  }

  _combinedServicesForAllDevices = [(IDSDServiceController *)self _combinedServicesForAllDevices];
  v47 = +[IMRGLog sub_services];
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v88 = _combinedServicesForAllDevices;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Combined services %@", buf, 0xCu);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = [(NSMutableDictionary *)_combinedServicesForAllDevices allKeys];
  v48 = [obj countByEnumeratingWithState:&v71 objects:v84 count:16];
  if (v48)
  {
    v49 = v48;
    v61 = v6;
    v50 = 0;
    v65 = *v72;
    do
    {
      v51 = 0;
      v52 = v50;
      do
      {
        if (*v72 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v53 = *(*(&v71 + 1) + 8 * v51);
        v50 = [(IDSDServiceController *)self serviceWithPushTopic:v53];

        if (v50)
        {
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v54 = _combinedServicesForAllDevices;
          v55 = [(NSMutableDictionary *)_combinedServicesForAllDevices objectForKey:v53];
          v56 = [v55 countByEnumeratingWithState:&v67 objects:v83 count:16];
          if (v56)
          {
            v57 = v56;
            v58 = *v68;
            do
            {
              for (k = 0; k != v57; k = k + 1)
              {
                if (*v68 != v58)
                {
                  objc_enumerationMutation(v55);
                }

                [(IDSDServiceController *)self _loadSubServiceWithName:*(*(&v67 + 1) + 8 * k) usingService:v53 completionBlock:0];
              }

              v57 = [v55 countByEnumeratingWithState:&v67 objects:v83 count:16];
            }

            while (v57);
          }

          _combinedServicesForAllDevices = v54;
        }

        v51 = v51 + 1;
        v52 = v50;
      }

      while (v51 != v49);
      v49 = [obj countByEnumeratingWithState:&v71 objects:v84 count:16];
    }

    while (v49);

    v6 = v61;
    v30 = v62;
  }

  v60 = +[IMRGLog registration];
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
  {
    sub_1009310CC();
  }
}

- (id)_combinedServicesForAllDevices
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  selfCopy = self;
  obj = [(NSMutableDictionary *)self->_deviceIDToSubServicesMap allKeys];
  v20 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v20)
  {
    v18 = *v28;
    do
    {
      v4 = 0;
      do
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v4;
        v5 = [(NSMutableDictionary *)selfCopy->_deviceIDToSubServicesMap _dictionaryForKey:*(*(&v27 + 1) + 8 * v4)];
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        allKeys = [v5 allKeys];
        v6 = [allKeys countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v24;
          do
          {
            for (i = 0; i != v7; i = i + 1)
            {
              if (*v24 != v8)
              {
                objc_enumerationMutation(allKeys);
              }

              v10 = *(*(&v23 + 1) + 8 * i);
              v11 = [v3 _arrayForKey:v10];
              v12 = [v5 _arrayForKey:v10];
              v13 = objc_alloc_init(NSMutableSet);
              v14 = v13;
              if (v11)
              {
                [v13 addObjectsFromArray:v11];
              }

              if (v12)
              {
                [v14 addObjectsFromArray:v12];
              }

              allObjects = [v14 allObjects];
              [v3 setObject:allObjects forKey:v10];
            }

            v7 = [allKeys countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v7);
        }

        v4 = v21 + 1;
      }

      while ((v21 + 1) != v20);
      v20 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v20);
  }

  return v3;
}

- (BOOL)_anyDeviceUsingSubService:(id)service superService:(id)superService
{
  serviceCopy = service;
  superServiceCopy = superService;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  allKeys = [(NSMutableDictionary *)self->_deviceIDToSubServicesMap allKeys];
  v24 = [allKeys countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v24)
  {
    v9 = *v31;
    v22 = *v31;
    selfCopy = self;
    v25 = allKeys;
    do
    {
      v10 = 0;
      do
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        selfCopy = [(NSMutableDictionary *)self->_deviceIDToSubServicesMap _dictionaryForKey:*(*(&v30 + 1) + 8 * v10), v22, selfCopy];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        allKeys2 = [selfCopy allKeys];
        v13 = [allKeys2 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v27;
          while (2)
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v27 != v15)
              {
                objc_enumerationMutation(allKeys2);
              }

              v17 = *(*(&v26 + 1) + 8 * i);
              if ([v17 isEqualToIgnoringCase:superServiceCopy])
              {
                v18 = [selfCopy _arrayForKey:v17];
                v19 = [v18 containsObject:serviceCopy];

                if (v19)
                {

                  v20 = 1;
                  allKeys = v25;
                  goto LABEL_20;
                }
              }
            }

            v14 = [allKeys2 countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v10 = v10 + 1;
        self = selfCopy;
        allKeys = v25;
        v9 = v22;
      }

      while (v10 != v24);
      v20 = 0;
      v24 = [v25 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v24);
  }

  else
  {
    v20 = 0;
  }

LABEL_20:

  return v20;
}

- (void)_updateSubServicesForDevice:(id)device superService:(id)service newSubservices:(id)subservices
{
  deviceCopy = device;
  serviceCopy = service;
  subservicesCopy = subservices;
  if ([serviceCopy length])
  {
    v11 = [NSMutableDictionary alloc];
    v12 = [(NSMutableDictionary *)self->_deviceIDToSubServicesMap objectForKey:deviceCopy];
    v13 = [v11 initWithDictionary:v12];

    if ([subservicesCopy count])
    {
      [v13 setObject:subservicesCopy forKey:serviceCopy];
    }

    else
    {
      [v13 removeObjectForKey:serviceCopy];
    }

    [(NSMutableDictionary *)self->_deviceIDToSubServicesMap setObject:v13 forKey:deviceCopy];
  }

  else
  {
    v14 = +[IMRGLog warning];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_100931364();
    }
  }
}

- (id)_currentSubServicesForDevice:(id)device superService:(id)service
{
  deviceIDToSubServicesMap = self->_deviceIDToSubServicesMap;
  serviceCopy = service;
  v7 = [(NSMutableDictionary *)deviceIDToSubServicesMap _dictionaryForKey:device];
  v8 = [v7 _arrayForKey:serviceCopy];

  return v8;
}

- (id)allServicesWithAdHocServiceType:(unsigned int)type
{
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(NSMutableSet);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = NSAllMapTableValues(self->_services);
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 adHocServiceType] == type)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  objc_autoreleasePoolPop(v5);

  return v6;
}

- (NSArray)allTinkerServices
{
  v2 = NSAllMapTableValues(self->_services);
  v3 = [v2 __imArrayByFilteringWithBlock:&stru_100BE4368];

  return v3;
}

- (NSArray)allFamilyServices
{
  v2 = NSAllMapTableValues(self->_services);
  v3 = [v2 __imArrayByFilteringWithBlock:&stru_100BE4388];

  return v3;
}

- (NSArray)allPinningEnforcedServices
{
  v2 = NSAllMapTableValues(self->_services);
  v3 = [v2 __imArrayByFilteringWithBlock:&stru_100BE43A8];

  return v3;
}

- (NSDictionary)serviceNameToControlCategoryMap
{
  v2 = [(NSMutableDictionary *)self->_serviceNameToControlCategoryMap copy];

  return v2;
}

- (id)serviceWithIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = [(NSMapTable *)self->_services objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)serviceWithName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v5 = [(NSMapTable *)self->_services objectForKey:nameCopy];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [(NSMapTable *)self->_servicesToNameMap objectForKey:nameCopy];
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)serviceWithPushTopic:(id)topic
{
  topicCopy = topic;
  if (topicCopy)
  {
    v5 = [(NSMapTable *)self->_services objectForKey:topicCopy];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [(NSMapTable *)self->_servicesToTopicMap objectForKey:topicCopy];
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)linkedServicesForService:(id)service
{
  linkedServiceNames = [service linkedServiceNames];
  if ([linkedServiceNames count])
  {
    v4 = objc_alloc_init(NSMutableArray);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = linkedServiceNames;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = +[IDSDServiceController sharedInstance];
          v12 = [v11 serviceWithIdentifier:v10];

          if (v12)
          {
            [v4 addObject:v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    if ([v4 count])
    {
      v13 = v4;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)primaryServiceForAdhocServiceType:(unsigned int)type
{
  v4 = 0;
  if (type <= 4)
  {
    if (type != 1 && type != 2)
    {
      if (type != 3)
      {
        goto LABEL_15;
      }

      v5 = @"com.apple.madrid";
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (type <= 6)
  {
    if (type != 5)
    {
      v5 = @"com.apple.private.ac";
      goto LABEL_14;
    }

LABEL_9:
    v5 = IDSRegistrationServiceTypeMultiplex1;
    goto LABEL_14;
  }

  if (type == 7)
  {
    v5 = @"com.apple.ess";
  }

  else
  {
    if (type != 8)
    {
      goto LABEL_15;
    }

    v5 = @"com.apple.private.alloy.itunes";
  }

LABEL_14:
  v4 = [(IDSDServiceController *)self serviceWithIdentifier:v5];
LABEL_15:

  return v4;
}

- (id)adHocServicesForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_autoreleasePoolPush();
  if ([identifierCopy isEqualToIgnoringCase:IDSRegistrationServiceTypeMultiplex1])
  {
    v5 = +[IDSDServiceController sharedInstance];
    v6 = [v5 allServicesWithAdHocServiceType:1];
    allObjects = [v6 allObjects];

    v8 = +[IDSDServiceController sharedInstance];
    v9 = [v8 allServicesWithAdHocServiceType:2];
    allObjects2 = [v9 allObjects];

    v11 = +[IDSDServiceController sharedInstance];
    v12 = [v11 allServicesWithAdHocServiceType:5];
    allObjects3 = [v12 allObjects];

    v14 = objc_alloc_init(NSMutableArray);
    v15 = v14;
    if (allObjects)
    {
      [v14 addObjectsFromArray:allObjects];
    }

    if (allObjects2)
    {
      [v15 addObjectsFromArray:allObjects2];
    }

    if (allObjects3)
    {
      [v15 addObjectsFromArray:allObjects3];
    }

LABEL_19:
    goto LABEL_20;
  }

  if ([identifierCopy isEqualToIgnoringCase:@"com.apple.madrid"])
  {
    v16 = +[IDSDServiceController sharedInstance];
    v17 = v16;
    v18 = 3;
    goto LABEL_17;
  }

  if ([identifierCopy isEqualToIgnoringCase:@"com.apple.private.ac"])
  {
    v16 = +[IDSDServiceController sharedInstance];
    v17 = v16;
    v18 = 6;
    goto LABEL_17;
  }

  if ([identifierCopy isEqualToIgnoringCase:@"com.apple.ess"])
  {
    v16 = +[IDSDServiceController sharedInstance];
    v17 = v16;
    v18 = 7;
    goto LABEL_17;
  }

  if ([identifierCopy isEqualToIgnoringCase:@"com.apple.private.alloy.itunes"])
  {
    v16 = +[IDSDServiceController sharedInstance];
    v17 = v16;
    v18 = 8;
LABEL_17:
    v19 = [v16 allServicesWithAdHocServiceType:v18];
    allObjects = [v19 allObjects];

    v20 = objc_alloc_init(NSMutableArray);
    v15 = v20;
    if (allObjects)
    {
      [v20 addObjectsFromArray:allObjects];
    }

    goto LABEL_19;
  }

  v15 = 0;
LABEL_20:
  if (![v15 count])
  {

    v15 = 0;
  }

  objc_autoreleasePoolPop(v4);

  return v15;
}

@end