@interface MTRPluginProtobufMessageReceiver
- (MTRPluginProtobufMessageReceiver)initWithDelegate:(id)a3 delegateQueue:(id)a4 sessionID:(id)a5;
- (MTRPluginProtobufMessageTransportDelegate)delegate;
- (id)description;
@end

@implementation MTRPluginProtobufMessageReceiver

- (MTRPluginProtobufMessageReceiver)initWithDelegate:(id)a3 delegateQueue:(id)a4 sessionID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = MTRPluginProtobufMessageReceiver;
  v11 = [(MTRPluginProtobufMessageReceiver *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(MTRPluginProtobufMessageReceiver *)v11 setSessionID:v10];
    [(MTRPluginProtobufMessageReceiver *)v12 setDelegate:v8];
    [(MTRPluginProtobufMessageReceiver *)v12 setDelegateQueue:v9];
    if (v10)
    {
      v13 = [MEMORY[0x277CBEB38] dictionary];
      [(MTRPluginProtobufMessageReceiver *)v12 setMessageSelectors:v13];
    }
  }

  return v12;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(MTRPluginProtobufMessageReceiver *)self delegate];
  v4 = [v2 stringWithFormat:@"<MTRPluginProtobufMessageReceiver: delegate: %p>", v3];

  return v4;
}

- (MTRPluginProtobufMessageTransportDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end