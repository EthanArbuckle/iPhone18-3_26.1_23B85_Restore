@interface CWFHomeManager
+ (id)cwfHomeManagerWithDelegate:(id)a3;
- (BOOL)initHomeManagerInstance;
- (CWFHomeManager)initWithDelegate:(id)a3;
- (id)getServiceEvents;
- (id)getServiceTypeStringFor:(int64_t)a3;
- (int)createServiceObjectFor:(int64_t)a3 withParams:(id)a4 andAccessory:(id)a5;
- (int)registerForAccessoryStateChange:(id)a3 withParams:(id)a4 forCWFHMServiceType:(int64_t)a5;
- (void)dealloc;
- (void)homeManagerDidUpdateHomes:(id)a3;
- (void)removeObjectForServieType:(int64_t)a3 withUUID:(id)a4;
@end

@implementation CWFHomeManager

+ (id)cwfHomeManagerWithDelegate:(id)a3
{
  v3 = a3;
  v4 = [[CWFHomeManager alloc] initWithDelegate:v3];

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
      v14 = CWFGetOSLog();
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
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

  v3 = [(CWFHomeManager *)self _homeManager];

  if (!v3)
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
    v14 = [v11 defaultPrivateConfiguration];
    [v14 setOptions:576];
    [v14 setAdaptive:1];
    v15 = [(CWFHomeManager *)self _homeLocationAuthorization];
    [v14 setLocationAuthorization:v15];

    [v14 setCachePolicy:0];
    v16 = [objc_alloc(sub_1E0D32224()) initWithHomeMangerConfiguration:v14];
    [(CWFHomeManager *)self set_homeManager:v16];

    v17 = [(CWFHomeManager *)self _homeManager];
    v4 = v17 != 0;

    if (v4)
    {
      v18 = [(CWFHomeManager *)self _homeManager];
      [v18 setDelegate:self];
    }

    else
    {
      v23 = CWFGetOSLog();
      if (v23)
      {
        v18 = CWFGetOSLog();
      }

      else
      {
        v18 = MEMORY[0x1E69E9C10];
        v24 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
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

- (CWFHomeManager)initWithDelegate:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = CWFHomeManager;
  v5 = [(CWFHomeManager *)&v25 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.wifi.CWFHomeManager", 0);
    [(CWFHomeManager *)v5 set_serviceQueue:v6];

    [(CWFHomeManager *)v5 set_isHomeInformationAvailable:0];
    v7 = [MEMORY[0x1E695DF90] dictionary];
    [(CWFHomeManager *)v5 set_serviceObjects:v7];

    [(CWFHomeManager *)v5 set_autoDataColletor:0];
    [(CWFHomeManager *)v5 set_delegate:v4];
    v8 = [(CWFHomeManager *)v5 _delegate];

    if (v8)
    {
      v9 = [(CWFHomeManager *)v5 _delegate];
      v10 = [(CWFHomeManager *)v5 getServiceEvents];
      v11 = [v9 startMonitoringSupportedEvents:v10];

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
        v15 = [(CWFHomeManager *)v5 _homeManager];
        v16 = [v15 _beginActiveAssertionWithReason:@"com.apple.wifi.HMNotificationAssertion"];
        [(CWFHomeManager *)v5 set_activeAssertion:v16];
      }

      else
      {

        v20 = CWFGetOSLog();
        if (v20)
        {
          v15 = CWFGetOSLog();
        }

        else
        {
          v15 = MEMORY[0x1E69E9C10];
          v22 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
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
  v3 = [(CWFHomeManager *)self _delegate];

  if (v3)
  {
    v4 = [(CWFHomeManager *)self _delegate];
    v5 = [(CWFHomeManager *)self getServiceEvents];
    v6 = [v4 stopMonitoringSupportedEvents:v5];
  }

  v7.receiver = self;
  v7.super_class = CWFHomeManager;
  [(CWFHomeManager *)&v7 dealloc];
}

- (void)removeObjectForServieType:(int64_t)a3 withUUID:(id)a4
{
  v6 = a4;
  v9 = [(CWFHomeManager *)self _serviceObjects];
  v7 = [v9 objectForKey:v6];

  v8 = [(CWFHomeManager *)self getServiceTypeStringFor:a3];
  [v7 removeObjectForKey:v8];
}

- (int)createServiceObjectFor:(int64_t)a3 withParams:(id)a4 andAccessory:(id)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (a3 == 1)
  {
    v9 = a4;
    v10 = [(CWFHomeManager *)self _delegate];
    v11 = [CWFSensingHMADataCollector createCWFSensingHMADataCollectorFor:v8 withOptions:v9 andDelegate:v10];

    if (v11)
    {
      v12 = [(CWFHomeManager *)self _serviceQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0D32BD0;
      block[3] = &unk_1E86E6B18;
      v13 = v11;
      v31 = v13;
      v14 = v8;
      v32 = v14;
      v33 = self;
      v34 = 1;
      dispatch_async(v12, block);

      v15 = [(CWFHomeManager *)self _serviceObjects];
      v16 = [v14 uniqueIdentifier];
      v17 = [v15 objectForKey:v16];
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
        v23 = [v14 uniqueIdentifier];
        v24 = [(CWFHomeManager *)self _serviceObjects];
        v35 = 136447234;
        v36 = "[CWFHomeManager createServiceObjectFor:withParams:andAccessory:]";
        v37 = 2082;
        v38 = "CWFHomeManager.m";
        v39 = 1024;
        v40 = 178;
        v41 = 2114;
        v42 = v23;
        v43 = 2114;
        v44 = v24;
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
        [v8 uniqueIdentifier];
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

- (id)getServiceTypeStringFor:(int64_t)a3
{
  if (a3 == 1)
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1E0D32EFC;
  v6[3] = &unk_1E86E9878;
  v6[4] = self;
  v4 = MEMORY[0x1E12EA400](v6);
  [v3 setObject:v4 forKeyedSubscript:@"CWFPerformSensingDataCollect"];

  return v3;
}

- (int)registerForAccessoryStateChange:(id)a3 withParams:(id)a4 forCWFHMServiceType:(int64_t)a5
{
  v81 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v60 = a4;
  v9 = [(CWFHomeManager *)self _homeManager];

  if (!v9)
  {
    v39 = CWFGetOSLog();
    if (v39)
    {
      v12 = CWFGetOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v45 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
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

  v10 = [(CWFHomeManager *)self _delegate];

  if (!v10)
  {
    v40 = CWFGetOSLog();
    if (v40)
    {
      v12 = CWFGetOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v46 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
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
      v12 = CWFGetOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v47 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
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

  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v38 = CWFGetOSLog();
    if (v38)
    {
      v12 = CWFGetOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v44 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
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

  if (!v60)
  {
    v42 = CWFGetOSLog();
    if (v42)
    {
      v12 = CWFGetOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v54 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
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

  if (a5 >= 2)
  {
    v43 = CWFGetOSLog();
    if (v43)
    {
      v12 = CWFGetOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v55 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
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

  v58 = a5;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v11 = [(CWFHomeManager *)self _homeManager];
  v12 = [v11 homes];

  v62 = [v12 countByEnumeratingWithState:&v67 objects:v80 count:16];
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
  obj = v12;
  v57 = v8;
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
      v15 = [v14 accessories];
      v16 = [v15 countByEnumeratingWithState:&v63 objects:v79 count:16];
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
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v63 + 1) + 8 * j);
          v21 = [v20 uniqueIdentifier];
          v22 = [v8 isEqual:v21];

          if (v22)
          {
            v23 = [(CWFHomeManager *)self _serviceObjects];
            v24 = [v23 objectForKey:v8];

            if (!v24)
            {
              v25 = [(CWFHomeManager *)self _serviceObjects];
              v26 = [MEMORY[0x1E695DF90] dictionary];
              [v25 setObject:v26 forKey:v8];
            }

            v27 = [(CWFHomeManager *)self _serviceObjects];
            v28 = [v20 uniqueIdentifier];
            v29 = [v27 objectForKey:v28];
            v30 = [(CWFHomeManager *)self getServiceTypeStringFor:v58];
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

              v12 = obj;
              v8 = v57;

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
              v32 = [(CWFHomeManager *)self createServiceObjectFor:v58 withParams:v60 andAccessory:v20];
              if (!v32)
              {
                v59 = 0;
                v8 = v57;
                goto LABEL_27;
              }

              v59 = v32;
              v35 = CWFGetOSLog();
              v8 = v57;
              if (v35)
              {
                v34 = CWFGetOSLog();
              }

              else
              {
                v34 = MEMORY[0x1E69E9C10];
                v37 = MEMORY[0x1E69E9C10];
              }

              v12 = obj;

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

        v17 = [v15 countByEnumeratingWithState:&v63 objects:v79 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }

LABEL_27:
    }

    v12 = obj;
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

- (void)homeManagerDidUpdateHomes:(id)a3
{
  v4 = [(CWFHomeManager *)self _serviceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D33BB4;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_async(v4, block);
}

@end