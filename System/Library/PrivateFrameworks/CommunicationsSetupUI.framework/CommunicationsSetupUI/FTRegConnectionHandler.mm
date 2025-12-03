@interface FTRegConnectionHandler
- (BOOL)_isServiceSupported;
- (BOOL)connectToDaemon:(BOOL)daemon;
- (BOOL)isConnectedToDaemon;
- (FTRegConnectionHandler)initWithServiceType:(int64_t)type name:(id)name capabilities:(unsigned int)capabilities;
- (NSString)_serviceName;
- (void)_disconnectFromDaemon;
- (void)_handleDaemonConnected:(id)connected;
- (void)_handleDaemonDisconnected:(id)disconnected;
- (void)_startListeningForNotifications;
- (void)_stopListeningForNotifications;
- (void)dealloc;
- (void)setCaps:(unsigned int)caps;
@end

@implementation FTRegConnectionHandler

- (FTRegConnectionHandler)initWithServiceType:(int64_t)type name:(id)name capabilities:(unsigned int)capabilities
{
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = FTRegConnectionHandler;
  v9 = [(FTRegConnectionHandler *)&v19 init];
  v10 = v9;
  if (v9)
  {
    v9->_serviceType = type;
    v11 = [nameCopy copy];
    name = v10->_name;
    v10->_name = v11;

    v10->_caps = capabilities;
    type = FTCServiceNameForServiceType();
    if (!type)
    {
      type = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", type];
    }

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.ft.reg.connection.%@.%@", type, v10->_name];
    listenerID = v10->_listenerID;
    v10->_listenerID = v14;

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"ConnectionHandler(%@|%@)", type, v10->_name];
    logName = v10->_logName;
    v10->_logName = v16;

    [(FTRegConnectionHandler *)v10 _startListeningForNotifications];
    [(FTRegConnectionHandler *)v10 connectToDaemon];
  }

  return v10;
}

- (void)dealloc
{
  [(FTRegConnectionHandler *)self _stopListeningForNotifications];
  [(FTRegConnectionHandler *)self _disconnectFromDaemon];
  v3.receiver = self;
  v3.super_class = FTRegConnectionHandler;
  [(FTRegConnectionHandler *)&v3 dealloc];
}

- (NSString)_serviceName
{
  [(FTRegConnectionHandler *)self serviceType];

  return FTCServiceNameForServiceType();
}

- (void)_startListeningForNotifications
{
  if ((*&self->_handlerFlags & 1) == 0)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__handleDaemonConnected_ name:*MEMORY[0x277D18CE0] object:0];
    [defaultCenter addObserver:self selector:sel__handleDaemonDisconnected_ name:*MEMORY[0x277D18CE8] object:0];
    *&self->_handlerFlags |= 1u;
  }
}

- (void)_stopListeningForNotifications
{
  if (*&self->_handlerFlags)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D18CE0] object:0];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D18CE8] object:0];
    *&self->_handlerFlags &= ~1u;
  }
}

- (void)setCaps:(unsigned int)caps
{
  if (self->_caps != caps)
  {
    self->_caps = caps;
    [(FTRegConnectionHandler *)self connectToDaemon];
  }
}

- (BOOL)_isServiceSupported
{
  mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
  serviceType = [(FTRegConnectionHandler *)self serviceType];
  if (serviceType)
  {
    if (serviceType == 2)
    {
      callingAvailable = [mEMORY[0x277D07DB0] callingAvailable];
    }

    else
    {
      if (serviceType != 1)
      {
        v6 = 0;
        goto LABEL_9;
      }

      callingAvailable = [mEMORY[0x277D07DB0] iMessageAvailable];
    }
  }

  else
  {
    callingAvailable = [mEMORY[0x277D07DB0] faceTimeAvailable];
  }

  v6 = callingAvailable;
LABEL_9:

  return v6;
}

- (BOOL)isConnectedToDaemon
{
  mEMORY[0x277D18D68] = [MEMORY[0x277D18D68] sharedInstance];
  if ([mEMORY[0x277D18D68] isConnected])
  {
    mEMORY[0x277D18D68]2 = [MEMORY[0x277D18D68] sharedInstance];
    _listenerID = [(FTRegConnectionHandler *)self _listenerID];
    v6 = [mEMORY[0x277D18D68]2 hasListenerForID:_listenerID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)connectToDaemon:(BOOL)daemon
{
  daemonCopy = daemon;
  v20 = *MEMORY[0x277D85DE8];
  _isServiceSupported = [(FTRegConnectionHandler *)self _isServiceSupported];
  v6 = csui_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (daemonCopy)
    {
      v7 = @"YES";
    }

    v18 = 138412290;
    v19 = v7;
    _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Connecting to daemon if necessary - blocking:%@", &v18, 0xCu);
  }

  if (!_isServiceSupported)
  {
    mEMORY[0x277D18D68]3 = csui_log();
    if (os_log_type_enabled(mEMORY[0x277D18D68]3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_243BE5000, mEMORY[0x277D18D68]3, OS_LOG_TYPE_DEFAULT, "  => Not supported on this device, not connecting", &v18, 2u);
    }

    goto LABEL_14;
  }

  mEMORY[0x277D18D68] = [MEMORY[0x277D18D68] sharedInstance];
  _listenerID = [(FTRegConnectionHandler *)self _listenerID];
  v10 = [mEMORY[0x277D18D68] hasListenerForID:_listenerID];

  if ((v10 & 1) == 0)
  {
    v11 = csui_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      _listenerID2 = [(FTRegConnectionHandler *)self _listenerID];
      v18 = 138412290;
      v19 = _listenerID2;
      _os_log_impl(&dword_243BE5000, v11, OS_LOG_TYPE_DEFAULT, "  => Adding listener for the first time: %@", &v18, 0xCu);
    }
  }

  mEMORY[0x277D18D68]2 = [MEMORY[0x277D18D68] sharedInstance];
  _listenerID3 = [(FTRegConnectionHandler *)self _listenerID];
  [mEMORY[0x277D18D68]2 addListenerID:_listenerID3 capabilities:{-[FTRegConnectionHandler caps](self, "caps")}];

  if (daemonCopy)
  {
    mEMORY[0x277D18D68]3 = [MEMORY[0x277D18D68] sharedInstance];
    [mEMORY[0x277D18D68]3 blockUntilConnected];
LABEL_14:
  }

  v16 = *MEMORY[0x277D85DE8];
  return _isServiceSupported;
}

- (void)_disconnectFromDaemon
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = csui_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    _listenerID = [(FTRegConnectionHandler *)self _listenerID];
    v8 = 138412290;
    v9 = _listenerID;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Removing listener: %@", &v8, 0xCu);
  }

  mEMORY[0x277D18D68] = [MEMORY[0x277D18D68] sharedInstance];
  _listenerID2 = [(FTRegConnectionHandler *)self _listenerID];
  [mEMORY[0x277D18D68] removeListenerID:_listenerID2];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleDaemonConnected:(id)connected
{
  v3 = csui_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Connected to daemon", v4, 2u);
  }
}

- (void)_handleDaemonDisconnected:(id)disconnected
{
  v3 = csui_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Disconnected from daemon", v4, 2u);
  }
}

@end