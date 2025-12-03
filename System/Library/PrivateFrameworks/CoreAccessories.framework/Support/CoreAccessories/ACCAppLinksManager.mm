@interface ACCAppLinksManager
+ (id)sharedManager;
- (ACCAppLinksManager)init;
- (BOOL)removeCarPlayAppLinksSubscriber:(id)subscriber;
- (BOOL)removeEAAppLinksSubscriber:(id)subscriber;
- (id)requestAppLinksIconDataForBundleID:(id)d withIconSize:(unsigned __int16)size;
- (void)dealloc;
- (void)handleCarPlayAppLinksStateChangedForCertSerial:(id)serial;
- (void)handleEAAppLinksStateChangedForCertSerial:(id)serial;
- (void)requestAppIcons:(id)icons forUUID:(id)d;
@end

@implementation ACCAppLinksManager

+ (id)sharedManager
{
  if (sharedManager_once_0 != -1)
  {
    +[ACCAppLinksManager sharedManager];
  }

  v3 = sharedManager_sharedInstance_0;

  return v3;
}

void __35__ACCAppLinksManager_sharedManager__block_invoke(id a1)
{
  sharedManager_sharedInstance_0 = objc_alloc_init(ACCAppLinksManager);

  _objc_release_x1();
}

- (ACCAppLinksManager)init
{
  v11.receiver = self;
  v11.super_class = ACCAppLinksManager;
  v2 = [(ACCAppLinksManager *)&v11 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    carPlayAppsSubscriberList = v2->_carPlayAppsSubscriberList;
    v2->_carPlayAppsSubscriberList = v3;

    v5 = +[NSMutableDictionary dictionary];
    eaAppsSubscriberList = v2->_eaAppsSubscriberList;
    v2->_eaAppsSubscriberList = v5;

    carPlayAppLinksStateDidChangeObserver = v2->_carPlayAppLinksStateDidChangeObserver;
    v2->_carPlayAppLinksStateDidChangeObserver = 0;

    v8 = dispatch_queue_create("AppLinksWorkQ", 0);
    workQ = v2->_workQ;
    v2->_workQ = v8;
  }

  return v2;
}

- (void)dealloc
{
  [(ACCAppLinksManager *)self setCarPlayAppsSubscriberList:0];
  [(ACCAppLinksManager *)self setEaAppsSubscriberList:0];
  [(ACCAppLinksManager *)self setWorkQ:0];
  v3.receiver = self;
  v3.super_class = ACCAppLinksManager;
  [(ACCAppLinksManager *)&v3 dealloc];
}

void __97__ACCAppLinksManager_addCarPlayAppLinksSubscriber_forCategories_forIconSize_andCertSerialNumber___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v7 userInfo];

  if (v4)
  {
    v5 = [v7 userInfo];
    v6 = [v5 objectForKey:@"CREnhancedIntegrationConsentDidChangeNotificationVehicleCertificateSerialKey"];

    if (v6)
    {
      [WeakRetained handleCarPlayAppLinksStateChangedForCertSerial:v6];
    }
  }
}

- (void)requestAppIcons:(id)icons forUUID:(id)d
{
  if (icons)
  {
    if (d)
    {
      dCopy = d;
      objc_initWeak(&location, icons);
      objc_initWeak(&v13, dCopy);

      objc_initWeak(&from, self);
      workQ = self->_workQ;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = __46__ACCAppLinksManager_requestAppIcons_forUUID___block_invoke;
      v8[3] = &unk_100226BD8;
      objc_copyWeak(&v9, &from);
      objc_copyWeak(&v10, &location);
      objc_copyWeak(&v11, &v13);
      dispatch_async(workQ, v8);
      objc_destroyWeak(&v11);
      objc_destroyWeak(&v10);
      objc_destroyWeak(&v9);
      objc_destroyWeak(&from);
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }
}

void __46__ACCAppLinksManager_requestAppIcons_forUUID___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v2 = objc_loadWeakRetained(a1 + 5);
  v31 = a1;
  v29 = objc_loadWeakRetained(a1 + 6);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v2;
  v3 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v3)
  {
    v5 = v3;
    v30 = *v33;
    *&v4 = 134218240;
    v26 = v4;
    do
    {
      v6 = 0;
      do
      {
        if (*v33 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v32 + 1) + 8 * v6);
        v8 = +[NSMutableDictionary dictionary];
        v9 = +[NSMutableDictionary dictionary];
        v10 = [v7 objectForKey:@"CARApplicationBundleIdentifierKey"];
        v11 = [v7 objectForKey:@"appLinksSubFeature"];
        v12 = v11;
        if (v10)
        {
          v13 = v11 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          v17 = 0;
          v18 = 0;
          goto LABEL_21;
        }

        if (![v11 shortValue])
        {
          v14 = +[ACCAppLinksManager sharedManager];
          v15 = [v14 carPlayAppsSubscriberList];
          goto LABEL_14;
        }

        if ([v12 shortValue] == 1)
        {
          v14 = +[ACCAppLinksManager sharedManager];
          v15 = [v14 eaAppsSubscriberList];
LABEL_14:
          v16 = v15;
          v17 = [v15 objectForKey:v29];

          goto LABEL_16;
        }

        v17 = 0;
LABEL_16:
        if (![v17 iconSize])
        {
          v18 = 0;
          goto LABEL_20;
        }

        v18 = [WeakRetained requestAppLinksIconDataForBundleID:v10 withIconSize:{objc_msgSend(v17, "iconSize")}];
        if (v18)
        {
          [v8 setObject:v18 forKey:@"iconData"];
          v19 = [v18 SHA256];
          [v8 setObject:v19 forKey:@"iconDataHash"];

LABEL_20:
          [v9 setObject:v8 forKey:v10];
        }

LABEL_21:
        v20 = gLogObjects;
        v21 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 8)
        {
          v22 = *(gLogObjects + 56);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = v26;
            v38 = v20;
            v39 = 1024;
            v40 = v21;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v23 = &_os_log_default;
          v22 = &_os_log_default;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v38 = v9;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[#App Links] requestAppIcons iconDict: %@", buf, 0xCu);
        }

        v24 = objc_loadWeakRetained(v31 + 6);
        accFeatureHandlers_invokeHandler(v24, 57, v9);

        v6 = v6 + 1;
      }

      while (v5 != v6);
      v25 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      v5 = v25;
    }

    while (v25);
  }
}

- (id)requestAppLinksIconDataForBundleID:(id)d withIconSize:(unsigned __int16)size
{
  sizeCopy = size;
  dCopy = d;
  v6 = dispatch_semaphore_create(0);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v7 = +[ACCAppLinksIconInfo sharedManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __70__ACCAppLinksManager_requestAppLinksIconDataForBundleID_withIconSize___block_invoke;
  v14[3] = &unk_100226C00;
  v16 = &v17;
  v8 = v6;
  v15 = v8;
  [v7 getIconDataForBundleID:dCopy forIconSize:v14 withReply:sizeCopy];

  v9 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v8, v9))
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v10 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v10 = &_os_log_default;
      v11 = &_os_log_default;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ACCAppLinksManager requestAppLinksIconDataForBundleID:v10 withIconSize:?];
    }
  }

  v12 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v12;
}

void __70__ACCAppLinksManager_requestAppLinksIconDataForBundleID_withIconSize___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)handleCarPlayAppLinksStateChangedForCertSerial:(id)serial
{
  serialCopy = serial;
  objc_initWeak(&location, self);
  workQ = self->_workQ;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __69__ACCAppLinksManager_handleCarPlayAppLinksStateChangedForCertSerial___block_invoke;
  v7[3] = &unk_100226C78;
  objc_copyWeak(&v10, &location);
  v8 = serialCopy;
  selfCopy = self;
  v6 = serialCopy;
  dispatch_async(workQ, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __69__ACCAppLinksManager_handleCarPlayAppLinksStateChangedForCertSerial___block_invoke(uint64_t a1)
{
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy_;
  v70 = __Block_byref_object_dispose_;
  v71 = 0;
  v52 = +[NSArray array];
  v2 = +[NSMutableDictionary dictionary];
  val = objc_loadWeakRetained((a1 + 48));
  if (!*(a1 + 32))
  {
    v15 = 0;
    goto LABEL_53;
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v3 = +[ACCAppLinksManager sharedManager];
  v4 = [v3 carPlayAppsSubscriberList];

  v5 = [v4 countByEnumeratingWithState:&v62 objects:v76 count:16];
  if (!v5)
  {
LABEL_10:

LABEL_11:
    v14 = logObjectForModule_11(49);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[#App Links] accessory NULL", buf, 2u);
    }

    v11 = 0;
    goto LABEL_14;
  }

  v6 = *v63;
LABEL_4:
  v7 = 0;
  while (1)
  {
    if (*v63 != v6)
    {
      objc_enumerationMutation(v4);
    }

    v8 = *(*(&v62 + 1) + 8 * v7);
    v9 = +[ACCAppLinksManager sharedManager];
    v10 = [v9 carPlayAppsSubscriberList];
    v11 = [v10 objectForKey:v8];

    v12 = *(a1 + 32);
    v13 = [v11 certSerial];
    LOBYTE(v12) = [v12 isEqualToData:v13];

    if (v12)
    {
      break;
    }

    if (v5 == ++v7)
    {
      v5 = [v4 countByEnumeratingWithState:&v62 objects:v76 count:16];
      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  if (!v11)
  {
    goto LABEL_11;
  }

  v16 = [v11 certSerial];
  v17 = v16 == 0;

  if (v17)
  {
    v14 = logObjectForModule_11(49);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[#App Links] accessory.certSerial NULL", buf, 2u);
    }

LABEL_14:

LABEL_15:
    v15 = v11;
    goto LABEL_53;
  }

  v18 = [v11 certSerial];
  v19 = platform_CarPlay_carPlayAppLinksStateForCertSerial(v18);

  if (gLogObjects && gNumLogObjects >= 50)
  {
    v20 = *(gLogObjects + 392);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v20 = &_os_log_default;
    v21 = &_os_log_default;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v22 = [v11 subFeatureState];
    v23 = [v22 unsignedIntValue];
    *buf = 134218240;
    v73 = v19;
    v74 = 1024;
    v75 = v23;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[#App Links] currentAppLinksState: %lu, accessory.subFeatureState %d", buf, 0x12u);
  }

  if ([v11 initialUpdateSent])
  {
    if (([v11 listUpdateFailedToSend] & 1) == 0)
    {
      v24 = [v11 subFeatureState];
      v25 = v19 == [v24 unsignedIntValue];

      if (v25)
      {
        goto LABEL_15;
      }
    }
  }

  if ([v11 listUpdateFailedToSend])
  {
    v26 = [v11 carPlayRetryUpdateTimer];

    if (v26)
    {
      v27 = [v11 carPlayRetryUpdateTimer];
      dispatch_source_cancel(v27);

      [v11 setCarPlayRetryUpdateTimer:0];
    }

    [v11 setListUpdateFailedToSend:0];
  }

  if (v19 != 2)
  {
    v36 = [v11 subFeatureState];
    if (v19 == [v36 unsignedLongValue])
    {
      v37 = [v11 initialUpdateSent];

      if (v37)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    v38 = [NSNumber numberWithUnsignedLong:v19];
    [v11 setSubFeatureState:v38];

    goto LABEL_52;
  }

  v28 = dispatch_semaphore_create(0);
  objc_initWeak(buf, v11);
  v29 = +[ACCCarPlay sharedManager];
  v30 = [v11 certSerial];
  v31 = [v11 categories];
  CarPlayCategoryMaskFromCategorySet = _createCarPlayCategoryMaskFromCategorySet(v31);
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = __69__ACCAppLinksManager_handleCarPlayAppLinksStateChangedForCertSerial___block_invoke_100;
  v57[3] = &unk_100226C28;
  objc_copyWeak(v61, buf);
  v60 = &v66;
  v15 = v11;
  v58 = v15;
  v61[1] = 2;
  v33 = v28;
  v59 = v33;
  [v29 carPlayIconStateForCertSerial:v30 andAppCategories:CarPlayCategoryMaskFromCategorySet withReply:v57];

  v34 = dispatch_time(0, 5000000000);
  if (!dispatch_semaphore_wait(v33, v34))
  {
    goto LABEL_50;
  }

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v35 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v35 = &_os_log_default;
    v39 = &_os_log_default;
  }

  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    [ACCAppLinksManager requestAppLinksIconDataForBundleID:v35 withIconSize:?];
  }

  [v15 setListUpdateFailedToSend:1];
  v40 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(*(a1 + 40) + 32));
  [v15 setCarPlayRetryUpdateTimer:v40];

  objc_initWeak(&location, val);
  v41 = [v15 carPlayRetryUpdateTimer];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = __69__ACCAppLinksManager_handleCarPlayAppLinksStateChangedForCertSerial___block_invoke_102;
  handler[3] = &unk_100226C50;
  objc_copyWeak(&v55, &location);
  v42 = v15;
  v54 = v42;
  dispatch_source_set_event_handler(v41, handler);

  v43 = [v42 carPlayRetryUpdateTimer];
  v44 = dispatch_time(0, 1000000000);
  dispatch_source_set_timer(v43, v44, 0xFFFFFFFFFFFFFFFFLL, 0);

  v45 = [v42 carPlayRetryUpdateTimer];
  dispatch_activate(v45);

  LOBYTE(v45) = [v42 listUpdateFailedToSend];
  objc_destroyWeak(&v55);
  objc_destroyWeak(&location);
  if (v45)
  {
    v46 = 0;
  }

  else
  {
LABEL_50:
    v47 = [val retrieveIconInformationForAppList:v67[5] withIconSize:{objc_msgSend(v15, "iconSize")}];

    v46 = 1;
    v52 = v47;
  }

  objc_destroyWeak(v61);
  objc_destroyWeak(buf);

  if (v46)
  {
LABEL_52:
    [v2 setObject:v52 forKey:@"appList"];
    v48 = [v11 subFeatureState];
    [v2 setObject:v48 forKey:@"appLinksState"];

    v49 = [NSNumber numberWithUnsignedInteger:0];
    [v2 setObject:v49 forKey:@"appLinksSubFeature"];

    v50 = [v11 uuid];
    accFeatureHandlers_invokeHandler(v50, 56, v2);

    [v11 setInitialUpdateSent:1];
    v15 = v11;
  }

LABEL_53:

  _Block_object_dispose(&v66, 8);
}

void __69__ACCAppLinksManager_handleCarPlayAppLinksStateChangedForCertSerial___block_invoke_100(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [v3 copy];

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  [*(a1 + 32) setListUpdateFailedToSend:0];
  v7 = [NSNumber numberWithUnsignedLong:*(a1 + 64)];
  [WeakRetained setSubFeatureState:v7];

  dispatch_semaphore_signal(*(a1 + 40));
}

void __69__ACCAppLinksManager_handleCarPlayAppLinksStateChangedForCertSerial___block_invoke_102(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (gLogObjects && gNumLogObjects >= 50)
  {
    v3 = *(gLogObjects + 392);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v3 = &_os_log_default;
    v4 = &_os_log_default;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[#App Links] Retry sending AppLinksUpdate", v7, 2u);
  }

  v5 = [*(a1 + 32) certSerial];
  [WeakRetained handleCarPlayAppLinksStateChangedForCertSerial:v5];

  v6 = [*(a1 + 32) carPlayRetryUpdateTimer];
  dispatch_source_cancel(v6);

  [*(a1 + 32) setCarPlayRetryUpdateTimer:0];
}

- (void)handleEAAppLinksStateChangedForCertSerial:(id)serial
{
  serialCopy = serial;
  objc_initWeak(&location, self);
  workQ = self->_workQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __64__ACCAppLinksManager_handleEAAppLinksStateChangedForCertSerial___block_invoke;
  block[3] = &unk_100226C50;
  objc_copyWeak(&v9, &location);
  v8 = serialCopy;
  v6 = serialCopy;
  dispatch_async(workQ, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (BOOL)removeCarPlayAppLinksSubscriber:(id)subscriber
{
  if (subscriber)
  {
    subscriberCopy = subscriber;
    v6 = +[ACCAppLinksManager sharedManager];
    carPlayAppsSubscriberList = [v6 carPlayAppsSubscriberList];
    [carPlayAppsSubscriberList removeObjectForKey:subscriberCopy];

    v8 = +[ACCAppLinksManager sharedManager];
    carPlayAppsSubscriberList2 = [v8 carPlayAppsSubscriberList];
    v10 = [carPlayAppsSubscriberList2 count];

    if (!v10)
    {
      v11 = +[NSDistributedNotificationCenter defaultCenter];
      carPlayAppLinksStateDidChangeObserver = [(ACCAppLinksManager *)self carPlayAppLinksStateDidChangeObserver];
      [v11 removeObserver:carPlayAppLinksStateDidChangeObserver];
    }

    v13 = HIDWORD(gLogObjects);
    v14 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v15 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        HIDWORD(v28) = v13;
        OUTLINED_FUNCTION_3();
        v29 = v14;
        OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v22, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v23, v24, v25, v26, 0);
      }

      v15 = &_os_log_default;
      v16 = &_os_log_default;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v17 = +[ACCAppLinksManager sharedManager];
      carPlayAppsSubscriberList3 = [v17 carPlayAppsSubscriberList];
      v27 = 138412290;
      v28 = carPlayAppsSubscriberList3;
      OUTLINED_FUNCTION_4_12(&_mh_execute_header, v19, v20, "[#App Links] carPlayAppsSubscriberList: %@", &v27);
    }
  }

  return subscriber != 0;
}

- (BOOL)removeEAAppLinksSubscriber:(id)subscriber
{
  if (subscriber)
  {
    subscriberCopy = subscriber;
    v5 = +[ACCAppLinksManager sharedManager];
    eaAppsSubscriberList = [v5 eaAppsSubscriberList];
    [eaAppsSubscriberList removeObjectForKey:subscriberCopy];

    v7 = +[ACCAppLinksManager sharedManager];
    eaAppsSubscriberList2 = [v7 eaAppsSubscriberList];
    [eaAppsSubscriberList2 count];

    v9 = HIDWORD(gLogObjects);
    v10 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v11 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        HIDWORD(v24) = v9;
        OUTLINED_FUNCTION_3();
        v25 = v10;
        OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v18, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v19, v20, v21, v22, 0);
      }

      v11 = &_os_log_default;
      v12 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = +[ACCAppLinksManager sharedManager];
      eaAppsSubscriberList3 = [v13 eaAppsSubscriberList];
      v23 = 138412290;
      v24 = eaAppsSubscriberList3;
      OUTLINED_FUNCTION_4_12(&_mh_execute_header, v15, v16, "[#App Links] eaAppsSubscriberList: %@", &v23);
    }
  }

  return subscriber != 0;
}

void __64__ACCAppLinksManager_handleEAAppLinksStateChangedForCertSerial___block_invoke(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v3 = +[NSArray array];
  v4 = +[NSMutableDictionary dictionary];
  v5 = +[NSMutableOrderedSet orderedSet];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (!*(a1 + 32))
  {
LABEL_14:
    v29 = 0;
    v30 = 0;
    goto LABEL_41;
  }

  v65 = v5;
  v66 = v4;
  v63 = v3;
  v64 = WeakRetained;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v8 = +[ACCAppLinksManager sharedManager];
  v9 = [v8 eaAppsSubscriberList];

  v10 = v9;
  v11 = [v9 countByEnumeratingWithState:&v75 objects:v81 count:16];
  if (!v11)
  {
LABEL_10:

LABEL_11:
    v22 = logObjectForModule_11(49);
    v7 = v64;
    v5 = v65;
    v3 = v63;
    v4 = v66;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_5_11(&_mh_execute_header, v23, v24, "[#App Links] accessory NULL", v25, v26, v27, v28, v59, v61, v63, v64, v65, v66, v67, *(&v67 + 1), v68, *(&v68 + 1), v69, *(&v69 + 1), v70, *(&v70 + 1), v71, *(&v71 + 1), v72, *(&v72 + 1), v73, *(&v73 + 1), v74, *(&v74 + 1), 0);
    }

    goto LABEL_14;
  }

  v12 = v11;
  v13 = *v76;
LABEL_4:
  v14 = 0;
  while (1)
  {
    if (*v76 != v13)
    {
      objc_enumerationMutation(v10);
    }

    v15 = *(*(&v75 + 1) + 8 * v14);
    v16 = +[ACCAppLinksManager sharedManager];
    v17 = [v16 eaAppsSubscriberList];
    v18 = [v17 objectForKey:v15];

    v19 = v18;
    v20 = *(a1 + 32);
    v21 = [v19 certSerial];
    LOBYTE(v20) = [v20 isEqualToData:v21];

    if (v20)
    {
      break;
    }

    if (v12 == ++v14)
    {
      v12 = [v10 countByEnumeratingWithState:&v75 objects:v81 count:16];
      if (v12)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  if (!v19)
  {
    goto LABEL_11;
  }

  v31 = [v19 certSerial];

  v5 = v65;
  v4 = v66;
  if (v31)
  {
    v62 = v19;
    v32 = [v19 uuid];
    v33 = _supportedAppLinksEAProtocols(v32);

    if (v33)
    {
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v34 = v33;
      v35 = [v34 countByEnumeratingWithState:&v71 objects:v80 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v72;
        do
        {
          for (i = 0; i != v36; i = i + 1)
          {
            if (*v72 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = platform_system_copyInstalledApplicationsForExternalAccessoryProtocol(*(*(&v71 + 1) + 8 * i));
            if (v39)
            {
              [v65 addObjectsFromArray:v39];
            }
          }

          v36 = [v34 countByEnumeratingWithState:&v71 objects:v80 count:16];
        }

        while (v36);
      }
    }

    v60 = v33;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v40 = v65;
    v41 = [v40 countByEnumeratingWithState:&v67 objects:v79 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v68;
      do
      {
        for (j = 0; j != v42; j = j + 1)
        {
          if (*v68 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v67 + 1) + 8 * j);
          v46 = +[NSMutableDictionary dictionary];
          [v46 setObject:v45 forKey:@"CARApplicationBundleIdentifierKey"];
          v47 = platform_system_copyAppNameForBundleID(v45);
          if (v47)
          {
            [v46 setObject:v47 forKey:@"CARApplicationLocalizedNameKey"];
            [v2 addObject:v46];
          }
        }

        v42 = [v40 countByEnumeratingWithState:&v67 objects:v79 count:16];
      }

      while (v42);
    }

    v30 = v62;
    if ([v62 initialUpdateSent])
    {
      v5 = v65;
      v4 = v66;
      v3 = v63;
      v7 = v64;
    }

    else
    {
      v7 = v64;
      v48 = [v64 retrieveIconInformationForAppList:v2 withIconSize:{objc_msgSend(v62, "iconSize")}];

      v4 = v66;
      [v66 setObject:v48 forKey:@"appList"];
      v49 = [v62 subFeatureState];
      [v66 setObject:v49 forKey:@"appLinksState"];

      v50 = [NSNumber numberWithUnsignedInteger:1];
      [v66 setObject:v50 forKey:@"appLinksSubFeature"];

      v51 = [v62 uuid];
      accFeatureHandlers_invokeHandler(v51, 56, v66);

      [v62 setInitialUpdateSent:1];
      v3 = v48;
      v5 = v65;
    }

    v29 = v60;
  }

  else
  {
    v30 = v19;
    v52 = logObjectForModule_11(49);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_5_11(&_mh_execute_header, v53, v54, "[#App Links] accessory.certSerial NULL", v55, v56, v57, v58, v59, v61, v63, v64, v65, v66, v67, *(&v67 + 1), v68, *(&v68 + 1), v69, *(&v69 + 1), v70, *(&v70 + 1), v71, *(&v71 + 1), v72, *(&v72 + 1), v73, *(&v73 + 1), v74, *(&v74 + 1), 0);
    }

    v29 = 0;
    v3 = v63;
    v7 = v64;
  }

LABEL_41:
}

- (void)requestAppLinksIconDataForBundleID:(os_log_t)log withIconSize:.cold.2(os_log_t log)
{
  v1[0] = 67109120;
  v1[1] = 5;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[#App Links] App links icon info service did not finish within %d secs. Timeout has occurred", v1, 8u);
}

@end