@interface MRUpdateActiveSystemEndpointMessage
- (MRUpdateActiveSystemEndpointMessage)initWithRequest:(id)request;
- (MRUpdateActiveSystemEndpointMessage)initWithUnderlyingCodableMessage:(id)message error:(id)error;
@end

@implementation MRUpdateActiveSystemEndpointMessage

- (MRUpdateActiveSystemEndpointMessage)initWithUnderlyingCodableMessage:(id)message error:(id)error
{
  messageCopy = message;
  v13.receiver = self;
  v13.super_class = MRUpdateActiveSystemEndpointMessage;
  v7 = [(MRProtocolMessage *)&v13 initWithUnderlyingCodableMessage:messageCopy error:error];
  if (v7)
  {
    v8 = [MRUpdateActiveSystemEndpointRequest alloc];
    request = [messageCopy request];
    v10 = [(MRUpdateActiveSystemEndpointRequest *)v8 initWithProtobuf:request];
    request = v7->_request;
    v7->_request = v10;
  }

  return v7;
}

- (MRUpdateActiveSystemEndpointMessage)initWithRequest:(id)request
{
  requestCopy = request;
  v11.receiver = self;
  v11.super_class = MRUpdateActiveSystemEndpointMessage;
  v6 = [(MRProtocolMessage *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
    v8 = objc_alloc_init(_MRUpdateActiveSystemEndpointMessageProtobuf);
    protobuf = [requestCopy protobuf];
    [(_MRUpdateActiveSystemEndpointMessageProtobuf *)v8 setRequest:protobuf];

    [(MRProtocolMessage *)v7 setUnderlyingCodableMessage:v8];
  }

  return v7;
}

@end