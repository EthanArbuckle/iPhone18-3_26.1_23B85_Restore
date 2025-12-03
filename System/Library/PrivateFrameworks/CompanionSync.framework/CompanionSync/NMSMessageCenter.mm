@interface NMSMessageCenter
- (BOOL)cancelMessageWithID:(id)d error:(id *)error;
- (NMSMessageCenter)init;
- (NMSMessageCenter)initWithIDSServiceIdentifier:(id)identifier;
- (NMSMessageCenter)initWithIDSServiceIdentifier:(id)identifier launchOnDemandNotification:(id)notification cacheFolderPath:(id)path;
- (NMSMessageCenterDelegate)delegate;
- (NSString)description;
- (id)_buildDataForRequest:(id)request options:(id *)options;
- (id)_buildDataForResponse:(id)response options:(id *)options;
- (id)_decodeIncomingRequestData:(id)data context:(id)context;
- (id)deviceIDFromDevice:(id)device;
- (void)_checkForSwitch;
- (void)_expireMessages;
- (void)_handleError:(id)error context:(id)context locked:(BOOL)locked;
- (void)_obliterate;
- (void)_sendResponse:(id)response;
- (void)_setNextWindowTimeoutFireDate;
- (void)_timeoutWindowedMessages;
- (void)_updateExpireTimerWithDate:(id)date;
- (void)dealloc;
- (void)dropExtantMessages;
- (void)resume;
- (void)sendFile:(id)file;
- (void)sendRequest:(id)request;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)service:(id)service connectedDevicesChanged:(id)changed;
- (void)service:(id)service didSwitchActivePairedDevice:(id)device acknowledgementBlock:(id)block;
- (void)service:(id)service nearbyDevicesChanged:(id)changed;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)setEnableTransmissionWindow:(BOOL)window;
@end

@implementation NMSMessageCenter

- (void)_timeoutWindowedMessages
{
  v14 = *MEMORY[0x1E69E9840];
  currentBytesInFlight = self->_currentBytesInFlight;
  v4 = currentBytesInFlight >= [(NMSMessageCenter *)self maxBytesInFlight]|| [(_NMSDispatchQueue *)self->_windowQueue isSuspended];
  expiredMessageIDs = [(NMSWindowData *)self->_windowData expiredMessageIDs];
  [(NMSWindowData *)self->_windowData removeAndReturnLengthOfMessagesWithIDs:expiredMessageIDs];
  self->_currentBytesInFlight = 0;
  if (v4 && [(NMSMessageCenter *)self maxBytesInFlight])
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v6 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_currentBytesInFlight;
      v8 = v6;
      v10 = 134218240;
      v11 = v7;
      v12 = 2048;
      maxBytesInFlight = [(NMSMessageCenter *)self maxBytesInFlight];
      _os_log_impl(&dword_1DF835000, v8, OS_LOG_TYPE_DEFAULT, "Opening window on message timeout: %lu bytes in flight, %lu max", &v10, 0x16u);
    }

    [(_NMSDispatchQueue *)self->_windowQueue resume];
  }

  [(NMSMessageCenter *)self _setNextWindowTimeoutFireDate];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_setNextWindowTimeoutFireDate
{
  v16 = *MEMORY[0x1E69E9840];
  dateOfNextMessageExpiry = [(NMSWindowData *)self->_windowData dateOfNextMessageExpiry];
  v4 = dateOfNextMessageExpiry;
  if (dateOfNextMessageExpiry)
  {
    [dateOfNextMessageExpiry timeIntervalSinceNow];
    if (v5 > 0.0)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v6 = qword_1EDE73428;
      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_INFO))
      {
        v7 = v6;
        [v4 timeIntervalSinceNow];
        v12 = 138543618;
        v13 = v4;
        v14 = 2048;
        v15 = v8;
        _os_log_impl(&dword_1DF835000, v7, OS_LOG_TYPE_INFO, "Setting next expiry timer fire date to '%{public}@' (%.02f seconds from now)", &v12, 0x16u);
      }

      [v4 timeIntervalSinceNow];
      v10 = dispatch_walltime(0, (v9 * 1000000000.0));
      dispatch_source_set_timer(self->_windowTimeout, v10, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (NMSMessageCenter)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"-[%@ init] is not supported.", v6}];

  return 0;
}

- (NMSMessageCenter)initWithIDSServiceIdentifier:(id)identifier launchOnDemandNotification:(id)notification cacheFolderPath:(id)path
{
  identifierCopy = identifier;
  notificationCopy = notification;
  pathCopy = path;
  v62.receiver = self;
  v62.super_class = NMSMessageCenter;
  v11 = [(NMSMessageCenter *)&v62 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    serviceIdentifier = v11->_serviceIdentifier;
    v11->_serviceIdentifier = v12;

    v61 = notificationCopy;
    v14 = [notificationCopy copy];
    launchNotification = v11->_launchNotification;
    v11->_launchNotification = v14;

    v16 = v11;
    v17 = pathCopy;
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NMSQ.%@", v11->_serviceIdentifier];
    uTF8String = [v18 UTF8String];
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create(uTF8String, v20);
    queue = v16->_queue;
    v16->_queue = v21;

    v16->_resumed = 0;
    v23 = objc_opt_new();
    requestHandlers = v16->_requestHandlers;
    v16->_requestHandlers = v23;

    v25 = objc_opt_new();
    errorHandlers = v16->_errorHandlers;
    v16->_errorHandlers = v25;

    v27 = objc_opt_new();
    responseHandlers = v16->_responseHandlers;
    v16->_responseHandlers = v27;

    v29 = objc_opt_new();
    pbMapping = v16->_pbMapping;
    v16->_pbMapping = v29;

    v31 = _os_activity_create(&dword_1DF835000, "Nano Messaging Service", MEMORY[0x1E69E9C08], OS_ACTIVITY_FLAG_DEFAULT);
    transportActivity = v16->_transportActivity;
    v16->_transportActivity = v31;

    v33 = [_SYMultiSuspendableQueue alloc];
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NMSQ.%@.Incoming", v11->_serviceIdentifier];
    v35 = [(_SYMultiSuspendableQueue *)v33 initWithName:v34 qosClass:0 serial:1 target:v16->_queue];
    idsIncomingQueue = v16->_idsIncomingQueue;
    v16->_idsIncomingQueue = v35;

    if (v17)
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nms.%@.db", v11->_serviceIdentifier];
      v38 = [v17 stringByAppendingPathComponent:v37];

      v39 = [[NMSPersistentDictionary alloc] initWithPath:v38 objectClass:objc_opt_class() loggingFacility:0];
    }

    else
    {
      v39 = [[NMSPersistentDictionary alloc] initWithSharedDBForService:v11->_serviceIdentifier objectClass:objc_opt_class()];
      v38 = 0;
    }

    persistentContextStore = v16->_persistentContextStore;
    v16->_persistentContextStore = v39;

    objc_initWeak(location, v16);
    v41 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v16->_queue);
    expireTimer = v16->_expireTimer;
    v16->_expireTimer = v41;

    v43 = v16->_expireTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = ___SharedInit_block_invoke;
    handler[3] = &unk_1E86CA190;
    objc_copyWeak(&v69, location);
    dispatch_source_set_event_handler(v43, handler);
    if (v38)
    {
      v44 = [NMSWindowData alloc];
      stringByDeletingLastPathComponent = [v38 stringByDeletingLastPathComponent];
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-window", v11->_serviceIdentifier];
      v47 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v46];
      v48 = [(NMSWindowData *)v44 initWithPath:v47 logFacility:0];
      windowData = v16->_windowData;
      v16->_windowData = v48;
    }

    else
    {
      v50 = [[NMSWindowData alloc] initWithSharedDBForServiceName:v11->_serviceIdentifier];
      stringByDeletingLastPathComponent = v16->_windowData;
      v16->_windowData = v50;
    }

    v51 = [[_NMSDispatchQueue alloc] initWithName:@"com.apple.private.NanoMessagingService.WindowQueue" attributes:0 target:v16->_queue];
    windowQueue = v16->_windowQueue;
    v16->_windowQueue = v51;

    v53 = v16->_windowData;
    if (v53)
    {
      v16->_currentBytesInFlight = [(NMSWindowData *)v53 lengthOfAllMessagesInFlight];
      v54 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v16->_queue);
      windowTimeout = v16->_windowTimeout;
      v16->_windowTimeout = v54;

      v56 = v16->_windowTimeout;
      *buf = MEMORY[0x1E69E9820];
      v64 = 3221225472;
      v65 = ___SharedInit_block_invoke_2;
      v66 = &unk_1E86CA190;
      objc_copyWeak(&v67, location);
      dispatch_source_set_event_handler(v56, buf);
      [(NMSMessageCenter *)v16 setEnableTransmissionWindow:1];
      [(NMSMessageCenter *)v16 setMaxMessagesInFlight:20];
      [(NMSMessageCenter *)v16 setMinMessagesInFlight:10];
      [(NMSMessageCenter *)v16 setMaxBytesInFlight:5000000];
      [(NMSMessageCenter *)v16 setWindowResponseTimeout:600.0];
      currentBytesInFlight = v16->_currentBytesInFlight;
      if (currentBytesInFlight >= [(NMSMessageCenter *)v16 maxBytesInFlight])
      {
        [(_NMSDispatchQueue *)v16->_windowQueue suspend];
      }

      [(NMSMessageCenter *)v16 _timeoutWindowedMessages];
      objc_destroyWeak(&v67);
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v58 = qword_1EDE73428;
      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DF835000, v58, OS_LOG_TYPE_DEFAULT, "Failed to create NMSWindowData object, so transmission window is forcibly disabled.", buf, 2u);
      }

      [(NMSMessageCenter *)v16 setEnableTransmissionWindow:0];
    }

    objc_destroyWeak(&v69);
    objc_destroyWeak(location);

    v59 = v16;
    notificationCopy = v61;
  }

  return v11;
}

- (NMSMessageCenter)initWithIDSServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v45.receiver = self;
  v45.super_class = NMSMessageCenter;
  v5 = [(NMSMessageCenter *)&v45 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    serviceIdentifier = v5->_serviceIdentifier;
    v5->_serviceIdentifier = v6;

    v8 = v5;
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NMSQ.%@", v5->_serviceIdentifier];
    uTF8String = [v9 UTF8String];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(uTF8String, v11);
    queue = v8->_queue;
    v8->_queue = v12;

    v8->_resumed = 0;
    v14 = objc_opt_new();
    requestHandlers = v8->_requestHandlers;
    v8->_requestHandlers = v14;

    v16 = objc_opt_new();
    errorHandlers = v8->_errorHandlers;
    v8->_errorHandlers = v16;

    v18 = objc_opt_new();
    responseHandlers = v8->_responseHandlers;
    v8->_responseHandlers = v18;

    v20 = objc_opt_new();
    pbMapping = v8->_pbMapping;
    v8->_pbMapping = v20;

    v22 = _os_activity_create(&dword_1DF835000, "Nano Messaging Service", MEMORY[0x1E69E9C08], OS_ACTIVITY_FLAG_DEFAULT);
    transportActivity = v8->_transportActivity;
    v8->_transportActivity = v22;

    v24 = [_SYMultiSuspendableQueue alloc];
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NMSQ.%@.Incoming", v5->_serviceIdentifier];
    v26 = [(_SYMultiSuspendableQueue *)v24 initWithName:v25 qosClass:0 serial:1 target:v8->_queue];
    idsIncomingQueue = v8->_idsIncomingQueue;
    v8->_idsIncomingQueue = v26;

    v28 = [[NMSPersistentDictionary alloc] initWithSharedDBForService:v5->_serviceIdentifier objectClass:objc_opt_class()];
    persistentContextStore = v8->_persistentContextStore;
    v8->_persistentContextStore = v28;

    objc_initWeak(&location, v8);
    v30 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v8->_queue);
    expireTimer = v8->_expireTimer;
    v8->_expireTimer = v30;

    v32 = v8->_expireTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = ___SharedInit_block_invoke;
    handler[3] = &unk_1E86CA190;
    objc_copyWeak(&v52, &location);
    dispatch_source_set_event_handler(v32, handler);
    v33 = [[NMSWindowData alloc] initWithSharedDBForServiceName:v5->_serviceIdentifier];
    windowData = v8->_windowData;
    v8->_windowData = v33;

    v35 = [[_NMSDispatchQueue alloc] initWithName:@"com.apple.private.NanoMessagingService.WindowQueue" attributes:0 target:v8->_queue];
    windowQueue = v8->_windowQueue;
    v8->_windowQueue = v35;

    v37 = v8->_windowData;
    if (v37)
    {
      v8->_currentBytesInFlight = [(NMSWindowData *)v37 lengthOfAllMessagesInFlight];
      v38 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v8->_queue);
      windowTimeout = v8->_windowTimeout;
      v8->_windowTimeout = v38;

      v40 = v8->_windowTimeout;
      *buf = MEMORY[0x1E69E9820];
      v47 = 3221225472;
      v48 = ___SharedInit_block_invoke_2;
      v49 = &unk_1E86CA190;
      objc_copyWeak(v50, &location);
      dispatch_source_set_event_handler(v40, buf);
      [(NMSMessageCenter *)v8 setEnableTransmissionWindow:1];
      [(NMSMessageCenter *)v8 setMaxMessagesInFlight:20];
      [(NMSMessageCenter *)v8 setMinMessagesInFlight:10];
      [(NMSMessageCenter *)v8 setMaxBytesInFlight:5000000];
      [(NMSMessageCenter *)v8 setWindowResponseTimeout:600.0];
      currentBytesInFlight = v8->_currentBytesInFlight;
      if (currentBytesInFlight >= [(NMSMessageCenter *)v8 maxBytesInFlight])
      {
        [(_NMSDispatchQueue *)v8->_windowQueue suspend];
      }

      [(NMSMessageCenter *)v8 _timeoutWindowedMessages];
      objc_destroyWeak(v50);
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v42 = qword_1EDE73428;
      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DF835000, v42, OS_LOG_TYPE_DEFAULT, "Failed to create NMSWindowData object, so transmission window is forcibly disabled.", buf, 2u);
      }

      [(NMSMessageCenter *)v8 setEnableTransmissionWindow:0];
    }

    objc_destroyWeak(&v52);
    objc_destroyWeak(&location);

    v43 = v8;
  }

  return v5;
}

- (void)dealloc
{
  expireTimer = self->_expireTimer;
  if (expireTimer)
  {
    dispatch_source_cancel(expireTimer);
    if (!self->_service)
    {
      dispatch_resume(self->_expireTimer);
    }
  }

  windowTimeout = self->_windowTimeout;
  if (windowTimeout)
  {
    dispatch_source_cancel(windowTimeout);
  }

  loggingFacility = self->_loggingFacility;
  if (loggingFacility)
  {
    CFRelease(loggingFacility);
  }

  if (self->_resumed)
  {
    [(IDSService *)self->_service removeDelegate:self];
  }

  v6.receiver = self;
  v6.super_class = NMSMessageCenter;
  [(NMSMessageCenter *)&v6 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p identifier:%@>", v5, self, self->_serviceIdentifier];

  return v6;
}

- (void)setEnableTransmissionWindow:(BOOL)window
{
  if (self->_enableTransmissionWindow != window)
  {
    if (window)
    {
      if (self->_windowData)
      {
        self->_enableTransmissionWindow = window;
        [(NMSMessageCenter *)self _setNextWindowTimeoutFireDate];
        windowTimeout = self->_windowTimeout;

        dispatch_resume(windowTimeout);
      }

      else
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v6 = qword_1EDE73428;
        if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_1DF835000, v6, OS_LOG_TYPE_DEFAULT, "Not enabling the transmission window, because we were unable to create the window metadata DB.", v7, 2u);
        }
      }
    }

    else
    {
      self->_enableTransmissionWindow = 0;
      v5 = self->_windowTimeout;

      dispatch_suspend(v5);
    }
  }
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  v7 = !self->_resumed;
  delegateCopy = delegate;
  v9 = NSStringFromSelector(a2);
  _AssertState(v7, a2, @"Cannot use %@ after using -resume", v10, v11, v12, v13, v14, v9);

  [(NMSMessageCenter *)self setDelegate:delegateCopy];
  if (queueCopy)
  {
    v15 = queueCopy;
    delegateQueue = self->_delegateQueue;
    self->_delegateQueue = v15;
  }

  else
  {
    delegateQueue = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create_with_target_V2("com.apple.companionsync.nano-messaging-center.default-delegate-queue", delegateQueue, 0);
    v18 = self->_delegateQueue;
    self->_delegateQueue = v17;
  }
}

- (void)_checkForSwitch
{
  v31 = *MEMORY[0x1E69E9840];
  self->_checkedForQWS = 1;
  v3 = +[SYDevice targetableDevice];
  lastActiveDate = [v3 lastActiveDate];

  if (lastActiveDate)
  {
    v5 = objc_opt_new();
    [(NMSPersistentDictionary *)self->_persistentContextStore lock];
    persistentContextStore = self->_persistentContextStore;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __35__NMSMessageCenter__checkForSwitch__block_invoke;
    v25[3] = &unk_1E86CB438;
    v26 = lastActiveDate;
    v7 = v5;
    v27 = v7;
    [(NMSPersistentDictionary *)persistentContextStore enumerateObjectsSortedByEnqueueDate:v25];
    [(NMSPersistentDictionary *)self->_persistentContextStore unlock];
    if ([v7 count])
    {
      v19 = lastActiveDate;
      v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"NMSErrorDomain" code:7 userInfo:0];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v18 = v7;
      obj = v7;
      v9 = [obj countByEnumeratingWithState:&v21 objects:v30 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v22;
        do
        {
          v12 = 0;
          do
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v21 + 1) + 8 * v12);
            if (_sync_log_facilities_pred != -1)
            {
              [SYIncomingSyncAllObjectsSession _continueProcessing];
            }

            v14 = qword_1EDE73428;
            if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
            {
              v15 = v14;
              v16 = [v13 description];
              *buf = 138412290;
              v29 = v16;
              _os_log_impl(&dword_1DF835000, v15, OS_LOG_TYPE_DEFAULT, "Message dropped by QWS: %@", buf, 0xCu);
            }

            [(NMSMessageCenter *)self _handleError:v8 context:v13, v18];
            ++v12;
          }

          while (v10 != v12);
          v10 = [obj countByEnumeratingWithState:&v21 objects:v30 count:16];
        }

        while (v10);
      }

      v7 = v18;
      lastActiveDate = v19;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __35__NMSMessageCenter__checkForSwitch__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, _BYTE *a6)
{
  v11 = a3;
  v9 = [a4 laterDate:*(a1 + 32)];
  v10 = *(a1 + 32);

  if (v9 == v10)
  {
    [*(a1 + 40) addObject:v11];
  }

  else
  {
    *a6 = 1;
  }
}

- (void)_expireMessages
{
  v20 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_checkedForQWS)
  {
    [(NMSMessageCenter *)self _checkForSwitch];
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NMSErrorDomain" code:2 userInfo:0];
  v4 = objc_opt_new();
  [(NMSPersistentDictionary *)self->_persistentContextStore lock];
  v5 = objc_autoreleasePoolPush();
  persistentContextStore = self->_persistentContextStore;
  v17 = 0;
  v7 = [(NMSPersistentDictionary *)persistentContextStore objectWithOldestExpirationDate:&v17];
  v8 = v17;
  if (v7)
  {
    *&v9 = 138412290;
    v16 = v9;
    while (1)
    {
      v10 = [v8 laterDate:{v4, v16}];

      if (v10 != v4)
      {
        break;
      }

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v11 = qword_1EDE73428;
      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = [v7 description];
        *buf = v16;
        v19 = v13;
        _os_log_impl(&dword_1DF835000, v12, OS_LOG_TYPE_DEFAULT, "Expired message: %@", buf, 0xCu);
      }

      [(NMSMessageCenter *)self _handleError:v3 context:v7 locked:1];

      objc_autoreleasePoolPop(v5);
      v5 = objc_autoreleasePoolPush();
      v14 = self->_persistentContextStore;
      v17 = 0;
      v7 = [(NMSPersistentDictionary *)v14 objectWithOldestExpirationDate:&v17];
      v8 = v17;
      if (!v7)
      {
        goto LABEL_13;
      }
    }

    [(NMSMessageCenter *)self _updateExpireTimerWithDate:v8];
  }

LABEL_13:

  objc_autoreleasePoolPop(v5);
  [(NMSPersistentDictionary *)self->_persistentContextStore unlock];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_updateExpireTimerWithDate:(id)date
{
  dateCopy = date;
  v9 = dateCopy;
  if (!self->_nextExpireTimerFireDate || ([dateCopy earlierDate:?], v5 = objc_claimAutoreleasedReturnValue(), v5, dateCopy = v9, v5 == v9))
  {
    expireTimer = self->_expireTimer;
    [dateCopy timeIntervalSinceNow];
    if (v7 >= 0.0)
    {
      v8 = dispatch_walltime(0, (v7 * 1000000000.0));
    }

    else
    {
      v8 = dispatch_time(0, 0);
    }

    dispatch_source_set_timer(expireTimer, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    dateCopy = v9;
  }
}

- (void)resume
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *self;
  v4 = 138543362;
  v5 = v2;
  _os_log_fault_impl(&dword_1DF835000, a2, OS_LOG_TYPE_FAULT, "[IDSService initWithService:%{public}@] returned nil!", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)dropExtantMessages
{
  [(NMSPersistentDictionary *)self->_persistentContextStore lock];
  [(NMSPersistentDictionary *)self->_persistentContextStore removeAllObjects];
  persistentContextStore = self->_persistentContextStore;

  [(NMSPersistentDictionary *)persistentContextStore unlock];
}

- (id)_buildDataForRequest:(id)request options:(id *)options
{
  requestCopy = request;
  messageID = [requestCopy messageID];
  priority = [requestCopy priority];
  v7 = objc_alloc(MEMORY[0x1E695DF88]);
  data = [requestCopy data];
  v9 = [v7 initWithCapacity:{objc_msgSend(data, "length") + 3}];

  [v9 appendBytes:&messageID length:3];
  data2 = [requestCopy data];
  v11 = [data2 length];

  if (v11)
  {
    data3 = [requestCopy data];
    [v9 appendData:data3];
  }

  if (options)
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
    [requestCopy sendTimeout];
    if (v14 > 0.0)
    {
      v15 = MEMORY[0x1E696AD98];
      [requestCopy sendTimeout];
      v16 = [v15 numberWithDouble:?];
      [v13 setObject:v16 forKeyedSubscript:*MEMORY[0x1E69A47D8]];

      [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69A4790]];
    }

    if ([requestCopy shouldEncrypt])
    {
      [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69A4788]];
    }

    responseHandlers = self->_responseHandlers;
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(requestCopy, "messageID")}];
    v19 = [(NSMutableDictionary *)responseHandlers objectForKeyedSubscript:v18];

    if (v19)
    {
      [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69A4798]];
    }

    extraIDSOptions = [requestCopy extraIDSOptions];

    if (extraIDSOptions)
    {
      extraIDSOptions2 = [requestCopy extraIDSOptions];
      [v13 addEntriesFromDictionary:extraIDSOptions2];
    }

    if ([(NMSMessageCenter *)self enableTransmissionWindow])
    {
      [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69A47E0]];
    }

    v22 = v13;
    *options = v13;
  }

  return v9;
}

- (id)_buildDataForResponse:(id)response options:(id *)options
{
  responseCopy = response;
  request = [responseCopy request];
  messageID = [request messageID];
  v8 = objc_alloc(MEMORY[0x1E695DF88]);
  data = [responseCopy data];
  v10 = [v8 initWithCapacity:{objc_msgSend(data, "length") + 2}];

  [v10 appendBytes:&messageID length:2];
  data2 = [responseCopy data];
  v12 = [data2 length];

  if (v12)
  {
    data3 = [responseCopy data];
    [v10 appendData:data3];
  }

  if (options)
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    [responseCopy sendTimeout];
    if (v15 > 0.0)
    {
      v16 = MEMORY[0x1E696AD98];
      [responseCopy sendTimeout];
      v17 = [v16 numberWithDouble:?];
      [v14 setObject:v17 forKeyedSubscript:*MEMORY[0x1E69A47D8]];
    }

    idsIdentifier = [request idsIdentifier];
    [v14 setObject:idsIdentifier forKeyedSubscript:*MEMORY[0x1E69A47C8]];

    extraIDSOptions = [responseCopy extraIDSOptions];

    if (extraIDSOptions)
    {
      extraIDSOptions2 = [responseCopy extraIDSOptions];
      [v14 addEntriesFromDictionary:extraIDSOptions2];
    }

    if ([(NMSMessageCenter *)self enableTransmissionWindow])
    {
      [v14 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69A47E0]];
    }

    v21 = v14;
    *options = v14;
  }

  return v10;
}

- (id)_decodeIncomingRequestData:(id)data context:(id)context
{
  dataCopy = data;
  contextCopy = context;
  bytes = [dataCopy bytes];
  v9 = *bytes;
  v10 = *(bytes + 2);
  v11 = objc_alloc_init(NMSIncomingRequest);
  [(NMSIncomingRequest *)v11 setMessageCenter:self];
  [(NMSIncomingRequest *)v11 setMessageID:v9];
  if ([contextCopy expectsPeerResponse])
  {
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    if (!outgoingResponseIdentifier)
    {
      [NMSMessageCenter _decodeIncomingRequestData:context:];
    }
  }

  outgoingResponseIdentifier2 = [contextCopy outgoingResponseIdentifier];
  [(NMSIncomingRequest *)v11 setIdsIdentifier:outgoingResponseIdentifier2];

  [(NMSIncomingRequest *)v11 setPriority:v10];
  -[NMSIncomingRequest setExpectsResponse:](v11, "setExpectsResponse:", [contextCopy expectsPeerResponse]);
  v14 = [dataCopy subdataWithRange:{3, objc_msgSend(dataCopy, "length") - 3}];
  [(NMSIncomingRequest *)v11 setData:v14];

  [(NMSIncomingRequest *)v11 setIdsContext:contextCopy];

  return v11;
}

- (void)sendRequest:(id)request
{
  v31 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  resumed = self->_resumed;
  v7 = NSStringFromSelector(a2);
  _AssertState(resumed, a2, @"Cannot use %@ until after -resume is sent", v8, v9, v10, v11, v12, v7);

  v13 = self->_service;
  if (v13)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v14 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      pbRequest = [requestCopy pbRequest];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      isSuspended = [(_NMSDispatchQueue *)self->_windowQueue isSuspended];
      v20 = "not ";
      if (isSuspended)
      {
        v20 = "";
      }

      *buf = 138543618;
      v28 = v18;
      v29 = 2080;
      v30 = v20;
      _os_log_impl(&dword_1DF835000, v15, OS_LOG_TYPE_INFO, "Sending %{public}@, NMS window queue is %ssuspended", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    windowQueue = self->_windowQueue;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __32__NMSMessageCenter_sendRequest___block_invoke;
    v23[3] = &unk_1E86CA868;
    objc_copyWeak(&v26, buf);
    v24 = requestCopy;
    v25 = v13;
    [(_NMSDispatchQueue *)windowQueue async:v23];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
    {
      [NMSMessageCenter sendRequest:];
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __32__NMSMessageCenter_sendRequest___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (shouldLogTraffic())
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v3 = qword_1EDE73428;
      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 32);
        v5 = v3;
        v6 = [v4 CPObfuscatedDescriptionObject];
        v7 = _SYObfuscate(v6);
        *buf = 138543362;
        *v54 = v7;
        _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEFAULT, "Sending request: %{public}@", buf, 0xCu);
      }
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v8 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEBUG))
    {
      __32__NMSMessageCenter_sendRequest___block_invoke_cold_3(a1, v8);
    }

    v9 = [*(a1 + 32) targetDeviceIDs];
    if (!v9)
    {
      v9 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E69A4B50]];
    }

    v10 = *(a1 + 32);
    v52 = 0;
    v11 = [WeakRetained _buildDataForRequest:v10 options:&v52];
    v12 = v52;
    v13 = *(WeakRetained + 8);
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(*(a1 + 32), "messageID")}];
    *(&v45 + 1) = [v13 objectForKeyedSubscript:v14];

    v15 = *(WeakRetained + 7);
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(*(a1 + 32), "messageID")}];
    *&v45 = [v15 objectForKeyedSubscript:v16];

    v17 = [*(a1 + 32) priority];
    v18 = 200;
    if (v17 == 1)
    {
      v18 = 100;
    }

    if (v17 == 2)
    {
      v19 = 300;
    }

    else
    {
      v19 = v18;
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEBUG))
    {
      __32__NMSMessageCenter_sendRequest___block_invoke_cold_5();
    }

    v20 = *(a1 + 40);
    v50 = 0;
    v51 = 0;
    v21 = [v20 sendData:v11 toDestinations:v9 priority:v19 options:v12 identifier:&v51 error:&v50];
    v22 = v51;
    v23 = v50;
    if (v21 && [WeakRetained enableTransmissionWindow])
    {
      v24 = *(WeakRetained + 14);
      v25 = [v11 length];
      [WeakRetained windowResponseTimeout];
      [v24 addMessageWithID:v22 ofLength:v25 timeoutTime:?];
      v26 = *(WeakRetained + 13) + [v11 length];
      *(WeakRetained + 13) = v26;
      if (v26 >= [WeakRetained maxBytesInFlight])
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v27 = qword_1EDE73428;
        if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
        {
          v28 = *(WeakRetained + 13);
          v29 = v27;
          v30 = [WeakRetained maxBytesInFlight];
          *buf = 134218240;
          *v54 = v28;
          *&v54[8] = 2048;
          *&v54[10] = v30;
          _os_log_impl(&dword_1DF835000, v29, OS_LOG_TYPE_DEFAULT, "Closing window: %lu bytes in flight, %lu max", buf, 0x16u);
        }

        [*(WeakRetained + 16) suspend];
      }

      [WeakRetained _setNextWindowTimeoutFireDate];
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v31 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(a1 + 32);
      v33 = v31;
      LODWORD(v32) = [v32 messageID];
      v34 = [v11 length];
      *buf = 67109890;
      *v54 = v32;
      *&v54[4] = 2048;
      *&v54[6] = v34;
      *&v54[14] = 2114;
      *&v54[16] = v22;
      v55 = 2112;
      v56 = v23;
      _os_log_impl(&dword_1DF835000, v33, OS_LOG_TYPE_DEFAULT, "For message: %{companionsync:SYMessageID}hu sending data of length: %tu. Got identifier %{public}@, error %@", buf, 0x26u);
    }

    v35 = objc_opt_new();
    [v35 setMessageID:{objc_msgSend(*(a1 + 32), "messageID")}];
    [v35 setIdsIdentifier:v22];
    v36 = [*(a1 + 32) persistentUserInfo];
    [v35 setUserInfo:v36];

    v37 = objc_opt_new();
    [v35 setDate:v37];

    [v35 setFromRequest:1];
    [v35 setIdsOptions:v12];
    [v35 setTargetDeviceIDs:v9];
    if (v23)
    {
      [WeakRetained _handleError:v23 context:v35];
    }

    else if (v22 && (v45 != 0 || [WeakRetained delegateRequiresACKs]))
    {
      [*(a1 + 32) responseTimeout];
      v38 = MEMORY[0x1E695DF00];
      if (v39 > 0.0)
      {
        [*(a1 + 32) responseTimeout];
      }

      else
      {
        v40 = 86400.0;
      }

      v41 = [v38 dateWithTimeIntervalSinceNow:v40];
      [*(a1 + 32) setMessageCenter:WeakRetained];
      [*(a1 + 32) setIdsIdentifier:v22];
      [*(WeakRetained + 10) lock];
      [*(WeakRetained + 10) setObject:v35 forKey:v22 expires:v41];
      [*(WeakRetained + 10) unlock];
      v46 = v41;
      [WeakRetained _updateExpireTimerWithDate:v41];
      v42 = [WeakRetained delegate];
      LOBYTE(v41) = objc_opt_respondsToSelector();

      if (v41)
      {
        v43 = *(WeakRetained + 19);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __32__NMSMessageCenter_sendRequest___block_invoke_81;
        block[3] = &unk_1E86C9E90;
        v48 = WeakRetained;
        v49 = *(a1 + 32);
        dispatch_sync(v43, block);
      }
    }
  }

  v44 = *MEMORY[0x1E69E9840];
}

void __32__NMSMessageCenter_sendRequest___block_invoke_81(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 messageCenter:*(a1 + 32) didResolveIDSIdentifierForRequest:*(a1 + 40)];
}

- (void)sendFile:(id)file
{
  fileCopy = file;
  resumed = self->_resumed;
  v7 = NSStringFromSelector(a2);
  _AssertState(resumed, a2, @"Cannot use %@ until after -resume is sent", v8, v9, v10, v11, v12, v7);

  v13 = self->_service;
  if (v13)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v14 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEBUG))
    {
      [(NMSMessageCenter *)v14 sendFile:fileCopy, self];
    }

    objc_initWeak(&location, self);
    windowQueue = self->_windowQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __29__NMSMessageCenter_sendFile___block_invoke;
    v16[3] = &unk_1E86CB480;
    objc_copyWeak(&v20, &location);
    v17 = fileCopy;
    selfCopy = self;
    v19 = v13;
    [(_NMSDispatchQueue *)windowQueue async:v16];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
    {
      [NMSMessageCenter sendFile:];
    }
  }
}

void __29__NMSMessageCenter_sendFile___block_invoke(uint64_t a1)
{
  v78[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (shouldLogTraffic())
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v3 = qword_1EDE73428;
      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 32);
        v5 = v3;
        v6 = [v4 CPObfuscatedDescriptionObject];
        v7 = _SYObfuscate(v6);
        *buf = 138543362;
        v72 = v7;
        _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEFAULT, "Sending file: %{public}@", buf, 0xCu);
      }
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v8 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEBUG))
    {
      __29__NMSMessageCenter_sendFile___block_invoke_cold_3(a1, v8);
    }

    v9 = (a1 + 32);
    v10 = [*(a1 + 32) targetDeviceIDs];
    if (!v10)
    {
      v10 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E69A4B50]];
    }

    v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    [*v9 sendTimeout];
    if (v12 > 0.0)
    {
      v13 = MEMORY[0x1E696AD98];
      [*v9 sendTimeout];
      v14 = [v13 numberWithDouble:?];
      [v11 setObject:v14 forKeyedSubscript:*MEMORY[0x1E69A47D8]];
    }

    v15 = [*v9 extraIDSOptions];

    if (v15)
    {
      v16 = [*v9 extraIDSOptions];
      [v11 addEntriesFromDictionary:v16];
    }

    if ([*(a1 + 40) enableTransmissionWindow])
    {
      [v11 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69A47E0]];
    }

    v17 = [*v9 priority];
    v18 = 200;
    if (v17 == 1)
    {
      v18 = 100;
    }

    if (v17 == 2)
    {
      v19 = 300;
    }

    else
    {
      v19 = v18;
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEBUG))
    {
      __29__NMSMessageCenter_sendFile___block_invoke_cold_5();
    }

    v20 = [*(a1 + 32) pbHeaderInfo];
    v21 = [v20 data];

    v60 = v21;
    v77[0] = @"HeaderData";
    v77[1] = @"UserMetadata";
    v78[0] = v21;
    v22 = [*(a1 + 32) metadata];
    v78[1] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:v77 count:2];

    v24 = *(a1 + 48);
    v25 = [*(a1 + 32) fileURL];
    v69 = 0;
    v70 = 0;
    v59 = v23;
    LODWORD(v24) = [v24 sendResourceAtURL:v25 metadata:v23 toDestinations:v10 priority:v19 options:v11 identifier:&v70 error:&v69];
    v26 = v70;
    v27 = v69;

    v61 = v10;
    v62 = v11;
    if (v24 && [WeakRetained enableTransmissionWindow])
    {
      v28 = [*v9 fileURL];
      v68 = 0;
      [v28 getResourceValue:&v68 forKey:*MEMORY[0x1E695DB50] error:0];
      v29 = v68;

      v30 = [v29 unsignedIntegerValue];
      if (v30)
      {
        v31 = v30;
        v32 = *(WeakRetained + 14);
        [WeakRetained windowResponseTimeout];
        [v32 addMessageWithID:v26 ofLength:v31 timeoutTime:?];
        v33 = *(WeakRetained + 13) + v31;
        *(WeakRetained + 13) = v33;
        if (v33 >= [WeakRetained maxBytesInFlight])
        {
          if (_sync_log_facilities_pred != -1)
          {
            [SYIncomingSyncAllObjectsSession _continueProcessing];
          }

          v34 = qword_1EDE73428;
          if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
          {
            v35 = *(WeakRetained + 13);
            v36 = v34;
            v37 = [WeakRetained maxBytesInFlight];
            *buf = 134218240;
            v72 = v35;
            v73 = 2048;
            v74 = v37;
            _os_log_impl(&dword_1DF835000, v36, OS_LOG_TYPE_DEFAULT, "Closing window: %lu bytes in flight, %lu max", buf, 0x16u);
          }

          [*(WeakRetained + 16) suspend];
        }

        [WeakRetained _setNextWindowTimeoutFireDate];
      }

      v10 = v61;
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v38 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
    {
      v39 = *v9;
      v40 = v38;
      v41 = [v39 fileURL];
      *buf = 138412802;
      v72 = v41;
      v73 = 2114;
      v74 = v26;
      v75 = 2112;
      v76 = v27;
      _os_log_impl(&dword_1DF835000, v40, OS_LOG_TYPE_DEFAULT, "Sending resource data from file: %@. Got identifier %{public}@, error %@", buf, 0x20u);
    }

    v42 = objc_opt_new();
    [v42 setMessageID:0xFFFFLL];
    [v42 setIdsIdentifier:v26];
    v43 = [*v9 persistentUserInfo];
    [v42 setUserInfo:v43];

    v44 = objc_opt_new();
    [v42 setDate:v44];

    [v42 setFromRequest:1];
    [v42 setIdsOptions:v62];
    [v42 setTargetDeviceIDs:v10];
    [*v9 setMessageCenter:WeakRetained];
    [*v9 setIdsIdentifier:v26];
    v45 = [WeakRetained delegate];
    v46 = objc_opt_respondsToSelector();

    if (v46)
    {
      v47 = *(WeakRetained + 19);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __29__NMSMessageCenter_sendFile___block_invoke_86;
      block[3] = &unk_1E86CA0F8;
      v65 = WeakRetained;
      v66 = v26;
      v67 = *v9;
      dispatch_sync(v47, block);
    }

    if (v27)
    {
      [WeakRetained _handleError:v27 context:v42];
    }

    else if (v26 && [WeakRetained delegateRequiresACKs])
    {
      [*v9 sendTimeout];
      v54 = MEMORY[0x1E695DF00];
      if (v55 > 0.0)
      {
        [*v9 sendTimeout];
        v56 = v57 + 5.0;
      }

      else
      {
        v56 = 86405.0;
      }

      v58 = [v54 dateWithTimeIntervalSinceNow:v56];
      [*(WeakRetained + 10) lock];
      [*(WeakRetained + 10) setObject:v42 forKey:v26 expires:v58];
      [*(WeakRetained + 10) unlock];
      [WeakRetained _updateExpireTimerWithDate:v58];
    }

    v48 = [MEMORY[0x1E696AC08] defaultManager];
    v49 = [*v9 fileURL];
    v63 = 0;
    v50 = [v48 removeItemAtURL:v49 error:&v63];
    v51 = v63;

    if ((v50 & 1) == 0)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v52 = qword_1EDE73428;
      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
      {
        __29__NMSMessageCenter_sendFile___block_invoke_cold_9(v9, v52);
      }
    }
  }

  v53 = *MEMORY[0x1E69E9840];
}

void __29__NMSMessageCenter_sendFile___block_invoke_86(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 messageCenter:*(a1 + 32) didResolveIDSIdentifier:*(a1 + 40) forFileTransfer:*(a1 + 48)];
}

- (void)_sendResponse:(id)response
{
  v33 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  resumed = self->_resumed;
  v7 = NSStringFromSelector(a2);
  _AssertState(resumed, a2, @"Cannot use %@ until after -resume is sent", v8, v9, v10, v11, v12, v7);

  v13 = self->_service;
  request = [responseCopy request];
  if (v13)
  {
    [responseCopy setSent:1];
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v15 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      pbResponse = [responseCopy pbResponse];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      isSuspended = [(_NMSDispatchQueue *)self->_windowQueue isSuspended];
      v21 = "not ";
      if (isSuspended)
      {
        v21 = "";
      }

      *buf = 138543618;
      v30 = v19;
      v31 = 2080;
      v32 = v21;
      _os_log_impl(&dword_1DF835000, v16, OS_LOG_TYPE_INFO, "Sending %{public}@, NMS window queue is %ssuspended", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    windowQueue = self->_windowQueue;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __34__NMSMessageCenter__sendResponse___block_invoke;
    v24[3] = &unk_1E86CB480;
    objc_copyWeak(&v28, buf);
    v25 = responseCopy;
    v26 = request;
    v27 = v13;
    [(_NMSDispatchQueue *)windowQueue async:v24];

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
    {
      [NMSMessageCenter _sendResponse:];
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __34__NMSMessageCenter__sendResponse___block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    goto LABEL_49;
  }

  if (shouldLogTraffic())
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v3 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v6 = [v4 CPObfuscatedDescriptionObject];
      v7 = _SYObfuscate(v6);
      *buf = 138543362;
      *v58 = v7;
      _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEFAULT, "Sending response: %{public}@", buf, 0xCu);
    }
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v8 = qword_1EDE73428;
  if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEBUG))
  {
    __34__NMSMessageCenter__sendResponse___block_invoke_cold_3(a1, v8);
  }

  v9 = (a1 + 32);
  v10 = [*(a1 + 32) targetDeviceIDs];
  v11 = [*(a1 + 40) sourceDeviceID];

  if (v11)
  {
    v12 = MEMORY[0x1E695DFD8];
    v13 = [*(a1 + 40) sourceDeviceID];
    v14 = [v12 setWithObject:v13];

    v10 = v13;
  }

  else
  {
    if ([v10 count])
    {
      goto LABEL_15;
    }

    v14 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E69A4B50]];
  }

  v10 = v14;
LABEL_15:
  v15 = *v9;
  v56 = 0;
  v16 = [WeakRetained _buildDataForResponse:v15 options:&v56];
  v17 = v56;
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v18 = qword_1EDE73428;
  if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEBUG))
  {
    __34__NMSMessageCenter__sendResponse___block_invoke_cold_5((a1 + 32), v18);
  }

  v19 = [*(a1 + 32) priority];
  v20 = 200;
  if (v19 == 1)
  {
    v20 = 100;
  }

  if (v19 == 2)
  {
    v21 = 300;
  }

  else
  {
    v21 = v20;
  }

  v22 = *(WeakRetained + 7);
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(*(a1 + 40), "messageID")}];
  v49 = [v22 objectForKeyedSubscript:v23];

  v24 = *(a1 + 48);
  v54 = 0;
  v55 = 0;
  LODWORD(v23) = [v24 sendData:v16 toDestinations:v10 priority:v21 options:v17 identifier:&v55 error:&v54];
  v25 = v55;
  v26 = v54;
  if (v23 && [WeakRetained enableTransmissionWindow])
  {
    v27 = *(WeakRetained + 14);
    v28 = [v16 length];
    [WeakRetained windowResponseTimeout];
    [v27 addMessageWithID:v25 ofLength:v28 timeoutTime:?];
    v29 = *(WeakRetained + 13) + [v16 length];
    *(WeakRetained + 13) = v29;
    if (v29 >= [WeakRetained maxBytesInFlight])
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v30 = qword_1EDE73428;
      if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
      {
        v48 = *(WeakRetained + 13);
        v31 = v30;
        v32 = [WeakRetained maxBytesInFlight];
        *buf = 134218240;
        *v58 = v48;
        *&v58[8] = 2048;
        *&v58[10] = v32;
        _os_log_impl(&dword_1DF835000, v31, OS_LOG_TYPE_DEFAULT, "Closing window: %lu bytes in flight, %lu max", buf, 0x16u);
      }

      [*(WeakRetained + 16) suspend];
    }

    [WeakRetained _setNextWindowTimeoutFireDate];
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v33 = qword_1EDE73428;
  if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
  {
    v34 = *(a1 + 40);
    v35 = v33;
    LODWORD(v34) = [v34 messageID];
    v36 = [v16 length];
    *buf = 67109890;
    *v58 = v34;
    *&v58[4] = 2048;
    *&v58[6] = v36;
    *&v58[14] = 2114;
    *&v58[16] = v25;
    v59 = 2112;
    v60 = v26;
    _os_log_impl(&dword_1DF835000, v35, OS_LOG_TYPE_DEFAULT, "For response to: %{companionsync:SYMessageID}hu sending data of length: %tu. Got identifier %{public}@, error %@", buf, 0x26u);
  }

  [*v9 setIdsIdentifier:v25];
  v37 = [WeakRetained delegate];
  v38 = objc_opt_respondsToSelector();

  if (v38)
  {
    v39 = *(WeakRetained + 19);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__NMSMessageCenter__sendResponse___block_invoke_90;
    block[3] = &unk_1E86CA0F8;
    v51 = WeakRetained;
    v52 = v25;
    v53 = *v9;
    dispatch_sync(v39, block);
  }

  v40 = objc_opt_new();
  [v40 setMessageID:{objc_msgSend(*(a1 + 40), "messageID")}];
  [v40 setIdsIdentifier:v25];
  v41 = [*(a1 + 32) persistentUserInfo];
  [v40 setUserInfo:v41];

  v42 = objc_opt_new();
  [v40 setDate:v42];

  [v40 setFromRequest:0];
  [v40 setIdsOptions:v17];
  if (v26)
  {
    [WeakRetained _handleError:v26 context:v40];
  }

  else if (v25 && v49)
  {
    [*v9 sendTimeout];
    v43 = MEMORY[0x1E695DF00];
    if (v44 > 0.0)
    {
      [*v9 sendTimeout];
    }

    else
    {
      v45 = 86400.0;
    }

    v46 = [v43 dateWithTimeIntervalSinceNow:v45];
    [*(WeakRetained + 10) lock];
    [*(WeakRetained + 10) setObject:v40 forKey:v25 expires:v46];
    [*(WeakRetained + 10) unlock];
    [WeakRetained _updateExpireTimerWithDate:v46];
  }

LABEL_49:
  v47 = *MEMORY[0x1E69E9840];
}

void __34__NMSMessageCenter__sendResponse___block_invoke_90(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 messageCenter:*(a1 + 32) didResolveIDSIdentifier:*(a1 + 40) forResponse:*(a1 + 48)];
}

- (void)_handleError:(id)error context:(id)context locked:(BOOL)locked
{
  errorCopy = error;
  contextCopy = context;
  dispatch_assert_queue_V2(self->_queue);
  idsIdentifier = [contextCopy idsIdentifier];

  if (idsIdentifier)
  {
    if (!locked)
    {
      [(NMSPersistentDictionary *)self->_persistentContextStore lock];
    }

    persistentContextStore = self->_persistentContextStore;
    idsIdentifier2 = [contextCopy idsIdentifier];
    [(NMSPersistentDictionary *)persistentContextStore removeObjectForKey:idsIdentifier2];

    if (!locked)
    {
      [(NMSPersistentDictionary *)self->_persistentContextStore unlock];
    }
  }

  userInfo = [errorCopy userInfo];
  v14 = [userInfo mutableCopy];

  if (!v14)
  {
    v14 = objc_opt_new();
  }

  [v14 setObject:contextCopy forKeyedSubscript:@"NMSContext"];
  v15 = MEMORY[0x1E696ABC0];
  domain = [errorCopy domain];
  v17 = [v15 errorWithDomain:domain code:objc_msgSend(errorCopy userInfo:{"code"), v14}];

  errorHandlers = self->_errorHandlers;
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(contextCopy, "messageID")}];
  v20 = [(NSMutableDictionary *)errorHandlers objectForKeyedSubscript:v19];

  if (v20)
  {
    (v20)[2](v20, v17);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v22 = objc_opt_respondsToSelector();

    if (v22)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __48__NMSMessageCenter__handleError_context_locked___block_invoke;
      block[3] = &unk_1E86CA0F8;
      block[4] = self;
      v25 = contextCopy;
      v26 = v17;
      dispatch_sync(delegateQueue, block);
    }
  }
}

void __48__NMSMessageCenter__handleError_context_locked___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 168));
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) idsIdentifier];
  v4 = *(a1 + 48);
  v5 = [*(a1 + 40) userInfo];
  [WeakRetained messageCenter:v2 failedToSendMessageWithIdentifier:v3 error:v4 userInfo:v5];
}

- (void)_obliterate
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v3 = qword_1EDE73428;
  if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF835000, v3, OS_LOG_TYPE_DEFAULT, "NMSMessageCenter stopping", buf, 2u);
  }

  dispatch_source_cancel(self->_expireTimer);
  windowQueue = self->_windowQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__NMSMessageCenter__obliterate__block_invoke;
  v7[3] = &unk_1E86C9FB0;
  v7[4] = self;
  [(_NMSDispatchQueue *)windowQueue sync:v7];
  service = self->_service;
  self->_service = 0;

  expireTimer = self->_expireTimer;
  self->_expireTimer = 0;

  self->_resumed = 0;
  [(NMSPersistentDictionary *)self->_persistentContextStore lock];
  [(NMSPersistentDictionary *)self->_persistentContextStore removeAllObjects];
  [(NMSPersistentDictionary *)self->_persistentContextStore unlock];
  [(NMSWindowData *)self->_windowData removeAllMessages];
}

- (BOOL)cancelMessageWithID:(id)d error:(id *)error
{
  service = self->_service;
  if (service)
  {
    LOBYTE(service) = [(IDSService *)service cancelIdentifier:d error:error];
  }

  return service;
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  v40 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_transportActivity, &state);
  [(NMSPersistentDictionary *)self->_persistentContextStore lock];
  v16 = [(NMSPersistentDictionary *)self->_persistentContextStore objectForKey:identifierCopy];
  [(NMSPersistentDictionary *)self->_persistentContextStore unlock];
  if (!v16)
  {
    if (success)
    {
      goto LABEL_31;
    }

    goto LABEL_16;
  }

  [v16 setSendAcked:1];
  if (!success)
  {
    if (!errorCopy)
    {
      errorCopy = [MEMORY[0x1E696ABC0] errorWithDomain:@"NMSErrorDomain" code:3 userInfo:0];
    }

    [(NMSMessageCenter *)self _handleError:errorCopy context:v16];
LABEL_16:
    if ([(NMSMessageCenter *)self enableTransmissionWindow])
    {
      currentBytesInFlight = self->_currentBytesInFlight;
      v27 = currentBytesInFlight >= [(NMSMessageCenter *)self maxBytesInFlight]|| [(_NMSDispatchQueue *)self->_windowQueue isSuspended];
      [(NMSWindowData *)self->_windowData removeAndReturnLengthOfMessageWithID:identifierCopy];
      self->_currentBytesInFlight = 0;
      if (v27 && [(NMSMessageCenter *)self maxBytesInFlight])
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v28 = qword_1EDE73428;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = self->_currentBytesInFlight;
          maxBytesInFlight = [(NMSMessageCenter *)self maxBytesInFlight];
          *buf = 134218240;
          v37 = v29;
          v38 = 2048;
          v39 = maxBytesInFlight;
          _os_log_impl(&dword_1DF835000, v28, OS_LOG_TYPE_DEFAULT, "Opening window: %lu bytes in flight, %lu max", buf, 0x16u);
        }

        [(_NMSDispatchQueue *)self->_windowQueue resume];
      }

      [(NMSMessageCenter *)self _setNextWindowTimeoutFireDate];
    }

    goto LABEL_31;
  }

  if ([v16 isFromRequest])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __72__NMSMessageCenter_service_account_identifier_didSendWithSuccess_error___block_invoke;
      block[3] = &unk_1E86CA0F8;
      block[4] = self;
      v33 = identifierCopy;
      v34 = v16;
      dispatch_sync(delegateQueue, block);
    }
  }

  if (![v16 isFromRequest])
  {
    goto LABEL_8;
  }

  responseHandlers = self->_responseHandlers;
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(v16, "messageID")}];
  v22 = [(NSMutableDictionary *)responseHandlers objectForKeyedSubscript:v21];
  LODWORD(responseHandlers) = v22 == 0;

  if (responseHandlers)
  {
LABEL_8:
    [(NMSPersistentDictionary *)self->_persistentContextStore lock];
    idsOptions = [v16 idsOptions];
    v24 = [idsOptions objectForKeyedSubscript:*MEMORY[0x1E69A47E0]];
    if ([v24 BOOLValue])
    {
      processAcked = [v16 processAcked];

      if ((processAcked & 1) == 0)
      {
        [(NMSPersistentDictionary *)self->_persistentContextStore resetObject:v16 forKey:identifierCopy];
LABEL_30:
        [(NMSPersistentDictionary *)self->_persistentContextStore unlock];
        goto LABEL_31;
      }
    }

    else
    {
    }

    [(NMSPersistentDictionary *)self->_persistentContextStore removeObjectForKey:identifierCopy];
    goto LABEL_30;
  }

LABEL_31:

  os_activity_scope_leave(&state);
  v31 = *MEMORY[0x1E69E9840];
}

void __72__NMSMessageCenter_service_account_identifier_didSendWithSuccess_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 168));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) userInfo];
  [WeakRetained messageCenter:v2 didSuccessfullySendRequestWithIdentifier:v3 userInfo:v4];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context
{
  v37 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  contextCopy = context;
  dispatch_assert_queue_V2(self->_queue);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_transportActivity, &state);
  [(NMSPersistentDictionary *)self->_persistentContextStore lock];
  v14 = [(NMSPersistentDictionary *)self->_persistentContextStore objectForKey:identifierCopy];
  [(NMSPersistentDictionary *)self->_persistentContextStore unlock];
  [v14 setProcessAcked:1];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__NMSMessageCenter_service_account_identifier_hasBeenDeliveredWithContext___block_invoke;
    block[3] = &unk_1E86CA0F8;
    block[4] = self;
    v30 = identifierCopy;
    v31 = v14;
    dispatch_sync(delegateQueue, block);
  }

  if (v14)
  {
    if (![v14 isFromRequest])
    {
      goto LABEL_6;
    }

    responseHandlers = self->_responseHandlers;
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(v14, "messageID")}];
    v20 = [(NSMutableDictionary *)responseHandlers objectForKeyedSubscript:v19];
    LODWORD(responseHandlers) = v20 == 0;

    if (responseHandlers)
    {
LABEL_6:
      [(NMSPersistentDictionary *)self->_persistentContextStore lock];
      sendAcked = [v14 sendAcked];
      persistentContextStore = self->_persistentContextStore;
      if (sendAcked)
      {
        [(NMSPersistentDictionary *)persistentContextStore removeObjectForKey:identifierCopy];
      }

      else
      {
        [(NMSPersistentDictionary *)persistentContextStore resetObject:v14 forKey:identifierCopy];
      }

      [(NMSPersistentDictionary *)self->_persistentContextStore unlock];
    }
  }

  if ([(NMSMessageCenter *)self enableTransmissionWindow])
  {
    currentBytesInFlight = self->_currentBytesInFlight;
    v24 = currentBytesInFlight >= [(NMSMessageCenter *)self maxBytesInFlight]|| [(_NMSDispatchQueue *)self->_windowQueue isSuspended];
    [(NMSWindowData *)self->_windowData removeAndReturnLengthOfMessageWithID:identifierCopy];
    self->_currentBytesInFlight = 0;
    if (v24 && [(NMSMessageCenter *)self maxBytesInFlight])
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v25 = qword_1EDE73428;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = self->_currentBytesInFlight;
        maxBytesInFlight = [(NMSMessageCenter *)self maxBytesInFlight];
        *buf = 134218240;
        v34 = v26;
        v35 = 2048;
        v36 = maxBytesInFlight;
        _os_log_impl(&dword_1DF835000, v25, OS_LOG_TYPE_DEFAULT, "Opening window: %lu bytes in flight, %lu max", buf, 0x16u);
      }

      [(_NMSDispatchQueue *)self->_windowQueue resume];
    }

    [(NMSMessageCenter *)self _setNextWindowTimeoutFireDate];
  }

  os_activity_scope_leave(&state);
  v28 = *MEMORY[0x1E69E9840];
}

void __75__NMSMessageCenter_service_account_identifier_hasBeenDeliveredWithContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 168));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) userInfo];
  [WeakRetained messageCenter:v2 didSuccessfullyDeliverRequestWithIdentifier:v3 userInfo:v4];
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  v79 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  accountCopy = account;
  dataCopy = data;
  dCopy = d;
  contextCopy = context;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_transportActivity, &state);
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v15 = qword_1EDE73428;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [dataCopy length];
    v17 = _SYObfuscate(serviceCopy);
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];
    *buf = 134218754;
    v72 = v16;
    v73 = 2114;
    v74 = v17;
    v75 = 2114;
    v76 = outgoingResponseIdentifier;
    v77 = 2114;
    v78 = incomingResponseIdentifier;
    _os_log_impl(&dword_1DF835000, v15, OS_LOG_TYPE_DEFAULT, "Receiving %zu bytes of incoming data from service %{public}@. Identifier (in/out) = %{public}@ / %{public}@", buf, 0x2Au);
  }

  dispatch_assert_queue_V2(self->_queue);
  if (self->_service == serviceCopy)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v20 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEBUG))
    {
      [NMSMessageCenter service:v20 account:? incomingData:? fromID:? context:?];
    }

    v63 = os_transaction_create();
    incomingResponseIdentifier2 = [contextCopy incomingResponseIdentifier];
    v22 = incomingResponseIdentifier2 == 0;

    if (v22)
    {
      if ([dataCopy length] >= 3)
      {
        v64 = [(NMSMessageCenter *)self _decodeIncomingRequestData:dataCopy context:contextCopy];
        [v64 setSourceDeviceID:dCopy];
        if ([v64 messageID] == 0x7FFF)
        {
          pbRequest = [v64 pbRequest];
          inReplyTo = [pbRequest inReplyTo];
          [(NMSPersistentDictionary *)self->_persistentContextStore lock];
          [(NMSPersistentDictionary *)self->_persistentContextStore removeObjectForKey:inReplyTo];
          [(NMSPersistentDictionary *)self->_persistentContextStore unlock];
          if (_sync_log_facilities_pred != -1)
          {
            [SYIncomingSyncAllObjectsSession _continueProcessing];
          }

          v45 = qword_1EDE73428;
          if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v72 = inReplyTo;
            _os_log_impl(&dword_1DF835000, v45, OS_LOG_TYPE_DEFAULT, "Releasing timer for outgoing request %{public}@ due to incoming Version Rejection message triggered by that message ID.", buf, 0xCu);
          }
        }

        if (shouldLogTraffic())
        {
          if (_sync_log_facilities_pred != -1)
          {
            [SYIncomingSyncAllObjectsSession _continueProcessing];
          }

          v46 = qword_1EDE73428;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            cPObfuscatedDescriptionObject = [v64 CPObfuscatedDescriptionObject];
            v48 = _SYObfuscate(cPObfuscatedDescriptionObject);
            *buf = 138543362;
            v72 = v48;
            _os_log_impl(&dword_1DF835000, v46, OS_LOG_TYPE_DEFAULT, "Received request: %{public}@", buf, 0xCu);
          }
        }

        if ([v64 expectsResponse])
        {
          [v64 configureResponse];
        }

        requestHandlers = self->_requestHandlers;
        v50 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(v64, "messageID")}];
        v27 = [(NSMutableDictionary *)requestHandlers objectForKeyedSubscript:v50];

        if (v27)
        {
          (v27)[2](v27, v64);
        }

        else
        {
          if (_sync_log_facilities_pred != -1)
          {
            [SYIncomingSyncAllObjectsSession _continueProcessing];
          }

          v53 = qword_1EDE73428;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            -[NMSMessageCenter service:account:incomingData:fromID:context:].cold.14([v64 messageID], v70, v53);
          }

          if (_sync_log_facilities_pred != -1)
          {
            [SYIncomingSyncAllObjectsSession _continueProcessing];
          }

          if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEBUG))
          {
            if ([dataCopy length] > 0x64)
            {
              v55 = objc_autoreleasePoolPush();
              v54 = [dataCopy subdataWithRange:{0, 100}];
              objc_autoreleasePoolPop(v55);
            }

            else
            {
              v54 = dataCopy;
            }

            if (_sync_log_facilities_pred != -1)
            {
              [SYIncomingSyncAllObjectsSession _continueProcessing];
            }

            v56 = qword_1EDE73428;
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
            {
              v57 = [dataCopy subdataWithRange:{0, 3}];
              [NMSMessageCenter service:v57 account:buf incomingData:v56 fromID:? context:?];
            }

            if (_sync_log_facilities_pred != -1)
            {
              [SYIncomingSyncAllObjectsSession _continueProcessing];
            }

            if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEBUG))
            {
              [NMSMessageCenter service:account:incomingData:fromID:context:];
            }
          }

          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          v59 = objc_opt_respondsToSelector();

          if (v59)
          {
            delegateQueue = self->_delegateQueue;
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __64__NMSMessageCenter_service_account_incomingData_fromID_context___block_invoke;
            block[3] = &unk_1E86C9E90;
            block[4] = self;
            v64 = v64;
            v68 = v64;
            dispatch_sync(delegateQueue, block);
          }

          else
          {
            [v64 setExpectsResponse:0];
            if (_sync_log_facilities_pred != -1)
            {
              [SYIncomingSyncAllObjectsSession _continueProcessing];
            }

            if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
            {
              [NMSMessageCenter service:account:incomingData:fromID:context:];
            }
          }
        }

        goto LABEL_55;
      }
    }

    else if ([dataCopy length] >= 2)
    {
      v23 = dataCopy;
      v24 = *[dataCopy bytes];
      v64 = [dataCopy subdataWithRange:{2, objc_msgSend(dataCopy, "length") - 2}];
      [(NMSPersistentDictionary *)self->_persistentContextStore lock];
      persistentContextStore = self->_persistentContextStore;
      incomingResponseIdentifier3 = [contextCopy incomingResponseIdentifier];
      v27 = [(NMSPersistentDictionary *)persistentContextStore objectForKey:incomingResponseIdentifier3];

      [(NMSPersistentDictionary *)self->_persistentContextStore unlock];
      if (v27)
      {
        [(NMSPersistentDictionary *)self->_persistentContextStore lock];
        v28 = self->_persistentContextStore;
        incomingResponseIdentifier4 = [contextCopy incomingResponseIdentifier];
        [(NMSPersistentDictionary *)v28 removeObjectForKey:incomingResponseIdentifier4];

        [(NMSPersistentDictionary *)self->_persistentContextStore unlock];
        if ([v27 messageID] == v24)
        {
          if ([v27 isFromRequest])
          {
            responseHandlers = self->_responseHandlers;
            v31 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(v27, "messageID")}];
            v32 = [(NSMutableDictionary *)responseHandlers objectForKeyedSubscript:v31];

            if (v32)
            {
              v33 = objc_opt_new();
              [v33 setMessageID:{objc_msgSend(v27, "messageID")}];
              [v33 setData:v64];
              outgoingResponseIdentifier2 = [contextCopy outgoingResponseIdentifier];
              [v33 setIdsIdentifier:outgoingResponseIdentifier2];

              incomingResponseIdentifier5 = [contextCopy incomingResponseIdentifier];
              [v33 setRequestIDSIdentifier:incomingResponseIdentifier5];

              date = [v27 date];
              [v33 setRequestSent:date];

              userInfo = [v27 userInfo];
              [v33 setRequestPersistentUserInfo:userInfo];

              [v33 setSourceDeviceID:dCopy];
              [v33 setIdsContext:contextCopy];
              if (shouldLogTraffic())
              {
                if (_sync_log_facilities_pred != -1)
                {
                  [SYIncomingSyncAllObjectsSession _continueProcessing];
                }

                v38 = qword_1EDE73428;
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                {
                  cPObfuscatedDescriptionObject2 = [v33 CPObfuscatedDescriptionObject];
                  v40 = _SYObfuscate(cPObfuscatedDescriptionObject2);
                  *buf = 138543362;
                  v72 = v40;
                  _os_log_impl(&dword_1DF835000, v38, OS_LOG_TYPE_DEFAULT, "Received response: %{public}@", buf, 0xCu);
                }
              }

              v41 = -[NMSMessageCenter _pbMappingForMessageID:](self, "_pbMappingForMessageID:", [v27 messageID]);
              if ([v41 responseClass])
              {
                v42 = [objc_alloc(objc_msgSend(v41 "responseClass"))];
                [v33 setPbResponse:v42];
              }

              v32[2](v32, v33);
            }

            else
            {
              if (_sync_log_facilities_pred != -1)
              {
                [SYIncomingSyncAllObjectsSession _continueProcessing];
              }

              if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
              {
                [NMSMessageCenter service:account:incomingData:fromID:context:];
              }
            }

LABEL_54:

LABEL_55:
            goto LABEL_56;
          }

          v61 = "context.fromRequest == YES";
          v62 = 1269;
        }

        else
        {
          v61 = "context.messageID == header.messageID";
          v62 = 1268;
        }

        __assert_rtn("[NMSMessageCenter service:account:incomingData:fromID:context:]", "NanoMessagingService.m", v62, v61);
      }

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v32 = qword_1EDE73428;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        incomingResponseIdentifier6 = [contextCopy incomingResponseIdentifier];
        [NMSMessageCenter service:incomingResponseIdentifier6 account:v24 incomingData:buf fromID:v32 context:?];
      }

      goto LABEL_54;
    }

LABEL_56:

    goto LABEL_57;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
  {
    [NMSMessageCenter service:serviceCopy account:&self->_service incomingData:? fromID:? context:?];
  }

LABEL_57:
  os_activity_scope_leave(&state);

  v52 = *MEMORY[0x1E69E9840];
}

void __64__NMSMessageCenter_service_account_incomingData_fromID_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 168));
  [WeakRetained messageCenter:*(a1 + 32) didReceiveUnknownRequest:*(a1 + 40)];
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  lCopy = l;
  metadataCopy = metadata;
  dCopy = d;
  contextCopy = context;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_transportActivity, &state);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v22 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEBUG))
    {
      [NMSMessageCenter service:v22 account:? incomingResourceAtURL:? metadata:? fromID:? context:?];
    }

    v29 = os_transaction_create();
    v23 = objc_opt_new();
    [v23 setMessageCenter:self];
    [v23 setIdsIdentifier:dCopy];
    [v23 setFileURL:lCopy];
    v24 = [metadataCopy objectForKeyedSubscript:@"UserMetadata"];
    [v23 setMetadata:v24];

    [v23 setSourceDeviceID:dCopy];
    [v23 setIdsContext:contextCopy];
    v25 = [metadataCopy objectForKeyedSubscript:@"HeaderData"];
    if (v25)
    {
      v26 = [[SYFileTransferInfo alloc] initWithData:v25];
      [v23 setPbHeaderInfo:v26];
    }

    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__NMSMessageCenter_service_account_incomingResourceAtURL_metadata_fromID_context___block_invoke;
    block[3] = &unk_1E86C9E90;
    block[4] = self;
    v31 = v23;
    v28 = v23;
    dispatch_sync(delegateQueue, block);
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
    {
      [NMSMessageCenter service:account:incomingResourceAtURL:metadata:fromID:context:];
    }
  }

  os_activity_scope_leave(&state);
}

void __82__NMSMessageCenter_service_account_incomingResourceAtURL_metadata_fromID_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 168));
  [WeakRetained messageCenter:*(a1 + 32) didReceiveIncomingFileTransfer:*(a1 + 40)];
}

- (void)service:(id)service didSwitchActivePairedDevice:(id)device acknowledgementBlock:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  deviceCopy = device;
  blockCopy = block;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_transportActivity, &state);
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v11 = qword_1EDE73428;
  if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = deviceCopy;
    _os_log_impl(&dword_1DF835000, v11, OS_LOG_TYPE_DEFAULT, "IDS active device changed: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__NMSMessageCenter_service_didSwitchActivePairedDevice_acknowledgementBlock___block_invoke;
    block[3] = &unk_1E86CB1D0;
    block[4] = self;
    v17 = deviceCopy;
    v18 = blockCopy;
    dispatch_async(delegateQueue, block);
  }

  else
  {
    blockCopy[2](blockCopy);
  }

  os_activity_scope_leave(&state);

  v15 = *MEMORY[0x1E69E9840];
}

void __77__NMSMessageCenter_service_didSwitchActivePairedDevice_acknowledgementBlock___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained messageCenter:a1[4] activeDeviceChanged:a1[5] acknowledgement:a1[6]];
}

- (void)service:(id)service nearbyDevicesChanged:(id)changed
{
  serviceCopy = service;
  changedCopy = changed;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_transportActivity, &state);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__NMSMessageCenter_service_nearbyDevicesChanged___block_invoke;
    block[3] = &unk_1E86CA0F8;
    v11 = WeakRetained;
    selfCopy = self;
    v13 = changedCopy;
    dispatch_async(delegateQueue, block);
  }

  os_activity_scope_leave(&state);
}

- (void)service:(id)service connectedDevicesChanged:(id)changed
{
  serviceCopy = service;
  changedCopy = changed;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_transportActivity, &state);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__NMSMessageCenter_service_connectedDevicesChanged___block_invoke;
    block[3] = &unk_1E86CA0F8;
    v11 = WeakRetained;
    selfCopy = self;
    v13 = changedCopy;
    dispatch_async(delegateQueue, block);
  }

  os_activity_scope_leave(&state);
}

- (NMSMessageCenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)deviceIDFromDevice:(id)device
{
  if (device)
  {
    v3 = IDSCopyIDForDevice();
  }

  else
  {
    v3 = *MEMORY[0x1E69A4B50];
  }

  return v3;
}

- (void)sendRequest:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __32__NMSMessageCenter_sendRequest___block_invoke_cold_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_7() extraIDSOptions];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_6(&dword_1DF835000, v6, v7, "Request extra IDS options: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

void __32__NMSMessageCenter_sendRequest___block_invoke_cold_5()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5_3(&dword_1DF835000, v0, v1, "Request resolved IDS options: %@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)sendFile:(uint64_t)a3 .cold.2(void *a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [a2 fileURL];
  v7 = [*(a3 + 128) isSuspended];
  v8 = "not ";
  if (v7)
  {
    v8 = "";
  }

  v10 = 138543618;
  v11 = v6;
  v12 = 2080;
  v13 = v8;
  _os_log_debug_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEBUG, "Sending %{public}@, NMS window queue is %ssuspended", &v10, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)sendFile:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __29__NMSMessageCenter_sendFile___block_invoke_cold_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_7() extraIDSOptions];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_6(&dword_1DF835000, v6, v7, "File extra IDS options: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

void __29__NMSMessageCenter_sendFile___block_invoke_cold_5()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5_3(&dword_1DF835000, v0, v1, "File resolved IDS options: %@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

void __29__NMSMessageCenter_sendFile___block_invoke_cold_9(void **a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a2;
  [v2 fileURL];
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_7();
  v5 = _SYObfuscate(v4);
  v7 = 138412546;
  v8 = v2;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_1DF835000, v3, OS_LOG_TYPE_ERROR, "Failed to delete file-transfer file '%@' : %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_sendResponse:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __34__NMSMessageCenter__sendResponse___block_invoke_cold_3(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_7() extraIDSOptions];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_6(&dword_1DF835000, v6, v7, "Response extra IDS options: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

void __34__NMSMessageCenter__sendResponse___block_invoke_cold_5(uint64_t *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_7() extraIDSOptions];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_6(&dword_1DF835000, v6, v7, "Response resolved IDS options: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)service:(uint64_t)a1 account:(uint64_t *)a2 incomingData:fromID:context:.cold.3(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_5_0();
  v7 = 2114;
  v8 = v3;
  _os_log_error_impl(&dword_1DF835000, v4, OS_LOG_TYPE_ERROR, "Err, *whose* message? Got data for service %{public}@, but I'm listening for service %{public}@", v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)service:account:incomingData:fromID:context:.cold.8()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)service:(uint8_t *)buf account:(os_log_t)log incomingData:fromID:context:.cold.10(void *a1, unsigned __int16 a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1DF835000, log, OS_LOG_TYPE_ERROR, "Could not find context for message %{public}@, type %{companionsync:SYMessageID}hu", buf, 0x12u);
}

- (void)service:(os_log_t)log account:incomingData:fromID:context:.cold.14(unsigned __int16 a1, uint8_t *buf, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a1;
  _os_log_error_impl(&dword_1DF835000, log, OS_LOG_TYPE_ERROR, "No request handler for message ID %{companionsync:SYMessageID}hu", buf, 8u);
}

- (void)service:(NSObject *)a3 account:incomingData:fromID:context:.cold.17(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_5_3(&dword_1DF835000, a3, a3, "Header bytes from message (8 bytes): %{public}@", a2);
}

- (void)service:account:incomingData:fromID:context:.cold.19()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5_3(&dword_1DF835000, v0, v1, "First 100 bytes of incoming unrecognized message data: %{private}@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)service:account:incomingResourceAtURL:metadata:fromID:context:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end