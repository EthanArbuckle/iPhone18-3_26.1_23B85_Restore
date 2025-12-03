@interface MRSendButtonEventMessage
- (MRSendButtonEventMessage)initWithButtonEvent:(_MRHIDButtonEvent)event;
- (_MRHIDButtonEvent)buttonEvent;
@end

@implementation MRSendButtonEventMessage

- (MRSendButtonEventMessage)initWithButtonEvent:(_MRHIDButtonEvent)event
{
  var2 = event.var2;
  v4 = *&event.var0;
  v8.receiver = self;
  v8.super_class = MRSendButtonEventMessage;
  v5 = [(MRProtocolMessage *)&v8 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRSendButtonEventMessageProtobuf);
    [(_MRSendButtonEventMessageProtobuf *)v6 setUsagePage:v4];
    [(_MRSendButtonEventMessageProtobuf *)v6 setUsage:HIDWORD(v4)];
    [(_MRSendButtonEventMessageProtobuf *)v6 setButtonDown:var2];
    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v6];
  }

  return v5;
}

- (_MRHIDButtonEvent)buttonEvent
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  usagePage = [underlyingCodableMessage usagePage];
  usage = [underlyingCodableMessage usage];
  buttonDown = [underlyingCodableMessage buttonDown];

  v6 = usagePage | (usage << 32);
  v7 = buttonDown;
  result.var0 = v6;
  result.var1 = HIDWORD(v6);
  result.var2 = v7;
  return result;
}

@end