@interface MRSetRecordingStateMessage
- (MRSetRecordingStateMessage)initWithRecordingState:(unsigned int)a3;
- (unsigned)state;
@end

@implementation MRSetRecordingStateMessage

- (MRSetRecordingStateMessage)initWithRecordingState:(unsigned int)a3
{
  v9.receiver = self;
  v9.super_class = MRSetRecordingStateMessage;
  v4 = [(MRProtocolMessage *)&v9 init];
  if (v4)
  {
    v5 = objc_alloc_init(_MRSetRecordingStateMessageProtobuf);
    v6 = v5;
    if (a3 == 1)
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
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  if ([v2 state] == 1)
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