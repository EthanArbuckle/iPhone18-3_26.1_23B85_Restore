@interface ACCPlatformLocationManager
+ (id)sharedManager;
- (ACCPlatformLocationManager)init;
- (BOOL)isSentenceArrayValidForUUID:(id)d;
- (BOOL)isSentenceTypeSupported:(int)supported forUUID:(id)d;
- (BOOL)resetLocationEndpointUUID:(id)d;
- (BOOL)sendGPRMCDataStatus:(BOOL)status valueV:(BOOL)v valueX:(BOOL)x forUUID:(id)d;
- (BOOL)setLocationEndpointUUID:(id)d withSupportedNMEASentences:(__CFArray *)sentences;
- (BOOL)setNMEAFilterList:(id)list forUUID:(id)d;
- (BOOL)startLocationUpdatesForUUID:(id)d;
- (BOOL)stopLocationUpdatesForUUID:(id)d;
- (unsigned)sentenceTypesBitmask:(id)bitmask forUUID:(id)d;
- (void)dealloc;
@end

@implementation ACCPlatformLocationManager

+ (id)sharedManager
{
  if (sharedManager_once_7 != -1)
  {
    +[ACCPlatformLocationManager sharedManager];
  }

  v3 = sharedManager_sharedInstance_7;

  return v3;
}

void __43__ACCPlatformLocationManager_sharedManager__block_invoke(id a1)
{
  sharedManager_sharedInstance_7 = objc_alloc_init(ACCPlatformLocationManager);

  _objc_release_x1();
}

- (ACCPlatformLocationManager)init
{
  v11.receiver = self;
  v11.super_class = ACCPlatformLocationManager;
  v2 = [(ACCPlatformLocationManager *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSRecursiveLock);
    v4 = *(v2 + 6);
    *(v2 + 6) = v3;

    v5 = *(v2 + 3);
    *(v2 + 3) = 0;

    v6 = *(v2 + 4);
    *(v2 + 4) = 0;

    *(v2 + 4) = 0;
    *(v2 + 12) = 0xFA00000000;
    v7 = *(v2 + 5);
    *(v2 + 5) = 0;

    v8 = dispatch_queue_create("locationPlatformEndpointFeatureHandlerQ", 0);
    v9 = *(v2 + 7);
    *(v2 + 7) = v8;
  }

  return v2;
}

- (void)dealloc
{
  [(ACCPlatformLocationManager *)self setEndpointUUID:0];
  [(ACCPlatformLocationManager *)self setPNMEAFilterList:0];
  [(ACCPlatformLocationManager *)self setSupportedNMEASentencesArray:0];
  [(ACCPlatformLocationManager *)self setAccessLock:0];
  v3.receiver = self;
  v3.super_class = ACCPlatformLocationManager;
  [(ACCPlatformLocationManager *)&v3 dealloc];
}

- (BOOL)setLocationEndpointUUID:(id)d withSupportedNMEASentences:(__CFArray *)sentences
{
  dCopy = d;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 8;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v9 = &_os_log_default;
    v8 = &_os_log_default;
  }

  else
  {
    v9 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412546;
    v27 = dCopy;
    v28 = 2112;
    v29[0] = sentences;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[#Location] setLocationEndpointUUID: %@, supportedNMEASentencesArray: %@", &v26, 0x16u);
  }

  accessLock = [(ACCPlatformLocationManager *)self accessLock];
  [accessLock lock];

  endpointUUID = [(ACCPlatformLocationManager *)self endpointUUID];
  if (endpointUUID && (v12 = endpointUUID, [(ACCPlatformLocationManager *)self supportedNMEASentencesArray], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v14 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v14 = &_os_log_default;
      v21 = &_os_log_default;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ACCPlatformLocationManager setLocationEndpointUUID:withSupportedNMEASentences:];
    }

    v20 = 0;
  }

  else
  {
    v15 = [dCopy copy];
    [(ACCPlatformLocationManager *)self setEndpointUUID:v15];

    v16 = [(__CFArray *)sentences copy];
    [(ACCPlatformLocationManager *)self setSupportedNMEASentencesArray:v16];

    [(ACCPlatformLocationManager *)self setSupportedNMEASentenceMask:[(ACCPlatformLocationManager *)self sentenceTypesBitmask:sentences forUUID:dCopy]];
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v14 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v14 = &_os_log_default;
      v17 = &_os_log_default;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      endpointUUID2 = [(ACCPlatformLocationManager *)self endpointUUID];
      supportedNMEASentenceMask = [(ACCPlatformLocationManager *)self supportedNMEASentenceMask];
      v26 = 138412546;
      v27 = endpointUUID2;
      v28 = 1024;
      LODWORD(v29[0]) = supportedNMEASentenceMask;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[#Location] setLocationEndpointUUID: %@, supportedNMEASentencesMask: %u", &v26, 0x12u);
    }

    v20 = 1;
  }

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v22 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v22 = &_os_log_default;
    v23 = &_os_log_default;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412802;
    v27 = dCopy;
    v28 = 1024;
    LODWORD(v29[0]) = v20;
    WORD2(v29[0]) = 2112;
    *(v29 + 6) = sentences;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[#Location] setLocationEndpointUUID: %@, result %d, supportedNMEASentencesArray: %@", &v26, 0x1Cu);
  }

  accessLock2 = [(ACCPlatformLocationManager *)self accessLock];
  [accessLock2 unlock];

  return v20;
}

- (BOOL)resetLocationEndpointUUID:(id)d
{
  dCopy = d;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 8;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v7 = &_os_log_default;
    v6 = &_os_log_default;
  }

  else
  {
    v7 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = dCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[#Location] resetLocationEndpointUUID: %@", &v22, 0xCu);
  }

  accessLock = [(ACCPlatformLocationManager *)self accessLock];
  [accessLock lock];

  endpointUUID = [(ACCPlatformLocationManager *)self endpointUUID];

  if (!endpointUUID)
  {
    v12 = logObjectForModule_35();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ACCPlatformLocationManager resetLocationEndpointUUID:];
    }

    goto LABEL_38;
  }

  if (!dCopy)
  {
    v12 = logObjectForModule_35();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ACCPlatformLocationManager resetLocationEndpointUUID:?];
    }

    goto LABEL_38;
  }

  endpointUUID2 = [(ACCPlatformLocationManager *)self endpointUUID];
  v11 = [endpointUUID2 isEqualToString:dCopy];

  if ((v11 & 1) == 0)
  {
    v12 = logObjectForModule_35();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      endpointUUID3 = [(ACCPlatformLocationManager *)self endpointUUID];
      v22 = 138412546;
      v23 = dCopy;
      v24 = 2112;
      *v25 = endpointUUID3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[#Location] not resetting location state. UUID passed does not match UUID that set it. endpointUUID: %@ self.endpointUUID: %@ ", &v22, 0x16u);
    }

LABEL_38:
    v16 = 0;
    goto LABEL_23;
  }

  [(ACCPlatformLocationManager *)self setEndpointUUID:0];
  [(ACCPlatformLocationManager *)self setSupportedNMEASentencesArray:0];
  [(ACCPlatformLocationManager *)self setSupportedNMEASentenceMask:0];
  [(ACCPlatformLocationManager *)self setBLocationStarted:0];
  [(ACCPlatformLocationManager *)self setPNMEAFilterList:0];
  [(ACCPlatformLocationManager *)self setSupportedNMEASentenceMask:0];
  [(ACCPlatformLocationManager *)self setMinNMEAIntervalMs:250];
  [(ACCPlatformLocationManager *)self setBNMEAFilterListNew:0];
  if (gLogObjects && gNumLogObjects >= 8)
  {
    v12 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v12 = &_os_log_default;
    v13 = &_os_log_default;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    supportedNMEASentenceMask = [(ACCPlatformLocationManager *)self supportedNMEASentenceMask];
    bLocationStarted = [(ACCPlatformLocationManager *)self bLocationStarted];
    v22 = 138412802;
    v23 = dCopy;
    v24 = 1024;
    *v25 = supportedNMEASentenceMask;
    *&v25[4] = 1024;
    *&v25[6] = bLocationStarted;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[#Location] resetting Location state for all endpoints. resetLocationEndpointUUID:%@ supportedNMEASentencesMask: %u, self.bLocationStarted: %d", &v22, 0x18u);
  }

  v16 = 1;
LABEL_23:

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v17 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v17 = &_os_log_default;
    v18 = &_os_log_default;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412546;
    v23 = dCopy;
    v24 = 1024;
    *v25 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[#Location] resetLocationEndpointUUID: %@, result %d", &v22, 0x12u);
  }

  accessLock2 = [(ACCPlatformLocationManager *)self accessLock];
  [accessLock2 unlock];

  return v16;
}

- (BOOL)startLocationUpdatesForUUID:(id)d
{
  dCopy = d;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 8;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v7 = &_os_log_default;
    v6 = &_os_log_default;
  }

  else
  {
    v7 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v64 = dCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[#Location] startLocationUpdatesForUUID = %@", buf, 0xCu);
  }

  accessLock = [(ACCPlatformLocationManager *)self accessLock];
  [accessLock lock];

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v9 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v9 = &_os_log_default;
    v10 = &_os_log_default;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    bLocationStarted = [(ACCPlatformLocationManager *)self bLocationStarted];
    bNMEAFilterListNew = [(ACCPlatformLocationManager *)self bNMEAFilterListNew];
    pNMEAFilterList = [(ACCPlatformLocationManager *)self pNMEAFilterList];
    pNMEAFilterList2 = [(ACCPlatformLocationManager *)self pNMEAFilterList];
    v15 = [pNMEAFilterList2 count];
    *buf = 138413314;
    *v64 = dCopy;
    *&v64[8] = 1024;
    *&v64[10] = bLocationStarted;
    *&v64[14] = 1024;
    *&v64[16] = bNMEAFilterListNew;
    v65 = 2112;
    *v66 = pNMEAFilterList;
    *&v66[8] = 2048;
    *&v66[10] = v15;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[#Location] startLocationUpdatesForUUID = %@, bLocationStarted=%d bNMEAFilterListNew=%d pNMEAFilterList=%@ [count=%lu]", buf, 0x2Cu);
  }

  if (!dCopy)
  {
    [ACCPlatformLocationManager startLocationUpdatesForUUID:];
LABEL_64:
    v19 = 0;
LABEL_65:
    v36 = 0;
    goto LABEL_66;
  }

  endpointUUID = [(ACCPlatformLocationManager *)self endpointUUID];
  v17 = [endpointUUID isEqualToString:dCopy];

  if ((v17 & 1) == 0)
  {
    [(ACCPlatformLocationManager *)dCopy startLocationUpdatesForUUID:?];
    goto LABEL_64;
  }

  if ([(ACCPlatformLocationManager *)self bLocationStarted]&& ![(ACCPlatformLocationManager *)self bNMEAFilterListNew])
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v38 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v38 = &_os_log_default;
      v43 = &_os_log_default;
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      bLocationStarted2 = [(ACCPlatformLocationManager *)self bLocationStarted];
      endpointUUID2 = [(ACCPlatformLocationManager *)self endpointUUID];
      *buf = 67109378;
      *v64 = bLocationStarted2;
      *&v64[4] = 2112;
      *&v64[6] = endpointUUID2;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[#Location] Waiting for bLocationStarted(%d), or NMEAFilterList same. skipping start location update for endpoint: %@", buf, 0x12u);
    }

    goto LABEL_64;
  }

  [(ACCPlatformLocationManager *)self setBLocationStarted:1];
  pNMEAFilterList3 = [(ACCPlatformLocationManager *)self pNMEAFilterList];
  v19 = [pNMEAFilterList3 count];

  if (!v19)
  {
    [ACCPlatformLocationManager startLocationUpdatesForUUID:?];
    goto LABEL_65;
  }

  v20 = [NSNumber numberWithInteger:[(ACCPlatformLocationManager *)self minNMEAIntervalMs]];
  v21 = [NSNumber numberWithInteger:0];
  v22 = [NSMutableDictionary dictionaryWithObject:v20 forKey:v21];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  selfCopy = self;
  obj = [(ACCPlatformLocationManager *)self pNMEAFilterList];
  v23 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v60;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v60 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v59 + 1) + 8 * i);
        nmeaIntervalParamID = [v27 nmeaIntervalParamID];
        nmeaIntervalMinMs = [v27 nmeaIntervalMinMs];
        v30 = [NSNumber numberWithBool:1];
        v31 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v27 nmeaTypeParamID]);
        [v22 setObject:v30 forKey:v31];

        if (nmeaIntervalParamID)
        {
          v32 = nmeaIntervalMinMs == 0;
        }

        else
        {
          v32 = 1;
        }

        if (!v32)
        {
          v33 = [NSNumber numberWithInteger:nmeaIntervalMinMs];
          v34 = [NSNumber numberWithInteger:nmeaIntervalParamID];
          [v22 setObject:v33 forKey:v34];
        }
      }

      v24 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
    }

    while (v24);
  }

  self = selfCopy;
  endpointUUID3 = [(ACCPlatformLocationManager *)selfCopy endpointUUID];
  v36 = platform_power_setAccessoryPowerMode(endpointUUID3, 0, 1);

  if ((v36 & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v37 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v37 = &_os_log_default;
      v39 = &_os_log_default;
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [ACCPlatformLocationManager startLocationUpdatesForUUID:selfCopy];
    }
  }

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v40 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v40 = &_os_log_default;
    v41 = &_os_log_default;
  }

  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v64 = dCopy;
    *&v64[8] = 2112;
    *&v64[10] = v22;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[#Location] startLocationUpdatesForUUID %@, startUpdates: attributes %@", buf, 0x16u);
  }

  endpointFeatureHandlerQueue = selfCopy->_endpointFeatureHandlerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __58__ACCPlatformLocationManager_startLocationUpdatesForUUID___block_invoke;
  block[3] = &unk_100225A08;
  block[4] = selfCopy;
  v19 = v22;
  v58 = v19;
  dispatch_async(endpointFeatureHandlerQueue, block);
  [(ACCPlatformLocationManager *)selfCopy setBNMEAFilterListNew:0];

LABEL_66:
  if (gLogObjects && gNumLogObjects >= 8)
  {
    v46 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v46 = &_os_log_default;
    v47 = &_os_log_default;
  }

  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    bLocationStarted3 = [(ACCPlatformLocationManager *)self bLocationStarted];
    bNMEAFilterListNew2 = [(ACCPlatformLocationManager *)self bNMEAFilterListNew];
    pNMEAFilterList4 = [(ACCPlatformLocationManager *)self pNMEAFilterList];
    pNMEAFilterList5 = [(ACCPlatformLocationManager *)self pNMEAFilterList];
    v52 = [pNMEAFilterList5 count];
    *buf = 138413570;
    *v64 = dCopy;
    *&v64[8] = 1024;
    *&v64[10] = v36;
    *&v64[14] = 1024;
    *&v64[16] = bLocationStarted3;
    v65 = 1024;
    *v66 = bNMEAFilterListNew2;
    *&v66[4] = 2112;
    *&v66[6] = pNMEAFilterList4;
    *&v66[14] = 2048;
    *&v66[16] = v52;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "[#Location] startLocationUpdatesForUUID = %@, result %d, bLocationStarted=%d bNMEAFilterListNew=%d pNMEAFilterList=%@ [count=%lu]", buf, 0x32u);
  }

  accessLock2 = [(ACCPlatformLocationManager *)self accessLock];
  [accessLock2 unlock];

  return v36;
}

void __58__ACCPlatformLocationManager_startLocationUpdatesForUUID___block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 8;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) endpointUUID];
    v6 = *(a1 + 40);
    v13 = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#Location] startLocationUpdatesForUUID %@, invoke startUpdates: attributes %@", &v13, 0x16u);
  }

  v8 = *(a1 + 32);
  v7 = a1 + 32;
  v9 = [v8 endpointUUID];
  v10 = accFeatureHandlers_invokeHandler(v9, 35, *(v7 + 8));

  if ((v10 & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v11 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v11 = &_os_log_default;
      v12 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __58__ACCPlatformLocationManager_startLocationUpdatesForUUID___block_invoke_cold_3(v7);
    }
  }
}

- (BOOL)sendGPRMCDataStatus:(BOOL)status valueV:(BOOL)v valueX:(BOOL)x forUUID:(id)d
{
  xCopy = x;
  vCopy = v;
  statusCopy = status;
  dCopy = d;
  accessLock = [(ACCPlatformLocationManager *)self accessLock];
  [accessLock lock];

  if (!dCopy)
  {
    v18 = logObjectForModule_35();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(ACCPlatformLocationManager *)v18 sendGPRMCDataStatus:v25 valueV:v26 valueX:v27 forUUID:v28, v29, v30, v31];
    }

    goto LABEL_17;
  }

  endpointUUID = [(ACCPlatformLocationManager *)self endpointUUID];
  v13 = [endpointUUID isEqualToString:dCopy];

  if ((v13 & 1) == 0)
  {
    v18 = logObjectForModule_35();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ACCPlatformLocationManager sendGPRMCDataStatus:valueV:valueX:forUUID:];
    }

    goto LABEL_17;
  }

  if (![(ACCPlatformLocationManager *)self bLocationStarted])
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v18 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v18 = &_os_log_default;
      v20 = &_os_log_default;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ACCPlatformLocationManager sendGPRMCDataStatus:? valueV:? valueX:? forUUID:?];
    }

LABEL_17:
    v19 = 0;
    goto LABEL_18;
  }

  v14 = objc_alloc_init(NSMutableDictionary);
  v15 = objc_alloc_init(NSMutableArray);
  if (!statusCopy)
  {
    if (!vCopy)
    {
      goto LABEL_6;
    }

LABEL_20:
    v24 = [NSNumber numberWithInt:1];
    [v15 addObject:v24];

    if (!xCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v23 = [NSNumber numberWithInt:0];
  [v15 addObject:v23];

  if (vCopy)
  {
    goto LABEL_20;
  }

LABEL_6:
  if (xCopy)
  {
LABEL_7:
    v16 = [NSNumber numberWithInt:2];
    [v15 addObject:v16];
  }

LABEL_8:
  [v14 setObject:v15 forKey:@"GPRMCDataStatus"];
  endpointFeatureHandlerQueue = self->_endpointFeatureHandlerQueue;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = __72__ACCPlatformLocationManager_sendGPRMCDataStatus_valueV_valueX_forUUID___block_invoke;
  v32[3] = &unk_100225A08;
  v32[4] = self;
  v33 = v14;
  v18 = v14;
  dispatch_async(endpointFeatureHandlerQueue, v32);

  v19 = 1;
LABEL_18:

  accessLock2 = [(ACCPlatformLocationManager *)self accessLock];
  [accessLock2 unlock];

  return v19;
}

void __72__ACCPlatformLocationManager_sendGPRMCDataStatus_valueV_valueX_forUUID___block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 8;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) endpointUUID];
    v6 = *(a1 + 40);
    v13 = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#Location] sendGPRMCDataStatus %@, invoke sendGPRMCDataStatus: attributes %@", &v13, 0x16u);
  }

  v8 = *(a1 + 32);
  v7 = a1 + 32;
  v9 = [v8 endpointUUID];
  v10 = accFeatureHandlers_invokeHandler(v9, 37, *(v7 + 8));

  if ((v10 & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v11 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v11 = &_os_log_default;
      v12 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __58__ACCPlatformLocationManager_startLocationUpdatesForUUID___block_invoke_cold_3(v7);
    }
  }
}

- (BOOL)stopLocationUpdatesForUUID:(id)d
{
  dCopy = d;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 8;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v7 = &_os_log_default;
    v6 = &_os_log_default;
  }

  else
  {
    v7 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = dCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[#Location] stopLocationUpdatesForUUID = %@", buf, 0xCu);
  }

  accessLock = [(ACCPlatformLocationManager *)self accessLock];
  [accessLock lock];

  if (!dCopy)
  {
    [ACCPlatformLocationManager startLocationUpdatesForUUID:];
LABEL_28:
    v13 = 0;
    v15 = 0;
    goto LABEL_36;
  }

  endpointUUID = [(ACCPlatformLocationManager *)self endpointUUID];
  v10 = [endpointUUID isEqualToString:dCopy];

  if ((v10 & 1) == 0)
  {
    [(ACCPlatformLocationManager *)dCopy startLocationUpdatesForUUID:?];
    goto LABEL_28;
  }

  if (![(ACCPlatformLocationManager *)self bLocationStarted])
  {
    [ACCPlatformLocationManager stopLocationUpdatesForUUID:?];
    goto LABEL_28;
  }

  if (![(ACCPlatformLocationManager *)self bLocationStarted])
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v17 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v17 = &_os_log_default;
      v18 = &_os_log_default;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ACCPlatformLocationManager sendGPRMCDataStatus:? valueV:? valueX:? forUUID:?];
    }

    goto LABEL_28;
  }

  v11 = objc_alloc_init(NSMutableDictionary);
  endpointFeatureHandlerQueue = self->_endpointFeatureHandlerQueue;
  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = __57__ACCPlatformLocationManager_stopLocationUpdatesForUUID___block_invoke;
  v28 = &unk_100225A08;
  selfCopy = self;
  v13 = v11;
  v30 = v13;
  dispatch_async(endpointFeatureHandlerQueue, &v25);
  [(ACCPlatformLocationManager *)self setBLocationStarted:0, v25, v26, v27, v28, selfCopy];
  endpointUUID2 = [(ACCPlatformLocationManager *)self endpointUUID];
  v15 = platform_power_setAccessoryPowerMode(endpointUUID2, 0, 0);

  if ((v15 & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v16 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v16 = &_os_log_default;
      v19 = &_os_log_default;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ACCPlatformLocationManager startLocationUpdatesForUUID:?];
    }
  }

LABEL_36:
  if (gLogObjects && gNumLogObjects >= 8)
  {
    v20 = *(gLogObjects + 56);
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

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    bLocationStarted = [(ACCPlatformLocationManager *)self bLocationStarted];
    *buf = 138412802;
    v32 = dCopy;
    v33 = 1024;
    v34 = v15;
    v35 = 1024;
    v36 = bLocationStarted;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[#Location] stopLocationUpdatesForUUID = %@, result %d, bLocationStarted=%d", buf, 0x18u);
  }

  accessLock2 = [(ACCPlatformLocationManager *)self accessLock];
  [accessLock2 unlock];

  return v15;
}

void __57__ACCPlatformLocationManager_stopLocationUpdatesForUUID___block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 8;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) endpointUUID];
    v6 = *(a1 + 40);
    v13 = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#Location] stopLocationUpdatesForUUID %@, invoke stopUpdates: attributes %@", &v13, 0x16u);
  }

  v8 = *(a1 + 32);
  v7 = a1 + 32;
  v9 = [v8 endpointUUID];
  v10 = accFeatureHandlers_invokeHandler(v9, 36, *(v7 + 8));

  if ((v10 & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v11 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v11 = &_os_log_default;
      v12 = &_os_log_default;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __58__ACCPlatformLocationManager_startLocationUpdatesForUUID___block_invoke_cold_3(v7);
    }
  }
}

- (BOOL)setNMEAFilterList:(id)list forUUID:(id)d
{
  listCopy = list;
  dCopy = d;
  pNMEAFilterList = [(ACCPlatformLocationManager *)self pNMEAFilterList];
  v9 = [pNMEAFilterList copy];

  minNMEAIntervalMs = [(ACCPlatformLocationManager *)self minNMEAIntervalMs];
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 8;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v13 = &_os_log_default;
    v12 = &_os_log_default;
  }

  else
  {
    v13 = *(gLogObjects + 56);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v76 = dCopy;
    v77 = 2112;
    *v78 = listCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[#Location] setNMEAFilterList: %@, pFilterList %@", buf, 0x16u);
  }

  accessLock = [(ACCPlatformLocationManager *)self accessLock];
  [accessLock lock];

  if (!listCopy)
  {
    [ACCPlatformLocationManager setNMEAFilterList:forUUID:];
LABEL_120:
    v60 = 0;
    goto LABEL_108;
  }

  if (!dCopy)
  {
    [ACCPlatformLocationManager startLocationUpdatesForUUID:];
    goto LABEL_120;
  }

  endpointUUID = [(ACCPlatformLocationManager *)self endpointUUID];
  v16 = [endpointUUID isEqualToString:dCopy];

  if ((v16 & 1) == 0)
  {
    [(ACCPlatformLocationManager *)dCopy startLocationUpdatesForUUID:?];
    goto LABEL_120;
  }

  v17 = +[NSMutableArray array];
  [(ACCPlatformLocationManager *)self setPNMEAFilterList:v17];

  [(ACCPlatformLocationManager *)self setMinNMEAIntervalMs:250];
  v18 = [(ACCPlatformLocationManager *)self isSentenceArrayValidForUUID:dCopy];
  if (gLogObjects)
  {
    v19 = gNumLogObjects <= 7;
  }

  else
  {
    v19 = 1;
  }

  v20 = !v19;
  if (v18)
  {
    v69 = minNMEAIntervalMs;
    if (v20)
    {
      v21 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v21 = &_os_log_default;
      v23 = &_os_log_default;
    }

    v70 = v9;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v76 = dCopy;
      v77 = 2112;
      *v78 = listCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[#Location] SentenceArrayValid: %@, pFilterList %@", buf, 0x16u);
    }

    v24 = dCopy;

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v25 = listCopy;
    v26 = [v25 countByEnumeratingWithState:&v71 objects:v85 count:16];
    if (v26)
    {
      v28 = v26;
      v29 = *v72;
      *&v27 = 134218240;
      v68 = v27;
      do
      {
        v30 = 0;
        do
        {
          if (*v72 != v29)
          {
            objc_enumerationMutation(v25);
          }

          v31 = *(*(&v71 + 1) + 8 * v30);
          uTF8String = [v31 UTF8String];
          if (!strcmp("GPGGA", uTF8String))
          {
            v36 = 17;
            v37 = 1;
            v38 = 32769;
LABEL_47:
            v39 = 250;
            goto LABEL_48;
          }

          if (!strcmp("GPRMC", uTF8String))
          {
            v36 = 18;
            v37 = 2;
            v38 = 32770;
            goto LABEL_47;
          }

          if (!strcmp("GPGSV", uTF8String))
          {
            v36 = 19;
            v37 = 3;
            v38 = 32771;
            v39 = 83;
          }

          else if (!strcmp("PASCD", uTF8String))
          {
            v37 = 4;
            v38 = 32772;
            v39 = 20;
            v36 = 20;
          }

          else
          {
            if (!strcmp("PAGCD", uTF8String))
            {
              v36 = 21;
              v37 = 5;
              v38 = 32773;
            }

            else
            {
              if (strcmp("PAACD", uTF8String))
              {
                if (strcmp("GPHDT", uTF8String))
                {
                  v33 = gLogObjects;
                  v34 = gNumLogObjects;
                  if (gLogObjects && gNumLogObjects >= 8)
                  {
                    v35 = *(gLogObjects + 56);
                  }

                  else
                  {
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      *buf = v68;
                      v76 = v33;
                      v77 = 1024;
                      *v78 = v34;
                      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                    }

                    v35 = &_os_log_default;
                    v41 = &_os_log_default;
                  }

                  if (os_log_type_enabled(&v35->super, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v76 = v31;
                    _os_log_impl(&_mh_execute_header, &v35->super, OS_LOG_TYPE_DEFAULT, "[#Location] huh? unknown NMEAString=%@", buf, 0xCu);
                  }

                  goto LABEL_52;
                }

                v36 = 23;
                v37 = 7;
                v38 = 32775;
                goto LABEL_47;
              }

              v36 = 22;
              v37 = 6;
              v38 = 32774;
            }

            v39 = 20;
          }

LABEL_48:
          if ([(ACCPlatformLocationManager *)self isSentenceTypeSupported:v36 forUUID:v24, v68])
          {
            v35 = [[iAP2NMEAFilterParam alloc] initWithTypeParamID:v37 andIntervalParamID:v38 andIntervalMinMs:v39];
            pNMEAFilterList2 = [(ACCPlatformLocationManager *)self pNMEAFilterList];
            [pNMEAFilterList2 addObject:v35];

            if (v39 < [(ACCPlatformLocationManager *)self minNMEAIntervalMs])
            {
              [(ACCPlatformLocationManager *)self setMinNMEAIntervalMs:v39];
            }
          }

          else
          {
            v35 = 0;
          }

LABEL_52:

          v30 = v30 + 1;
        }

        while (v28 != v30);
        v42 = [v25 countByEnumeratingWithState:&v71 objects:v85 count:16];
        v28 = v42;
      }

      while (v42);
    }

    dCopy = v24;
    v9 = v70;
    minNMEAIntervalMs = v69;
  }

  else
  {
    if (v20)
    {
      v22 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v22 = &_os_log_default;
      v43 = &_os_log_default;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v76 = dCopy;
      v77 = 2112;
      *v78 = listCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[#Location] NOT SentenceArrayValid: %@, pFilterList %@", buf, 0x16u);
    }

    v44 = -1;
    do
    {
      v45 = v44 + 1;
      if (v44 <= 2)
      {
        v46 = [[iAP2NMEAFilterParam alloc] initWithTypeParamID:v45 andIntervalParamID:0 andIntervalMinMs:0];
        pNMEAFilterList3 = [(ACCPlatformLocationManager *)self pNMEAFilterList];
        [pNMEAFilterList3 addObject:v46];

        if ([(ACCPlatformLocationManager *)self minNMEAIntervalMs]>= 0xFB)
        {
          [(ACCPlatformLocationManager *)self setMinNMEAIntervalMs:250];
        }
      }

      v44 = v45;
    }

    while (v45 != 7);
  }

  pNMEAFilterList4 = [(ACCPlatformLocationManager *)self pNMEAFilterList];
  -[ACCPlatformLocationManager setBNMEAFilterListNew:](self, "setBNMEAFilterListNew:", [pNMEAFilterList4 isEqualToArray:v9] ^ 1);

  if (gLogObjects && gNumLogObjects >= 8)
  {
    v49 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v49 = &_os_log_default;
    v50 = &_os_log_default;
  }

  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    bNMEAFilterListNew = [(ACCPlatformLocationManager *)self bNMEAFilterListNew];
    pNMEAFilterList5 = [(ACCPlatformLocationManager *)self pNMEAFilterList];
    minNMEAIntervalMs2 = [(ACCPlatformLocationManager *)self minNMEAIntervalMs];
    *buf = 138413570;
    v76 = dCopy;
    v77 = 1024;
    *v78 = bNMEAFilterListNew;
    *&v78[4] = 2112;
    *&v78[6] = pNMEAFilterList5;
    v79 = 2112;
    v80 = v9;
    v81 = 1024;
    v82 = minNMEAIntervalMs;
    v83 = 1024;
    v84 = minNMEAIntervalMs2;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "[#Location] setNMEAFilterList: %@, bNMEAFilterListNew %d, pNMEAFilterList %@ pNMEAFilterListOld %@, minNMEAIntervalMs %d -> %d", buf, 0x32u);
  }

  if (![(ACCPlatformLocationManager *)self bNMEAFilterListNew])
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v54 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v54 = &_os_log_default;
      v55 = &_os_log_default;
    }

    if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_106;
    }

    *buf = 0;
    v56 = "[#Location] self.bNMEAFilterListNew is false, not starting location messages since filter is same.";
    goto LABEL_105;
  }

  if (![(ACCPlatformLocationManager *)self bLocationStarted])
  {
    if (gLogObjects && gNumLogObjects >= 8)
    {
      v54 = *(gLogObjects + 56);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v54 = &_os_log_default;
      v57 = &_os_log_default;
    }

    if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_106;
    }

    *buf = 0;
    v56 = "[#Location] waiting for start location updates - skipping start location message to acc";
LABEL_105:
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, v56, buf, 2u);
LABEL_106:

    goto LABEL_107;
  }

  [(ACCPlatformLocationManager *)self startLocationUpdatesForUUID:dCopy];
LABEL_107:
  pNMEAFilterList6 = [(ACCPlatformLocationManager *)self pNMEAFilterList];
  v59 = [pNMEAFilterList6 count];

  v9 = 0;
  v60 = v59 != 0;
LABEL_108:
  if (gLogObjects && gNumLogObjects >= 8)
  {
    v61 = *(gLogObjects + 56);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v61 = &_os_log_default;
    v62 = &_os_log_default;
  }

  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    pNMEAFilterList7 = [(ACCPlatformLocationManager *)self pNMEAFilterList];
    v64 = [pNMEAFilterList7 count];
    minNMEAIntervalMs3 = [(ACCPlatformLocationManager *)self minNMEAIntervalMs];
    *buf = 138413058;
    v76 = dCopy;
    v77 = 1024;
    *v78 = v60;
    *&v78[4] = 2048;
    *&v78[6] = v64;
    v79 = 1024;
    LODWORD(v80) = minNMEAIntervalMs3;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "[#Location] setNMEAFilterList: %@, result %d, pNMEAFilterList.count %lu minNMEAIntervalMs %u", buf, 0x22u);
  }

  accessLock2 = [(ACCPlatformLocationManager *)self accessLock];
  [accessLock2 unlock];

  return v60;
}

- (BOOL)isSentenceTypeSupported:(int)supported forUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    endpointUUID = [(ACCPlatformLocationManager *)self endpointUUID];
    v8 = [endpointUUID isEqualToString:dCopy];

    if (v8)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      supportedNMEASentencesArray = [(ACCPlatformLocationManager *)self supportedNMEASentencesArray];
      v10 = [supportedNMEASentencesArray countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v24;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v24 != v12)
            {
              objc_enumerationMutation(supportedNMEASentencesArray);
            }

            if ([*(*(&v23 + 1) + 8 * i) intValue] == supported)
            {
              v14 = 1;
              goto LABEL_13;
            }
          }

          v11 = [supportedNMEASentencesArray countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      supportedNMEASentencesArray = logObjectForModule_35();
      if (os_log_type_enabled(supportedNMEASentencesArray, OS_LOG_TYPE_ERROR))
      {
        [ACCPlatformLocationManager sendGPRMCDataStatus:valueV:valueX:forUUID:];
      }
    }
  }

  else
  {
    supportedNMEASentencesArray = logObjectForModule_35();
    if (os_log_type_enabled(supportedNMEASentencesArray, OS_LOG_TYPE_ERROR))
    {
      [(ACCPlatformLocationManager *)supportedNMEASentencesArray sendGPRMCDataStatus:v16 valueV:v17 valueX:v18 forUUID:v19, v20, v21, v22];
    }
  }

  v14 = 0;
LABEL_13:

  return v14;
}

- (BOOL)isSentenceArrayValidForUUID:(id)d
{
  dCopy = d;
  supportedNMEASentencesArray = [(ACCPlatformLocationManager *)self supportedNMEASentencesArray];
  if (supportedNMEASentencesArray && (v6 = supportedNMEASentencesArray, -[ACCPlatformLocationManager supportedNMEASentencesArray](self, "supportedNMEASentencesArray"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v6, v8))
  {
    v9 = 1;
  }

  else
  {
    if (gLogObjects)
    {
      v10 = gNumLogObjects < 8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v12 = &_os_log_default;
      v11 = &_os_log_default;
    }

    else
    {
      v12 = *(gLogObjects + 56);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = dCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[#Location] no supportedNMEASentences for UUID %@, result = false", &v14, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

- (unsigned)sentenceTypesBitmask:(id)bitmask forUUID:(id)d
{
  bitmaskCopy = bitmask;
  dCopy = d;
  if (!dCopy)
  {
    v10 = logObjectForModule_35();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ACCPlatformLocationManager *)v10 sendGPRMCDataStatus:v18 valueV:v19 valueX:v20 forUUID:v21, v22, v23, v24];
    }

    goto LABEL_18;
  }

  endpointUUID = [(ACCPlatformLocationManager *)self endpointUUID];
  v9 = [endpointUUID isEqualToString:dCopy];

  if ((v9 & 1) == 0)
  {
    v10 = logObjectForModule_35();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ACCPlatformLocationManager sendGPRMCDataStatus:valueV:valueX:forUUID:];
    }

    goto LABEL_18;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = bitmaskCopy;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v11)
  {
LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

  v12 = v11;
  v13 = 0;
  v14 = *v27;
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v27 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = [*(*(&v26 + 1) + 8 * i) shortValue] - 17;
      if (v16 > 6)
      {
        v17 = 0;
      }

      else
      {
        v17 = dword_1001C3EF0[v16];
      }

      v13 |= v17;
    }

    v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v12);
LABEL_19:

  return v13;
}

- (void)setLocationEndpointUUID:withSupportedNMEASentences:.cold.3()
{
  OUTLINED_FUNCTION_7_23();
  v2 = [OUTLINED_FUNCTION_6_30(v0 v1)];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_40_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)resetLocationEndpointUUID:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 endpointUUID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_40_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)resetLocationEndpointUUID:.cold.4()
{
  OUTLINED_FUNCTION_7_23();
  v2 = [OUTLINED_FUNCTION_6_30(v0 v1)];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_40_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)startLocationUpdatesForUUID:(uint64_t)a1 .cold.3(uint64_t a1, void *a2)
{
  v4 = logObjectForModule_35();
  if (OUTLINED_FUNCTION_16(v4))
  {
    v5 = [a2 endpointUUID];
    OUTLINED_FUNCTION_1_32();
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
  }
}

- (void)startLocationUpdatesForUUID:(void *)a1 .cold.6(void *a1)
{
  v1 = [a1 endpointUUID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_40_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)startLocationUpdatesForUUID:(void *)a1 .cold.8(void *a1)
{
  v3 = logObjectForModule_35();
  if (OUTLINED_FUNCTION_16(v3))
  {
    v4 = [a1 endpointUUID];
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

- (void)startLocationUpdatesForUUID:.cold.9()
{
  v1 = logObjectForModule_35();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void __58__ACCPlatformLocationManager_startLocationUpdatesForUUID___block_invoke_cold_3(id *a1)
{
  v1 = [*a1 endpointUUID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_40_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)sendGPRMCDataStatus:valueV:valueX:forUUID:.cold.1()
{
  OUTLINED_FUNCTION_7_23();
  v2 = [OUTLINED_FUNCTION_6_30(v0 v1)];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_40_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)sendGPRMCDataStatus:(void *)a1 valueV:valueX:forUUID:.cold.3(void *a1)
{
  v1 = [a1 endpointUUID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_40_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)stopLocationUpdatesForUUID:(void *)a1 .cold.3(void *a1)
{
  v3 = logObjectForModule_35();
  if (OUTLINED_FUNCTION_16(v3))
  {
    v4 = [a1 endpointUUID];
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

- (void)setNMEAFilterList:forUUID:.cold.9()
{
  v1 = logObjectForModule_35();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

@end