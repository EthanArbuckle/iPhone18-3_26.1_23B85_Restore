@interface MRPresentRouteAuthorizationStatusMessage
- (MRAVOutputDevice)route;
- (MRPresentRouteAuthorizationStatusMessage)initWithRoute:(id)a3 status:(int)a4;
- (int)status;
@end

@implementation MRPresentRouteAuthorizationStatusMessage

- (MRPresentRouteAuthorizationStatusMessage)initWithRoute:(id)a3 status:(int)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = MRPresentRouteAuthorizationStatusMessage;
  v8 = [(MRProtocolMessage *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_route, a3);
    v10 = objc_alloc_init(_MRPresentRouteAuthorizationStatusMessageProtobuf);
    v11 = [(MRAVOutputDevice *)v9->_route descriptor];
    [(_MRPresentRouteAuthorizationStatusMessageProtobuf *)v10 setRoute:v11];

    if (a4 >= 0xA)
    {
      v12 = 0xFFFFFFFFLL;
    }

    else
    {
      v12 = a4;
    }

    [(_MRPresentRouteAuthorizationStatusMessageProtobuf *)v10 setStatus:v12];
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
    v5 = [(MRProtocolMessage *)self underlyingCodableMessage];
    v6 = [v5 route];
    v7 = [(MRAVDistantOutputDevice *)v4 initWithDescriptor:v6];
    v8 = self->_route;
    self->_route = v7;

    route = self->_route;
  }

  return route;
}

- (int)status
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 status];
  if (v3 >= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

@end