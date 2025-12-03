@interface MRUpdateClientMessage
- (MRClient)client;
- (MRUpdateClientMessage)initWithClient:(id)client;
@end

@implementation MRUpdateClientMessage

- (MRUpdateClientMessage)initWithClient:(id)client
{
  clientCopy = client;
  v9.receiver = self;
  v9.super_class = MRUpdateClientMessage;
  v5 = [(MRProtocolMessage *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRUpdateClientMessageProtobuf);
    protobuf = [clientCopy protobuf];
    [(_MRUpdateClientMessageProtobuf *)v6 setClient:protobuf];

    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v6];
  }

  return v5;
}

- (MRClient)client
{
  v3 = [MRClient alloc];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  client = [underlyingCodableMessage client];
  v6 = [(MRClient *)v3 initWithProtobuf:client];

  return v6;
}

@end