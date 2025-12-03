@interface MRAudioFadeMessage
- (MRAudioFadeMessage)initWithPlayerPath:(id)path fadeType:(int64_t)type;
- (MRPlayerPath)playerPath;
- (int64_t)fadeType;
@end

@implementation MRAudioFadeMessage

- (MRAudioFadeMessage)initWithPlayerPath:(id)path fadeType:(int64_t)type
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = MRAudioFadeMessage;
  v7 = [(MRProtocolMessage *)&v11 init];
  if (v7)
  {
    v8 = objc_alloc_init(_MRAudioFadeMessageProtobuf);
    protobuf = [pathCopy protobuf];
    [(_MRAudioFadeMessageProtobuf *)v8 setPlayerPath:protobuf];

    [(_MRAudioFadeMessageProtobuf *)v8 setFadeType:type];
    [(MRProtocolMessage *)v7 setUnderlyingCodableMessage:v8];
  }

  return v7;
}

- (MRPlayerPath)playerPath
{
  v3 = [MRPlayerPath alloc];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  playerPath = [underlyingCodableMessage playerPath];
  v6 = [(MRPlayerPath *)v3 initWithProtobuf:playerPath];

  return v6;
}

- (int64_t)fadeType
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  fadeType = [underlyingCodableMessage fadeType];

  return fadeType;
}

@end