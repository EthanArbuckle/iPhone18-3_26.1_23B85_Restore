@interface COMessageChannelClientInterfaceMediator
- (COMessageChannel)messageChannel;
- (COMessageChannelClientInterfaceMediator)initWithMessageChannel:(id)channel;
@end

@implementation COMessageChannelClientInterfaceMediator

- (COMessageChannelClientInterfaceMediator)initWithMessageChannel:(id)channel
{
  channelCopy = channel;
  v8.receiver = self;
  v8.super_class = COMessageChannelClientInterfaceMediator;
  v5 = [(COMessageChannelClientInterfaceMediator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_messageChannel, channelCopy);
  }

  return v6;
}

- (COMessageChannel)messageChannel
{
  WeakRetained = objc_loadWeakRetained(&self->_messageChannel);

  return WeakRetained;
}

@end