@interface IPLocalStateUpdateStreamSource
- (IPLocalStateUpdateStreamSource)initWithUpdateStream:(id)a3;
- (IPStateUpdateStreamSourceDelegate)delegate;
- (void)stream:(id)a3 receiveMessage:(id)a4;
@end

@implementation IPLocalStateUpdateStreamSource

- (IPLocalStateUpdateStreamSource)initWithUpdateStream:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = IPLocalStateUpdateStreamSource;
  v5 = [(IPLocalStateUpdateStreamSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weakStream, v4);
    v6->_resumed = 0;
  }

  return v6;
}

- (void)stream:(id)a3 receiveMessage:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (self->_resumed)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained stateUpdateStreamSource:self updateMessageReceived:v5];
  }

  else
  {
    v7 = _IPDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_254C69000, v7, OS_LOG_TYPE_DEFAULT, "unresumed local source ignoring incoming message %@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (IPStateUpdateStreamSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end