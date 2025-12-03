@interface MRPlaybackSessionMigrateBeginMessage
- (MRPlaybackSessionMigrateBeginMessage)initWithRequest:(id)request playerPath:(id)path;
- (MRPlaybackSessionRequest)request;
- (MRPlayerPath)playerPath;
@end

@implementation MRPlaybackSessionMigrateBeginMessage

- (MRPlaybackSessionMigrateBeginMessage)initWithRequest:(id)request playerPath:(id)path
{
  requestCopy = request;
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = MRPlaybackSessionMigrateBeginMessage;
  v8 = [(MRProtocolMessage *)&v13 init];
  if (v8)
  {
    v9 = objc_alloc_init(_MRPlaybackSessionMigrateBeginMessageProtobuf);
    protobuf = [requestCopy protobuf];
    [(_MRPlaybackSessionMigrateBeginMessageProtobuf *)v9 setRequest:protobuf];

    protobuf2 = [pathCopy protobuf];
    [(_MRPlaybackSessionMigrateBeginMessageProtobuf *)v9 setPlayerPath:protobuf2];

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