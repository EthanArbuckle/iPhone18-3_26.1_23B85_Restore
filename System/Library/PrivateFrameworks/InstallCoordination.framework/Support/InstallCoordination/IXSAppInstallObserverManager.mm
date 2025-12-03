@interface IXSAppInstallObserverManager
+ (id)sharedInstance;
- (IXSAppInstallObserverManager)init;
- (NSURL)saveURL;
- (id)_onQueue_connectionForObserverEndpoint:(id)endpoint;
- (id)_onQueue_connectionForServiceName:(id)name;
- (void)_callHandlerForClientConnections:(id)connections;
- (void)_messageInterestedServicesForClientIDs:(id)ds forMethod:(unint64_t)method callMethodOnProxy:(id)proxy;
- (void)_messageInterestedServicesForMethod:(unint64_t)method callMethodOnProxy:(id)proxy;
- (void)_onQueue_callRemoteObjectProxyForServiceEndpoint:(id)endpoint errorHandler:(id)handler callHandler:(id)callHandler;
- (void)_onQueue_callRemoteObjectProxyForServiceName:(id)name errorHandler:(id)handler callHandler:(id)callHandler;
- (void)_onQueue_messageMachServices:(id)services forMethod:(unint64_t)method callMethodOnProxy:(id)proxy exceptServices:(id)exceptServices;
- (void)_onQueue_messageXPCListenerEndpoints:(id)endpoints forMethod:(unint64_t)method callMethodOnProxy:(id)proxy exceptEndpoints:(id)exceptEndpoints;
- (void)_saveMapping;
- (void)coordinator:(id)coordinator canceledWithReason:(id)reason client:(unint64_t)client;
- (void)coordinator:(id)coordinator configuredPromiseDidBeginFulfillment:(unint64_t)fulfillment;
- (void)coordinator:(id)coordinator didUpdateProgress:(double)progress forPhase:(unint64_t)phase overallProgress:(double)overallProgress;
- (void)coordinatorDidCompleteSuccessfully:(id)successfully forRecordPromise:(id)promise;
- (void)coordinatorDidInstallPlaceholder:(id)placeholder forRecordPromise:(id)promise;
- (void)coordinatorShouldBeginPostProcessing:(id)processing forRecordPromise:(id)promise;
- (void)coordinatorShouldBeginRestoringUserData:(id)data;
- (void)coordinatorShouldPause:(id)pause;
- (void)coordinatorShouldPrioritize:(id)prioritize;
- (void)coordinatorShouldResume:(id)resume;
- (void)mayUninstallAppWithIdentity:(id)identity;
- (void)promise:(id)promise canceledWithReason:(id)reason client:(unint64_t)client;
- (void)promiseDidCompleteSuccessfully:(id)successfully;
- (void)registerClientConnection:(id)connection;
- (void)registerListenerEndpoint:(id)endpoint forClientIDs:(id)ds respondingToSelectors:(unint64_t)selectors;
- (void)registerMachServiceName:(id)name forClientIDs:(id)ds respondingToSelectors:(unint64_t)selectors;
- (void)shouldPrioritizeAppWithIdentity:(id)identity forClientIDs:(id)ds;
- (void)unregisterClientConnection:(id)connection;
@end

@implementation IXSAppInstallObserverManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002BA9C;
  block[3] = &unk_100100D40;
  block[4] = self;
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
  dataDirectoryAbortingOnError = [v2 dataDirectoryAbortingOnError];

  v4 = [dataDirectoryAbortingOnError URLByAppendingPathComponent:@"ObserverRegistry.plist" isDirectory:0];

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

    saveURL = [(IXSAppInstallObserverManager *)v2 saveURL];
    v83 = 0;
    v7 = [NSData dataWithContentsOfURL:saveURL options:3 error:&v83];
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
          saveURL2 = [(IXSAppInstallObserverManager *)v2 saveURL];
          [v61 removeItemAtURL:saveURL2 error:0];

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
  clientToObserverServiceNameMap = [(IXSAppInstallObserverManager *)self clientToObserverServiceNameMap];
  [v3 encodeObject:clientToObserverServiceNameMap forKey:@"ClientObserverMap"];

  serviceRespondsToMap = [(IXSAppInstallObserverManager *)self serviceRespondsToMap];
  [v3 encodeObject:serviceRespondsToMap forKey:@"RespondsToMap"];

  encodedData = [v3 encodedData];

  if (encodedData)
  {
    saveURL = [(IXSAppInstallObserverManager *)self saveURL];
    v13 = 0;
    v8 = [encodedData writeToURL:saveURL options:268435457 error:&v13];
    v9 = v13;

    if ((v8 & 1) == 0)
    {
      v10 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        saveURL2 = [(IXSAppInstallObserverManager *)self saveURL];
        path = [saveURL2 path];
        *buf = 136315650;
        v15 = "[IXSAppInstallObserverManager _saveMapping]";
        v16 = 2112;
        v17 = path;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Failed to write observer map to %@ : %@", buf, 0x20u);
      }
    }
  }
}

- (void)registerMachServiceName:(id)name forClientIDs:(id)ds respondingToSelectors:(unint64_t)selectors
{
  nameCopy = name;
  dsCopy = ds;
  internalQueue = [(IXSAppInstallObserverManager *)self internalQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002C93C;
  v13[3] = &unk_1001015A0;
  v14 = dsCopy;
  selfCopy = self;
  v16 = nameCopy;
  selectorsCopy = selectors;
  v11 = nameCopy;
  v12 = dsCopy;
  dispatch_sync(internalQueue, v13);
}

- (void)registerListenerEndpoint:(id)endpoint forClientIDs:(id)ds respondingToSelectors:(unint64_t)selectors
{
  endpointCopy = endpoint;
  dsCopy = ds;
  internalQueue = [(IXSAppInstallObserverManager *)self internalQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002CC50;
  v13[3] = &unk_1001015A0;
  v14 = dsCopy;
  selfCopy = self;
  v16 = endpointCopy;
  selectorsCopy = selectors;
  v11 = endpointCopy;
  v12 = dsCopy;
  dispatch_sync(internalQueue, v13);
}

- (void)registerClientConnection:(id)connection
{
  connectionCopy = connection;
  internalQueue = [(IXSAppInstallObserverManager *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002CEF0;
  v7[3] = &unk_100100ED8;
  v8 = connectionCopy;
  selfCopy = self;
  v6 = connectionCopy;
  dispatch_sync(internalQueue, v7);
}

- (void)unregisterClientConnection:(id)connection
{
  connectionCopy = connection;
  if (connectionCopy)
  {
    internalQueue = [(IXSAppInstallObserverManager *)self internalQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10002D088;
    v6[3] = &unk_100100ED8;
    v7 = connectionCopy;
    selfCopy = self;
    dispatch_async(internalQueue, v6);
  }
}

- (id)_onQueue_connectionForServiceName:(id)name
{
  nameCopy = name;
  serviceToConnectionMap = [(IXSAppInstallObserverManager *)self serviceToConnectionMap];
  v6 = [serviceToConnectionMap objectForKeyedSubscript:nameCopy];

  if (!v6)
  {
    v7 = [[NSXPCConnection alloc] initWithMachServiceName:nameCopy options:4096];
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
      v10 = nameCopy;
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
      serviceToConnectionMap2 = [(IXSAppInstallObserverManager *)self serviceToConnectionMap];
      [serviceToConnectionMap2 setObject:v8 forKeyedSubscript:v11];

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
        v24 = nameCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: Failed to create NSXPCConnection for service %@", location, 0x16u);
      }

      v6 = 0;
    }
  }

  return v6;
}

- (void)_onQueue_callRemoteObjectProxyForServiceName:(id)name errorHandler:(id)handler callHandler:(id)callHandler
{
  callHandlerCopy = callHandler;
  handlerCopy = handler;
  v10 = [(IXSAppInstallObserverManager *)self _onQueue_connectionForServiceName:name];
  v11 = [v10 remoteObjectProxyWithErrorHandler:handlerCopy];

  if (v11)
  {
    callHandlerCopy[2](callHandlerCopy, v11);
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

- (id)_onQueue_connectionForObserverEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v4 = [[NSXPCConnection alloc] initWithListenerEndpoint:endpointCopy];
  if (v4)
  {
    v5 = +[IXAppInstallObserverProtocolInterface interface];
    [v4 setRemoteObjectInterface:v5];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10002DA20;
    v15[3] = &unk_1001010A0;
    v6 = endpointCopy;
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
      v20 = endpointCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Failed to create NSXPCConnection for endpoint %@", buf, 0x16u);
    }
  }

  return v4;
}

- (void)_onQueue_callRemoteObjectProxyForServiceEndpoint:(id)endpoint errorHandler:(id)handler callHandler:(id)callHandler
{
  callHandlerCopy = callHandler;
  handlerCopy = handler;
  v10 = [(IXSAppInstallObserverManager *)self _onQueue_connectionForObserverEndpoint:endpoint];
  v11 = [v10 remoteObjectProxyWithErrorHandler:handlerCopy];

  if (v11)
  {
    callHandlerCopy[2](callHandlerCopy, v11);
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

- (void)_onQueue_messageMachServices:(id)services forMethod:(unint64_t)method callMethodOnProxy:(id)proxy exceptServices:(id)exceptServices
{
  servicesCopy = services;
  proxyCopy = proxy;
  exceptServicesCopy = exceptServices;
  internalQueue = [(IXSAppInstallObserverManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = servicesCopy;
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
        if (([exceptServicesCopy containsObject:{v18, v26}] & 1) == 0)
        {
          serviceRespondsToMap = [(IXSAppInstallObserverManager *)self serviceRespondsToMap];
          v20 = [serviceRespondsToMap objectForKeyedSubscript:v18];
          unsignedIntegerValue = [v20 unsignedIntegerValue];

          v22 = sub_1000031B0(off_100121958);
          v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
          if ((unsignedIntegerValue & method) != 0)
          {
            if (v23)
            {
              v24 = sub_10002C2F0(method);
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
            v29[5] = method;
            [(IXSAppInstallObserverManager *)self _onQueue_callRemoteObjectProxyForServiceName:v18 errorHandler:v29 callHandler:proxyCopy];
            [exceptServicesCopy addObject:v18];
          }

          else
          {
            if (v23)
            {
              v25 = sub_10002C2F0(method);
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

- (void)_onQueue_messageXPCListenerEndpoints:(id)endpoints forMethod:(unint64_t)method callMethodOnProxy:(id)proxy exceptEndpoints:(id)exceptEndpoints
{
  endpointsCopy = endpoints;
  proxyCopy = proxy;
  exceptEndpointsCopy = exceptEndpoints;
  selfCopy = self;
  internalQueue = [(IXSAppInstallObserverManager *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = endpointsCopy;
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
        if (([exceptEndpointsCopy containsObject:{v18, v27, v28}] & 1) == 0)
        {
          listenerRespondsToMap = [(IXSAppInstallObserverManager *)selfCopy listenerRespondsToMap];
          v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v18 hash]);
          v21 = [listenerRespondsToMap objectForKeyedSubscript:v20];
          unsignedIntegerValue = [v21 unsignedIntegerValue];

          v23 = sub_1000031B0(off_100121958);
          v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
          if ((unsignedIntegerValue & method) != 0)
          {
            if (v24)
            {
              v25 = sub_10002C2F0(method);
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
            v33[3] = method;
            [(IXSAppInstallObserverManager *)selfCopy _onQueue_callRemoteObjectProxyForServiceEndpoint:v18 errorHandler:v32 callHandler:proxyCopy];
            [exceptEndpointsCopy addObject:v18];
          }

          else
          {
            if (v24)
            {
              v26 = sub_10002C2F0(method);
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

- (void)_messageInterestedServicesForMethod:(unint64_t)method callMethodOnProxy:(id)proxy
{
  proxyCopy = proxy;
  internalQueue = [(IXSAppInstallObserverManager *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E460;
  block[3] = &unk_100101AB8;
  v10 = proxyCopy;
  methodCopy = method;
  block[4] = self;
  v8 = proxyCopy;
  dispatch_sync(internalQueue, block);
}

- (void)_messageInterestedServicesForClientIDs:(id)ds forMethod:(unint64_t)method callMethodOnProxy:(id)proxy
{
  dsCopy = ds;
  proxyCopy = proxy;
  internalQueue = [(IXSAppInstallObserverManager *)self internalQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002E734;
  v13[3] = &unk_100101AE0;
  v14 = dsCopy;
  selfCopy = self;
  v16 = proxyCopy;
  methodCopy = method;
  v11 = proxyCopy;
  v12 = dsCopy;
  dispatch_sync(internalQueue, v13);
}

- (void)_callHandlerForClientConnections:(id)connections
{
  connectionsCopy = connections;
  internalQueue = [(IXSAppInstallObserverManager *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002EA08;
  v7[3] = &unk_100101B08;
  v7[4] = self;
  v8 = connectionsCopy;
  v6 = connectionsCopy;
  dispatch_sync(internalQueue, v7);
}

- (void)coordinatorShouldPrioritize:(id)prioritize
{
  prioritizeCopy = prioritize;
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [prioritizeCopy creator]);
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [prioritizeCopy appAssetPromiseDRI]);
  v7 = [NSSet setWithObjects:v5, v6, 0];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002EC98;
  v12[3] = &unk_100101B30;
  v13 = prioritizeCopy;
  v8 = prioritizeCopy;
  [(IXSAppInstallObserverManager *)self _messageInterestedServicesForClientIDs:v7 forMethod:1 callMethodOnProxy:v12];

  [v8 uniqueIdentifier];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002ECFC;
  v11 = v10[3] = &unk_100101B58;
  v9 = v11;
  [(IXSAppInstallObserverManager *)self _callHandlerForClientConnections:v10];
}

- (void)shouldPrioritizeAppWithIdentity:(id)identity forClientIDs:(id)ds
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002EE20;
  v11[3] = &unk_100101B30;
  identityCopy = identity;
  v12 = identityCopy;
  dsCopy = ds;
  [(IXSAppInstallObserverManager *)self _messageInterestedServicesForClientIDs:dsCopy forMethod:128 callMethodOnProxy:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002EE84;
  v9[3] = &unk_100101B30;
  v10 = identityCopy;
  v8 = identityCopy;
  [(IXSAppInstallObserverManager *)self _messageInterestedServicesForClientIDs:dsCopy forMethod:0x2000 callMethodOnProxy:v9];
}

- (void)mayUninstallAppWithIdentity:(id)identity
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002EF28;
  v5[3] = &unk_100101B30;
  identityCopy = identity;
  v4 = identityCopy;
  [(IXSAppInstallObserverManager *)self _messageInterestedServicesForMethod:0x8000 callMethodOnProxy:v5];
}

- (void)coordinatorShouldResume:(id)resume
{
  resumeCopy = resume;
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [resumeCopy creator]);
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [resumeCopy appAssetPromiseDRI]);
  v7 = [NSSet setWithObjects:v5, v6, 0];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002F0C4;
  v12[3] = &unk_100101B30;
  v13 = resumeCopy;
  v8 = resumeCopy;
  [(IXSAppInstallObserverManager *)self _messageInterestedServicesForClientIDs:v7 forMethod:2 callMethodOnProxy:v12];

  [v8 uniqueIdentifier];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002F128;
  v11 = v10[3] = &unk_100101B58;
  v9 = v11;
  [(IXSAppInstallObserverManager *)self _callHandlerForClientConnections:v10];
}

- (void)coordinatorShouldPause:(id)pause
{
  pauseCopy = pause;
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [pauseCopy creator]);
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [pauseCopy appAssetPromiseDRI]);
  v7 = [NSSet setWithObjects:v5, v6, 0];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002F2C4;
  v12[3] = &unk_100101B30;
  v13 = pauseCopy;
  v8 = pauseCopy;
  [(IXSAppInstallObserverManager *)self _messageInterestedServicesForClientIDs:v7 forMethod:4 callMethodOnProxy:v12];

  [v8 uniqueIdentifier];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002F328;
  v11 = v10[3] = &unk_100101B58;
  v9 = v11;
  [(IXSAppInstallObserverManager *)self _callHandlerForClientConnections:v10];
}

- (void)coordinator:(id)coordinator configuredPromiseDidBeginFulfillment:(unint64_t)fulfillment
{
  coordinatorCopy = coordinator;
  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [coordinatorCopy creator]);
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [coordinatorCopy appAssetPromiseDRI]);
  v9 = [NSSet setWithObjects:v7, v8, 0];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002F4C8;
  v15[3] = &unk_100101B80;
  v16 = coordinatorCopy;
  fulfillmentCopy = fulfillment;
  v10 = coordinatorCopy;
  [(IXSAppInstallObserverManager *)self _messageInterestedServicesForClientIDs:v9 forMethod:8 callMethodOnProxy:v15];

  [v10 uniqueIdentifier];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002F53C;
  v13 = v12[3] = &unk_100101BA8;
  fulfillmentCopy2 = fulfillment;
  v11 = v13;
  [(IXSAppInstallObserverManager *)self _callHandlerForClientConnections:v12];
}

- (void)coordinatorShouldBeginRestoringUserData:(id)data
{
  dataCopy = data;
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [dataCopy creator]);
  v6 = [NSSet setWithObjects:&off_10010DD80, v5, 0];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002F6B0;
  v11[3] = &unk_100101B30;
  v12 = dataCopy;
  v7 = dataCopy;
  [(IXSAppInstallObserverManager *)self _messageInterestedServicesForClientIDs:v6 forMethod:256 callMethodOnProxy:v11];

  [v7 uniqueIdentifier];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002F714;
  v10 = v9[3] = &unk_100101B58;
  v8 = v10;
  [(IXSAppInstallObserverManager *)self _callHandlerForClientConnections:v9];
}

- (void)coordinatorDidInstallPlaceholder:(id)placeholder forRecordPromise:(id)promise
{
  placeholderCopy = placeholder;
  promiseCopy = promise;
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [placeholderCopy creator]);
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [placeholderCopy appAssetPromiseDRI]);
  v10 = [NSSet setWithObjects:v8, v9, 0];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002F8EC;
  v18[3] = &unk_100101BD0;
  v19 = placeholderCopy;
  v11 = promiseCopy;
  v20 = v11;
  v12 = placeholderCopy;
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

- (void)coordinatorShouldBeginPostProcessing:(id)processing forRecordPromise:(id)promise
{
  processingCopy = processing;
  promiseCopy = promise;
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [processingCopy creator]);
  v9 = [NSSet setWithObjects:v8, &off_10010DD98, &off_10010DDB0, 0];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10002FB28;
  v17[3] = &unk_100101BD0;
  v18 = processingCopy;
  v10 = promiseCopy;
  v19 = v10;
  v11 = processingCopy;
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

- (void)coordinatorDidCompleteSuccessfully:(id)successfully forRecordPromise:(id)promise
{
  successfullyCopy = successfully;
  promiseCopy = promise;
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [successfullyCopy creator]);
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [successfullyCopy appAssetPromiseDRI]);
  v10 = [NSSet setWithObjects:v8, v9, 0];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002FD74;
  v18[3] = &unk_100101BD0;
  v19 = successfullyCopy;
  v11 = promiseCopy;
  v20 = v11;
  v12 = successfullyCopy;
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

- (void)coordinator:(id)coordinator canceledWithReason:(id)reason client:(unint64_t)client
{
  coordinatorCopy = coordinator;
  reasonCopy = reason;
  v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [coordinatorCopy creator]);
  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [coordinatorCopy appAssetPromiseDRI]);
  v12 = [NSSet setWithObjects:v10, v11, 0];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10002FFD0;
  v21[3] = &unk_100101C20;
  v22 = coordinatorCopy;
  v13 = reasonCopy;
  v23 = v13;
  clientCopy = client;
  v14 = coordinatorCopy;
  [(IXSAppInstallObserverManager *)self _messageInterestedServicesForClientIDs:v12 forMethod:64 callMethodOnProxy:v21];

  [v14 uniqueIdentifier];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100030044;
  v18 = v17[3] = &unk_100101C48;
  v19 = v13;
  clientCopy2 = client;
  v15 = v13;
  v16 = v18;
  [(IXSAppInstallObserverManager *)self _callHandlerForClientConnections:v17];
}

- (void)coordinator:(id)coordinator didUpdateProgress:(double)progress forPhase:(unint64_t)phase overallProgress:(double)overallProgress
{
  [coordinator uniqueIdentifier];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100030110;
  v12 = v11[3] = &unk_100101C70;
  progressCopy = progress;
  phaseCopy = phase;
  overallProgressCopy = overallProgress;
  v10 = v12;
  [(IXSAppInstallObserverManager *)self _callHandlerForClientConnections:v11];
}

- (void)promiseDidCompleteSuccessfully:(id)successfully
{
  [successfully uniqueIdentifier];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000301C4;
  v6 = v5[3] = &unk_100101B58;
  v4 = v6;
  [(IXSAppInstallObserverManager *)self _callHandlerForClientConnections:v5];
}

- (void)promise:(id)promise canceledWithReason:(id)reason client:(unint64_t)client
{
  reasonCopy = reason;
  [promise uniqueIdentifier];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000302A0;
  v12 = v11[3] = &unk_100101C48;
  v13 = reasonCopy;
  clientCopy = client;
  v9 = reasonCopy;
  v10 = v12;
  [(IXSAppInstallObserverManager *)self _callHandlerForClientConnections:v11];
}

@end