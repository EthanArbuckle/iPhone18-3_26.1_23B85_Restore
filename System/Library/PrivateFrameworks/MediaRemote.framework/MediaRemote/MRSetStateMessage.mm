@interface MRSetStateMessage
- (MRSetStateMessage)initWithNowPlayingState:(id)state encoding:(int64_t)encoding;
- (MRSetStateMessage)initWithUnderlyingCodableMessage:(id)message error:(id)error;
@end

@implementation MRSetStateMessage

- (MRSetStateMessage)initWithNowPlayingState:(id)state encoding:(int64_t)encoding
{
  stateCopy = state;
  v7 = [(MRProtocolMessage *)self init];
  if (v7)
  {
    v8 = [stateCopy copy];
    state = v7->_state;
    v7->_state = v8;

    playerPath = [stateCopy playerPath];
    skeleton = [playerPath skeleton];
    [(MRNowPlayingState *)v7->_state setPlayerPath:skeleton];

    v12 = [(MRNowPlayingState *)v7->_state protobufWithEncoding:encoding];
    [(MRProtocolMessage *)v7 setUnderlyingCodableMessage:v12];
  }

  return v7;
}

- (MRSetStateMessage)initWithUnderlyingCodableMessage:(id)message error:(id)error
{
  messageCopy = message;
  v11.receiver = self;
  v11.super_class = MRSetStateMessage;
  v7 = [(MRProtocolMessage *)&v11 initWithUnderlyingCodableMessage:messageCopy error:error];
  if (v7)
  {
    v8 = [[MRNowPlayingState alloc] initWithProtobuf:messageCopy];
    state = v7->_state;
    v7->_state = v8;
  }

  return v7;
}

@end