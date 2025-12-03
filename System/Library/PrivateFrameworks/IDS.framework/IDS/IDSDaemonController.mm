@interface IDSDaemonController
+ (id)sharedInstance;
- (BOOL)_makeConnectionWithLaunch:(BOOL)launch completionBlock:(id)block;
- (BOOL)_setCapabilities:(unsigned int)capabilities;
- (BOOL)_setCommands:(id)commands;
- (BOOL)_setServices:(id)services;
- (BOOL)addListenerID:(id)d services:(id)services commands:(id)commands;
- (BOOL)consumeQueryContext:(id)context;
- (BOOL)hasListenerForID:(id)d;
- (BOOL)isConnected;
- (BOOL)isConnecting;
- (BOOL)localObjectExists;
- (BOOL)remoteObjectExists;
- (BOOL)setCapabilities:(unsigned int)capabilities forListenerID:(id)d shouldLog:(BOOL)log;
- (BOOL)setCommands:(id)commands forListenerID:(id)d;
- (BOOL)setServices:(id)services forListenerID:(id)d;
- (IDSDaemonController)init;
- (NSString)listenerID;
- (id)commands;
- (id)commandsForListenerID:(id)d;
- (id)delegate;
- (id)forwarderWithCompletion:(id)completion;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)localObject;
- (id)services;
- (id)servicesForListenerID:(id)d;
- (int)curXPCMessagePriority;
- (unsigned)capabilities;
- (unsigned)capabilitiesForListenerID:(id)d;
- (void)_agentDidLaunchNotification:(id)notification;
- (void)_connectToDaemonWithLaunch:(BOOL)launch services:(id)services commands:(id)commands capabilities:(unsigned int)capabilities;
- (void)_disconnectFromDaemonWithForce:(BOOL)force;
- (void)_handleDaemonException:(id)exception;
- (void)_listenerSetUpdated;
- (void)_localObjectCleanup;
- (void)_noteDisconnected;
- (void)_noteSetupComplete;
- (void)_performBlock:(id)block wait:(BOOL)wait;
- (void)_remoteObjectCleanup;
- (void)addedDelegateForService:(id)service withCompletion:(id)completion;
- (void)blockUntilConnected;
- (void)dealloc;
- (void)disconnectFromDaemon;
- (void)forwardMethodWithBoostedPriority:(id)priority;
- (void)forwardMethodWithReplyIsSync:(BOOL)sync block:(id)block;
- (void)localObjectDiedNotification:(id)notification;
- (void)remoteObjectDiedNotification:(id)notification;
- (void)removeListenerID:(id)d;
- (void)sendXPCObject:(id)object objectContext:(id)context;
- (void)setCurXPCMessagePriority:(int)priority;
- (void)setQueryContext:(id)context;
- (void)systemApplicationDidEnterBackground;
- (void)systemApplicationDidResume;
- (void)systemApplicationDidSuspend;
- (void)systemApplicationWillEnterForeground;
- (void)unsetQueryContext:(id)context;
@end

@implementation IDSDaemonController

+ (id)sharedInstance
{
  if (qword_1ED5DE098 != -1)
  {
    sub_195A0222C();
  }

  v3 = qword_1ED5DE058;

  return v3;
}

- (void)blockUntilConnected
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isNonUIInstall = [mEMORY[0x1E69A60F0] isNonUIInstall];

  if ((isNonUIInstall & 1) == 0)
  {
    dispatch_assert_queue_not_V2(self->_ivarQueue);
    v5 = +[IDSLogging DaemonController];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_INFO, "Request to block until connected", buf, 2u);
    }

    *buf = 0;
    v9 = buf;
    v10 = 0x2020000000;
    v11 = 1;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_195A00E94;
    v7[3] = &unk_1E743E940;
    v7[4] = self;
    v7[5] = buf;
    [(IDSDaemonController *)self _performBlock:v7 wait:1];
    if (v9[24] == 1)
    {
      connectingQueue = [(IDSDaemonController *)self connectingQueue];
      dispatch_sync(connectingQueue, &unk_1F09E5BA0);
    }

    _Block_object_dispose(buf, 8);
  }
}

- (BOOL)isConnected
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isNonUIInstall = [mEMORY[0x1E69A60F0] isNonUIInstall];

  if (isNonUIInstall)
  {
    v5 = 1;
  }

  else
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = -86;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_195A00DB8;
    v7[3] = &unk_1E743E670;
    v7[4] = self;
    v7[5] = &v8;
    [(IDSDaemonController *)self _performBlock:v7 wait:1];
    v5 = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  return v5 & 1;
}

- (IDSDaemonController)init
{
  if (_IDSRunningInDaemon())
  {
    v3 = +[IDSLogging DaemonController];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_195B26A7C();
    }

    selfCopy = 0;
  }

  else
  {
    v28.receiver = self;
    v28.super_class = IDSDaemonController;
    v5 = [(IDSDaemonController *)&v28 init];
    v6 = v5;
    if (v5)
    {
      [(IDSDaemonController *)v5 _setAutoReconnect:1];
      v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v8 = dispatch_queue_create("com.apple.IDSDaemonControllerIvarQueue", v7);
      ivarQueue = v6->_ivarQueue;
      v6->_ivarQueue = v8;

      dispatch_queue_set_specific(v6->_ivarQueue, "IDSDaemonControllerContext", 1, 0);
      v10 = dispatch_queue_create("com.apple.IDSDaemonControllerQueue", v7);
      remoteMessageQueue = v6->_remoteMessageQueue;
      v6->_remoteMessageQueue = v10;

      v12 = dispatch_queue_create("com.apple.IDSDaemonControllerConnectingQueue", v7);
      connectingQueue = v6->_connectingQueue;
      v6->_connectingQueue = v12;

      v6->_curXPCMessagePriority = 0;
      v14 = dispatch_group_create();
      daemonConnectedGroup = v6->_daemonConnectedGroup;
      v6->_daemonConnectedGroup = v14;

      dispatch_group_enter(v6->_daemonConnectedGroup);
      v16 = [objc_alloc(MEMORY[0x1E696AE48]) initWithProtocol:&unk_1F0A2D150];
      protocol = v6->_protocol;
      v6->_protocol = v16;

      v18 = objc_alloc_init(IDSDaemonListener);
      daemonListener = v6->_daemonListener;
      v6->_daemonListener = v18;

      v20 = [[IDSDaemonControllerForwarder alloc] initWithProtocol:v6->_protocol ivarQueue:v6->_ivarQueue remoteMessageQueue:v6->_remoteMessageQueue];
      forwarder = v6->_forwarder;
      v6->_forwarder = v20;

      v22 = IMGetMainBundleIdentifier();
      if (![v22 length])
      {
        stringGUID = [MEMORY[0x1E696AEC0] stringGUID];

        v22 = stringGUID;
      }

      v24 = [v22 copy];
      listenerID = v6->_listenerID;
      v6->_listenerID = v24;

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, sub_195A0FA74, *MEMORY[0x1E69A5438], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    self = v6;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)services
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_195A00684;
  v9 = sub_195A03CE8;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A03128;
  v4[3] = &unk_1E743E940;
  v4[4] = self;
  v4[5] = &v5;
  [(IDSDaemonController *)self _performBlock:v4 wait:1];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)commands
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_195A00684;
  v9 = sub_195A03CE8;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A0329C;
  v4[3] = &unk_1E743E940;
  v4[4] = self;
  v4[5] = &v5;
  [(IDSDaemonController *)self _performBlock:v4 wait:1];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (unsigned)capabilities
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A039E8;
  v4[3] = &unk_1E743E940;
  v4[4] = self;
  v4[5] = &v5;
  [(IDSDaemonController *)self _performBlock:v4 wait:1];
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)_listenerSetUpdated
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_195A03844;
  v2[3] = &unk_1E743E878;
  v2[4] = self;
  [(IDSDaemonController *)self _performBlock:v2 wait:1];
}

- (void)_noteDisconnected
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_195A03B3C;
  v2[3] = &unk_1E743E878;
  v2[4] = self;
  [(IDSDaemonController *)self _performBlock:v2 wait:1];
}

- (BOOL)isConnecting
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = -86;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A03BF4;
  v4[3] = &unk_1E743E940;
  v4[4] = self;
  v4[5] = &v5;
  [(IDSDaemonController *)self _performBlock:v4 wait:1];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)remoteObjectExists
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = -86;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A0469C;
  v4[3] = &unk_1E743E670;
  v4[4] = self;
  v4[5] = &v5;
  [(IDSDaemonController *)self _performBlock:v4 wait:1];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)_localObjectCleanup
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_195A04728;
  v2[3] = &unk_1E743E878;
  v2[4] = self;
  [(IDSDaemonController *)self _performBlock:v2 wait:1];
}

- (void)disconnectFromDaemon
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isNonUIInstall = [mEMORY[0x1E69A60F0] isNonUIInstall];

  if ((isNonUIInstall & 1) == 0)
  {

    [(IDSDaemonController *)self _disconnectFromDaemonWithForce:0];
  }
}

- (BOOL)localObjectExists
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = -86;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A04E70;
  v4[3] = &unk_1E743E670;
  v4[4] = self;
  v4[5] = &v5;
  [(IDSDaemonController *)self _performBlock:v4 wait:1];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)_remoteObjectCleanup
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_195A055AC;
  v2[3] = &unk_1E743E878;
  v2[4] = self;
  [(IDSDaemonController *)self _performBlock:v2 wait:1];
}

- (id)localObject
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_195A00684;
  v9 = sub_195A03CE8;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A0572C;
  v4[3] = &unk_1E743E670;
  v4[4] = self;
  v4[5] = &v5;
  [(IDSDaemonController *)self _performBlock:v4 wait:1];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)_noteSetupComplete
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_195A05B58;
  v2[3] = &unk_1E743E878;
  v2[4] = self;
  [(IDSDaemonController *)self _performBlock:v2];
}

- (int)curXPCMessagePriority
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B26FC8();
    }
  }

  return self->_curXPCMessagePriority;
}

- (void)_performBlock:(id)block wait:(BOOL)wait
{
  waitCopy = wait;
  blockCopy = block;
  if (blockCopy)
  {
    block = blockCopy;
    if (waitCopy)
    {
      if (dispatch_get_specific("IDSDaemonControllerContext"))
      {
        block[2]();
      }

      else
      {
        dispatch_sync(self->_ivarQueue, block);
      }
    }

    else
    {
      dispatch_async(self->_ivarQueue, blockCopy);
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)dealloc
{
  mEMORY[0x1E69A6160] = [MEMORY[0x1E69A6160] sharedInstance];
  [mEMORY[0x1E69A6160] removeListener:self];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:0 object:0];

  [(IDSDaemonController *)self _localObjectCleanup];
  [(IDSDaemonController *)self _remoteObjectCleanup];
  daemonConnectedGroup = self->_daemonConnectedGroup;
  if (daemonConnectedGroup)
  {
    dispatch_group_leave(daemonConnectedGroup);
    v6 = self->_daemonConnectedGroup;
    self->_daemonConnectedGroup = 0;
  }

  v7.receiver = self;
  v7.super_class = IDSDaemonController;
  [(IDSDaemonController *)&v7 dealloc];
}

- (void)_handleDaemonException:(id)exception
{
  exceptionCopy = exception;
  v4 = +[IDSLogging DaemonController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B26B10(exceptionCopy, v4);
  }
}

- (BOOL)_makeConnectionWithLaunch:(BOOL)launch completionBlock:(id)block
{
  blockCopy = block;
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  if ([mEMORY[0x1E69A60F0] isNonUIInstall])
  {
  }

  else
  {
    mEMORY[0x1E69A6160] = [MEMORY[0x1E69A6160] sharedInstance];
    systemIsShuttingDown = [mEMORY[0x1E69A6160] systemIsShuttingDown];

    if ((systemIsShuttingDown & 1) == 0)
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_195A0FD24;
      v12[3] = &unk_1E743E8A0;
      launchCopy = launch;
      v12[4] = self;
      v14 = &v16;
      v13 = blockCopy;
      [(IDSDaemonController *)self _performBlock:v12 wait:1];
      v10 = *(v17 + 24);

      _Block_object_dispose(&v16, 8);
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_6:

  return v10 & 1;
}

- (void)_disconnectFromDaemonWithForce:(BOOL)force
{
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isNonUIInstall = [mEMORY[0x1E69A60F0] isNonUIInstall];

  if ((isNonUIInstall & 1) == 0)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_195A10B88;
    v7[3] = &unk_1E743E8C8;
    v7[4] = self;
    forceCopy = force;
    [(IDSDaemonController *)self _performBlock:v7 wait:1];
  }
}

- (void)_connectToDaemonWithLaunch:(BOOL)launch services:(id)services commands:(id)commands capabilities:(unsigned int)capabilities
{
  v30 = *MEMORY[0x1E69E9840];
  servicesCopy = services;
  commandsCopy = commands;
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isNonUIInstall = [mEMORY[0x1E69A60F0] isNonUIInstall];

  if ((isNonUIInstall & 1) == 0)
  {
    v14 = [servicesCopy containsObject:@"com.apple.private.alloy.pbbridge"];
    mEMORY[0x1E69A6160] = [MEMORY[0x1E69A6160] sharedInstance];
    systemIsShuttingDown = [mEMORY[0x1E69A6160] systemIsShuttingDown];

    if (systemIsShuttingDown)
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = sub_195A113E0;
      v26[3] = &unk_1E743E8C8;
      v27 = v14;
      v26[4] = self;
      v17 = v26;
LABEL_6:
      [(IDSDaemonController *)self _performBlock:v17 wait:1];
      goto LABEL_12;
    }

    if (self->_fatalErrorOccured)
    {
      v17 = &unk_1F09E5B60;
      goto LABEL_6;
    }

    if (v14)
    {
      registration = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        capabilitiesCopy = capabilities;
        _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "connectToDaemonWithLaunch capabilities %d", buf, 8u);
      }
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_195A11560;
    v20[3] = &unk_1E743E8F0;
    v24 = v14;
    capabilitiesCopy2 = capabilities;
    v20[4] = self;
    v21 = servicesCopy;
    v22 = commandsCopy;
    launchCopy = launch;
    [(IDSDaemonController *)self _performBlock:v20 wait:1];
  }

LABEL_12:

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)_setServices:(id)services
{
  servicesCopy = services;
  v5 = servicesCopy;
  if (servicesCopy)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_195A11EFC;
    v8[3] = &unk_1E743E968;
    v8[4] = self;
    v9 = servicesCopy;
    v10 = &v11;
    [(IDSDaemonController *)self _performBlock:v8 wait:1];
    v6 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)_setCommands:(id)commands
{
  commandsCopy = commands;
  v5 = commandsCopy;
  if (commandsCopy)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_195A1208C;
    v8[3] = &unk_1E743E968;
    v8[4] = self;
    v9 = commandsCopy;
    v10 = &v11;
    [(IDSDaemonController *)self _performBlock:v8 wait:1];
    v6 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)_setCapabilities:(unsigned int)capabilities
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195A1228C;
  v5[3] = &unk_1E743E990;
  v5[4] = self;
  v5[5] = &v7;
  capabilitiesCopy = capabilities;
  [(IDSDaemonController *)self _performBlock:v5 wait:1];
  v3 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (void)setCurXPCMessagePriority:(int)priority
{
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B26F28();
    }
  }

  self->_curXPCMessagePriority = priority;
}

- (void)addedDelegateForService:(id)service withCompletion:(id)completion
{
  serviceCopy = service;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A124C4;
  v10[3] = &unk_1E743E9B8;
  v11 = serviceCopy;
  selfCopy = self;
  v13 = completionCopy;
  v8 = completionCopy;
  v9 = serviceCopy;
  [(IDSDaemonController *)self _performBlock:v10 wait:1];
}

- (BOOL)addListenerID:(id)d services:(id)services commands:(id)commands
{
  dCopy = d;
  servicesCopy = services;
  commandsCopy = commands;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A12774;
  v15[3] = &unk_1E743E9E0;
  v11 = servicesCopy;
  v16 = v11;
  v12 = commandsCopy;
  v17 = v12;
  v13 = dCopy;
  selfCopy = self;
  v20 = &v21;
  v18 = v13;
  [(IDSDaemonController *)self _performBlock:v15 wait:1];
  LOBYTE(self) = *(v22 + 24);

  _Block_object_dispose(&v21, 8);
  return self;
}

- (BOOL)hasListenerForID:(id)d
{
  dCopy = d;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A12B10;
  v7[3] = &unk_1E743EA08;
  v9 = &v10;
  v7[4] = self;
  v5 = dCopy;
  v8 = v5;
  [(IDSDaemonController *)self _performBlock:v7 wait:1];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

- (void)removeListenerID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_195A12C04;
    v5[3] = &unk_1E743EA30;
    v5[4] = self;
    v6 = dCopy;
    [(IDSDaemonController *)self _performBlock:v5];
  }
}

- (id)servicesForListenerID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_195A00684;
    v14 = sub_195A03CE8;
    v15 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_195A12F58;
    v7[3] = &unk_1E743EA08;
    v9 = &v10;
    v7[4] = self;
    v8 = dCopy;
    [(IDSDaemonController *)self _performBlock:v7 wait:1];
    services = v11[5];

    _Block_object_dispose(&v10, 8);
  }

  else
  {
    services = [(IDSDaemonController *)self services];
  }

  return services;
}

- (BOOL)setServices:(id)services forListenerID:(id)d
{
  servicesCopy = services;
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A130D4;
  v11[3] = &unk_1E743EA58;
  v8 = dCopy;
  v15 = &v16;
  v12 = v8;
  selfCopy = self;
  v9 = servicesCopy;
  v14 = v9;
  [(IDSDaemonController *)self _performBlock:v11 wait:1];
  LOBYTE(self) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return self;
}

- (BOOL)setCommands:(id)commands forListenerID:(id)d
{
  commandsCopy = commands;
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A132F4;
  v11[3] = &unk_1E743EA58;
  v8 = dCopy;
  v15 = &v16;
  v12 = v8;
  selfCopy = self;
  v9 = commandsCopy;
  v14 = v9;
  [(IDSDaemonController *)self _performBlock:v11 wait:1];
  LOBYTE(self) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return self;
}

- (id)commandsForListenerID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_195A00684;
    v14 = sub_195A03CE8;
    v15 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_195A13548;
    v7[3] = &unk_1E743EA08;
    v9 = &v10;
    v7[4] = self;
    v8 = dCopy;
    [(IDSDaemonController *)self _performBlock:v7 wait:1];
    commands = v11[5];

    _Block_object_dispose(&v10, 8);
  }

  else
  {
    commands = [(IDSDaemonController *)self commands];
  }

  return commands;
}

- (unsigned)capabilitiesForListenerID:(id)d
{
  dCopy = d;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A13698;
  v7[3] = &unk_1E743EA08;
  v9 = &v10;
  v7[4] = self;
  v5 = dCopy;
  v8 = v5;
  [(IDSDaemonController *)self _performBlock:v7 wait:1];
  LODWORD(self) = *(v11 + 6);

  _Block_object_dispose(&v10, 8);
  return self;
}

- (BOOL)setCapabilities:(unsigned int)capabilities forListenerID:(id)d shouldLog:(BOOL)log
{
  dCopy = d;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195A13800;
  v12[3] = &unk_1E743EA80;
  v9 = dCopy;
  logCopy = log;
  capabilitiesCopy = capabilities;
  selfCopy = self;
  v15 = &v18;
  v13 = v9;
  [(IDSDaemonController *)self _performBlock:v12 wait:1];
  v10 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return v10;
}

- (NSString)listenerID
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_195A00684;
  v9 = sub_195A03CE8;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A13BC4;
  v4[3] = &unk_1E743E670;
  v4[4] = self;
  v4[5] = &v5;
  [(IDSDaemonController *)self _performBlock:v4 wait:1];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)_agentDidLaunchNotification:(id)notification
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_195A13CB8;
  v3[3] = &unk_1E743E878;
  v3[4] = self;
  [(IDSDaemonController *)self _performBlock:v3 wait:0];
}

- (void)localObjectDiedNotification:(id)notification
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_195A13D40;
  v3[3] = &unk_1E743E878;
  v3[4] = self;
  [(IDSDaemonController *)self _performBlock:v3 wait:1];
}

- (void)remoteObjectDiedNotification:(id)notification
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_195A13F2C;
  v3[3] = &unk_1E743E878;
  v3[4] = self;
  [(IDSDaemonController *)self _performBlock:v3 wait:1];
}

- (void)sendXPCObject:(id)object objectContext:(id)context
{
  contextCopy = context;
  objectCopy = object;
  v8 = xpc_dictionary_create(0, 0, 0);
  IMInsertBoolsToXPCDictionary();
  xpc_dictionary_set_value(v8, "object", objectCopy);

  v9 = [contextCopy copy];
  IMInsertDictionariesToXPCDictionary();

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A1432C;
  v15[3] = &unk_1E743EA30;
  v15[4] = self;
  v16 = v8;
  v10 = v8;
  v11 = MEMORY[0x19A8BBEF0](v15);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_195A1447C;
  v13[3] = &unk_1E743EAA8;
  v13[4] = self;
  v14 = v11;
  v12 = v11;
  [(IDSDaemonController *)self _performBlock:v13 wait:1, v9, 0];
}

- (void)forwardMethodWithReplyIsSync:(BOOL)sync block:(id)block
{
  syncCopy = sync;
  blockCopy = block;
  if (syncCopy)
  {
    v7 = @"QueryWithReplySync";
  }

  else
  {
    v7 = @"QueryWithReply";
  }

  [(IDSDaemonController *)self setQueryContext:v7];
  blockCopy[2](blockCopy, self);

  MEMORY[0x1EEE66B58](self, sel_unsetQueryContext_);
}

- (void)forwardMethodWithBoostedPriority:(id)priority
{
  priorityCopy = priority;
  [(IDSDaemonController *)self setQueryContext:@"QueryWithBoost"];
  priorityCopy[2](priorityCopy, self);

  MEMORY[0x1EEE66B58](self, sel_unsetQueryContext_);
}

- (void)setQueryContext:(id)context
{
  contextCopy = context;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v5 = [threadDictionary objectForKeyedSubscript:contextCopy];
  bOOLValue = [v5 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    [threadDictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:contextCopy];
  }
}

- (void)unsetQueryContext:(id)context
{
  contextCopy = context;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v5 = [threadDictionary objectForKeyedSubscript:contextCopy];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    [threadDictionary removeObjectForKey:contextCopy];
  }
}

- (BOOL)consumeQueryContext:(id)context
{
  contextCopy = context;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v6 = [threadDictionary objectForKeyedSubscript:contextCopy];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    [threadDictionary removeObjectForKey:contextCopy];
  }

  return bOOLValue;
}

- (id)forwarderWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [[IDSDaemonControllerForwarder alloc] initWithProtocol:self->_protocol ivarQueue:self->_ivarQueue remoteMessageQueue:self->_remoteMessageQueue completion:completionCopy];

  return v5;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  v5 = +[IDSInternalQueueController sharedInstance];
  isQueueCurrent = [v5 isQueueCurrent];

  if (isQueueCurrent)
  {
    v7 = sel_sendMessageWithSendParameters_ == selector;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    [(IDSDaemonControllerForwarder *)self->_forwarder setPriority:[(IDSDaemonController *)self curXPCMessagePriority]];
    [(IDSDaemonController *)self setCurXPCMessagePriority:0];
  }

  forwarder = self->_forwarder;

  return forwarder;
}

- (void)systemApplicationDidSuspend
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
  {
    sub_195B27310();
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A1495C;
  v4[3] = &unk_1E743E878;
  v4[4] = self;
  [(IDSDaemonController *)self _performBlock:v4 wait:1];
}

- (void)systemApplicationDidEnterBackground
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
  {
    sub_195B27344();
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A14A1C;
  v4[3] = &unk_1E743E878;
  v4[4] = self;
  [(IDSDaemonController *)self _performBlock:v4 wait:1];
}

- (void)systemApplicationWillEnterForeground
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
  {
    sub_195B27378();
  }
}

- (void)systemApplicationDidResume
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
  {
    sub_195B273AC();
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end