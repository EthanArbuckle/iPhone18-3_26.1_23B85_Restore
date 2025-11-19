@interface MRUpdateClientMessage
- (MRClient)client;
- (MRUpdateClientMessage)initWithClient:(id)a3;
@end

@implementation MRUpdateClientMessage

- (MRUpdateClientMessage)initWithClient:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MRUpdateClientMessage;
  v5 = [(MRProtocolMessage *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRUpdateClientMessageProtobuf);
    v7 = [v4 protobuf];
    [(_MRUpdateClientMessageProtobuf *)v6 setClient:v7];

    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v6];
  }

  return v5;
}

- (MRClient)client
{
  v3 = [MRClient alloc];
  v4 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v5 = [v4 client];
  v6 = [(MRClient *)v3 initWithProtobuf:v5];

  return v6;
}

@end