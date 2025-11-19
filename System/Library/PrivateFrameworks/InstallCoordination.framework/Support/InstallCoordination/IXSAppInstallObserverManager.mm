@interface IXSAppInstallObserverManager
+ (id)sharedInstance;
- (IXSAppInstallObserverManager)init;
- (NSURL)saveURL;
- (id)_onQueue_connectionForObserverEndpoint:(id)a3;
- (id)_onQueue_connectionForServiceName:(id)a3;
- (void)_callHandlerForClientConnections:(id)a3;
- (void)_messageInterestedServicesForClientIDs:(id)a3 forMethod:(unint64_t)a4 callMethodOnProxy:(id)a5;
- (void)_messageInterestedServicesForMethod:(unint64_t)a3 callMethodOnProxy:(id)a4;
- (void)_onQueue_callRemoteObjectProxyForServiceEndpoint:(id)a3 errorHandler:(id)a4 callHandler:(id)a5;
- (void)_onQueue_callRemoteObjectProxyForServiceName:(id)a3 errorHandler:(id)a4 callHandler:(id)a5;
- (void)_onQueue_messageMachServices:(id)a3 forMethod:(unint64_t)a4 callMethodOnProxy:(id)a5 exceptServices:(id)a6;
- (void)_onQueue_messageXPCListenerEndpoints:(id)a3 forMethod:(unint64_t)a4 callMethodOnProxy:(id)a5 exceptEndpoints:(id)a6;
- (void)_saveMapping;
- (void)coordinator:(id)a3 canceledWithReason:(id)a4 client:(unint64_t)a5;
- (void)coordinator:(id)a3 configuredPromiseDidBeginFulfillment:(unint64_t)a4;
- (void)coordinator:(id)a3 didUpdateProgress:(double)a4 forPhase:(unint64_t)a5 overallProgress:(double)a6;
- (void)coordinatorDidCompleteSuccessfully:(id)a3 forRecordPromise:(id)a4;
- (void)coordinatorDidInstallPlaceholder:(id)a3 forRecordPromise:(id)a4;
- (void)coordinatorShouldBeginPostProcessing:(id)a3 forRecordPromise:(id)a4;
- (void)coordinatorShouldBeginRestoringUserData:(id)a3;
- (void)coordinatorShouldPause:(id)a3;
- (void)coordinatorShouldPrioritize:(id)a3;
- (void)coordinatorShouldResume:(id)a3;
- (void)mayUninstallAppWithIdentity:(id)a3;
- (void)promise:(id)a3 canceledWithReason:(id)a4 client:(unint64_t)a5;
- (void)promiseDidCompleteSuccessfully:(id)a3;
- (void)registerClientConnection:(id)a3;
- (void)registerListenerEndpoint:(id)a3 forClientIDs:(id)a4 respondingToSelectors:(unint64_t)a5;
- (void)registerMachServiceName:(id)a3 forClientIDs:(id)a4 respondingToSelectors:(unint64_t)a5;
- (void)shouldPrioritizeAppWithIdentity:(id)a3 forClientIDs:(id)a4;
- (void)unregisterClientConnection:(id)a3;
@end

@implementation IXSAppInstallObserverManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002BA9C;
  block[3] = &unk_100100D40;
  block[4] = a1;
  if (qword_100121D10 != -1)
  {
    dispatch_once(&qword_100121D10, block);
  }

  v2 = qword_100121D08;

  return v2;
}

- (NSURL)saveURL
{
  v2 = +[IXGlobalConfiguration sharedInstance];
  v3 = [v2 dataDirectoryAbortingOnError];

  v4 = [v3 URLByAppendingPathComponent:@"ObserverRegistry.plist" isDirectory:0];

  return v4;
}

- (IXSAppInstallObserverManager)init
{
  v84.receiver = self;
  v84.super_class = IXSAppInstallObserverManager;
  v2 = [(IXSAppInstallObserverManager *)&v84 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.installcoordinationd.AppInstallObserverManager", v3);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v4;

    v6 = [(IXSAppInstallObserverManager *)v2 saveURL];
    v83 = 0;
    v7 = [NSData dataWithContentsOfURL:v6 options:3 error:&v83];
    v8 = v83;

    v9 = &MKBDeviceUnlockedSinceBoot_ptr;
    if (!v7)
    {
      v17 = 0;
      v25 = 0;
      goto LABEL_29;
    }

    v82 = v8;
    v10 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v7 error:&v82];
    v11 = v82;

    if (!v10)
    {
      v25 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10009C478();
      }

      v15 = 0;
      v17 = 0;
      goto LABEL_24;
    }

    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [NSSet setWithObjects:v12, v13, v14, objc_opt_class(), 0];
    v16 = [v10 decodeObjectOfClasses:v15 forKey:@"ClientObserverMap"];
    if (v16)
    {
      v17 = v16;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = objc_opt_class();
        v19 = objc_opt_class();
        v20 = objc_opt_class();
        if (sub_10008EDBC(v17, v18, v19, v20, 0))
        {
          v21 = objc_opt_class();
          v22 = objc_opt_class();
          v23 = [NSSet setWithObjects:v21, v22, objc_opt_class(), 0];

          v24 = [v10 decodeObjectOfClasses:v23 forKey:@"RespondsToMap"];
          if (v24)
          {
            v25 = v24;
            objc_opt_class();
            v9 = &MKBDeviceUnlockedSinceBoot_ptr;
            if (objc_opt_isKindOfClass())
            {
              v26 = objc_opt_class();
              v27 = objc_opt_class();
              if (sub_10008EFF8(v25, v26, v27))
              {
                goto LABEL_25;
              }

              v28 = sub_1000031B0(off_100121958);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                sub_10009C280(v28, v29, v30, v31, v32, v33, v34, v35);
              }
            }

            else
            {
              v28 = sub_1000031B0(off_100121958);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                sub_10009C208(v28, v75, v76, v77, v78, v79, v80, v81);
              }
            }
          }

          else
          {
            v25 = sub_1000031B0(off_100121958);
            v9 = &MKBDeviceUnlockedSinceBoot_ptr;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              sub_10009C2F8();
            }
          }

          v15 = v23;
LABEL_24:

          v25 = 0;
          v23 = v15;
LABEL_25:
          [v10 finishDecoding];

          if (v17 && v25)
          {
            v51 = [v17 mutableCopy];
            clientToObserverServiceNameMap = v2->_clientToObserverServiceNameMap;
            v2->_clientToObserverServiceNameMap = v51;

            v53 = [v25 mutableCopy];
            serviceRespondsToMap = v2->_serviceRespondsToMap;
            v2->_serviceRespondsToMap = v53;

            [(NSMutableDictionary *)v2->_clientToObserverServiceNameMap enumerateKeysAndObjectsUsingBlock:&stru_100101A00];
            [(NSMutableDictionary *)v2->_serviceRespondsToMap enumerateKeysAndObjectsUsingBlock:&stru_100101A40];
LABEL_30:
            v63 = v9[398];
            v64 = objc_opt_new();
            serviceToConnectionMap = v2->_serviceToConnectionMap;
            v2->_serviceToConnectionMap = v64;

            v66 = v9[398];
            v67 = objc_opt_new();
            clientToObserverEndpointMap = v2->_clientToObserverEndpointMap;
            v2->_clientToObserverEndpointMap = v67;

            v69 = v9[398];
            v70 = objc_opt_new();
            listenerRespondsToMap = v2->_listenerRespondsToMap;
            v2->_listenerRespondsToMap = v70;

            v72 = +[NSHashTable weakObjectsHashTable];
            clientConnections = v2->_clientConnections;
            v2->_clientConnections = v72;

            return v2;
          }

          v8 = v11;
LABEL_29:
          v55 = v9[398];
          v56 = objc_opt_new();
          v57 = v2->_clientToObserverServiceNameMap;
          v2->_clientToObserverServiceNameMap = v56;

          v58 = v9[398];
          v59 = objc_opt_new();
          v60 = v2->_serviceRespondsToMap;
          v2->_serviceRespondsToMap = v59;

          v61 = +[IXFileManager defaultManager];
          v62 = [(IXSAppInstallObserverManager *)v2 saveURL];
          [v61 removeItemAtURL:v62 error:0];

          v11 = v8;
          goto LABEL_30;
        }

        v36 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_10009C190(v36, v44, v45, v46, v47, v48, v49, v50);
        }
      }

      else
      {
        v36 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_10009C118(v36, v37, v38, v39, v40, v41, v42, v43);
        }
      }

      v25 = v17;
    }

    else
    {
      v25 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10009C3B8();
      }
    }

    v17 = 0;
    v9 = &MKBDeviceUnlockedSinceBoot_ptr;
    goto LABEL_24;
  }

  return v2;
}

- (void)_saveMapping
{
  v3 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  v4 = [(IXSAppInstallObserverManager *)self clientToObserverServiceNameMap];
  [v3 encodeObject:v4 forKey:@"ClientObserverMap"];

  v5 = [(IXSAppInstallObserverManager *)self serviceRespondsToMap];
  [v3 encodeObject:v5 forKey:@"RespondsToMap"];

  v6 = [v3 encodedData];

  if (v6)
  {
    v7 = [(IXSAppInstallObserverManager *)self saveURL];
    v13 = 0;
    v8 = [v6 writeToURL:v7 options:268435457 error:&v13];
    v9 = v13;

    if ((v8 & 1) == 0)
    {
      v10 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(IXSAppInstallObserverManager *)self saveURL];
        v12 = [v11 path];
        *buf = 136315650;
        v15 = "[IXSAppInstallObserverManager _saveMapping]";
        v16 = 2112;
        v17 = v12;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Failed to write observer map to %@ : %@", buf, 0x20u);
      }
    }
  }
}

- (void)registerMachServiceName:(id)a3 forClientIDs:(id)a4 respondingToSelectors:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(IXSAppInstallObserverManager *)self internalQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002C93C;
  v13[3] = &unk_1001015A0;
  v14 = v9;
  v15 = self;
  v16 = v8;
  v17 = a5;
  v11 = v8;
  v12 = v9;
  dispatch_sync(v10, v13);
}

- (void)registerListenerEndpoint:(id)a3 forClientIDs:(id)a4 respondingToSelectors:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(IXSAppInstallObserverManager *)self internalQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002CC50;
  v13[3] = &unk_1001015A0;
  v14 = v9;
  v15 = self;
  v16 = v8;
  v17 = a5;
  v11 = v8;
  v12 = v9;
  dispatch_sync(v10, v13);
}

- (void)registerClientConnection:(id)a3
{
  v4 = a3;
  v5 = [(IXSAppInstallObserverManager *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002CEF0;
  v7[3] = &unk_100100ED8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)unregisterClientConnection:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(IXSAppInstallObserverManager *)self internalQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10002D088;
    v6[3] = &unk_100100ED8;
    v7 = v4;
    v8 = self;
    dispatch_async(v5, v6);
  }
}

- (id)_onQueue_connectionForServiceName:(id)a3
{
  v4 = a3;
  v5 = [(IXSAppInstallObserverManager *)self serviceToConnectionMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = [[NSXPCConnection alloc] initWithMachServiceName:v4 options:4096];
    if (v7)
    {
      v8 = v7;
      v9 = +[IXAppInstallObserverProtocolInterface interface];
      [v8 setRemoteObjectInterface:v9];

      objc_initWeak(location, v8);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10002D460;
      v19[3] = &unk_100101A68;
      v10 = v4;
      v20 = v10;
      objc_copyWeak(&v21, location);
      [v8 setInterruptionHandler:v19];
      objc_initWeak(&from, self);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10002D53C;
      v15[3] = &unk_100101A68;
      v11 = v10;
      v16 = v11;
      objc_copyWeak(&v17, &from);
      [v8 setInvalidationHandler:v15];
      [v8 resume];
      v12 = [(IXSAppInstallObserverManager *)self serviceToConnectionMap];
      [v12 setObject:v8 forKeyedSubscript:v11];

      v13 = v8;
      objc_destroyWeak(&v17);

      objc_destroyWeak(&from);
      objc_destroyWeak(&v21);

      objc_destroyWeak(location);
      v6 = v13;
    }

    else
    {
      v13 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *location = 136315394;
        *&location[4] = "[IXSAppInstallObserverManager _onQueue_connectionForServiceName:]";
        v23 = 2112;
        v24 = v4;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: Failed to create NSXPCConnection for service %@", location, 0x16u);
      }

      v6 = 0;
    }
  }

  return v6;
}

- (void)_onQueue_callRemoteObjectProxyForServiceName:(id)a3 errorHandler:(id)a4 callHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(IXSAppInstallObserverManager *)self _onQueue_connectionForServiceName:a3];
  v11 = [v10 remoteObjectProxyWithErrorHandler:v9];

  if (v11)
  {
    v8[2](v8, v11);
  }

  else
  {
    v12 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "[IXSAppInstallObserverManager _onQueue_callRemoteObjectProxyForServiceName:errorHandler:callHandler:]";
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Failed to get proxy for connection %@", &v13, 0x16u);
    }
  }
}

- (id)_onQueue_connectionForObserverEndpoint:(id)a3
{
  v3 = a3;
  v4 = [[NSXPCConnection alloc] initWithListenerEndpoint:v3];
  if (v4)
  {
    v5 = +[IXAppInstallObserverProtocolInterface interface];
    [v4 setRemoteObjectInterface:v5];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10002DA20;
    v15[3] = &unk_1001010A0;
    v6 = v3;
    v16 = v6;
    [v4 setInterruptionHandler:v15];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_10002DAE8;
    v13 = &unk_1001010A0;
    v14 = v6;
    [v4 setInvalidationHandler:&v10];
    [v4 resume];
    v7 = v4;

    v8 = v16;
  }

  else
  {
    v8 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v18 = "[IXSAppInstallObserverManager _onQueue_connectionForObserverEndpoint:]";
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Failed to create NSXPCConnection for endpoint %@", buf, 0x16u);
    }
  }

  return v4;
}

- (void)_onQueue_callRemoteObjectProxyForServiceEndpoint:(id)a3 errorHandler:(id)a4 callHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(IXSAppInstallObserverManager *)self _onQueue_connectionForObserverEndpoint:a3];
  v11 = [v10 remoteObjectProxyWithErrorHandler:v9];

  if (v11)
  {
    v8[2](v8, v11);
  }

  else
  {
    v12 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "[IXSAppInstallObserverManager _onQueue_callRemoteObjectProxyForServiceEndpoint:errorHandler:callHandler:]";
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Failed to get proxy for connection %@", &v13, 0x16u);
    }
  }

  [v10 invalidate];
}

- (void)_onQueue_messageMachServices:(id)a3 forMethod:(unint64_t)a4 callMethodOnProxy:(id)a5 exceptServices:(id)a6
{
  v10 = a3;
  v27 = a5;
  v11 = a6;
  v12 = [(IXSAppInstallObserverManager *)self internalQueue];
  dispatch_assert_queue_V2(v12);

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v10;
  v13 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v31;
    *&v14 = 136315650;
    v26 = v14;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v30 + 1) + 8 * i);
        if (([v11 containsObject:{v18, v26}] & 1) == 0)
        {
          v19 = [(IXSAppInstallObserverManager *)self serviceRespondsToMap];
          v20 = [v19 objectForKeyedSubscript:v18];
          v21 = [v20 unsignedIntegerValue];

          v22 = sub_1000031B0(off_100121958);
          v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
          if ((v21 & a4) != 0)
          {
            if (v23)
            {
              v24 = sub_10002C2F0(a4);
              *buf = v26;
              v35 = "[IXSAppInstallObserverManager _onQueue_messageMachServices:forMethod:callMethodOnProxy:exceptServices:]";
              v36 = 2112;
              v37 = v18;
              v38 = 2112;
              v39 = v24;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s: Notifying service %@ for selector %@", buf, 0x20u);
            }

            v29[0] = _NSConcreteStackBlock;
            v29[1] = 3221225472;
            v29[2] = sub_10002DF8C;
            v29[3] = &unk_100101A90;
            v29[4] = v18;
            v29[5] = a4;
            [(IXSAppInstallObserverManager *)self _onQueue_callRemoteObjectProxyForServiceName:v18 errorHandler:v29 callHandler:v27];
            [v11 addObject:v18];
          }

          else
          {
            if (v23)
            {
              v25 = sub_10002C2F0(a4);
              *buf = v26;
              v35 = "[IXSAppInstallObserverManager _onQueue_messageMachServices:forMethod:callMethodOnProxy:exceptServices:]";
              v36 = 2112;
              v37 = v18;
              v38 = 2112;
              v39 = v25;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s: Not notifying service %@ because it doesn't implement selector for %@", buf, 0x20u);
            }
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v15);
  }
}

- (void)_onQueue_messageXPCListenerEndpoints:(id)a3 forMethod:(unint64_t)a4 callMethodOnProxy:(id)a5 exceptEndpoints:(id)a6
{
  v10 = a3;
  v29 = a5;
  v11 = a6;
  v31 = self;
  v12 = [(IXSAppInstallObserverManager *)self internalQueue];
  dispatch_assert_queue_V2(v12);

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v10;
  v13 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v35;
    v28 = v33;
    *&v14 = 136315650;
    v27 = v14;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v34 + 1) + 8 * i);
        if (([v11 containsObject:{v18, v27, v28}] & 1) == 0)
        {
          v19 = [(IXSAppInstallObserverManager *)v31 listenerRespondsToMap];
          v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v18 hash]);
          v21 = [v19 objectForKeyedSubscript:v20];
          v22 = [v21 unsignedIntegerValue];

          v23 = sub_1000031B0(off_100121958);
          v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
          if ((v22 & a4) != 0)
          {
            if (v24)
            {
              v25 = sub_10002C2F0(a4);
              *buf = v27;
              v39 = "[IXSAppInstallObserverManager _onQueue_messageXPCListenerEndpoints:forMethod:callMethodOnProxy:exceptEndpoints:]";
              v40 = 2112;
              v41 = v18;
              v42 = 2112;
              v43 = v25;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s: Notifying endpoint %@ for selector %@", buf, 0x20u);
            }

            v32[0] = _NSConcreteStackBlock;
            v32[1] = 3221225472;
            v33[0] = sub_10002E334;
            v33[1] = &unk_100101A90;
            v33[2] = v18;
            v33[3] = a4;
            [(IXSAppInstallObserverManager *)v31 _onQueue_callRemoteObjectProxyForServiceEndpoint:v18 errorHandler:v32 callHandler:v29];
            [v11 addObject:v18];
          }

          else
          {
            if (v24)
            {
              v26 = sub_10002C2F0(a4);
              *buf = v27;
              v39 = "[IXSAppInstallObserverManager _onQueue_messageXPCListenerEndpoints:forMethod:callMethodOnProxy:exceptEndpoints:]";
              v40 = 2112;
              v41 = v18;
              v42 = 2112;
              v43 = v26;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s: Not notifying endpoint %@ because it doesn't implement selector for %@", buf, 0x20u);
            }
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v15);
  }
}

- (void)_messageInterestedServicesForMethod:(unint64_t)a3 callMethodOnProxy:(id)a4
{
  v6 = a4;
  v7 = [(IXSAppInstallObserverManager *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E460;
  block[3] = &unk_100101AB8;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_sync(v7, block);
}

- (void)_messageInterestedServicesForClientIDs:(id)a3 forMethod:(unint64_t)a4 callMethodOnProxy:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(IXSAppInstallObserverManager *)self internalQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002E734;
  v13[3] = &unk_100101AE0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v17 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_sync(v10, v13);
}

- (void)_callHandlerForClientConnections:(id)a3
{
  v4 = a3;
  v5 = [(IXSAppInstallObserverManager *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002EA08;
  v7[3] = &unk_100101B08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)coordinatorShouldPrioritize:(id)a3
{
  v4 = a3;
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 creator]);
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 appAssetPromiseDRI]);
  v7 = [NSSet setWithObjects:v5, v6, 0];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002EC98;
  v12[3] = &unk_100101B30;
  v13 = v4;
  v8 = v4;
  [(IXSAppInstallObserverManager *)self _messageInterestedServicesForClientIDs:v7 forMethod:1 callMethodOnProxy:v12];

  [v8 uniqueIdentifier];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002ECFC;
  v11 = v10[3] = &unk_100101B58;
  v9 = v11;
  [(IXSAppInstallObserverManager *)self _callHandlerForClientConnections:v10];
}

- (void)shouldPrioritizeAppWithIdentity:(id)a3 forClientIDs:(id)a4
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002EE20;
  v11[3] = &unk_100101B30;
  v6 = a3;
  v12 = v6;
  v7 = a4;
  [(IXSAppInstallObserverManager *)self _messageInterestedServicesForClientIDs:v7 forMethod:128 callMethodOnProxy:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002EE84;
  v9[3] = &unk_100101B30;
  v10 = v6;
  v8 = v6;
  [(IXSAppInstallObserverManager *)self _messageInterestedServicesForClientIDs:v7 forMethod:0x2000 callMethodOnProxy:v9];
}

- (void)mayUninstallAppWithIdentity:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002EF28;
  v5[3] = &unk_100101B30;
  v6 = a3;
  v4 = v6;
  [(IXSAppInstallObserverManager *)self _messageInterestedServicesForMethod:0x8000 callMethodOnProxy:v5];
}

- (void)coordinatorShouldResume:(id)a3
{
  v4 = a3;
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 creator]);
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 appAssetPromiseDRI]);
  v7 = [NSSet setWithObjects:v5, v6, 0];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002F0C4;
  v12[3] = &unk_100101B30;
  v13 = v4;
  v8 = v4;
  [(IXSAppInstallObserverManager *)self _messageInterestedServicesForClientIDs:v7 forMethod:2 callMethodOnProxy:v12];

  [v8 uniqueIdentifier];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002F128;
  v11 = v10[3] = &unk_100101B58;
  v9 = v11;
  [(IXSAppInstallObserverManager *)self _callHandlerForClientConnections:v10];
}

- (void)coordinatorShouldPause:(id)a3
{
  v4 = a3;
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 creator]);
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 appAssetPromiseDRI]);
  v7 = [NSSet setWithObjects:v5, v6, 0];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002F2C4;
  v12[3] = &unk_100101B30;
  v13 = v4;
  v8 = v4;
  [(IXSAppInstallObserverManager *)self _messageInterestedServicesForClientIDs:v7 forMethod:4 callMethodOnProxy:v12];

  [v8 uniqueIdentifier];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002F328;
  v11 = v10[3] = &unk_100101B58;
  v9 = v11;
  [(IXSAppInstallObserverManager *)self _callHandlerForClientConnections:v10];
}

- (void)coordinator:(id)a3 configuredPromiseDidBeginFulfillment:(unint64_t)a4
{
  v6 = a3;
  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 creator]);
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 appAssetPromiseDRI]);
  v9 = [NSSet setWithObjects:v7, v8, 0];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002F4C8;
  v15[3] = &unk_100101B80;
  v16 = v6;
  v17 = a4;
  v10 = v6;
  [(IXSAppInstallObserverManager *)self _messageInterestedServicesForClientIDs:v9 forMethod:8 callMethodOnProxy:v15];

  [v10 uniqueIdentifier];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002F53C;
  v13 = v12[3] = &unk_100101BA8;
  v14 = a4;
  v11 = v13;
  [(IXSAppInstallObserverManager *)self _callHandlerForClientConnections:v12];
}

- (void)coordinatorShouldBeginRestoringUserData:(id)a3
{
  v4 = a3;
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 creator]);
  v6 = [NSSet setWithObjects:&off_10010DD80, v5, 0];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002F6B0;
  v11[3] = &unk_100101B30;
  v12 = v4;
  v7 = v4;
  [(IXSAppInstallObserverManager *)self _messageInterestedServicesForClientIDs:v6 forMethod:256 callMethodOnProxy:v11];

  [v7 uniqueIdentifier];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002F714;
  v10 = v9[3] = &unk_100101B58;
  v8 = v10;
  [(IXSAppInstallObserverManager *)self _callHandlerForClientConnections:v9];
}

- (void)coordinatorDidInstallPlaceholder:(id)a3 forRecordPromise:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 creator]);
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 appAssetPromiseDRI]);
  v10 = [NSSet setWithObjects:v8, v9, 0];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002F8EC;
  v18[3] = &unk_100101BD0;
  v19 = v6;
  v11 = v7;
  v20 = v11;
  v12 = v6;
  [(IXSAppInstallObserverManager *)self _messageInterestedServicesForClientIDs:v10 forMethod:2064 callMethodOnProxy:v18];

  [v12 uniqueIdentifier];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002F960;
  v16 = v15[3] = &unk_100101BF8;
  v17 = v11;
  v13 = v11;
  v14 = v16;
  [(IXSAppInstallObserverManager *)self _callHandlerForClientConnections:v15];
}

- (void)coordinatorShouldBeginPostProcessing:(id)a3 forRecordPromise:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 creator]);
  v9 = [NSSet setWithObjects:v8, &off_10010DD98, &off_10010DDB0, 0];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10002FB28;
  v17[3] = &unk_100101BD0;
  v18 = v6;
  v10 = v7;
  v19 = v10;
  v11 = v6;
  [(IXSAppInstallObserverManager *)self _messageInterestedServicesForClientIDs:v9 forMethod:0x4000 callMethodOnProxy:v17];

  [v11 uniqueIdentifier];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10002FB9C;
  v15 = v14[3] = &unk_100101BF8;
  v16 = v10;
  v12 = v10;
  v13 = v15;
  [(IXSAppInstallObserverManager *)self _callHandlerForClientConnections:v14];
}

- (void)coordinatorDidCompleteSuccessfully:(id)a3 forRecordPromise:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 creator]);
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 appAssetPromiseDRI]);
  v10 = [NSSet setWithObjects:v8, v9, 0];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002FD74;
  v18[3] = &unk_100101BD0;
  v19 = v6;
  v11 = v7;
  v20 = v11;
  v12 = v6;
  [(IXSAppInstallObserverManager *)self _messageInterestedServicesForClientIDs:v10 forMethod:4128 callMethodOnProxy:v18];

  [v12 uniqueIdentifier];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002FDE8;
  v16 = v15[3] = &unk_100101BF8;
  v17 = v11;
  v13 = v11;
  v14 = v16;
  [(IXSAppInstallObserverManager *)self _callHandlerForClientConnections:v15];
}

- (void)coordinator:(id)a3 canceledWithReason:(id)a4 client:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 creator]);
  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 appAssetPromiseDRI]);
  v12 = [NSSet setWithObjects:v10, v11, 0];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10002FFD0;
  v21[3] = &unk_100101C20;
  v22 = v8;
  v13 = v9;
  v23 = v13;
  v24 = a5;
  v14 = v8;
  [(IXSAppInstallObserverManager *)self _messageInterestedServicesForClientIDs:v12 forMethod:64 callMethodOnProxy:v21];

  [v14 uniqueIdentifier];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100030044;
  v18 = v17[3] = &unk_100101C48;
  v19 = v13;
  v20 = a5;
  v15 = v13;
  v16 = v18;
  [(IXSAppInstallObserverManager *)self _callHandlerForClientConnections:v17];
}

- (void)coordinator:(id)a3 didUpdateProgress:(double)a4 forPhase:(unint64_t)a5 overallProgress:(double)a6
{
  [a3 uniqueIdentifier];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100030110;
  v12 = v11[3] = &unk_100101C70;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v10 = v12;
  [(IXSAppInstallObserverManager *)self _callHandlerForClientConnections:v11];
}

- (void)promiseDidCompleteSuccessfully:(id)a3
{
  [a3 uniqueIdentifier];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000301C4;
  v6 = v5[3] = &unk_100101B58;
  v4 = v6;
  [(IXSAppInstallObserverManager *)self _callHandlerForClientConnections:v5];
}

- (void)promise:(id)a3 canceledWithReason:(id)a4 client:(unint64_t)a5
{
  v8 = a4;
  [a3 uniqueIdentifier];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000302A0;
  v12 = v11[3] = &unk_100101C48;
  v13 = v8;
  v14 = a5;
  v9 = v8;
  v10 = v12;
  [(IXSAppInstallObserverManager *)self _callHandlerForClientConnections:v11];
}

@end