@interface MNNavigationServiceCallback_DidReceiveRoutingServiceError
- (MNNavigationServiceCallback_DidReceiveRoutingServiceError)initWithCoder:(id)a3;
@end

@implementation MNNavigationServiceCallback_DidReceiveRoutingServiceError

- (MNNavigationServiceCallback_DidReceiveRoutingServiceError)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MNNavigationServiceCallback_DidReceiveRoutingServiceError;
  v5 = [(MNNavigationServiceCallbackParameters *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"_error"];
    error = v5->_error;
    v5->_error = v10;

    v12 = v5;
  }

  return v5;
}

@end