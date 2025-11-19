@interface MRLegacySendHIDEventMessage
- (MRLegacySendHIDEventMessage)initWithHIDEvent:(__IOHIDEvent *)a3;
- (_MRHIDButtonEvent)buttonEvent;
- (id)description;
- (void)dealloc;
@end

@implementation MRLegacySendHIDEventMessage

- (MRLegacySendHIDEventMessage)initWithHIDEvent:(__IOHIDEvent *)a3
{
  v10.receiver = self;
  v10.super_class = MRLegacySendHIDEventMessage;
  v5 = [(MRProtocolMessage *)&v10 init];
  if (v5)
  {
    if (!a3)
    {
      [(MRLegacySendHIDEventMessage *)a2 initWithHIDEvent:v5];
    }

    v5->_event = CFRetain(a3);
    v6 = *MEMORY[0x1E695E480];
    Data = IOHIDEventCreateData();
    v8 = objc_alloc_init(_MRSendHIDEventMessageProtobuf);
    [(_MRSendHIDEventMessageProtobuf *)v8 setHidEventData:Data];
    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v8];
  }

  return v5;
}

- (void)dealloc
{
  event = self->_event;
  if (event)
  {
    CFRelease(event);
  }

  v4.receiver = self;
  v4.super_class = MRLegacySendHIDEventMessage;
  [(MRProtocolMessage *)&v4 dealloc];
}

- (_MRHIDButtonEvent)buttonEvent
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 hidEventData];

  if ([v3 length] < 0x30)
  {
    v6 = 0;
    v7 = 0;
    v5 = 0;
  }

  else
  {
    v4 = [v3 bytes];
    v5 = bswap32(*(v4 + 43)) >> 16;
    v6 = *(v4 + 47) != 0;
    v7 = (bswap32(*(v4 + 45)) >> 16) << 32;
  }

  v8 = v5 | v7;
  v9 = v6;
  result.var0 = v8;
  result.var1 = HIDWORD(v8);
  result.var2 = v9;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MRProtocolMessage *)self timestamp];
  v6 = [(MRProtocolMessage *)self error];
  v7 = [(MRProtocolMessage *)self replyIdentifier];
  v8 = [(MRLegacySendHIDEventMessage *)self type];
  v9 = [(MRLegacySendHIDEventMessage *)self buttonEvent];
  v11 = MRHIDButtonEventCopyDescription(v9, v10);
  v12 = [v3 stringWithFormat:@"\n<Message Type: %@\nTimestamp: %llu\nError: %@\nIdentifier: %@\nType: %lu\nMessage: %@\n>", v4, v5, v6, v7, v8, v11];

  return v12;
}

- (void)initWithHIDEvent:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRLegacySendHIDEventMessage.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"event"}];
}

@end