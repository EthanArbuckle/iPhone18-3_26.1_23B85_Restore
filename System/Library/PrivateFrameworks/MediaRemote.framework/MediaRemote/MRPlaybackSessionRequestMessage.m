@interface MRPlaybackSessionRequestMessage
- (MRPlaybackSessionRequest)request;
- (MRPlaybackSessionRequestMessage)initWithRequest:(id)a3 forPlayerPath:(id)a4;
- (MRPlayerPath)playerPath;
@end

@implementation MRPlaybackSessionRequestMessage

- (MRPlaybackSessionRequestMessage)initWithRequest:(id)a3 forPlayerPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = MRPlaybackSessionRequestMessage;
  v8 = [(MRProtocolMessage *)&v13 init];
  if (v8)
  {
    v9 = objc_alloc_init(_MRPlaybackSessionRequestMessageProtobuf);
    v10 = [v6 protobuf];
    [(_MRPlaybackSessionRequestMessageProtobuf *)v9 setRequest:v10];

    v11 = [v7 protobuf];
    [(_MRPlaybackSessionRequestMessageProtobuf *)v9 setPlayerPath:v11];

    [(MRProtocolMessage *)v8 setUnderlyingCodableMessage:v9];
  }

  return v8;
}

- (MRPlaybackSessionRequest)request
{
  v3 = [MRPlaybackSessionRequest alloc];
  v4 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v5 = [v4 request];
  v6 = [(MRPlaybackSessionRequest *)v3 initWithProtobuf:v5];

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