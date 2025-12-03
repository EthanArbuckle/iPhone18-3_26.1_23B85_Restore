@interface MNNavigationServiceCallback_DidUpdateArrivalInfo
- (MNNavigationServiceCallback_DidUpdateArrivalInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNNavigationServiceCallback_DidUpdateArrivalInfo

- (MNNavigationServiceCallback_DidUpdateArrivalInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = MNNavigationServiceCallback_DidUpdateArrivalInfo;
  v5 = [(MNNavigationServiceCallbackParameters *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_arrivalInfo"];
    arrivalInfo = v5->_arrivalInfo;
    v5->_arrivalInfo = v6;

    v5->_previousState = [coderCopy decodeIntegerForKey:@"_previousState"];
    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  arrivalInfo = self->_arrivalInfo;
  coderCopy = coder;
  [coderCopy encodeObject:arrivalInfo forKey:@"_arrivalInfo"];
  [coderCopy encodeInteger:self->_previousState forKey:@"_previousState"];
}

@end