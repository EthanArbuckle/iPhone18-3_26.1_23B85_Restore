@interface MRPlaybackSessionResponseMessage
- (MRPlaybackSession)playbackSession;
- (MRPlaybackSessionMigrateRequest)request;
- (MRPlaybackSessionResponseMessage)initWithPlaybackSession:(id)session request:(id)request;
@end

@implementation MRPlaybackSessionResponseMessage

- (MRPlaybackSessionResponseMessage)initWithPlaybackSession:(id)session request:(id)request
{
  sessionCopy = session;
  requestCopy = request;
  v13.receiver = self;
  v13.super_class = MRPlaybackSessionResponseMessage;
  v8 = [(MRProtocolMessage *)&v13 init];
  if (v8)
  {
    v9 = objc_alloc_init(_MRPlaybackSessionResponseMessageProtobuf);
    protobuf = [sessionCopy protobuf];
    [(_MRPlaybackSessionResponseMessageProtobuf *)v9 setPlaybackSession:protobuf];

    protobuf2 = [requestCopy protobuf];
    [(_MRPlaybackSessionResponseMessageProtobuf *)v9 setRequest:protobuf2];

    [(MRProtocolMessage *)v8 setUnderlyingCodableMessage:v9];
  }

  return v8;
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

@end