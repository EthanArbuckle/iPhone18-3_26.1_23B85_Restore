@interface CWFHomeManager
+ (id)cwfHomeManagerWithDelegate:(id)delegate;
- (BOOL)initHomeManagerInstance;
- (CWFHomeManager)initWithDelegate:(id)delegate;
- (id)getServiceEvents;
- (id)getServiceTypeStringFor:(int64_t)for;
- (int)createServiceObjectFor:(int64_t)for withParams:(id)params andAccessory:(id)accessory;
- (int)registerForAccessoryStateChange:(id)change withParams:(id)params forCWFHMServiceType:(int64_t)type;
- (void)dealloc;
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)removeObjectForServieType:(int64_t)type withUUID:(id)d;
@end

@implementation CWFHomeManager

+ (id)cwfHomeManagerWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [[CWFHomeManager alloc] initWithDelegate:delegateCopy];

  return v4;
}

- (BOOL)initHomeManagerInstance
{
  v32 = *MEMORY[0x1E69E9840];
  sub_1E0D32224();
  if (!objc_opt_class())
  {
    v21 = CWFGetOSLog();
    if (v21)
    {
      defaultPrivateConfiguration = CWFGetOSLog();
    }

    else
    {
      defaultPrivateConfiguration = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(defaultPrivateConfiguration, OS_LOG_TYPE_ERROR))
    {
      *v29 = 136446722;
      *&v29[4] = "[CWFHomeManager initHomeManagerInstance]";
      *&v29[12] = 2082;
      *&v29[14] = "CWFHomeManager.m";
      *&v29[22] = 1024;
      LODWORD(v30) = 90;
      _os_log_send_and_compose_impl();
    }

    v4 = 0;
    goto LABEL_11;
  }

  _homeManager = [(CWFHomeManager *)self _homeManager];

  if (!_homeManager)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v5 = qword_1ED7E3A30;
    v28 = qword_1ED7E3A30;
    if (!qword_1ED7E3A30)
    {
      *v29 = MEMORY[0x1E69E9820];
      *&v29[8] = 3221225472;
      *&v29[16] = sub_1E0D33FB8;
      v30 = &unk_1E86E5600;
      v31 = &v25;
      sub_1E0D33E74();
      Class = objc_getClass("HMFLocationAuthorization");
      *(v31[1] + 24) = Class;
      qword_1ED7E3A30 = *(v31[1] + 24);
      v5 = v26[3];
    }

    v7 = v5;
    _Block_object_dispose(&v25, 8);
    v8 = [v5 alloc];
    v9 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/PrivateFrameworks/MobileWiFi.framework"];
    v10 = [v8 initWithBundle:v9];
    [(CWFHomeManager *)self set_homeLocationAuthorization:v10];

    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v11 = qword_1ED7E3A38;
    v28 = qword_1ED7E3A38;
    if (!qword_1ED7E3A38)
    {
      *v29 = MEMORY[0x1E69E9820];
      *&v29[8] = 3221225472;
      *&v29[16] = sub_1E0D34008;
      v30 = &unk_1E86E5600;
      v31 = &v25;
      sub_1E0D33E74();
      v12 = objc_getClass("HMMutableHomeManagerConfiguration");
      *(v31[1] + 24) = v12;
      qword_1ED7E3A38 = *(v31[1] + 24);
      v11 = v26[3];
    }

    v13 = v11;
    _Block_object_dispose(&v25, 8);
    defaultPrivateConfiguration = [v11 defaultPrivateConfiguration];
    [defaultPrivateConfiguration setOptions:576];
    [defaultPrivateConfiguration setAdaptive:1];
    _homeLocationAuthorization = [(CWFHomeManager *)self _homeLocationAuthorization];
    [defaultPrivateConfiguration setLocationAuthorization:_homeLocationAuthorization];

    [defaultPrivateConfiguration setCachePolicy:0];
    v16 = [objc_alloc(sub_1E0D32224()) initWithHomeMangerConfiguration:defaultPrivateConfiguration];
    [(CWFHomeManager *)self set_homeManager:v16];

    _homeManager2 = [(CWFHomeManager *)self _homeManager];
    v4 = _homeManager2 != 0;

    if (v4)
    {
      _homeManager3 = [(CWFHomeManager *)self _homeManager];
      [_homeManager3 setDelegate:self];
    }

    else
    {
      v23 = CWFGetOSLog();
      if (v23)
      {
        _homeManager3 = CWFGetOSLog();
      }

      else
      {
        _homeManager3 = MEMORY[0x1E69E9C10];
        v24 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(_homeManager3, OS_LOG_TYPE_ERROR))
      {
        *v29 = 136446722;
        *&v29[4] = "[CWFHomeManager initHomeManagerInstance]";
        *&v29[12] = 2082;
        *&v29[14] = "CWFHomeManager.m";
        *&v29[22] = 1024;
        LODWORD(v30) = 103;
        _os_log_send_and_compose_impl();
      }
    }

LABEL_11:
    goto LABEL_12;
  }

  v4 = 0;
LABEL_12:
  v19 = *MEMORY[0x1E69E9840];
  return v4;
}

- (CWFHomeManager)initWithDelegate:(id)delegate
{
  v32 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  v25.receiver = self;
  v25.super_class = CWFHomeManager;
  v5 = [(CWFHomeManager *)&v25 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.wifi.CWFHomeManager", 0);
    [(CWFHomeManager *)v5 set_serviceQueue:v6];

    [(CWFHomeManager *)v5 set_isHomeInformationAvailable:0];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(CWFHomeManager *)v5 set_serviceObjects:dictionary];

    [(CWFHomeManager *)v5 set_autoDataColletor:0];
    [(CWFHomeManager *)v5 set_delegate:delegateCopy];
    _delegate = [(CWFHomeManager *)v5 _delegate];

    if (_delegate)
    {
      _delegate2 = [(CWFHomeManager *)v5 _delegate];
      getServiceEvents = [(CWFHomeManager *)v5 getServiceEvents];
      v11 = [_delegate2 startMonitoringSupportedEvents:getServiceEvents];

      if ([v11 code])
      {
        v12 = CWFGetOSLog();
        if (v12)
        {
          v13 = CWFGetOSLog();
        }

        else
        {
          v13 = MEMORY[0x1E69E9C10];
          v14 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v26 = 136446722;
          v27 = "[CWFHomeManager initWithDelegate:]";
          v28 = 2082;
          v29 = "CWFHomeManager.m";
          v30 = 1024;
          v31 = 131;
          LODWORD(v24) = 28;
          v23 = &v26;
          _os_log_send_and_compose_impl();
        }
      }

      if ([(CWFHomeManager *)v5 initHomeManagerInstance:v23])
      {
        _homeManager = [(CWFHomeManager *)v5 _homeManager];
        v16 = [_homeManager _beginActiveAssertionWithReason:@"com.apple.wifi.HMNotificationAssertion"];
        [(CWFHomeManager *)v5 set_activeAssertion:v16];
      }

      else
      {

        v20 = CWFGetOSLog();
        if (v20)
        {
          _homeManager = CWFGetOSLog();
        }

        else
        {
          _homeManager = MEMORY[0x1E69E9C10];
          v22 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(_homeManager, OS_LOG_TYPE_ERROR))
        {
          v26 = 136446722;
          v27 = "[CWFHomeManager initWithDelegate:]";
          v28 = 2082;
          v29 = "CWFHomeManager.m";
          v30 = 1024;
          v31 = 136;
          _os_log_send_and_compose_impl();
        }

        v5 = 0;
      }
    }

    else
    {
      v19 = CWFGetOSLog();
      if (v19)
      {
        v11 = CWFGetOSLog();
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v21 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_send_and_compose_impl();
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)dealloc
{
  _delegate = [(CWFHomeManager *)self _delegate];

  if (_delegate)
  {
    _delegate2 = [(CWFHomeManager *)self _delegate];
    getServiceEvents = [(CWFHomeManager *)self getServiceEvents];
    v6 = [_delegate2 stopMonitoringSupportedEvents:getServiceEvents];
  }

  v7.receiver = self;
  v7.super_class = CWFHomeManager;
  [(CWFHomeManager *)&v7 dealloc];
}

- (void)removeObjectForServieType:(int64_t)type withUUID:(id)d
{
  dCopy = d;
  _serviceObjects = [(CWFHomeManager *)self _serviceObjects];
  v7 = [_serviceObjects objectForKey:dCopy];

  v8 = [(CWFHomeManager *)self getServiceTypeStringFor:type];
  [v7 removeObjectForKey:v8];
}

- (int)createServiceObjectFor:(int64_t)for withParams:(id)params andAccessory:(id)accessory
{
  v45 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  if (for == 1)
  {
    paramsCopy = params;
    _delegate = [(CWFHomeManager *)self _delegate];
    v11 = [CWFSensingHMADataCollector createCWFSensingHMADataCollectorFor:accessoryCopy withOptions:paramsCopy andDelegate:_delegate];

    if (v11)
    {
      _serviceQueue = [(CWFHomeManager *)self _serviceQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0D32BD0;
      block[3] = &unk_1E86E6B18;
      v13 = v11;
      v31 = v13;
      v14 = accessoryCopy;
      v32 = v14;
      selfCopy = self;
      v34 = 1;
      dispatch_async(_serviceQueue, block);

      _serviceObjects = [(CWFHomeManager *)self _serviceObjects];
      uniqueIdentifier = [v14 uniqueIdentifier];
      v17 = [_serviceObjects objectForKey:uniqueIdentifier];
      v18 = [(CWFHomeManager *)self getServiceTypeStringFor:1];
      [v17 setObject:v13 forKey:v18];

      v19 = CWFGetOSLog();
      if (v19)
      {
        v20 = CWFGetOSLog();
      }

      else
      {
        v20 = MEMORY[0x1E69E9C10];
        v22 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        uniqueIdentifier2 = [v14 uniqueIdentifier];
        _serviceObjects2 = [(CWFHomeManager *)self _serviceObjects];
        v35 = 136447234;
        v36 = "[CWFHomeManager createServiceObjectFor:withParams:andAccessory:]";
        v37 = 2082;
        v38 = "CWFHomeManager.m";
        v39 = 1024;
        v40 = 178;
        v41 = 2114;
        v42 = uniqueIdentifier2;
        v43 = 2114;
        v44 = _serviceObjects2;
        _os_log_send_and_compose_impl();
      }

      v21 = 0;
      v25 = v31;
    }

    else
    {
      v28 = CWFGetOSLog();
      if (v28)
      {
        v25 = CWFGetOSLog();
      }

      else
      {
        v25 = MEMORY[0x1E69E9C10];
        v29 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [accessoryCopy uniqueIdentifier];
        v35 = 136446978;
        v36 = "[CWFHomeManager createServiceObjectFor:withParams:andAccessory:]";
        v37 = 2082;
        v38 = "CWFHomeManager.m";
        v39 = 1024;
        v40 = 165;
        v42 = v41 = 2114;
        _os_log_send_and_compose_impl();
      }

      v21 = -3931;
    }
  }

  else
  {
    v21 = -3900;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)getServiceTypeStringFor:(int64_t)for
{
  if (for == 1)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CWFSensingDataCollect", v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)getServiceEvents
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1E0D32EFC;
  v6[3] = &unk_1E86E9878;
  v6[4] = self;
  v4 = MEMORY[0x1E12EA400](v6);
  [dictionary setObject:v4 forKeyedSubscript:@"CWFPerformSensingDataCollect"];

  return dictionary;
}

- (int)registerForAccessoryStateChange:(id)change withParams:(id)params forCWFHMServiceType:(int64_t)type
{
  v81 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  paramsCopy = params;
  _homeManager = [(CWFHomeManager *)self _homeManager];

  if (!_homeManager)
  {
    v39 = CWFGetOSLog();
    if (v39)
    {
      homes = CWFGetOSLog();
    }

    else
    {
      homes = MEMORY[0x1E69E9C10];
      v45 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(homes, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_67;
    }

    v71 = 136446722;
    v72 = "[CWFHomeManager registerForAccessoryStateChange:withParams:forCWFHMServiceType:]";
    v73 = 2082;
    v74 = "CWFHomeManager.m";
    v75 = 1024;
    v76 = 225;
LABEL_66:
    _os_log_send_and_compose_impl();
    goto LABEL_67;
  }

  _delegate = [(CWFHomeManager *)self _delegate];

  if (!_delegate)
  {
    v40 = CWFGetOSLog();
    if (v40)
    {
      homes = CWFGetOSLog();
    }

    else
    {
      homes = MEMORY[0x1E69E9C10];
      v46 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(homes, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_67;
    }

    v71 = 136446722;
    v72 = "[CWFHomeManager registerForAccessoryStateChange:withParams:forCWFHMServiceType:]";
    v73 = 2082;
    v74 = "CWFHomeManager.m";
    v75 = 1024;
    v76 = 230;
    goto LABEL_66;
  }

  if (![(CWFHomeManager *)self _isHomeInformationAvailable])
  {
    v41 = CWFGetOSLog();
    if (v41)
    {
      homes = CWFGetOSLog();
    }

    else
    {
      homes = MEMORY[0x1E69E9C10];
      v47 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(homes, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_67;
    }

    v71 = 136446722;
    v72 = "[CWFHomeManager registerForAccessoryStateChange:withParams:forCWFHMServiceType:]";
    v73 = 2082;
    v74 = "CWFHomeManager.m";
    v75 = 1024;
    v76 = 235;
    goto LABEL_66;
  }

  if (!changeCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v38 = CWFGetOSLog();
    if (v38)
    {
      homes = CWFGetOSLog();
    }

    else
    {
      homes = MEMORY[0x1E69E9C10];
      v44 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(homes, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_82;
    }

    v71 = 136446722;
    v72 = "[CWFHomeManager registerForAccessoryStateChange:withParams:forCWFHMServiceType:]";
    v73 = 2082;
    v74 = "CWFHomeManager.m";
    v75 = 1024;
    v76 = 240;
    goto LABEL_81;
  }

  if (!paramsCopy)
  {
    v42 = CWFGetOSLog();
    if (v42)
    {
      homes = CWFGetOSLog();
    }

    else
    {
      homes = MEMORY[0x1E69E9C10];
      v54 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(homes, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_82;
    }

    v71 = 136446722;
    v72 = "[CWFHomeManager registerForAccessoryStateChange:withParams:forCWFHMServiceType:]";
    v73 = 2082;
    v74 = "CWFHomeManager.m";
    v75 = 1024;
    v76 = 245;
    goto LABEL_81;
  }

  if (type >= 2)
  {
    v43 = CWFGetOSLog();
    if (v43)
    {
      homes = CWFGetOSLog();
    }

    else
    {
      homes = MEMORY[0x1E69E9C10];
      v55 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(homes, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_82;
    }

    v71 = 136446722;
    v72 = "[CWFHomeManager registerForAccessoryStateChange:withParams:forCWFHMServiceType:]";
    v73 = 2082;
    v74 = "CWFHomeManager.m";
    v75 = 1024;
    v76 = 250;
LABEL_81:
    _os_log_send_and_compose_impl();
LABEL_82:
    v48 = -3900;
    goto LABEL_68;
  }

  typeCopy = type;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  _homeManager2 = [(CWFHomeManager *)self _homeManager];
  homes = [_homeManager2 homes];

  v62 = [homes countByEnumeratingWithState:&v67 objects:v80 count:16];
  if (!v62)
  {
LABEL_67:
    v48 = -3931;
LABEL_68:
    v59 = v48;
    goto LABEL_69;
  }

  v61 = *v68;
  v59 = -3931;
  obj = homes;
  v57 = changeCopy;
  do
  {
    for (i = 0; i != v62; ++i)
    {
      if (*v68 != v61)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v67 + 1) + 8 * i);
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      accessories = [v14 accessories];
      v16 = [accessories countByEnumeratingWithState:&v63 objects:v79 count:16];
      if (!v16)
      {
        goto LABEL_27;
      }

      v17 = v16;
      v18 = *v64;
      while (2)
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v64 != v18)
          {
            objc_enumerationMutation(accessories);
          }

          v20 = *(*(&v63 + 1) + 8 * j);
          uniqueIdentifier = [v20 uniqueIdentifier];
          v22 = [changeCopy isEqual:uniqueIdentifier];

          if (v22)
          {
            _serviceObjects = [(CWFHomeManager *)self _serviceObjects];
            v24 = [_serviceObjects objectForKey:changeCopy];

            if (!v24)
            {
              _serviceObjects2 = [(CWFHomeManager *)self _serviceObjects];
              dictionary = [MEMORY[0x1E695DF90] dictionary];
              [_serviceObjects2 setObject:dictionary forKey:changeCopy];
            }

            _serviceObjects3 = [(CWFHomeManager *)self _serviceObjects];
            uniqueIdentifier2 = [v20 uniqueIdentifier];
            v29 = [_serviceObjects3 objectForKey:uniqueIdentifier2];
            v30 = [(CWFHomeManager *)self getServiceTypeStringFor:typeCopy];
            v31 = [v29 objectForKey:v30];

            if (v31)
            {
              v33 = CWFGetOSLog();
              if (v33)
              {
                v34 = CWFGetOSLog();
              }

              else
              {
                v34 = MEMORY[0x1E69E9C10];
                v36 = MEMORY[0x1E69E9C10];
              }

              homes = obj;
              changeCopy = v57;

              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                v71 = 136446722;
                v72 = "[CWFHomeManager registerForAccessoryStateChange:withParams:forCWFHMServiceType:]";
                v73 = 2082;
                v74 = "CWFHomeManager.m";
                v75 = 1024;
                v76 = 261;
                goto LABEL_40;
              }
            }

            else
            {
              v32 = [(CWFHomeManager *)self createServiceObjectFor:typeCopy withParams:paramsCopy andAccessory:v20];
              if (!v32)
              {
                v59 = 0;
                changeCopy = v57;
                goto LABEL_27;
              }

              v59 = v32;
              v35 = CWFGetOSLog();
              changeCopy = v57;
              if (v35)
              {
                v34 = CWFGetOSLog();
              }

              else
              {
                v34 = MEMORY[0x1E69E9C10];
                v37 = MEMORY[0x1E69E9C10];
              }

              homes = obj;

              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                v71 = 136446978;
                v72 = "[CWFHomeManager registerForAccessoryStateChange:withParams:forCWFHMServiceType:]";
                v73 = 2082;
                v74 = "CWFHomeManager.m";
                v75 = 1024;
                v76 = 266;
                v77 = 1024;
                v78 = v59;
LABEL_40:
                _os_log_send_and_compose_impl();
              }
            }

            goto LABEL_69;
          }
        }

        v17 = [accessories countByEnumeratingWithState:&v63 objects:v79 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }

LABEL_27:
    }

    homes = obj;
    v62 = [obj countByEnumeratingWithState:&v67 objects:v80 count:16];
  }

  while (v62);
LABEL_69:

  v49 = CWFGetOSLog();
  if (v49)
  {
    v50 = CWFGetOSLog();
  }

  else
  {
    v50 = MEMORY[0x1E69E9C10];
    v51 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    v71 = 136446978;
    v72 = "[CWFHomeManager registerForAccessoryStateChange:withParams:forCWFHMServiceType:]";
    v73 = 2082;
    v74 = "CWFHomeManager.m";
    v75 = 1024;
    v76 = 275;
    v77 = 1024;
    v78 = v59;
    _os_log_send_and_compose_impl();
  }

  v52 = *MEMORY[0x1E69E9840];
  return v59;
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  _serviceQueue = [(CWFHomeManager *)self _serviceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D33BB4;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_async(_serviceQueue, block);
}

@end