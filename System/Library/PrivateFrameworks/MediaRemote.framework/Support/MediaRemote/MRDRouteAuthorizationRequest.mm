@interface MRDRouteAuthorizationRequest
- (MRDRouteAuthorizationRequest)initWithRoute:(id)route inputType:(int64_t)type responseCallback:(id)callback cancelCallback:(id)cancelCallback;
@end

@implementation MRDRouteAuthorizationRequest

- (MRDRouteAuthorizationRequest)initWithRoute:(id)route inputType:(int64_t)type responseCallback:(id)callback cancelCallback:(id)cancelCallback
{
  routeCopy = route;
  callbackCopy = callback;
  cancelCallbackCopy = cancelCallback;
  v21.receiver = self;
  v21.super_class = MRDRouteAuthorizationRequest;
  v14 = [(MRDRouteAuthorizationRequest *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_route, route);
    v15->_inputType = type;
    v16 = [callbackCopy copy];
    responseCallback = v15->_responseCallback;
    v15->_responseCallback = v16;

    v18 = [cancelCallbackCopy copy];
    cancelCallback = v15->_cancelCallback;
    v15->_cancelCallback = v18;
  }

  return v15;
}

@end