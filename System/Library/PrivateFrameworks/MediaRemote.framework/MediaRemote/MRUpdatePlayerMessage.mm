@interface MRUpdatePlayerMessage
- (MRPlayerPath)playerPath;
- (MRUpdatePlayerMessage)initWithPlayerPath:(id)path;
@end

@implementation MRUpdatePlayerMessage

- (MRUpdatePlayerMessage)initWithPlayerPath:(id)path
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = MRUpdatePlayerMessage;
  v5 = [(MRProtocolMessage *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRUpdatePlayerMessageProtobuf);
    skeleton = [pathCopy skeleton];
    player = [pathCopy player];
    [skeleton setPlayer:player];

    protobuf = [skeleton protobuf];
    [(_MRUpdatePlayerMessageProtobuf *)v6 setPlayerPath:protobuf];

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