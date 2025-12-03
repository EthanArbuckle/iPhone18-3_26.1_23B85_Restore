@interface MRSetRecordingStateMessage
- (MRSetRecordingStateMessage)initWithRecordingState:(unsigned int)state;
- (unsigned)state;
@end

@implementation MRSetRecordingStateMessage

- (MRSetRecordingStateMessage)initWithRecordingState:(unsigned int)state
{
  v9.receiver = self;
  v9.super_class = MRSetRecordingStateMessage;
  v4 = [(MRProtocolMessage *)&v9 init];
  if (v4)
  {
    v5 = objc_alloc_init(_MRSetRecordingStateMessageProtobuf);
    v6 = v5;
    if (state == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    [(_MRSetRecordingStateMessageProtobuf *)v5 setState:v7];
    [(MRProtocolMessage *)v4 setUnderlyingCodableMessage:v6];
  }

  return v4;
}

- (unsigned)state
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  if ([underlyingCodableMessage state] == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

@end