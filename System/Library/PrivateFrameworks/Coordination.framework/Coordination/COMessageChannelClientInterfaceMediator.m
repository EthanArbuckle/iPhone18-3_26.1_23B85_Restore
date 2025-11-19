@interface COMessageChannelClientInterfaceMediator
- (COMessageChannel)messageChannel;
- (COMessageChannelClientInterfaceMediator)initWithMessageChannel:(id)a3;
@end

@implementation COMessageChannelClientInterfaceMediator

- (COMessageChannelClientInterfaceMediator)initWithMessageChannel:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = COMessageChannelClientInterfaceMediator;
  v5 = [(COMessageChannelClientInterfaceMediator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_messageChannel, v4);
  }

  return v6;
}

- (COMessageChannel)messageChannel
{
  WeakRetained = objc_loadWeakRetained(&self->_messageChannel);

  return WeakRetained;
}

@end