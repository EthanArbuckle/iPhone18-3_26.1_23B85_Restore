@interface MNNavigationServiceCallback_DidUpdateMatchedLocation
- (MNNavigationServiceCallback_DidUpdateMatchedLocation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNNavigationServiceCallback_DidUpdateMatchedLocation

- (MNNavigationServiceCallback_DidUpdateMatchedLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MNNavigationServiceCallback_DidUpdateMatchedLocation;
  v5 = [(MNNavigationServiceCallbackParameters *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_location"];
    location = v5->_location;
    v5->_location = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MNNavigationServiceCallback_DidUpdateMatchedLocation;
  v4 = a3;
  [(MNNavigationServiceCallbackParameters *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_location forKey:{@"_location", v5.receiver, v5.super_class}];
}

@end