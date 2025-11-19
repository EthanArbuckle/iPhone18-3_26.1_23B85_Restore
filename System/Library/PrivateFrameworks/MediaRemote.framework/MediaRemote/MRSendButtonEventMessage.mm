@interface MRSendButtonEventMessage
- (MRSendButtonEventMessage)initWithButtonEvent:(_MRHIDButtonEvent)a3;
- (_MRHIDButtonEvent)buttonEvent;
@end

@implementation MRSendButtonEventMessage

- (MRSendButtonEventMessage)initWithButtonEvent:(_MRHIDButtonEvent)a3
{
  var2 = a3.var2;
  v4 = *&a3.var0;
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
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 usagePage];
  v4 = [v2 usage];
  v5 = [v2 buttonDown];

  v6 = v3 | (v4 << 32);
  v7 = v5;
  result.var0 = v6;
  result.var1 = HIDWORD(v6);
  result.var2 = v7;
  return result;
}

@end