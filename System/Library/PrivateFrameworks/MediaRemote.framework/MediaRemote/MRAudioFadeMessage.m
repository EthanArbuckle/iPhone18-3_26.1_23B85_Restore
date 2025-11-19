@interface MRAudioFadeMessage
- (MRAudioFadeMessage)initWithPlayerPath:(id)a3 fadeType:(int64_t)a4;
- (MRPlayerPath)playerPath;
- (int64_t)fadeType;
@end

@implementation MRAudioFadeMessage

- (MRAudioFadeMessage)initWithPlayerPath:(id)a3 fadeType:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = MRAudioFadeMessage;
  v7 = [(MRProtocolMessage *)&v11 init];
  if (v7)
  {
    v8 = objc_alloc_init(_MRAudioFadeMessageProtobuf);
    v9 = [v6 protobuf];
    [(_MRAudioFadeMessageProtobuf *)v8 setPlayerPath:v9];

    [(_MRAudioFadeMessageProtobuf *)v8 setFadeType:a4];
    [(MRProtocolMessage *)v7 setUnderlyingCodableMessage:v8];
  }

  return v7;
}

- (MRPlayerPath)playerPath
{
  v3 = [MRPlayerPath alloc];
  v4 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v5 = [v4 playerPath];
  v6 = [(MRPlayerPath *)v3 initWithProtobuf:v5];

  return v6;
}

- (int64_t)fadeType
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 fadeType];

  return v3;
}

@end