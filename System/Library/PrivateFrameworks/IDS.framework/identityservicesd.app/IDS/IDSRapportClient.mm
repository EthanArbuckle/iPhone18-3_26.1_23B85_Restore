@interface IDSRapportClient
+ (IDSRapportClient)sharedInstance;
- (BOOL)isDeviceDiscovered:(id)discovered;
- (IDSRapportClient)init;
- (id)_deviceWithIdentifier:(id)identifier error:(id *)error;
- (id)_newCompanionLinkClient;
- (void)_companionLinkClientForDeviceIdentifier:(id)identifier completion:(id)completion;
- (void)_handleDiscoveredDevice:(id)device;
- (void)_handleIncomingIDSMessageEvent:(id)event options:(id)options;
- (void)_handleLostDevice:(id)device;
- (void)_notifyDelegatesWithBlock:(id)block;
- (void)addDelegate:(id)delegate;
- (void)dealloc;
- (void)removeDelegate:(id)delegate;
- (void)sendMessage:(id)message toDeviceIdentifier:(id)identifier completionBlock:(id)block;
- (void)ttlCache:(id)cache willReturnCachedObject:(id)object forKey:(id)key completion:(id)completion;
@end

@implementation IDSRapportClient

+ (IDSRapportClient)sharedInstance
{
  if (qword_100CBEFA8 != -1)
  {
    sub_1009290C0();
  }

  v3 = qword_100CBEFB0;

  return v3;
}

- (IDSRapportClient)init
{
  v49.receiver = self;
  v49.super_class = IDSRapportClient;
  v2 = [(IDSRapportClient *)&v49 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSRecursiveLock);
    lock = v2->_lock;
    v2->_lock = v3;

    v5 = [IMMultiQueue alloc];
    v6 = im_primary_queue();
    v7 = [v5 initWithQueue:v6];
    multiQueue = v2->_multiQueue;
    v2->_multiQueue = v7;

    v9 = [IDSTTLCache alloc];
    v10 = im_primary_queue();
    v11 = [(IDSTTLCache *)v9 initWithQueue:v10 ttlInSeconds:300.0];
    ttlCache = v2->_ttlCache;
    v2->_ttlCache = v11;

    [(IDSTTLCache *)v2->_ttlCache setDelegate:v2];
    if (!v2->_discoveredDevices)
    {
      v13 = objc_alloc_init(NSMutableSet);
      discoveredDevices = v2->_discoveredDevices;
      v2->_discoveredDevices = v13;
    }

    objc_initWeak(&location, v2);
    _newCompanionLinkClient = [(IDSRapportClient *)v2 _newCompanionLinkClient];
    companionLinkClient = v2->_companionLinkClient;
    v2->_companionLinkClient = _newCompanionLinkClient;

    v17 = v2->_companionLinkClient;
    v18 = im_primary_queue();
    [(RPCompanionLinkClient *)v17 setDispatchQueue:v18];

    v19 = v2->_companionLinkClient;
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_10055031C;
    v46[3] = &unk_100BE0010;
    objc_copyWeak(&v47, &location);
    [(RPCompanionLinkClient *)v19 setDeviceFoundHandler:v46];
    v20 = v2->_companionLinkClient;
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100550378;
    v44[3] = &unk_100BE0010;
    objc_copyWeak(&v45, &location);
    [(RPCompanionLinkClient *)v20 setDeviceLostHandler:v44];
    v21 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = sub_1005503D4();
      *buf = 138412546;
      *&buf[4] = @"ids-message";
      *&buf[12] = 2112;
      *&buf[14] = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Registering for events {eventID: %@, options: %@}", buf, 0x16u);
    }

    v23 = v2->_companionLinkClient;
    v24 = sub_1005503D4();
    v52 = v24;
    v53 = &__kCFBooleanTrue;
    v25 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100550418;
    v42[3] = &unk_100BE0038;
    objc_copyWeak(&v43, &location);
    [(RPCompanionLinkClient *)v23 registerEventID:@"ids-message" options:v25 handler:v42];

    [(RPCompanionLinkClient *)v2->_companionLinkClient setInvalidationHandler:&stru_100BE0058];
    [(RPCompanionLinkClient *)v2->_companionLinkClient setInterruptionHandler:&stru_100BE0078];
    v26 = dispatch_group_create();
    dispatch_group_enter(v26);
    v27 = v2->_companionLinkClient;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100550568;
    v39[3] = &unk_100BE00A0;
    objc_copyWeak(&v41, &location);
    v28 = v26;
    v40 = v28;
    [(RPCompanionLinkClient *)v27 activateWithCompletion:v39];
    dispatch_group_enter(v28);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v51 = 0;
    v29 = v2->_companionLinkClient;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100550660;
    v36[3] = &unk_100BE00C8;
    v38 = buf;
    v30 = v28;
    v37 = v30;
    [(RPCompanionLinkClient *)v29 setLocalDeviceUpdatedHandler:v36];
    v31 = v2->_multiQueue;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100550760;
    v34[3] = &unk_100BE00F0;
    v32 = v30;
    v35 = v32;
    [(IMMultiQueue *)v31 addBlock:v34 forKey:@"kDefaultMultiQueueKey" description:@"init"];

    _Block_object_dispose(buf, 8);
    objc_destroyWeak(&v41);

    objc_destroyWeak(&v43);
    objc_destroyWeak(&v45);
    objc_destroyWeak(&v47);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Dealloc'ing IDSRapportClient", buf, 2u);
  }

  [(RPCompanionLinkClient *)self->_companionLinkClient invalidate];
  v4.receiver = self;
  v4.super_class = IDSRapportClient;
  [(IDSRapportClient *)&v4 dealloc];
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  [(NSRecursiveLock *)self->_lock lock];
  delegateMap = self->_delegateMap;
  if (!delegateMap)
  {
    v5 = +[NSHashTable weakObjectsHashTable];
    v6 = self->_delegateMap;
    self->_delegateMap = v5;

    delegateMap = self->_delegateMap;
  }

  if (![(NSHashTable *)delegateMap containsObject:delegateCopy])
  {
    [(NSHashTable *)self->_delegateMap addObject:delegateCopy];
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)removeDelegate:(id)delegate
{
  lock = self->_lock;
  delegateCopy = delegate;
  [(NSRecursiveLock *)lock lock];
  [(NSHashTable *)self->_delegateMap removeObject:delegateCopy];

  if (![(NSHashTable *)self->_delegateMap count])
  {
    delegateMap = self->_delegateMap;
    self->_delegateMap = 0;
  }

  v7 = self->_lock;

  [(NSRecursiveLock *)v7 unlock];
}

- (BOOL)isDeviceDiscovered:(id)discovered
{
  lock = self->_lock;
  discoveredCopy = discovered;
  [(NSRecursiveLock *)lock lock];
  LOBYTE(lock) = [(NSMutableSet *)self->_discoveredDevices containsObject:discoveredCopy];

  [(NSRecursiveLock *)self->_lock unlock];
  return lock;
}

- (void)sendMessage:(id)message toDeviceIdentifier:(id)identifier completionBlock:(id)block
{
  messageCopy = message;
  identifierCopy = identifier;
  blockCopy = block;
  v11 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = identifierCopy;
    v21 = 2112;
    v22 = messageCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "outgoing IDS Message {deviceIentifier: %@, event: %@}", buf, 0x16u);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100550BF4;
  v15[3] = &unk_100BE0118;
  v17 = messageCopy;
  v18 = blockCopy;
  v16 = identifierCopy;
  v12 = messageCopy;
  v13 = blockCopy;
  v14 = identifierCopy;
  [(IDSRapportClient *)self _companionLinkClientForDeviceIdentifier:v14 completion:v15];
}

- (void)ttlCache:(id)cache willReturnCachedObject:(id)object forKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  v10 = completionCopy;
  if (object)
  {
    (*(completionCopy + 2))(completionCopy, object);
  }

  else
  {
    v21 = 0;
    v11 = [(IDSRapportClient *)self _deviceWithIdentifier:key error:&v21];
    v12 = v21;
    if (v11)
    {
      _newCompanionLinkClient = [(IDSRapportClient *)self _newCompanionLinkClient];
      [_newCompanionLinkClient setDestinationDevice:v11];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100551064;
      v18[3] = &unk_100BDA9A0;
      v19 = _newCompanionLinkClient;
      v20 = v10;
      v14 = _newCompanionLinkClient;
      [v14 activateWithCompletion:v18];
    }

    else
    {
      v15 = [CUTResult alloc];
      companionLinkClient = [(IDSRapportClient *)self companionLinkClient];
      v17 = [v15 initWithSuccess:companionLinkClient];

      (v10)[2](v10, v17);
      v14 = v12;
      v12 = v17;
    }
  }
}

- (void)_notifyDelegatesWithBlock:(id)block
{
  blockCopy = block;
  [(NSRecursiveLock *)self->_lock lock];
  allObjects = [(NSHashTable *)self->_delegateMap allObjects];
  [(NSRecursiveLock *)self->_lock unlock];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = allObjects;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v10));
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_handleDiscoveredDevice:(id)device
{
  deviceCopy = device;
  v5 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v14 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Discovered device %@", buf, 0xCu);
  }

  idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
  if (idsDeviceIdentifier)
  {
    v7 = idsDeviceIdentifier;
    v8 = [(IDSRapportClient *)self _isDiscoveredOverWiFi:deviceCopy];

    if (v8)
    {
      [(NSRecursiveLock *)self->_lock lock];
      discoveredDevices = self->_discoveredDevices;
      idsDeviceIdentifier2 = [deviceCopy idsDeviceIdentifier];
      [(NSMutableSet *)discoveredDevices addObject:idsDeviceIdentifier2];

      [(NSRecursiveLock *)self->_lock unlock];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1005513C0;
      v11[3] = &unk_100BE0140;
      v11[4] = self;
      v12 = deviceCopy;
      [(IDSRapportClient *)self _notifyDelegatesWithBlock:v11];
    }
  }
}

- (void)_handleLostDevice:(id)device
{
  deviceCopy = device;
  v5 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v14 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Lost device %@", buf, 0xCu);
  }

  idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
  if (idsDeviceIdentifier)
  {
    v7 = idsDeviceIdentifier;
    v8 = [(IDSRapportClient *)self _isDiscoveredOverWiFi:deviceCopy];

    if (v8)
    {
      [(NSRecursiveLock *)self->_lock lock];
      discoveredDevices = self->_discoveredDevices;
      idsDeviceIdentifier2 = [deviceCopy idsDeviceIdentifier];
      [(NSMutableSet *)discoveredDevices removeObject:idsDeviceIdentifier2];

      [(NSRecursiveLock *)self->_lock unlock];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1005515BC;
      v11[3] = &unk_100BE0140;
      v11[4] = self;
      v12 = deviceCopy;
      [(IDSRapportClient *)self _notifyDelegatesWithBlock:v11];
    }
  }
}

- (void)_handleIncomingIDSMessageEvent:(id)event options:(id)options
{
  eventCopy = event;
  optionsCopy = options;
  v8 = +[IDSFoundationLog delivery];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = eventCopy;
    v18 = 2112;
    v19 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "incoming IDS Message {event: %@, options: %@}", buf, 0x16u);
  }

  if (qword_100CBEFC8 != -1)
  {
    sub_100929264();
  }

  v9 = qword_100CBEFD0;
  if (v9)
  {
    v10 = [optionsCopy objectForKeyedSubscript:v9];
    if ([v10 length])
    {
      v11 = [NSString stringWithFormat:@"guest-device:%@", v10];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100551864;
      v13[3] = &unk_100BE0168;
      v13[4] = self;
      v14 = eventCopy;
      v15 = v11;
      v12 = v11;
      [(IDSRapportClient *)self _notifyDelegatesWithBlock:v13];
    }

    else
    {
      v12 = +[IDSFoundationLog delivery];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10092928C();
      }
    }
  }

  else
  {
    v10 = +[IDSFoundationLog delivery];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1009292F4();
    }
  }
}

- (void)_companionLinkClientForDeviceIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  ttlCache = [(IDSRapportClient *)self ttlCache];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1005519A4;
  v11[3] = &unk_100BE0190;
  v12 = identifierCopy;
  v13 = completionCopy;
  v11[4] = self;
  v9 = identifierCopy;
  v10 = completionCopy;
  [ttlCache fetchCachedObjectForKey:v9 completion:v11];
}

- (id)_deviceWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  companionLinkClient = [(IDSRapportClient *)self companionLinkClient];
  activeDevices = [companionLinkClient activeDevices];

  v9 = [activeDevices countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(activeDevices);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        effectiveIdentifier = [v13 effectiveIdentifier];
        v15 = [effectiveIdentifier isEqualToString:identifierCopy];

        if (v15)
        {
          v17 = v13;
          goto LABEL_12;
        }
      }

      v10 = [activeDevices countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if (error)
  {
    v16 = IDSSendErrorDomain;
    v23 = NSDebugDescriptionErrorKey;
    v24 = @"We failed to find a rapport destination for the provided deviceIdentifier";
    activeDevices = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    [NSError errorWithDomain:v16 code:1 userInfo:activeDevices];
    *error = v17 = 0;
LABEL_12:
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_newCompanionLinkClient
{
  v2 = objc_alloc_init(IMWeakLinkClass());
  [v2 setFlags:{objc_msgSend(v2, "flags") | 1}];
  return v2;
}

@end