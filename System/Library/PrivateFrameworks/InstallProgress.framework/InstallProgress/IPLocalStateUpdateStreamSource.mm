@interface IPLocalStateUpdateStreamSource
- (IPLocalStateUpdateStreamSource)initWithUpdateStream:(id)stream;
- (IPStateUpdateStreamSourceDelegate)delegate;
- (void)stream:(id)stream receiveMessage:(id)message;
@end

@implementation IPLocalStateUpdateStreamSource

- (IPLocalStateUpdateStreamSource)initWithUpdateStream:(id)stream
{
  streamCopy = stream;
  v8.receiver = self;
  v8.super_class = IPLocalStateUpdateStreamSource;
  v5 = [(IPLocalStateUpdateStreamSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weakStream, streamCopy);
    v6->_resumed = 0;
  }

  return v6;
}

- (void)stream:(id)stream receiveMessage:(id)message
{
  v11 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if (self->_resumed)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained stateUpdateStreamSource:self updateMessageReceived:messageCopy];
  }

  else
  {
    v7 = _IPDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = messageCopy;
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