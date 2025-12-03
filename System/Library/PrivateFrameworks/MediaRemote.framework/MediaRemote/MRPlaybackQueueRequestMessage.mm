@interface MRPlaybackQueueRequestMessage
- (MRPlaybackQueueRequest)request;
- (MRPlaybackQueueRequestMessage)initWithRequest:(id)request forPlayerPath:(id)path;
- (MRPlayerPath)playerPath;
@end

@implementation MRPlaybackQueueRequestMessage

- (MRPlaybackQueueRequestMessage)initWithRequest:(id)request forPlayerPath:(id)path
{
  requestCopy = request;
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = MRPlaybackQueueRequestMessage;
  v8 = [(MRProtocolMessage *)&v13 init];
  if (v8)
  {
    protobuf = [requestCopy protobuf];
    [(MRProtocolMessage *)v8 setUnderlyingCodableMessage:protobuf];

    protobuf2 = [pathCopy protobuf];
    underlyingCodableMessage = [(MRProtocolMessage *)v8 underlyingCodableMessage];
    [underlyingCodableMessage setPlayerPath:protobuf2];
  }

  return v8;
}

- (MRPlaybackQueueRequest)request
{
  v3 = [MRPlaybackQueueRequest alloc];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  v5 = [(MRPlaybackQueueRequest *)v3 initWithProtobuf:underlyingCodableMessage];

  return v5;
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