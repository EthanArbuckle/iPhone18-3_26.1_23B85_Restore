@interface MRPresentRouteAuthorizationStatusMessage
- (MRAVOutputDevice)route;
- (MRPresentRouteAuthorizationStatusMessage)initWithRoute:(id)route status:(int)status;
- (int)status;
@end

@implementation MRPresentRouteAuthorizationStatusMessage

- (MRPresentRouteAuthorizationStatusMessage)initWithRoute:(id)route status:(int)status
{
  routeCopy = route;
  v14.receiver = self;
  v14.super_class = MRPresentRouteAuthorizationStatusMessage;
  v8 = [(MRProtocolMessage *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_route, route);
    v10 = objc_alloc_init(_MRPresentRouteAuthorizationStatusMessageProtobuf);
    descriptor = [(MRAVOutputDevice *)v9->_route descriptor];
    [(_MRPresentRouteAuthorizationStatusMessageProtobuf *)v10 setRoute:descriptor];

    if (status >= 0xA)
    {
      statusCopy = 0xFFFFFFFFLL;
    }

    else
    {
      statusCopy = status;
    }

    [(_MRPresentRouteAuthorizationStatusMessageProtobuf *)v10 setStatus:statusCopy];
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

- (int)status
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  status = [underlyingCodableMessage status];
  if (status >= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = status;
  }

  return v4;
}

@end