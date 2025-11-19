@interface MNNavigationServiceCallback_DidUpdateBackgroundWalkingRoute
- (MNNavigationServiceCallback_DidUpdateBackgroundWalkingRoute)initWithCoder:(id)a3;
@end

@implementation MNNavigationServiceCallback_DidUpdateBackgroundWalkingRoute

- (MNNavigationServiceCallback_DidUpdateBackgroundWalkingRoute)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MNNavigationServiceCallback_DidUpdateBackgroundWalkingRoute;
  v5 = [(MNNavigationServiceCallbackParameters *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_routeInfo"];
    routeInfo = v5->_routeInfo;
    v5->_routeInfo = v6;

    v8 = v5;
  }

  return v5;
}

@end