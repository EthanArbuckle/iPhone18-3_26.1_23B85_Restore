@interface MRSetStateMessage
- (MRSetStateMessage)initWithNowPlayingState:(id)a3 encoding:(int64_t)a4;
- (MRSetStateMessage)initWithUnderlyingCodableMessage:(id)a3 error:(id)a4;
@end

@implementation MRSetStateMessage

- (MRSetStateMessage)initWithNowPlayingState:(id)a3 encoding:(int64_t)a4
{
  v6 = a3;
  v7 = [(MRProtocolMessage *)self init];
  if (v7)
  {
    v8 = [v6 copy];
    state = v7->_state;
    v7->_state = v8;

    v10 = [v6 playerPath];
    v11 = [v10 skeleton];
    [(MRNowPlayingState *)v7->_state setPlayerPath:v11];

    v12 = [(MRNowPlayingState *)v7->_state protobufWithEncoding:a4];
    [(MRProtocolMessage *)v7 setUnderlyingCodableMessage:v12];
  }

  return v7;
}

- (MRSetStateMessage)initWithUnderlyingCodableMessage:(id)a3 error:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = MRSetStateMessage;
  v7 = [(MRProtocolMessage *)&v11 initWithUnderlyingCodableMessage:v6 error:a4];
  if (v7)
  {
    v8 = [[MRNowPlayingState alloc] initWithProtobuf:v6];
    state = v7->_state;
    v7->_state = v8;
  }

  return v7;
}

@end