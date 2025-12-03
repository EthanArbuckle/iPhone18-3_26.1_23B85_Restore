@interface MRPlaybackSessionMigrateRequestMessage
- (MRPlaybackSession)playbackSession;
- (MRPlaybackSessionMigrateRequest)request;
- (MRPlaybackSessionMigrateRequestMessage)initWithPlaybackSession:(id)session request:(id)request forPlayerPath:(id)path;
- (MRPlayerPath)playerPath;
@end

@implementation MRPlaybackSessionMigrateRequestMessage

- (MRPlaybackSessionMigrateRequestMessage)initWithPlaybackSession:(id)session request:(id)request forPlayerPath:(id)path
{
  sessionCopy = session;
  requestCopy = request;
  pathCopy = path;
  v17.receiver = self;
  v17.super_class = MRPlaybackSessionMigrateRequestMessage;
  v11 = [(MRProtocolMessage *)&v17 init];
  if (v11)
  {
    v12 = objc_alloc_init(_MRPlaybackSessionMigrateRequestMessageProtobuf);
    protobuf = [sessionCopy protobuf];
    [(_MRPlaybackSessionMigrateRequestMessageProtobuf *)v12 setPlaybackSession:protobuf];

    protobuf2 = [requestCopy protobuf];
    [(_MRPlaybackSessionMigrateRequestMessageProtobuf *)v12 setRequest:protobuf2];

    protobuf3 = [pathCopy protobuf];
    [(_MRPlaybackSessionMigrateRequestMessageProtobuf *)v12 setPlayerPath:protobuf3];

    [(MRProtocolMessage *)v11 setUnderlyingCodableMessage:v12];
  }

  return v11;
}

- (MRPlaybackSession)playbackSession
{
  v3 = [MRPlaybackSession alloc];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  playbackSession = [underlyingCodableMessage playbackSession];
  v6 = [(MRPlaybackSession *)v3 initWithProtobuf:playbackSession];

  return v6;
}

- (MRPlaybackSessionMigrateRequest)request
{
  v3 = [MRPlaybackSessionMigrateRequest alloc];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  request = [underlyingCodableMessage request];
  v6 = [(MRPlaybackSessionMigrateRequest *)v3 initWithProtobuf:request];

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