@interface MRRemovePlayerMessage
- (MRPlayerPath)playerPath;
- (MRRemovePlayerMessage)initWithPlayerPath:(id)path;
@end

@implementation MRRemovePlayerMessage

- (MRRemovePlayerMessage)initWithPlayerPath:(id)path
{
  pathCopy = path;
  v10.receiver = self;
  v10.super_class = MRRemovePlayerMessage;
  v5 = [(MRProtocolMessage *)&v10 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRRemovePlayerMessageProtobuf);
    skeleton = [pathCopy skeleton];
    protobuf = [skeleton protobuf];
    [(_MRRemovePlayerMessageProtobuf *)v6 setPlayerPath:protobuf];

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