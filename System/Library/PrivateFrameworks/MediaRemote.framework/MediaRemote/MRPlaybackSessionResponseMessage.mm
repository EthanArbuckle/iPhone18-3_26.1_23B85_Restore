@interface MRPlaybackSessionResponseMessage
- (MRPlaybackSession)playbackSession;
- (MRPlaybackSessionMigrateRequest)request;
- (MRPlaybackSessionResponseMessage)initWithPlaybackSession:(id)a3 request:(id)a4;
@end

@implementation MRPlaybackSessionResponseMessage

- (MRPlaybackSessionResponseMessage)initWithPlaybackSession:(id)a3 request:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = MRPlaybackSessionResponseMessage;
  v8 = [(MRProtocolMessage *)&v13 init];
  if (v8)
  {
    v9 = objc_alloc_init(_MRPlaybackSessionResponseMessageProtobuf);
    v10 = [v6 protobuf];
    [(_MRPlaybackSessionResponseMessageProtobuf *)v9 setPlaybackSession:v10];

    v11 = [v7 protobuf];
    [(_MRPlaybackSessionResponseMessageProtobuf *)v9 setRequest:v11];

    [(MRProtocolMessage *)v8 setUnderlyingCodableMessage:v9];
  }

  return v8;
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

@end