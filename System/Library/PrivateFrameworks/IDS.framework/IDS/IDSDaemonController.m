@interface IDSDaemonController
+ (id)sharedInstance;
- (BOOL)_makeConnectionWithLaunch:(BOOL)a3 completionBlock:(id)a4;
- (BOOL)_setCapabilities:(unsigned int)a3;
- (BOOL)_setCommands:(id)a3;
- (BOOL)_setServices:(id)a3;
- (BOOL)addListenerID:(id)a3 services:(id)a4 commands:(id)a5;
- (BOOL)consumeQueryContext:(id)a3;
- (BOOL)hasListenerForID:(id)a3;
- (BOOL)isConnected;
- (BOOL)isConnecting;
- (BOOL)localObjectExists;
- (BOOL)remoteObjectExists;
- (BOOL)setCapabilities:(unsigned int)a3 forListenerID:(id)a4 shouldLog:(BOOL)a5;
- (BOOL)setCommands:(id)a3 forListenerID:(id)a4;
- (BOOL)setServices:(id)a3 forListenerID:(id)a4;
- (IDSDaemonController)init;
- (NSString)listenerID;
- (id)commands;
- (id)commandsForListenerID:(id)a3;
- (id)delegate;
- (id)forwarderWithCompletion:(id)a3;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)localObject;
- (id)services;
- (id)servicesForListenerID:(id)a3;
- (int)curXPCMessagePriority;
- (unsigned)capabilities;
- (unsigned)capabilitiesForListenerID:(id)a3;
- (void)_agentDidLaunchNotification:(id)a3;
- (void)_connectToDaemonWithLaunch:(BOOL)a3 services:(id)a4 commands:(id)a5 capabilities:(unsigned int)a6;
- (void)_disconnectFromDaemonWithForce:(BOOL)a3;
- (void)_handleDaemonException:(id)a3;
- (void)_listenerSetUpdated;
- (void)_localObjectCleanup;
- (void)_noteDisconnected;
- (void)_noteSetupComplete;
- (void)_performBlock:(id)a3 wait:(BOOL)a4;
- (void)_remoteObjectCleanup;
- (void)addedDelegateForService:(id)a3 withCompletion:(id)a4;
- (void)blockUntilConnected;
- (void)dealloc;
- (void)disconnectFromDaemon;
- (void)forwardMethodWithBoostedPriority:(id)a3;
- (void)forwardMethodWithReplyIsSync:(BOOL)a3 block:(id)a4;
- (void)localObjectDiedNotification:(id)a3;
- (void)remoteObjectDiedNotification:(id)a3;
- (void)removeListenerID:(id)a3;
- (void)sendXPCObject:(id)a3 objectContext:(id)a4;
- (void)setCurXPCMessagePriority:(int)a3;
- (void)setQueryContext:(id)a3;
- (void)systemApplicationDidEnterBackground;
- (void)systemApplicationDidResume;
- (void)systemApplicationDidSuspend;
- (void)systemApplicationWillEnterForeground;
- (void)unsetQueryContext:(id)a3;
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
  v3 = [MEMORY[0x1E69A60F0] sharedInstance];
  v4 = [v3 isNonUIInstall];

  if ((v4 & 1) == 0)
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
      v6 = [(IDSDaemonController *)self connectingQueue];
      dispatch_sync(v6, &unk_1F09E5BA0);
    }

    _Block_object_dispose(buf, 8);
  }
}

- (BOOL)isConnected
{
  v3 = [MEMORY[0x1E69A60F0] sharedInstance];
  v4 = [v3 isNonUIInstall];

  if (v4)
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

    v4 = 0;
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
        v23 = [MEMORY[0x1E696AEC0] stringGUID];

        v22 = v23;
      }

      v24 = [v22 copy];
      listenerID = v6->_listenerID;
      v6->_listenerID = v24;

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, sub_195A0FA74, *MEMORY[0x1E69A5438], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    self = v6;
    v4 = self;
  }

  return v4;
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
  v3 = [MEMORY[0x1E69A60F0] sharedInstance];
  v4 = [v3 isNonUIInstall];

  if ((v4 & 1) == 0)
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
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B26FC8();
    }
  }

  return self->_curXPCMessagePriority;
}

- (void)_performBlock:(id)a3 wait:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    block = v6;
    if (v4)
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
      dispatch_async(self->_ivarQueue, v6);
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E69A6160] sharedInstance];
  [v3 removeListener:self];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:0 object:0];

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

- (void)_handleDaemonException:(id)a3
{
  v3 = a3;
  v4 = +[IDSLogging DaemonController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B26B10(v3, v4);
  }
}

- (BOOL)_makeConnectionWithLaunch:(BOOL)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E69A60F0] sharedInstance];
  if ([v7 isNonUIInstall])
  {
  }

  else
  {
    v8 = [MEMORY[0x1E69A6160] sharedInstance];
    v9 = [v8 systemIsShuttingDown];

    if ((v9 & 1) == 0)
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_195A0FD24;
      v12[3] = &unk_1E743E8A0;
      v15 = a3;
      v12[4] = self;
      v14 = &v16;
      v13 = v6;
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

- (void)_disconnectFromDaemonWithForce:(BOOL)a3
{
  v5 = [MEMORY[0x1E69A60F0] sharedInstance];
  v6 = [v5 isNonUIInstall];

  if ((v6 & 1) == 0)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_195A10B88;
    v7[3] = &unk_1E743E8C8;
    v7[4] = self;
    v8 = a3;
    [(IDSDaemonController *)self _performBlock:v7 wait:1];
  }
}

- (void)_connectToDaemonWithLaunch:(BOOL)a3 services:(id)a4 commands:(id)a5 capabilities:(unsigned int)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x1E69A60F0] sharedInstance];
  v13 = [v12 isNonUIInstall];

  if ((v13 & 1) == 0)
  {
    v14 = [v10 containsObject:@"com.apple.private.alloy.pbbridge"];
    v15 = [MEMORY[0x1E69A6160] sharedInstance];
    v16 = [v15 systemIsShuttingDown];

    if (v16)
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
      v18 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v29 = a6;
        _os_log_impl(&dword_1959FF000, v18, OS_LOG_TYPE_DEFAULT, "connectToDaemonWithLaunch capabilities %d", buf, 8u);
      }
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_195A11560;
    v20[3] = &unk_1E743E8F0;
    v24 = v14;
    v23 = a6;
    v20[4] = self;
    v21 = v10;
    v22 = v11;
    v25 = a3;
    [(IDSDaemonController *)self _performBlock:v20 wait:1];
  }

LABEL_12:

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)_setServices:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
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
    v9 = v4;
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

- (BOOL)_setCommands:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
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
    v9 = v4;
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

- (BOOL)_setCapabilities:(unsigned int)a3
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
  v6 = a3;
  [(IDSDaemonController *)self _performBlock:v5 wait:1];
  v3 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (void)setCurXPCMessagePriority:(int)a3
{
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B26F28();
    }
  }

  self->_curXPCMessagePriority = a3;
}

- (void)addedDelegateForService:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A124C4;
  v10[3] = &unk_1E743E9B8;
  v11 = v6;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  [(IDSDaemonController *)self _performBlock:v10 wait:1];
}

- (BOOL)addListenerID:(id)a3 services:(id)a4 commands:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A12774;
  v15[3] = &unk_1E743E9E0;
  v11 = v9;
  v16 = v11;
  v12 = v10;
  v17 = v12;
  v13 = v8;
  v19 = self;
  v20 = &v21;
  v18 = v13;
  [(IDSDaemonController *)self _performBlock:v15 wait:1];
  LOBYTE(self) = *(v22 + 24);

  _Block_object_dispose(&v21, 8);
  return self;
}

- (BOOL)hasListenerForID:(id)a3
{
  v4 = a3;
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
  v5 = v4;
  v8 = v5;
  [(IDSDaemonController *)self _performBlock:v7 wait:1];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

- (void)removeListenerID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_195A12C04;
    v5[3] = &unk_1E743EA30;
    v5[4] = self;
    v6 = v4;
    [(IDSDaemonController *)self _performBlock:v5];
  }
}

- (id)servicesForListenerID:(id)a3
{
  v4 = a3;
  if ([v4 length])
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
    v8 = v4;
    [(IDSDaemonController *)self _performBlock:v7 wait:1];
    v5 = v11[5];

    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v5 = [(IDSDaemonController *)self services];
  }

  return v5;
}

- (BOOL)setServices:(id)a3 forListenerID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A130D4;
  v11[3] = &unk_1E743EA58;
  v8 = v7;
  v15 = &v16;
  v12 = v8;
  v13 = self;
  v9 = v6;
  v14 = v9;
  [(IDSDaemonController *)self _performBlock:v11 wait:1];
  LOBYTE(self) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return self;
}

- (BOOL)setCommands:(id)a3 forListenerID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A132F4;
  v11[3] = &unk_1E743EA58;
  v8 = v7;
  v15 = &v16;
  v12 = v8;
  v13 = self;
  v9 = v6;
  v14 = v9;
  [(IDSDaemonController *)self _performBlock:v11 wait:1];
  LOBYTE(self) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return self;
}

- (id)commandsForListenerID:(id)a3
{
  v4 = a3;
  if ([v4 length])
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
    v8 = v4;
    [(IDSDaemonController *)self _performBlock:v7 wait:1];
    v5 = v11[5];

    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v5 = [(IDSDaemonController *)self commands];
  }

  return v5;
}

- (unsigned)capabilitiesForListenerID:(id)a3
{
  v4 = a3;
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
  v5 = v4;
  v8 = v5;
  [(IDSDaemonController *)self _performBlock:v7 wait:1];
  LODWORD(self) = *(v11 + 6);

  _Block_object_dispose(&v10, 8);
  return self;
}

- (BOOL)setCapabilities:(unsigned int)a3 forListenerID:(id)a4 shouldLog:(BOOL)a5
{
  v8 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_195A13800;
  v12[3] = &unk_1E743EA80;
  v9 = v8;
  v17 = a5;
  v16 = a3;
  v14 = self;
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

- (void)_agentDidLaunchNotification:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_195A13CB8;
  v3[3] = &unk_1E743E878;
  v3[4] = self;
  [(IDSDaemonController *)self _performBlock:v3 wait:0];
}

- (void)localObjectDiedNotification:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_195A13D40;
  v3[3] = &unk_1E743E878;
  v3[4] = self;
  [(IDSDaemonController *)self _performBlock:v3 wait:1];
}

- (void)remoteObjectDiedNotification:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_195A13F2C;
  v3[3] = &unk_1E743E878;
  v3[4] = self;
  [(IDSDaemonController *)self _performBlock:v3 wait:1];
}

- (void)sendXPCObject:(id)a3 objectContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = xpc_dictionary_create(0, 0, 0);
  IMInsertBoolsToXPCDictionary();
  xpc_dictionary_set_value(v8, "object", v7);

  v9 = [v6 copy];
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

- (void)forwardMethodWithReplyIsSync:(BOOL)a3 block:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v4)
  {
    v7 = @"QueryWithReplySync";
  }

  else
  {
    v7 = @"QueryWithReply";
  }

  [(IDSDaemonController *)self setQueryContext:v7];
  v6[2](v6, self);

  MEMORY[0x1EEE66B58](self, sel_unsetQueryContext_);
}

- (void)forwardMethodWithBoostedPriority:(id)a3
{
  v4 = a3;
  [(IDSDaemonController *)self setQueryContext:@"QueryWithBoost"];
  v4[2](v4, self);

  MEMORY[0x1EEE66B58](self, sel_unsetQueryContext_);
}

- (void)setQueryContext:(id)a3
{
  v7 = a3;
  v3 = [MEMORY[0x1E696AF00] currentThread];
  v4 = [v3 threadDictionary];

  v5 = [v4 objectForKeyedSubscript:v7];
  v6 = [v5 BOOLValue];

  if ((v6 & 1) == 0)
  {
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v7];
  }
}

- (void)unsetQueryContext:(id)a3
{
  v7 = a3;
  v3 = [MEMORY[0x1E696AF00] currentThread];
  v4 = [v3 threadDictionary];

  v5 = [v4 objectForKeyedSubscript:v7];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    [v4 removeObjectForKey:v7];
  }
}

- (BOOL)consumeQueryContext:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AF00] currentThread];
  v5 = [v4 threadDictionary];

  v6 = [v5 objectForKeyedSubscript:v3];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    [v5 removeObjectForKey:v3];
  }

  return v7;
}

- (id)forwarderWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [[IDSDaemonControllerForwarder alloc] initWithProtocol:self->_protocol ivarQueue:self->_ivarQueue remoteMessageQueue:self->_remoteMessageQueue completion:v4];

  return v5;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 isQueueCurrent];

  if (v6)
  {
    v7 = sel_sendMessageWithSendParameters_ == a3;
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
  v3 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
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
  v3 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
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
  v2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_195B27378();
  }
}

- (void)systemApplicationDidResume
{
  v2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
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