@interface MNNavigationServiceCallback_DidUpdateArrivalInfo
- (MNNavigationServiceCallback_DidUpdateArrivalInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNNavigationServiceCallback_DidUpdateArrivalInfo

- (MNNavigationServiceCallback_DidUpdateArrivalInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MNNavigationServiceCallback_DidUpdateArrivalInfo;
  v5 = [(MNNavigationServiceCallbackParameters *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_arrivalInfo"];
    arrivalInfo = v5->_arrivalInfo;
    v5->_arrivalInfo = v6;

    v5->_previousState = [v4 decodeIntegerForKey:@"_previousState"];
    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  arrivalInfo = self->_arrivalInfo;
  v5 = a3;
  [v5 encodeObject:arrivalInfo forKey:@"_arrivalInfo"];
  [v5 encodeInteger:self->_previousState forKey:@"_previousState"];
}

@end