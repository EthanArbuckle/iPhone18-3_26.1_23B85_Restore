@interface MNNavigationServiceCallback_DidUpdateResumeRouteHandle
+ (id)didUpdateResumeRouteHandle:(id)handle;
- (MNNavigationServiceCallback_DidUpdateResumeRouteHandle)initWithCoder:(id)coder;
@end

@implementation MNNavigationServiceCallback_DidUpdateResumeRouteHandle

- (MNNavigationServiceCallback_DidUpdateResumeRouteHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = MNNavigationServiceCallback_DidUpdateResumeRouteHandle;
  v5 = [(MNNavigationServiceCallbackParameters *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_resumeRouteHandle"];
    resumeRouteHandle = v5->_resumeRouteHandle;
    v5->_resumeRouteHandle = v6;

    v8 = v5;
  }

  return v5;
}

+ (id)didUpdateResumeRouteHandle:(id)handle
{
  handleCopy = handle;
  v4 = objc_opt_new();
  [v4 setResumeRouteHandle:handleCopy];

  return v4;
}

@end