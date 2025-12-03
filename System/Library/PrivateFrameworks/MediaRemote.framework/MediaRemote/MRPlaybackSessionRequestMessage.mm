@interface MRPlaybackSessionRequestMessage
- (MRPlaybackSessionRequest)request;
- (MRPlaybackSessionRequestMessage)initWithRequest:(id)request forPlayerPath:(id)path;
- (MRPlayerPath)playerPath;
@end

@implementation MRPlaybackSessionRequestMessage

- (MRPlaybackSessionRequestMessage)initWithRequest:(id)request forPlayerPath:(id)path
{
  requestCopy = request;
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = MRPlaybackSessionRequestMessage;
  v8 = [(MRProtocolMessage *)&v13 init];
  if (v8)
  {
    v9 = objc_alloc_init(_MRPlaybackSessionRequestMessageProtobuf);
    protobuf = [requestCopy protobuf];
    [(_MRPlaybackSessionRequestMessageProtobuf *)v9 setRequest:protobuf];

    protobuf2 = [pathCopy protobuf];
    [(_MRPlaybackSessionRequestMessageProtobuf *)v9 setPlayerPath:protobuf2];

    [(MRProtocolMessage *)v8 setUnderlyingCodableMessage:v9];
  }

  return v8;
}

- (MRPlaybackSessionRequest)request
{
  v3 = [MRPlaybackSessionRequest alloc];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  request = [underlyingCodableMessage request];
  v6 = [(MRPlaybackSessionRequest *)v3 initWithProtobuf:request];

  return v6;
}

- (MRPlayerPath)playerPath
{
  v3 = [MRPlayerPath alloc];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  playerPath = [underlyingCodableMessage playerPath];
  v6 = [(MRPlayerPath *)v3 initWithProtobuf:playerPath];

  return v6;
}

@end