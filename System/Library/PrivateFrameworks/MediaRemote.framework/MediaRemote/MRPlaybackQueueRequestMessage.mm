@interface MRPlaybackQueueRequestMessage
- (MRPlaybackQueueRequest)request;
- (MRPlaybackQueueRequestMessage)initWithRequest:(id)a3 forPlayerPath:(id)a4;
- (MRPlayerPath)playerPath;
@end

@implementation MRPlaybackQueueRequestMessage

- (MRPlaybackQueueRequestMessage)initWithRequest:(id)a3 forPlayerPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = MRPlaybackQueueRequestMessage;
  v8 = [(MRProtocolMessage *)&v13 init];
  if (v8)
  {
    v9 = [v6 protobuf];
    [(MRProtocolMessage *)v8 setUnderlyingCodableMessage:v9];

    v10 = [v7 protobuf];
    v11 = [(MRProtocolMessage *)v8 underlyingCodableMessage];
    [v11 setPlayerPath:v10];
  }

  return v8;
}

- (MRPlaybackQueueRequest)request
{
  v3 = [MRPlaybackQueueRequest alloc];
  v4 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v5 = [(MRPlaybackQueueRequest *)v3 initWithProtobuf:v4];

  return v5;
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