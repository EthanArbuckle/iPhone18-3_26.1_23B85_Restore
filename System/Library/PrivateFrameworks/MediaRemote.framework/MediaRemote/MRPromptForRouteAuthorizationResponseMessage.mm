@interface MRPromptForRouteAuthorizationResponseMessage
- (MRPromptForRouteAuthorizationResponseMessage)initWithResponse:(id)response;
- (NSString)response;
@end

@implementation MRPromptForRouteAuthorizationResponseMessage

- (MRPromptForRouteAuthorizationResponseMessage)initWithResponse:(id)response
{
  responseCopy = response;
  v8.receiver = self;
  v8.super_class = MRPromptForRouteAuthorizationResponseMessage;
  v5 = [(MRProtocolMessage *)&v8 init];
  if (v5)
  {
    v6 = objc_alloc_init(_MRPromptForRouteAuthorizationResponseMessageProtobuf);
    [(_MRPromptForRouteAuthorizationResponseMessageProtobuf *)v6 setResponse:responseCopy];
    [(MRProtocolMessage *)v5 setUnderlyingCodableMessage:v6];
  }

  return v5;
}

- (NSString)response
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  response = [underlyingCodableMessage response];

  return response;
}

@end