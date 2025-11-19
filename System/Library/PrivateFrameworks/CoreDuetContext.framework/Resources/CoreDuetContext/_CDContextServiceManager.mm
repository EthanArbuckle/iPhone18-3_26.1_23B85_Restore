@interface _CDContextServiceManager
+ (id)sharedInstance;
- (_CDContextServiceManager)init;
- (id)_extractInteractionsFromEvents:(id)a3 onStream:(id)a4;
- (void)_setUpServices;
@end

@implementation _CDContextServiceManager

+ (id)sharedInstance
{
  if (qword_10000C958 != -1)
  {
    sub_10000293C();
  }

  v3 = qword_10000C950;

  return v3;
}

- (_CDContextServiceManager)init
{
  v3 = +[_CDLogging knowledgeSignpost];
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "_CDContextServiceManagerInit", " enableTelemetry=YES ", buf, 2u);
  }

  v37.receiver = self;
  v37.super_class = _CDContextServiceManager;
  v4 = [(_CDContextServiceManager *)&v37 init];
  if (v4)
  {
    v5 = +[_CDPaths knowledgeDirectory];
    v6 = [_CDCoreDataContextPersisting persistenceWithDirectory:v5];
    v7 = +[_CDSharedMemoryKeyValueStore sharedInstance];
    v8 = [_CDSharedMemoryContextPersisting persistenceWithSharedMemoryKeyValueStore:v7];

    v9 = [_CDPolicyBasedPersisting persistenceWithPersistenceSurvivingReboot:v6 persistenceSurvivingRelaunch:v8];
    v10 = [_CDUserContextService sharedInstanceWithPersistence:v9];
    userContextDaemon = v4->_userContextDaemon;
    v4->_userContextDaemon = v10;

    v12 = +[_CDEventStreams sharedInstance];
    eventStreams = v4->_eventStreams;
    v4->_eventStreams = v12;

    v14 = [CDMonitorManager monitorManagerForEventStreams:v4->_eventStreams domain:1];
    monitorManager = v4->_monitorManager;
    v4->_monitorManager = v14;

    v16 = objc_alloc_init(CDNotifydMonitor);
    notifyMonitor = v4->_notifyMonitor;
    v4->_notifyMonitor = v16;

    v18 = +[_DKKnowledgeStore knowledgeStoreWithDirectReadWriteAccess];
    knowledgeStore = v4->_knowledgeStore;
    v4->_knowledgeStore = v18;

    v20 = +[_CDInteractionPolicies interactionPolicies];
    interactionPolicies = v4->_interactionPolicies;
    v4->_interactionPolicies = v20;

    v22 = +[_CDInteractionStore defaultDatabaseDirectory];
    v23 = [_CDInteractionStore storeWithDirectory:v22 readOnly:0];
    interactionStore = v4->_interactionStore;
    v4->_interactionStore = v23;

    [(_CDContextServiceManager *)v4 _setUpServices];
    v25 = objc_alloc_init(_CDModeClassifier);
    modeClassifier = v4->_modeClassifier;
    v4->_modeClassifier = v25;

    v43 = 0;
    v44 = &v43;
    v45 = 0x2050000000;
    v27 = qword_10000C960;
    v46 = qword_10000C960;
    if (!qword_10000C960)
    {
      *buf = _NSConcreteStackBlock;
      v39 = 3221225472;
      v40 = sub_1000024B0;
      v41 = &unk_100008470;
      v42 = &v43;
      sub_100002500();
      Class = objc_getClass("CUObjCEvidenceSystem");
      *(v42[1] + 24) = Class;
      qword_10000C960 = *(v42[1] + 24);
      v27 = v44[3];
    }

    v29 = v27;
    _Block_object_dispose(&v43, 8);
    if (v27)
    {
      [v27 start];
      v30 = +[_CDLogging contextChannel];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "CUEvidenceSystem started", buf, 2u);
      }
    }

    v43 = 0;
    v44 = &v43;
    v45 = 0x2050000000;
    v31 = qword_10000C970;
    v46 = qword_10000C970;
    if (!qword_10000C970)
    {
      *buf = _NSConcreteStackBlock;
      v39 = 3221225472;
      v40 = sub_100002644;
      v41 = &unk_100008470;
      v42 = &v43;
      sub_100002500();
      v32 = objc_getClass("CUObjCInferenceEngine");
      *(v42[1] + 24) = v32;
      qword_10000C970 = *(v42[1] + 24);
      v31 = v44[3];
    }

    v33 = v31;
    _Block_object_dispose(&v43, 8);
    if (v31)
    {
      [v31 start];
      v34 = +[_CDLogging contextChannel];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "CUInferenceEngine started", buf, 2u);
      }
    }
  }

  v35 = +[_CDLogging knowledgeSignpost];
  if (os_signpost_enabled(v35))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "_CDContextServiceManagerInit", &unk_100003FAA, buf, 2u);
  }

  return v4;
}

- (id)_extractInteractionsFromEvents:(id)a3 onStream:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 eventStreamProperties];
  v8 = [v7 name];
  v9 = [v8 isEqualToString:@"CallInProgress"];

  if (v9)
  {
    v10 = _DKCallMetadataKey_ptr;
  }

  else
  {
    v11 = [v6 eventStreamProperties];
    v12 = [v11 name];
    v13 = [v12 isEqualToString:@"NextCalendarEvent"];

    if (!v13)
    {
LABEL_17:
      v16 = 0;
      goto LABEL_18;
    }

    v10 = _DKCalendarMetadataKey_ptr;
  }

  v14 = [*v10 interaction];
  if (!v14)
  {
    goto LABEL_17;
  }

  v15 = v14;
  v28 = v6;
  v16 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v29 = v5;
  v17 = v5;
  v18 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v31;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v30 + 1) + 8 * i);
        v23 = [v22 metadata];
        v24 = [v23 objectForKeyedSubscript:v15];

        if (v24 && [v24 mechanism] != 5)
        {
          [v16 addObject:v24];
        }

        v25 = [v22 metadata];
        v26 = [v25 mutableCopy];

        [v26 removeObjectForKey:v15];
        [v22 setMetadata:v26];
      }

      v19 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v19);
  }

  v6 = v28;
  v5 = v29;
LABEL_18:

  return v16;
}

- (void)_setUpServices
{
  +[_CDEventStreams loadAllEventStreams];
  [(_CDUserContextService *)self->_userContextDaemon start];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);

  v5 = dispatch_queue_create("com.apple.coreduetd.serviceManager.historical background", v4);
  objc_initWeak(&location, self);
  monitorManager = self->_monitorManager;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100001058;
  v13[3] = &unk_1000083E0;
  v7 = v5;
  v14 = v7;
  objc_copyWeak(&v15, &location);
  [(CDMonitorManager *)monitorManager setHistoricalHandler:v13];
  v8 = self->_monitorManager;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100001F10;
  v10[3] = &unk_100008408;
  v9 = v7;
  v11 = v9;
  objc_copyWeak(&v12, &location);
  [(CDMonitorManager *)v8 setHistoricalDeletingHandler:v10];
  [(CDMonitorManager *)self->_monitorManager setShutdownHandler:&stru_100008448];
  [(CDMonitorManager *)self->_monitorManager start];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

@end