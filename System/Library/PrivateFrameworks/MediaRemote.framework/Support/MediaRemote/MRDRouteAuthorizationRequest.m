@interface MRDRouteAuthorizationRequest
- (MRDRouteAuthorizationRequest)initWithRoute:(id)a3 inputType:(int64_t)a4 responseCallback:(id)a5 cancelCallback:(id)a6;
@end

@implementation MRDRouteAuthorizationRequest

- (MRDRouteAuthorizationRequest)initWithRoute:(id)a3 inputType:(int64_t)a4 responseCallback:(id)a5 cancelCallback:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = MRDRouteAuthorizationRequest;
  v14 = [(MRDRouteAuthorizationRequest *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_route, a3);
    v15->_inputType = a4;
    v16 = [v12 copy];
    responseCallback = v15->_responseCallback;
    v15->_responseCallback = v16;

    v18 = [v13 copy];
    cancelCallback = v15->_cancelCallback;
    v15->_cancelCallback = v18;
  }

  return v15;
}

@end