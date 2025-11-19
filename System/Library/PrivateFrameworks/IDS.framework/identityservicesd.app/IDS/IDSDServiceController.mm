@interface IDSDServiceController
+ (BOOL)shouldLoadService:(id)a3;
+ (IDSDServiceController)sharedInstance;
- (BOOL)_anyDeviceUsingSubService:(id)a3 superService:(id)a4;
- (IDSDServiceController)init;
- (NSArray)allFamilyServices;
- (NSArray)allPinningEnforcedServices;
- (NSArray)allTinkerServices;
- (NSDictionary)serviceNameToControlCategoryMap;
- (id)_combinedServicesForAllDevices;
- (id)_currentSubServicesForDevice:(id)a3 superService:(id)a4;
- (id)adHocServicesForIdentifier:(id)a3;
- (id)allServicesWithAdHocServiceType:(unsigned int)a3;
- (id)linkedServicesForService:(id)a3;
- (id)primaryServiceForAdhocServiceType:(unsigned int)a3;
- (id)serviceWithIdentifier:(id)a3;
- (id)serviceWithName:(id)a3;
- (id)serviceWithPushTopic:(id)a3;
- (void)_loadService:(id)a3;
- (void)_loadServices;
- (void)_loadSubServiceWithName:(id)a3 usingService:(id)a4 completionBlock:(id)a5;
- (void)_loadSubServices;
- (void)_saveSubServices;
- (void)_unloadServiceWithName:(id)a3;
- (void)_updateSubServicesForDevice:(id)a3 superService:(id)a4 newSubservices:(id)a5;
- (void)updateSubServices:(id)a3 forService:(id)a4 deviceUniqueID:(id)a5;
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

+ (BOOL)shouldLoadService:(id)a3
{
  v3 = a3;
  v4 = +[FTDeviceSupport sharedInstance];
  if ([v4 lowRAMDevice])
  {
    v5 = [v3 disableOnLowRAMDevice];

    if ((v5 & 1) == 0)
    {
LABEL_8:
      if ([v3 prototypingOnly])
      {
        v9 = +[IMLockdownManager sharedInstance];
        if (![v9 isInternalInstall])
        {
          v8 = 0;
LABEL_17:

          goto LABEL_18;
        }

        v10 = _os_feature_enabled_impl();
      }

      else
      {
        v11 = [v3 identifier];
        v12 = [v11 isEqualToString:@"com.apple.private.alloy.keysharing"];

        if (v12)
        {
          v9 = +[FTDeviceSupport sharedInstance];
          v10 = [v9 supportsKeySharing];
        }

        else
        {
          v13 = [v3 identifier];
          v14 = [v13 isEqualToString:@"com.apple.private.alloy.harmony.pushprovisioning"];

          if (!v14)
          {
            v8 = 1;
            goto LABEL_18;
          }

          v9 = +[FTDeviceSupport sharedInstance];
          v10 = [v9 supportsHarmony];
        }
      }

      v8 = v10;
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

    v7 = [v3 disableOnLowRAMDevice];

    if ((v7 & 1) == 0)
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
  v4 = [(IDSDServiceController *)self serviceLoader];
  v5 = [v4 loadServiceDictionaries];

  v6 = [v5 countByEnumeratingWithState:&v32 objects:v39 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        if ([v10 count])
        {
          v12 = [[IDSServiceProperties alloc] initWithServiceDictionary:v10];
          v13 = [v12 identifier];
          v14 = [v13 length];

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
      v7 = [v5 countByEnumeratingWithState:&v32 objects:v39 count:16];
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

- (void)_loadService:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100931100();
  }

  services = self->_services;
  v7 = [v4 identifier];
  [(NSMapTable *)services setObject:v4 forKey:v7];

  v8 = [v4 identifier];
  v9 = [v4 serviceName];
  v10 = [v8 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    servicesToNameMap = self->_servicesToNameMap;
    v12 = [v4 serviceName];
    [(NSMapTable *)servicesToNameMap setObject:v4 forKey:v12];
  }

  v13 = [v4 identifier];
  v14 = [v4 pushTopic];
  v15 = [v13 isEqualToString:v14];

  if ((v15 & 1) == 0)
  {
    servicesToTopicMap = self->_servicesToTopicMap;
    v17 = [v4 pushTopic];
    [(NSMapTable *)servicesToTopicMap setObject:v4 forKey:v17];
  }

  if ([v4 controlCategory])
  {
    serviceNameToControlCategoryMap = self->_serviceNameToControlCategoryMap;
    v19 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 controlCategory]);
    v20 = [(NSMutableDictionary *)serviceNameToControlCategoryMap objectForKey:v19];

    if (!v20)
    {
      v20 = objc_alloc_init(NSMutableArray);
      v21 = self->_serviceNameToControlCategoryMap;
      v22 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 controlCategory]);
      [(NSMutableDictionary *)v21 setObject:v20 forKey:v22];
    }

    v23 = [v4 identifier];
    [v20 addObject:v23];
  }
}

- (void)_unloadServiceWithName:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    [(NSMapTable *)self->_services removeObjectForKey:v4];
    [(NSMapTable *)self->_servicesToNameMap removeObjectForKey:v4];
    [(NSMapTable *)self->_servicesToTopicMap removeObjectForKey:v4];
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

- (void)_loadSubServiceWithName:(id)a3 usingService:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IDSDServiceController *)self serviceWithPushTopic:v9];
  if (v11)
  {
    v12 = [(IDSDServiceController *)self serviceWithPushTopic:v8];

    if (!v12)
    {
      v13 = [v11 copy];
      [v13 setServiceName:v8];
      [v13 setDisplayName:v8];
      [v13 setIdentifier:v8];
      [v13 setPushTopic:v8];
      [v13 setSuperService:v9];
      [(IDSDServiceController *)self _loadService:v13];
      v14 = +[IMRGLog registration];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v8;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "   %@", &v16, 0xCu);
      }
    }

    if (v10)
    {
      v10[2](v10, v12 == 0);
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

- (void)updateSubServices:(id)a3 forService:(id)a4 deviceUniqueID:(id)a5
{
  v49 = a3;
  v8 = a4;
  v51 = a5;
  v50 = [(IDSDServiceController *)self serviceWithPushTopic:v8];
  if (v50)
  {
    v9 = +[IDSPairingManager sharedInstance];
    v48 = [v9 allTraditionallyPairedUniqueIDs];

    if (([v48 containsObject:v51]& 1) != 0)
    {
      v47 = [(IDSDServiceController *)self _currentSubServicesForDevice:v51 superService:v8];
      v10 = +[IMRGLog sub_services];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v51;
        *&buf[12] = 2112;
        *&buf[14] = v47;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Current sub-services for device %@: %@", buf, 0x16u);
      }

      if (v47 && [v47 isEqualToArray:v49])
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
        [(IDSDServiceController *)self _updateSubServicesForDevice:v51 superService:v8 newSubservices:v49];
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
        v19 = [NSSet setWithArray:v49];
        [v18 minusSet:v19];

        v20 = [v18 allObjects];
        v21 = [v20 _copyForEnumerating];

        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v22 = v21;
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
              if ([(IDSDServiceController *)self _anyDeviceUsingSubService:v26 superService:v8])
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
        v37 = v49;
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
              [(IDSDServiceController *)self _loadSubServiceWithName:v41 usingService:v8 completionBlock:v57];
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

    v13 = v48;
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
    v4 = [v3 initWithObjectsAndKeys:{self->_deviceIDToSubServicesMap, off_100CB2360, &off_100C3D3D8, off_100CB2368, 0}];
    v5 = +[IMRGLog sub_services];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Top level map %@", buf, 0xCu);
    }

    v6 = [(IDSDServiceController *)self userDefaults];
    v7 = v6;
    v8 = off_100CB2370;
    v9 = v4;
    v10 = 0;
  }

  else
  {
    v4 = [(IDSDServiceController *)self userDefaults];
    v14 = off_100CB2360;
    v7 = [NSArray arrayWithObjects:&v14 count:1];
    v8 = off_100CB2370;
    v6 = v4;
    v9 = 0;
    v10 = v7;
  }

  [v6 setMultiple:v9 remove:v10 appID:v8];

  v11 = [(IDSDServiceController *)self userDefaults];
  [v11 synchronizeAppID:off_100CB2370];
}

- (void)_loadSubServices
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100931330();
  }

  v4 = [(IDSDServiceController *)self userDefaults];
  v89[0] = off_100CB2368;
  v89[1] = off_100CB2360;
  v5 = [NSArray arrayWithObjects:v89 count:2];
  v6 = [v4 copyMultipleForCurrentKeys:v5 appID:off_100CB2370];

  v7 = +[IMRGLog sub_services];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v88 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Loaded preferences from disk: %@", buf, 0xCu);
  }

  v8 = +[IDSPairingManager sharedInstance];
  v9 = [v8 pairedDeviceUniqueID];

  v10 = [(NSMutableDictionary *)v6 objectForKey:off_100CB2368];
  v11 = [v10 unsignedIntValue];

  v62 = v9;
  if (v11)
  {
    v12 = [NSMutableDictionary alloc];
    v13 = [(NSMutableDictionary *)v6 objectForKey:off_100CB2360];
    v14 = [v12 initWithDictionary:v13];
    deviceIDToSubServicesMap = self->_deviceIDToSubServicesMap;
    self->_deviceIDToSubServicesMap = v14;
  }

  else
  {
    if ([v9 length])
    {
      v16 = [NSMutableDictionary alloc];
      v17 = [(NSMutableDictionary *)v6 objectForKey:off_100CB2360];
      v18 = [v16 initWithObjectsAndKeys:{v17, v9, 0}];
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
  v66 = [v22 allTraditionallyPairedUniqueIDs];

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v23 = [(NSMutableDictionary *)self->_deviceIDToSubServicesMap allKeys];
  v24 = [v23 countByEnumeratingWithState:&v79 objects:v86 count:16];
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
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v79 + 1) + 8 * i);
        if (([v66 containsObject:v28] & 1) == 0)
        {
          [(NSMutableDictionary *)v63 addObject:v28];
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v79 objects:v86 count:16];
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
    v31 = [(NSMutableDictionary *)v63 allObjects];
    v32 = [v31 countByEnumeratingWithState:&v75 objects:v85 count:16];
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
            objc_enumerationMutation(v31);
          }

          [(NSMutableDictionary *)self->_deviceIDToSubServicesMap removeObjectForKey:*(*(&v75 + 1) + 8 * j)];
        }

        v33 = [v31 countByEnumeratingWithState:&v75 objects:v85 count:16];
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

  v46 = [(IDSDServiceController *)self _combinedServicesForAllDevices];
  v47 = +[IMRGLog sub_services];
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v88 = v46;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Combined services %@", buf, 0xCu);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = [(NSMutableDictionary *)v46 allKeys];
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
          v54 = v46;
          v55 = [(NSMutableDictionary *)v46 objectForKey:v53];
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

          v46 = v54;
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
  v19 = self;
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
        v5 = [(NSMutableDictionary *)v19->_deviceIDToSubServicesMap _dictionaryForKey:*(*(&v27 + 1) + 8 * v4)];
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v22 = [v5 allKeys];
        v6 = [v22 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
                objc_enumerationMutation(v22);
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

              v15 = [v14 allObjects];
              [v3 setObject:v15 forKey:v10];
            }

            v7 = [v22 countByEnumeratingWithState:&v23 objects:v31 count:16];
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

- (BOOL)_anyDeviceUsingSubService:(id)a3 superService:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = [(NSMutableDictionary *)self->_deviceIDToSubServicesMap allKeys];
  v24 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v24)
  {
    v9 = *v31;
    v22 = *v31;
    v23 = self;
    v25 = v8;
    do
    {
      v10 = 0;
      do
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v8);
        }

        v11 = [(NSMutableDictionary *)self->_deviceIDToSubServicesMap _dictionaryForKey:*(*(&v30 + 1) + 8 * v10), v22, v23];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v12 = [v11 allKeys];
        v13 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
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
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v26 + 1) + 8 * i);
              if ([v17 isEqualToIgnoringCase:v7])
              {
                v18 = [v11 _arrayForKey:v17];
                v19 = [v18 containsObject:v6];

                if (v19)
                {

                  v20 = 1;
                  v8 = v25;
                  goto LABEL_20;
                }
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v10 = v10 + 1;
        self = v23;
        v8 = v25;
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

- (void)_updateSubServicesForDevice:(id)a3 superService:(id)a4 newSubservices:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 length])
  {
    v11 = [NSMutableDictionary alloc];
    v12 = [(NSMutableDictionary *)self->_deviceIDToSubServicesMap objectForKey:v8];
    v13 = [v11 initWithDictionary:v12];

    if ([v10 count])
    {
      [v13 setObject:v10 forKey:v9];
    }

    else
    {
      [v13 removeObjectForKey:v9];
    }

    [(NSMutableDictionary *)self->_deviceIDToSubServicesMap setObject:v13 forKey:v8];
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

- (id)_currentSubServicesForDevice:(id)a3 superService:(id)a4
{
  deviceIDToSubServicesMap = self->_deviceIDToSubServicesMap;
  v6 = a4;
  v7 = [(NSMutableDictionary *)deviceIDToSubServicesMap _dictionaryForKey:a3];
  v8 = [v7 _arrayForKey:v6];

  return v8;
}

- (id)allServicesWithAdHocServiceType:(unsigned int)a3
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
        if ([v12 adHocServiceType] == a3)
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

- (id)serviceWithIdentifier:(id)a3
{
  if (a3)
  {
    v4 = [(NSMapTable *)self->_services objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)serviceWithName:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMapTable *)self->_services objectForKey:v4];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [(NSMapTable *)self->_servicesToNameMap objectForKey:v4];
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)serviceWithPushTopic:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMapTable *)self->_services objectForKey:v4];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [(NSMapTable *)self->_servicesToTopicMap objectForKey:v4];
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)linkedServicesForService:(id)a3
{
  v3 = [a3 linkedServiceNames];
  if ([v3 count])
  {
    v4 = objc_alloc_init(NSMutableArray);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v3;
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

- (id)primaryServiceForAdhocServiceType:(unsigned int)a3
{
  v4 = 0;
  if (a3 <= 4)
  {
    if (a3 != 1 && a3 != 2)
    {
      if (a3 != 3)
      {
        goto LABEL_15;
      }

      v5 = @"com.apple.madrid";
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (a3 <= 6)
  {
    if (a3 != 5)
    {
      v5 = @"com.apple.private.ac";
      goto LABEL_14;
    }

LABEL_9:
    v5 = IDSRegistrationServiceTypeMultiplex1;
    goto LABEL_14;
  }

  if (a3 == 7)
  {
    v5 = @"com.apple.ess";
  }

  else
  {
    if (a3 != 8)
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

- (id)adHocServicesForIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  if ([v3 isEqualToIgnoringCase:IDSRegistrationServiceTypeMultiplex1])
  {
    v5 = +[IDSDServiceController sharedInstance];
    v6 = [v5 allServicesWithAdHocServiceType:1];
    v7 = [v6 allObjects];

    v8 = +[IDSDServiceController sharedInstance];
    v9 = [v8 allServicesWithAdHocServiceType:2];
    v10 = [v9 allObjects];

    v11 = +[IDSDServiceController sharedInstance];
    v12 = [v11 allServicesWithAdHocServiceType:5];
    v13 = [v12 allObjects];

    v14 = objc_alloc_init(NSMutableArray);
    v15 = v14;
    if (v7)
    {
      [v14 addObjectsFromArray:v7];
    }

    if (v10)
    {
      [v15 addObjectsFromArray:v10];
    }

    if (v13)
    {
      [v15 addObjectsFromArray:v13];
    }

LABEL_19:
    goto LABEL_20;
  }

  if ([v3 isEqualToIgnoringCase:@"com.apple.madrid"])
  {
    v16 = +[IDSDServiceController sharedInstance];
    v17 = v16;
    v18 = 3;
    goto LABEL_17;
  }

  if ([v3 isEqualToIgnoringCase:@"com.apple.private.ac"])
  {
    v16 = +[IDSDServiceController sharedInstance];
    v17 = v16;
    v18 = 6;
    goto LABEL_17;
  }

  if ([v3 isEqualToIgnoringCase:@"com.apple.ess"])
  {
    v16 = +[IDSDServiceController sharedInstance];
    v17 = v16;
    v18 = 7;
    goto LABEL_17;
  }

  if ([v3 isEqualToIgnoringCase:@"com.apple.private.alloy.itunes"])
  {
    v16 = +[IDSDServiceController sharedInstance];
    v17 = v16;
    v18 = 8;
LABEL_17:
    v19 = [v16 allServicesWithAdHocServiceType:v18];
    v7 = [v19 allObjects];

    v20 = objc_alloc_init(NSMutableArray);
    v15 = v20;
    if (v7)
    {
      [v20 addObjectsFromArray:v7];
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