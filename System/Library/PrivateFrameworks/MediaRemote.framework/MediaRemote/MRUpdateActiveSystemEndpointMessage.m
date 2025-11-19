@interface MRUpdateActiveSystemEndpointMessage
- (MRUpdateActiveSystemEndpointMessage)initWithRequest:(id)a3;
- (MRUpdateActiveSystemEndpointMessage)initWithUnderlyingCodableMessage:(id)a3 error:(id)a4;
@end

@implementation MRUpdateActiveSystemEndpointMessage

- (MRUpdateActiveSystemEndpointMessage)initWithUnderlyingCodableMessage:(id)a3 error:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = MRUpdateActiveSystemEndpointMessage;
  v7 = [(MRProtocolMessage *)&v13 initWithUnderlyingCodableMessage:v6 error:a4];
  if (v7)
  {
    v8 = [MRUpdateActiveSystemEndpointRequest alloc];
    v9 = [v6 request];
    v10 = [(MRUpdateActiveSystemEndpointRequest *)v8 initWithProtobuf:v9];
    request = v7->_request;
    v7->_request = v10;
  }

  return v7;
}

- (MRUpdateActiveSystemEndpointMessage)initWithRequest:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MRUpdateActiveSystemEndpointMessage;
  v6 = [(MRProtocolMessage *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
    v8 = objc_alloc_init(_MRUpdateActiveSystemEndpointMessageProtobuf);
    v9 = [v5 protobuf];
    [(_MRUpdateActiveSystemEndpointMessageProtobuf *)v8 setRequest:v9];

    [(MRProtocolMessage *)v7 setUnderlyingCodableMessage:v8];
  }

  return v7;
}

@end