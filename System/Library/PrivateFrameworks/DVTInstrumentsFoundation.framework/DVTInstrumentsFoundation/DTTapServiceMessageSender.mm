@interface DTTapServiceMessageSender
- (DTTapServiceMessageSender)initWithChannel:(id)channel;
@end

@implementation DTTapServiceMessageSender

- (DTTapServiceMessageSender)initWithChannel:(id)channel
{
  channelCopy = channel;
  v9.receiver = self;
  v9.super_class = DTTapServiceMessageSender;
  v6 = [(DTTapServiceMessageSender *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_channel, channel);
  }

  return v7;
}

@end