@interface IDSActivityMonitor
- (BOOL)listeningForUpdates;
- (IDSActivityMonitor)initWithActivity:(id)a3 serviceIdentifier:(id)a4;
- (IDSActivityMonitor)initWithActivity:(id)a3 serviceIdentifier:(id)a4 queue:(id)a5;
- (IDSActivityMonitor)initWithActivity:(id)a3 serviceIdentifier:(id)a4 queue:(id)a5 xpcConnector:(id)a6;
- (IDSActivityMonitorListenerDelegate)delegate;
- (NSArray)subscriptions;
- (void)beginBroadcastingWithInfo:(id)a3 withCompletion:(id)a4;
- (void)dealloc;
- (void)handleIncomingUpdate:(id)a3 onActivity:(id)a4 completion:(id)a5;
- (void)setDelegate:(id)a3;
- (void)setListeningForUpdates:(BOOL)a3;
- (void)stopBroadcastingForSubActivity:(id)a3 withCompletion:(id)a4;
@end

@implementation IDSActivityMonitor

- (IDSActivityMonitor)initWithActivity:(id)a3 serviceIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[_IDSActivityMonitorXPCConnector weakSharedInstance];
  v9 = [(IDSActivityMonitor *)self initWithActivity:v7 serviceIdentifier:v6 queue:0 xpcConnector:v8];

  return v9;
}

- (IDSActivityMonitor)initWithActivity:(id)a3 serviceIdentifier:(id)a4 queue:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[_IDSActivityMonitorXPCConnector weakSharedInstance];
  v12 = [(IDSActivityMonitor *)self initWithActivity:v10 serviceIdentifier:v9 queue:v8 xpcConnector:v11];

  return v12;
}

- (IDSActivityMonitor)initWithActivity:(id)a3 serviceIdentifier:(id)a4 queue:(id)a5 xpcConnector:(id)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v14 && [v11 length] && objc_msgSend(v12, "length"))
  {
    v15 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = v11;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "Creaating new activity monitor with activity %@ service identifier %@", buf, 0x16u);
    }

    v24.receiver = self;
    v24.super_class = IDSActivityMonitor;
    v16 = [(IDSActivityMonitor *)&v24 init];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_activity, a3);
      objc_storeStrong(&v17->_XPCConnector, a6);
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v12, v11];
      activityIdentifier = v17->_activityIdentifier;
      v17->_activityIdentifier = v18;

      v20 = MEMORY[0x1E69E96A0];
      if (v13)
      {
        v20 = v13;
      }

      v17->_queue = v20;
    }

    self = v17;
    v21 = self;
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (void)dealloc
{
  XPCConnector = self->_XPCConnector;
  v4 = [(IDSActivityMonitor *)self activityIdentifier];
  [(_IDSActivityMonitorXPCConnector *)XPCConnector removeListener:self forTopic:v4];

  v5.receiver = self;
  v5.super_class = IDSActivityMonitor;
  [(IDSActivityMonitor *)&v5 dealloc];
}

- (void)setDelegate:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != v4)
  {
    v6 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(IDSActivityMonitor *)self activityIdentifier];
      v11 = 138412546;
      v12 = v4;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "Adding delegate %@ to activity monitor %@", &v11, 0x16u);
    }

    objc_storeWeak(&self->_delegate, v4);
    v8 = [(IDSActivityMonitor *)self XPCConnector];
    v9 = [(IDSActivityMonitor *)self activityIdentifier];
    if (v4)
    {
      [v8 addListener:self forTopic:v9];
    }

    else
    {
      [v8 removeListener:self forTopic:v9];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)beginBroadcastingWithInfo:(id)a3 withCompletion:(id)a4
{
  v4 = MEMORY[0x1E69A6138];
  v5 = a4;
  v6 = [v4 registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    sub_195B296D0(v6);
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.activity.error" code:-600 userInfo:0];
  v5[2](v5, v7);
}

- (void)stopBroadcastingForSubActivity:(id)a3 withCompletion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 length])
  {
    v8 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Stopping broadcast with subActivity %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v9 = [(IDSActivityMonitor *)self XPCConnector];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_195A39830;
    v12[3] = &unk_1E743F730;
    objc_copyWeak(&v15, buf);
    v13 = v6;
    v14 = v7;
    [v9 performAction:v12 errorHandler:v14];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  else if (v7)
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.activity.error" code:-100 userInfo:0];
    (*(v7 + 2))(v7, v10);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)listeningForUpdates
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Getting listening status for self: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [(IDSActivityMonitor *)self XPCConnector];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195A39A14;
  v8[3] = &unk_1E743F780;
  v8[4] = self;
  v8[5] = &buf;
  [v4 performSyncAction:v8];

  v5 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)setListeningForUpdates:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v11 = v3;
    v12 = 2112;
    v13 = self;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "Set listening for updates %d on self %@", buf, 0x12u);
  }

  v6 = [(IDSActivityMonitor *)self XPCConnector];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195A39C78;
  v8[3] = &unk_1E743F7A8;
  v9 = v3;
  v8[4] = self;
  [v6 performSyncAction:v8];

  v7 = *MEMORY[0x1E69E9840];
}

- (NSArray)subscriptions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A006C4;
  v11 = sub_195A03D08;
  v12 = [MEMORY[0x1E695DEC8] array];
  v3 = [(IDSActivityMonitor *)self XPCConnector];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A39E90;
  v6[3] = &unk_1E743F780;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performSyncAction:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)handleIncomingUpdate:(id)a3 onActivity:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(IDSActivityMonitor *)self delegate];
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195A3A16C;
  v14[3] = &unk_1E743F318;
  v15 = v9;
  v16 = self;
  v17 = v7;
  v18 = v8;
  v11 = v8;
  v12 = v7;
  v13 = v9;
  dispatch_async(queue, v14);
}

- (IDSActivityMonitorListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end