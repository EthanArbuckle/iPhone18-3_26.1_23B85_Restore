@interface MNNavigationServiceCallback_DidUpdateBackgroundWalkingRoute
- (MNNavigationServiceCallback_DidUpdateBackgroundWalkingRoute)initWithCoder:(id)coder;
@end

@implementation MNNavigationServiceCallback_DidUpdateBackgroundWalkingRoute

- (MNNavigationServiceCallback_DidUpdateBackgroundWalkingRoute)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = MNNavigationServiceCallback_DidUpdateBackgroundWalkingRoute;
  v5 = [(MNNavigationServiceCallbackParameters *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_routeInfo"];
    routeInfo = v5->_routeInfo;
    v5->_routeInfo = v6;

    v8 = v5;
  }

  return v5;
}

@end