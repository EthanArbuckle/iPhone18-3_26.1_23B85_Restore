@interface FTRegConnectionHandler
- (BOOL)_isServiceSupported;
- (BOOL)connectToDaemon:(BOOL)a3;
- (BOOL)isConnectedToDaemon;
- (FTRegConnectionHandler)initWithServiceType:(int64_t)a3 name:(id)a4 capabilities:(unsigned int)a5;
- (NSString)_serviceName;
- (void)_disconnectFromDaemon;
- (void)_handleDaemonConnected:(id)a3;
- (void)_handleDaemonDisconnected:(id)a3;
- (void)_startListeningForNotifications;
- (void)_stopListeningForNotifications;
- (void)dealloc;
- (void)setCaps:(unsigned int)a3;
@end

@implementation FTRegConnectionHandler

- (FTRegConnectionHandler)initWithServiceType:(int64_t)a3 name:(id)a4 capabilities:(unsigned int)a5
{
  v8 = a4;
  v19.receiver = self;
  v19.super_class = FTRegConnectionHandler;
  v9 = [(FTRegConnectionHandler *)&v19 init];
  v10 = v9;
  if (v9)
  {
    v9->_serviceType = a3;
    v11 = [v8 copy];
    name = v10->_name;
    v10->_name = v11;

    v10->_caps = a5;
    v13 = FTCServiceNameForServiceType();
    if (!v13)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", a3];
    }

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.ft.reg.connection.%@.%@", v13, v10->_name];
    listenerID = v10->_listenerID;
    v10->_listenerID = v14;

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"ConnectionHandler(%@|%@)", v13, v10->_name];
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
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:self selector:sel__handleDaemonConnected_ name:*MEMORY[0x277D18CE0] object:0];
    [v3 addObserver:self selector:sel__handleDaemonDisconnected_ name:*MEMORY[0x277D18CE8] object:0];
    *&self->_handlerFlags |= 1u;
  }
}

- (void)_stopListeningForNotifications
{
  if (*&self->_handlerFlags)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:self name:*MEMORY[0x277D18CE0] object:0];
    [v4 removeObserver:self name:*MEMORY[0x277D18CE8] object:0];
    *&self->_handlerFlags &= ~1u;
  }
}

- (void)setCaps:(unsigned int)a3
{
  if (self->_caps != a3)
  {
    self->_caps = a3;
    [(FTRegConnectionHandler *)self connectToDaemon];
  }
}

- (BOOL)_isServiceSupported
{
  v3 = [MEMORY[0x277D07DB0] sharedInstance];
  v4 = [(FTRegConnectionHandler *)self serviceType];
  if (v4)
  {
    if (v4 == 2)
    {
      v5 = [v3 callingAvailable];
    }

    else
    {
      if (v4 != 1)
      {
        v6 = 0;
        goto LABEL_9;
      }

      v5 = [v3 iMessageAvailable];
    }
  }

  else
  {
    v5 = [v3 faceTimeAvailable];
  }

  v6 = v5;
LABEL_9:

  return v6;
}

- (BOOL)isConnectedToDaemon
{
  v3 = [MEMORY[0x277D18D68] sharedInstance];
  if ([v3 isConnected])
  {
    v4 = [MEMORY[0x277D18D68] sharedInstance];
    v5 = [(FTRegConnectionHandler *)self _listenerID];
    v6 = [v4 hasListenerForID:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)connectToDaemon:(BOOL)a3
{
  v3 = a3;
  v20 = *MEMORY[0x277D85DE8];
  v5 = [(FTRegConnectionHandler *)self _isServiceSupported];
  v6 = csui_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v3)
    {
      v7 = @"YES";
    }

    v18 = 138412290;
    v19 = v7;
    _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Connecting to daemon if necessary - blocking:%@", &v18, 0xCu);
  }

  if (!v5)
  {
    v15 = csui_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_243BE5000, v15, OS_LOG_TYPE_DEFAULT, "  => Not supported on this device, not connecting", &v18, 2u);
    }

    goto LABEL_14;
  }

  v8 = [MEMORY[0x277D18D68] sharedInstance];
  v9 = [(FTRegConnectionHandler *)self _listenerID];
  v10 = [v8 hasListenerForID:v9];

  if ((v10 & 1) == 0)
  {
    v11 = csui_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(FTRegConnectionHandler *)self _listenerID];
      v18 = 138412290;
      v19 = v12;
      _os_log_impl(&dword_243BE5000, v11, OS_LOG_TYPE_DEFAULT, "  => Adding listener for the first time: %@", &v18, 0xCu);
    }
  }

  v13 = [MEMORY[0x277D18D68] sharedInstance];
  v14 = [(FTRegConnectionHandler *)self _listenerID];
  [v13 addListenerID:v14 capabilities:{-[FTRegConnectionHandler caps](self, "caps")}];

  if (v3)
  {
    v15 = [MEMORY[0x277D18D68] sharedInstance];
    [v15 blockUntilConnected];
LABEL_14:
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_disconnectFromDaemon
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = csui_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(FTRegConnectionHandler *)self _listenerID];
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Removing listener: %@", &v8, 0xCu);
  }

  v5 = [MEMORY[0x277D18D68] sharedInstance];
  v6 = [(FTRegConnectionHandler *)self _listenerID];
  [v5 removeListenerID:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleDaemonConnected:(id)a3
{
  v3 = csui_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Connected to daemon", v4, 2u);
  }
}

- (void)_handleDaemonDisconnected:(id)a3
{
  v3 = csui_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Disconnected from daemon", v4, 2u);
  }
}

@end