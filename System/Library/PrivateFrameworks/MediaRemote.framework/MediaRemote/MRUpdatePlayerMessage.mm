@interface MRUpdatePlayerMessage
- (MRPlayerPath)playerPath;
- (MRUpdatePlayerMessage)initWithPlayerPath:(id)a3;
@end

@implementation MRUpdatePlayerMessage

- (MRUpdatePlayerMessage)initWithPlayerPath:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MRUpdatePlayerMessage;
  v5 = [(MRProtocolMessage *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRUpdatePlayerMessageProtobuf);
    v7 = [v4 skeleton];
    v8 = [v4 player];
    [v7 setPlayer:v8];

    v9 = [v7 protobuf];
    [(_MRUpdatePlayerMessageProtobuf *)v6 setPlayerPath:v9];

    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v6];
  }

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