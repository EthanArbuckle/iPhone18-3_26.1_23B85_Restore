@interface MRPlaybackSessionMigrateRequestMessage
- (MRPlaybackSession)playbackSession;
- (MRPlaybackSessionMigrateRequest)request;
- (MRPlaybackSessionMigrateRequestMessage)initWithPlaybackSession:(id)a3 request:(id)a4 forPlayerPath:(id)a5;
- (MRPlayerPath)playerPath;
@end

@implementation MRPlaybackSessionMigrateRequestMessage

- (MRPlaybackSessionMigrateRequestMessage)initWithPlaybackSession:(id)a3 request:(id)a4 forPlayerPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = MRPlaybackSessionMigrateRequestMessage;
  v11 = [(MRProtocolMessage *)&v17 init];
  if (v11)
  {
    v12 = objc_alloc_init(_MRPlaybackSessionMigrateRequestMessageProtobuf);
    v13 = [v8 protobuf];
    [(_MRPlaybackSessionMigrateRequestMessageProtobuf *)v12 setPlaybackSession:v13];

    v14 = [v9 protobuf];
    [(_MRPlaybackSessionMigrateRequestMessageProtobuf *)v12 setRequest:v14];

    v15 = [v10 protobuf];
    [(_MRPlaybackSessionMigrateRequestMessageProtobuf *)v12 setPlayerPath:v15];

    [(MRProtocolMessage *)v11 setUnderlyingCodableMessage:v12];
  }

  return v11;
}

- (MRPlaybackSession)playbackSession
{
  v3 = [MRPlaybackSession alloc];
  v4 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v5 = [v4 playbackSession];
  v6 = [(MRPlaybackSession *)v3 initWithProtobuf:v5];

  return v6;
}

- (MRPlaybackSessionMigrateRequest)request
{
  v3 = [MRPlaybackSessionMigrateRequest alloc];
  v4 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v5 = [v4 request];
  v6 = [(MRPlaybackSessionMigrateRequest *)v3 initWithProtobuf:v5];

  return v6;
}

- (MRPlayerPath)playerPath
{
  v3 = [MRPlayerPath alloc];
  v4 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v5 = [v4 playerPath];
  v6 = [(MRPlayerPath *)v3 initWithProtobuf:v5];

  return v6;
}

@end