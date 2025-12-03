@interface MRPromptForRouteAuthorizationMessage
- (MRAVOutputDevice)route;
- (MRPromptForRouteAuthorizationMessage)initWithRoute:(id)route inputType:(int64_t)type;
- (int64_t)inputType;
@end

@implementation MRPromptForRouteAuthorizationMessage

- (MRPromptForRouteAuthorizationMessage)initWithRoute:(id)route inputType:(int64_t)type
{
  routeCopy = route;
  v14.receiver = self;
  v14.super_class = MRPromptForRouteAuthorizationMessage;
  v8 = [(MRProtocolMessage *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_route, route);
    v10 = objc_alloc_init(_MRPromptForRouteAuthorizationMessageProtobuf);
    descriptor = [routeCopy descriptor];
    [(_MRPromptForRouteAuthorizationMessageProtobuf *)v10 setRoute:descriptor];

    if ((type - 1) > 2)
    {
      v12 = 0;
    }

    else
    {
      v12 = dword_1A2B80F20[type - 1];
    }

    [(_MRPromptForRouteAuthorizationMessageProtobuf *)v10 setInputType:v12];
    [(MRProtocolMessage *)v9 setUnderlyingCodableMessage:v10];
  }

  return v9;
}

- (MRAVOutputDevice)route
{
  route = self->_route;
  if (!route)
  {
    v4 = [MRAVDistantOutputDevice alloc];
    underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
    route = [underlyingCodableMessage route];
    v7 = [(MRAVDistantOutputDevice *)v4 initWithDescriptor:route];
    v8 = self->_route;
    self->_route = v7;

    route = self->_route;
  }

  return route;
}

- (int64_t)inputType
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [underlyingCodableMessage inputType] - 1;
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_1A2B80F30[v3];
  }

  return v4;
}

@end