@interface MTRPluginProtobufMessageReceiver
- (MTRPluginProtobufMessageReceiver)initWithDelegate:(id)delegate delegateQueue:(id)queue sessionID:(id)d;
- (MTRPluginProtobufMessageTransportDelegate)delegate;
- (id)description;
@end

@implementation MTRPluginProtobufMessageReceiver

- (MTRPluginProtobufMessageReceiver)initWithDelegate:(id)delegate delegateQueue:(id)queue sessionID:(id)d
{
  delegateCopy = delegate;
  queueCopy = queue;
  dCopy = d;
  v15.receiver = self;
  v15.super_class = MTRPluginProtobufMessageReceiver;
  v11 = [(MTRPluginProtobufMessageReceiver *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(MTRPluginProtobufMessageReceiver *)v11 setSessionID:dCopy];
    [(MTRPluginProtobufMessageReceiver *)v12 setDelegate:delegateCopy];
    [(MTRPluginProtobufMessageReceiver *)v12 setDelegateQueue:queueCopy];
    if (dCopy)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [(MTRPluginProtobufMessageReceiver *)v12 setMessageSelectors:dictionary];
    }
  }

  return v12;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  delegate = [(MTRPluginProtobufMessageReceiver *)self delegate];
  v4 = [v2 stringWithFormat:@"<MTRPluginProtobufMessageReceiver: delegate: %p>", delegate];

  return v4;
}

- (MTRPluginProtobufMessageTransportDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end