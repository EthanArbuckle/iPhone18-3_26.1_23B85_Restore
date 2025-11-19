@interface MNNavigationServiceCallback_DidUpdateResumeRouteHandle
+ (id)didUpdateResumeRouteHandle:(id)a3;
- (MNNavigationServiceCallback_DidUpdateResumeRouteHandle)initWithCoder:(id)a3;
@end

@implementation MNNavigationServiceCallback_DidUpdateResumeRouteHandle

- (MNNavigationServiceCallback_DidUpdateResumeRouteHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MNNavigationServiceCallback_DidUpdateResumeRouteHandle;
  v5 = [(MNNavigationServiceCallbackParameters *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_resumeRouteHandle"];
    resumeRouteHandle = v5->_resumeRouteHandle;
    v5->_resumeRouteHandle = v6;

    v8 = v5;
  }

  return v5;
}

+ (id)didUpdateResumeRouteHandle:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setResumeRouteHandle:v3];

  return v4;
}

@end