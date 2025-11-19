@interface MRDAVOutputContextManager
+ (id)_normalizeOutputDeviceUIDs:(id)a3 fromDeviceInfo:(id)a4;
+ (id)sharedManager;
+ (void)_notifyLocalDeviceDidChangeOutputContext;
+ (void)logAndVerifyActiveSnapshot:(id)a3 inactiveSnapshot:(id)a4 reservedSnapshot:(id)a5 outputContext:(id)a6 currentActiveContexts:(id)a7 currentInactiveContexts:(id)a8 currentReservedContexts:(id)a9;
- (BOOL)reserveOutputContext:(id)a3 forOutputDeviceUID:(id)a4;
- (NSArray)outputContexts;
- (NSArray)populatedOutputContexts;
- (id)_init;
- (id)_onSerialQueue_outputContexts;
- (id)debugDescription;
- (id)outputContextForOutputDevice:(id)a3;
- (id)outputContextForOutputDeviceUID:(id)a3;
- (id)outputContextForOutputDeviceUIDs:(id)a3 strict:(BOOL)a4;
- (void)_handleMediaServerDeath:(id)a3;
- (void)_handleOutputContextDidAddLocalDevice:(id)a3;
- (void)_handleOutputContextDidRemoveLocalDevice:(id)a3;
- (void)_onSerialQueue_processOutputContext:(id)a3;
- (void)_onSerialQueue_reloadOutputContexts:(id)a3;
- (void)_onSerialQueue_unregisterForOutputContextNotifications:(id)a3;
- (void)_onSerialQueue_unregisterFromAllOutputContextNotifications;
- (void)_processOutputContext:(id)a3;
- (void)_reloadOutputContexts;
- (void)addDataSource:(id)a3;
- (void)outputDevicesDidChangeNotification:(id)a3;
- (void)registerCommunicationChannelForOutputContext:(id)a3;
- (void)registerCommunicationsChannels;
- (void)registerForOutputContextNotifications:(id)a3;
- (void)registerOutputContext:(id)a3;
- (void)removeDataSource:(id)a3;
@end

@implementation MRDAVOutputContextManager

+ (id)sharedManager
{
  if (qword_100529290 != -1)
  {
    sub_1003A5F9C();
  }

  v3 = qword_100529288;

  return v3;
}

- (id)_init
{
  v20.receiver = self;
  v20.super_class = MRDAVOutputContextManager;
  v2 = [(MRDAVOutputContextManager *)&v20 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    activeOutputContexts = v2->_activeOutputContexts;
    v2->_activeOutputContexts = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    inactiveOutputContexts = v2->_inactiveOutputContexts;
    v2->_inactiveOutputContexts = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    reservedOutputContexts = v2->_reservedOutputContexts;
    v2->_reservedOutputContexts = v7;

    v9 = objc_opt_class();
    Name = class_getName(v9);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(Name, v11);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v12;

    v14 = +[NSHashTable weakObjectsHashTable];
    dataSources = v2->_dataSources;
    v2->_dataSources = v14;

    if (AVSystemController_ServerConnectionDiedNotification)
    {
      v16 = +[AVSystemController sharedAVSystemController];
      v21 = AVSystemController_ServerConnectionDiedNotification;
      v17 = [NSArray arrayWithObjects:&v21 count:1];
      [v16 setAttribute:v17 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

      v18 = +[NSNotificationCenter defaultCenter];
      [v18 addObserver:v2 selector:"_handleMediaServerDeath:" name:AVSystemController_ServerConnectionDiedNotification object:0];
    }

    [(MRDAVOutputContextManager *)v2 _reloadOutputContexts];
  }

  return v2;
}

- (id)debugDescription
{
  v15 = [NSString alloc];
  v14 = [(MRDAVOutputContextManager *)self description];
  v17 = +[MRAVOutputContext sharedAudioPresentationContext];
  v3 = [v17 debugDescription];
  v16 = [(MRDAVOutputContextManager *)self activeOutputContexts];
  v4 = [v16 allValues];
  v5 = [v4 mr_map:&stru_1004B9220];
  v6 = [v5 componentsJoinedByString:@"\n"];
  v7 = [(MRDAVOutputContextManager *)self inactiveOutputContexts];
  v8 = [v7 debugDescription];
  v9 = [(MRDAVOutputContextManager *)self reservedOutputContexts];
  v10 = [v9 debugDescription];
  v11 = +[AVOutputContext allSharedAudioOutputContexts];
  v12 = [v15 initWithFormat:@"%@\nlocal=%@\nactive=%@\ninactive=%@\nreserved=%@\raw==%@", v14, v3, v6, v8, v10, v11];

  return v12;
}

- (void)addDataSource:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008B114;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (void)removeDataSource:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008B1B8;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (NSArray)outputContexts
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003502C;
  v10 = sub_1000359CC;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008B2B4;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_onSerialQueue_outputContexts
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = [(NSMutableDictionary *)self->_activeOutputContexts allValues];
  v4 = [(NSMutableDictionary *)self->_inactiveOutputContexts allValues];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];
  v6 = [(NSMutableDictionary *)self->_reservedOutputContexts allValues];
  v7 = [v5 arrayByAddingObjectsFromArray:v6];

  return v7;
}

- (NSArray)populatedOutputContexts
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003502C;
  v10 = sub_1000359CC;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008B4A4;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)registerCommunicationsChannels
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008B5D8;
  v8[3] = &unk_1004B9248;
  v8[4] = self;
  v3 = objc_retainBlock(v8);
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008B6D0;
  block[3] = &unk_1004B8B50;
  block[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_sync(serialQueue, block);
}

- (id)outputContextForOutputDevice:(id)a3
{
  v4 = [a3 uid];
  v5 = [(MRDAVOutputContextManager *)self outputContextForOutputDeviceUID:v4];

  return v5;
}

- (id)outputContextForOutputDeviceUID:(id)a3
{
  v8 = a3;
  v4 = a3;
  v5 = [NSArray arrayWithObjects:&v8 count:1];

  v6 = [(MRDAVOutputContextManager *)self outputContextForOutputDeviceUIDs:v5 strict:0, v8];

  return v6;
}

- (id)outputContextForOutputDeviceUIDs:(id)a3 strict:(BOOL)a4
{
  v6 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_10003502C;
  v30 = sub_1000359CC;
  v31 = 0;
  v7 = +[MROrigin localOrigin];
  v8 = [MRDeviceInfoRequest cachedDeviceInfoForOrigin:v7];

  v9 = [objc_opt_class() _normalizeOutputDeviceUIDs:v6 fromDeviceInfo:v8];
  v10 = [NSMutableSet setWithArray:v9];

  v11 = [v8 deviceUID];
  v12 = [v10 containsObject:v11];
  v13 = v12;
  if (v12)
  {
    v14 = v11;
  }

  else
  {
    v14 = [v10 anyObject];
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008BB00;
  block[3] = &unk_1004B92E0;
  block[4] = self;
  v21 = v10;
  v24 = a4;
  v22 = v14;
  v23 = &v26;
  v25 = v13;
  v16 = v14;
  v17 = v10;
  dispatch_sync(serialQueue, block);
  v18 = v27[5];

  _Block_object_dispose(&v26, 8);

  return v18;
}

- (BOOL)reserveOutputContext:(id)a3 forOutputDeviceUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDAVOutputContextManager] ReserveOutputContext: Requesting %@ for %@", buf, 0x16u);
  }

  v9 = [v6 contextID];
  if (v9)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v19 = 1;
    serialQueue = self->_serialQueue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10008C660;
    v14[3] = &unk_1004B7248;
    v14[4] = self;
    v15 = v6;
    v17 = buf;
    v16 = v7;
    dispatch_sync(serialQueue, v14);
    v11 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v12 = _MRLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDAVOutputContextManager] ReserveOutputContext: ContextID nil", buf, 2u);
    }

    v11 = 0;
  }

  return v11 & 1;
}

- (void)registerOutputContext:(id)a3
{
  v4 = a3;
  [(MRDAVOutputContextManager *)self registerForOutputContextNotifications:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MRDAVOutputContextManager *)self registerCommunicationChannelForOutputContext:v4];
  }
}

- (void)registerForOutputContextNotifications:(id)a3
{
  v4 = a3;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"outputDevicesDidChangeNotification:" name:MRAVOutputContextOutputDevicesDidChangeNotification object:v4];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_handleOutputContextDidAddLocalDevice:" name:MRAVOutputContextDidAddLocalDeviceNotification object:v4];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"_handleOutputContextDidRemoveLocalDevice:" name:MRAVOutputContextDidRemoveLocalDeviceNotification object:v4];
}

- (void)registerCommunicationChannelForOutputContext:(id)a3
{
  v3 = a3;
  v8 = +[MRDMediaRemoteServer server];
  v4 = [v8 externalDeviceServer];
  v5 = [v4 remoteControlService];
  v6 = [v5 airPlayService];
  v7 = [v3 avOutputContext];

  [v6 startContext:v7];
}

- (void)_onSerialQueue_unregisterFromAllOutputContextNotifications
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = [(MRDAVOutputContextManager *)self _onSerialQueue_outputContexts];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(MRDAVOutputContextManager *)self _onSerialQueue_unregisterForOutputContextNotifications:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_onSerialQueue_unregisterForOutputContextNotifications:(id)a3
{
  serialQueue = self->_serialQueue;
  v5 = a3;
  dispatch_assert_queue_V2(serialQueue);
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:MRAVOutputContextOutputDevicesDidChangeNotification object:v5];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self name:MRAVOutputContextDidAddLocalDeviceNotification object:v5];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 removeObserver:self name:MRAVOutputContextDidRemoveLocalDeviceNotification object:v5];
}

- (void)outputDevicesDidChangeNotification:(id)a3
{
  v4 = [a3 object];
  [(MRDAVOutputContextManager *)self _processOutputContext:v4];
}

- (void)_handleOutputContextDidAddLocalDevice:(id)a3
{
  v3 = objc_opt_class();

  [v3 _notifyLocalDeviceDidChangeOutputContext];
}

- (void)_handleOutputContextDidRemoveLocalDevice:(id)a3
{
  v3 = objc_opt_class();

  [v3 _notifyLocalDeviceDidChangeOutputContext];
}

- (void)_handleMediaServerDeath:(id)a3
{
  [(MRDAVOutputContextManager *)self _reloadOutputContexts];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"MRDAVOutputContextManagerDidReset" object:self];
}

- (void)_reloadOutputContexts
{
  v3 = +[NSDate now];
  v4 = +[AVOutputContext allSharedAudioOutputContexts];
  v5 = [v4 mr_map:&stru_1004B9348];

  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    [v3 timeIntervalSinceNow];
    *buf = 134218242;
    v14 = -v7;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDAVOutputContextManager] Re-building output context state in response to mediaserverd death in <%lf seconds> with outputContexts %@", buf, 0x16u);
  }

  serialQueue = self->_serialQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008D254;
  v10[3] = &unk_1004B68F0;
  v11 = v5;
  v12 = self;
  v9 = v5;
  dispatch_sync(serialQueue, v10);
}

- (void)_onSerialQueue_reloadOutputContexts:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDAVOutputContextManager] Reloading outputContexts on serialQueue...", buf, 2u);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        [(MRDAVOutputContextManager *)self registerOutputContext:v11, v12];
        [(MRDAVOutputContextManager *)self _onSerialQueue_processOutputContext:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)_processOutputContext:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008D954;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (void)_onSerialQueue_processOutputContext:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  v5 = [v4 contextID];
  if (v5)
  {
    v6 = [(MRDAVOutputContextManager *)self activeOutputContexts];
    v7 = [v6 copy];

    v8 = [(MRDAVOutputContextManager *)self inactiveOutputContexts];
    v54 = [v8 copy];

    v9 = [(MRDAVOutputContextManager *)self reservedOutputContexts];
    v53 = [v9 copy];

    v10 = [v4 outputDevices];
    v11 = [v10 count];

    v12 = [(MRDAVOutputContextManager *)self activeOutputContexts];
    v13 = [v12 objectForKey:v5];
    v14 = v13;
    if (v11)
    {

      if (v14)
      {
LABEL_15:
        v55 = v7;
        v56 = v5;
        v27 = [v4 outputDeviceUIDs];
        v28 = [NSMutableSet setWithArray:v27];

        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v57 = v4;
        v29 = [v4 outputDevices];
        v30 = [v29 countByEnumeratingWithState:&v63 objects:v72 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v64;
          do
          {
            for (i = 0; i != v31; i = i + 1)
            {
              if (*v64 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = [*(*(&v63 + 1) + 8 * i) clusterComposition];
              v35 = [v34 mr_map:&stru_1004B93B0];
              [v28 addObjectsFromArray:v35];
            }

            v31 = [v29 countByEnumeratingWithState:&v63 objects:v72 count:16];
          }

          while (v31);
        }

        v58 = +[NSMutableDictionary dictionary];
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v36 = [(MRDAVOutputContextManager *)self reservedOutputContexts];
        v37 = [v36 countByEnumeratingWithState:&v59 objects:v71 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v60;
          do
          {
            for (j = 0; j != v38; j = j + 1)
            {
              if (*v60 != v39)
              {
                objc_enumerationMutation(v36);
              }

              v41 = *(*(&v59 + 1) + 8 * j);
              v42 = [(MRDAVOutputContextManager *)self reservedOutputContexts];
              v43 = [v42 objectForKeyedSubscript:v41];

              if ([v28 containsObject:v41])
              {
                v44 = [(MRDAVOutputContextManager *)self activeOutputContexts];
                v45 = [v43 contextID];
                v46 = [v44 objectForKey:v45];

                if (!v46)
                {
                  v47 = [(MRDAVOutputContextManager *)self inactiveOutputContexts];
                  v48 = [v43 contextID];
                  [v47 setObject:v43 forKeyedSubscript:v48];
                }
              }

              else
              {
                [v58 setObject:v43 forKeyedSubscript:v41];
              }
            }

            v38 = [v36 countByEnumeratingWithState:&v59 objects:v71 count:16];
          }

          while (v38);
        }

        [(MRDAVOutputContextManager *)self setReservedOutputContexts:v58];
        v49 = objc_opt_class();
        v50 = [(MRDAVOutputContextManager *)self activeOutputContexts];
        v51 = [(MRDAVOutputContextManager *)self inactiveOutputContexts];
        v52 = [(MRDAVOutputContextManager *)self reservedOutputContexts];
        v21 = v55;
        v4 = v57;
        [v49 logAndVerifyActiveSnapshot:v55 inactiveSnapshot:v54 reservedSnapshot:v53 outputContext:v57 currentActiveContexts:v50 currentInactiveContexts:v51 currentReservedContexts:v52];

        v5 = v56;
        goto LABEL_34;
      }

      v15 = [(MRDAVOutputContextManager *)self activeOutputContexts];
      [v15 setObject:v4 forKeyedSubscript:v5];

      v16 = [(MRDAVOutputContextManager *)self inactiveOutputContexts];
      [v16 removeObjectForKey:v5];

      v17 = MRMediaRemoteCopyDeviceUID();
      v18 = [v4 outputDevices];
      v69[0] = _NSConcreteStackBlock;
      v69[1] = 3221225472;
      v69[2] = sub_10008DFF8;
      v69[3] = &unk_1004B8A40;
      v19 = v17;
      v70 = v19;
      v20 = [v18 mr_any:v69];

      if (v20)
      {
        [objc_opt_class() _notifyLocalDeviceDidChangeOutputContext];
      }
    }

    else
    {

      if (v14)
      {
        v22 = [(MRDAVOutputContextManager *)self activeOutputContexts];
        [v22 removeObjectForKey:v5];
      }

      reservedOutputContexts = self->_reservedOutputContexts;
      v67[0] = _NSConcreteStackBlock;
      v67[1] = 3221225472;
      v67[2] = sub_10008E004;
      v67[3] = &unk_1004B9308;
      v24 = v4;
      v68 = v24;
      v25 = [(NSMutableDictionary *)reservedOutputContexts msv_firstWhere:v67];
      if (!v25)
      {
        v26 = [(MRDAVOutputContextManager *)self inactiveOutputContexts];
        [v26 setObject:v24 forKeyedSubscript:v5];
      }

      v19 = v68;
    }

    goto LABEL_15;
  }

  v21 = _MRLogForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_1003A6108();
  }

LABEL_34:
}

+ (void)_notifyLocalDeviceDidChangeOutputContext
{
  v2 = +[MRDMediaRemoteServer server];
  [v2 postClientNotificationNamed:MRAVOutputContextManagerLocalDeviceDidChangeOutputContextNotification];
}

+ (id)_normalizeOutputDeviceUIDs:(id)a3 fromDeviceInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 deviceUID];
  v8 = [v6 clusterID];
  v9 = [NSMutableArray alloc];
  v10 = [v6 clusteredDevices];

  v11 = [v10 msv_map:&stru_1004B93D0];
  v12 = [v9 initWithArray:v11];

  if (v7)
  {
    [v12 addObject:v7];
  }

  if (v8)
  {
    [v12 addObject:v8];
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10008E2A8;
  v19[3] = &unk_1004B90C8;
  v20 = v12;
  v13 = v12;
  v14 = [v5 msv_filter:v19];
  v15 = [v14 count];
  if (v15 == [v5 count])
  {
    v16 = v14;
  }

  else
  {
    v16 = [v14 arrayByAddingObject:v7];

    v17 = _MRLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_1003A6170();
    }
  }

  return v16;
}

+ (void)logAndVerifyActiveSnapshot:(id)a3 inactiveSnapshot:(id)a4 reservedSnapshot:(id)a5 outputContext:(id)a6 currentActiveContexts:(id)a7 currentInactiveContexts:(id)a8 currentReservedContexts:(id)a9
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v77 = a9;
  v18 = +[MRDSettings currentSettings];
  LODWORD(a7) = [v18 verboseOutputContextManagerLogging];

  if (a7)
  {
    v19 = [v16 allValues];
    v20 = [NSSet setWithArray:v19];

    v21 = [v17 allValues];
    v22 = [NSSet setWithArray:v21];

    v23 = [v77 allValues];
    v24 = [NSSet setWithArray:v23];

    v25 = [NSMutableSet setWithSet:v20];
    [v25 intersectSet:v22];
    v71 = v20;
    v26 = [NSMutableSet setWithSet:v20];
    [v26 intersectSet:v24];
    v70 = v22;
    v27 = [NSMutableSet setWithSet:v22];
    v69 = v24;
    [v27 intersectSet:v24];
    if ([v25 count])
    {
      v28 = _MRLogForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1003A61E4();
      }
    }

    if ([v26 count])
    {
      v29 = _MRLogForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1003A624C();
      }
    }

    v76 = v15;
    if ([v27 count])
    {
      v30 = _MRLogForCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_1003A62B4();
      }
    }

    v67 = v26;
    v68 = v25;
    v31 = +[NSMutableArray array];
    v32 = [v13 allKeys];
    v88[0] = _NSConcreteStackBlock;
    v88[1] = 3221225472;
    v88[2] = sub_10008EB6C;
    v88[3] = &unk_1004B90C8;
    v73 = v16;
    v33 = v16;
    v89 = v33;
    v34 = [v32 msv_filter:v88];

    v35 = [v33 allKeys];
    v86[0] = _NSConcreteStackBlock;
    v86[1] = 3221225472;
    v86[2] = sub_10008EBA8;
    v86[3] = &unk_1004B90C8;
    v75 = v13;
    v87 = v13;
    v36 = [v35 msv_filter:v86];

    v37 = [v14 allKeys];
    v84[0] = _NSConcreteStackBlock;
    v84[1] = 3221225472;
    v84[2] = sub_10008EBE4;
    v84[3] = &unk_1004B90C8;
    v72 = v17;
    v38 = v17;
    v85 = v38;
    v39 = [v37 msv_filter:v84];

    v40 = [v38 allKeys];
    v82[0] = _NSConcreteStackBlock;
    v82[1] = 3221225472;
    v82[2] = sub_10008EC20;
    v82[3] = &unk_1004B90C8;
    v74 = v14;
    v83 = v14;
    v66 = [v40 msv_filter:v82];

    v80[0] = _NSConcreteStackBlock;
    v80[1] = 3221225472;
    v80[2] = sub_10008EC5C;
    v80[3] = &unk_1004B9308;
    v41 = v77;
    v81 = v41;
    v42 = [v76 msv_filter:v80];
    v78[0] = _NSConcreteStackBlock;
    v78[1] = 3221225472;
    v78[2] = sub_10008EC98;
    v78[3] = &unk_1004B9308;
    v79 = v76;
    v43 = [v41 msv_filter:v78];
    if ([v34 count])
    {
      v44 = [v34 componentsJoinedByString:{@", "}];
      v45 = [NSString stringWithFormat:@"removed from active (%@)", v44];
      [v31 addObject:v45];
    }

    if ([v39 count])
    {
      v46 = [v39 componentsJoinedByString:{@", "}];
      v47 = [NSString stringWithFormat:@"removed from inactive (%@)", v46];
      [v31 addObject:v47];
    }

    v65 = v42;
    if ([v42 count])
    {
      v48 = [v42 msv_map:&stru_1004B9410];
      [v48 componentsJoinedByString:{@", "}];
      v49 = v39;
      v50 = v36;
      v51 = v34;
      v53 = v52 = v27;
      v54 = [NSString stringWithFormat:@"removed from reserved (%@)", v53, v65];
      [v31 addObject:v54];

      v27 = v52;
      v34 = v51;
      v36 = v50;
      v39 = v49;
    }

    if ([v36 count])
    {
      v55 = [v36 componentsJoinedByString:{@", "}];
      v56 = [NSString stringWithFormat:@"moved to active (%@)", v55];
      [v31 addObject:v56];
    }

    if ([v66 count])
    {
      v57 = [v66 componentsJoinedByString:{@", "}];
      v58 = [NSString stringWithFormat:@"moved to inactive (%@)", v57];
      [v31 addObject:v58];
    }

    if ([v43 count])
    {
      v59 = [v43 msv_map:&stru_1004B9430];
      [v59 componentsJoinedByString:{@", "}];
      v61 = v60 = v27;
      v62 = [NSString stringWithFormat:@"moved to reserved (%@)", v61];
      [v31 addObject:v62];

      v27 = v60;
    }

    v13 = v75;
    if ([v31 count])
    {
      v63 = _MRLogForCategory();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v64 = [v31 componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v91 = v64;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "[MRDAVOutputContextManager] Processed outputContext - Actions: %@", buf, 0xCu);
      }
    }

    v16 = v73;
    v14 = v74;
    v15 = v76;
    v17 = v72;
  }
}

@end