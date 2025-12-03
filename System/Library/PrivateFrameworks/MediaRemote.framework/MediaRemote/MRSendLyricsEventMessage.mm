@interface MRSendLyricsEventMessage
- (MRSendLyricsEventMessage)initWithEvent:(id)event;
- (_MRLyricsEventProtobuf)event;
@end

@implementation MRSendLyricsEventMessage

- (MRSendLyricsEventMessage)initWithEvent:(id)event
{
  eventCopy = event;
  v8.receiver = self;
  v8.super_class = MRSendLyricsEventMessage;
  v5 = [(MRProtocolMessage *)&v8 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRSendLyricsEventMessageProtobuf);
    [(_MRSendLyricsEventMessageProtobuf *)v6 setEvent:eventCopy];
    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v6];
  }

  return v5;
}

- (_MRLyricsEventProtobuf)event
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  event = [underlyingCodableMessage event];

  return event;
}

@end