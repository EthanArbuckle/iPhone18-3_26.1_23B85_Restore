@interface MRSendLyricsEventMessage
- (MRSendLyricsEventMessage)initWithEvent:(id)a3;
- (_MRLyricsEventProtobuf)event;
@end

@implementation MRSendLyricsEventMessage

- (MRSendLyricsEventMessage)initWithEvent:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MRSendLyricsEventMessage;
  v5 = [(MRProtocolMessage *)&v8 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRSendLyricsEventMessageProtobuf);
    [(_MRSendLyricsEventMessageProtobuf *)v6 setEvent:v4];
    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v6];
  }

  return v5;
}

- (_MRLyricsEventProtobuf)event
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 event];

  return v3;
}

@end