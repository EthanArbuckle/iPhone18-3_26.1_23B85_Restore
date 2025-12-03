@interface MRSetNowPlayingPlayerMessage
- (MRPlayerPath)playerPath;
- (MRSetNowPlayingPlayerMessage)initWithPlayerPath:(id)path;
@end

@implementation MRSetNowPlayingPlayerMessage

- (MRSetNowPlayingPlayerMessage)initWithPlayerPath:(id)path
{
  pathCopy = path;
  v10.receiver = self;
  v10.super_class = MRSetNowPlayingPlayerMessage;
  v5 = [(MRProtocolMessage *)&v10 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRSetNowPlayingPlayerMessageProtobuf);
    skeleton = [pathCopy skeleton];
    protobuf = [skeleton protobuf];
    [(_MRSetNowPlayingPlayerMessageProtobuf *)v6 setPlayerPath:protobuf];

    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v6];
  }

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