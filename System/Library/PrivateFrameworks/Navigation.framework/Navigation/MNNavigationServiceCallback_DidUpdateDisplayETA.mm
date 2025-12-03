@interface MNNavigationServiceCallback_DidUpdateDisplayETA
- (MNNavigationServiceCallback_DidUpdateDisplayETA)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNNavigationServiceCallback_DidUpdateDisplayETA

- (MNNavigationServiceCallback_DidUpdateDisplayETA)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = MNNavigationServiceCallback_DidUpdateDisplayETA;
  v5 = [(MNNavigationServiceCallbackParameters *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_batteryChargeInfo"];
    batteryChargeInfo = v5->_batteryChargeInfo;
    v5->_batteryChargeInfo = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_displayETAInfo"];
    displayETAInfo = v5->_displayETAInfo;
    v5->_displayETAInfo = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_routeDistanceInfo"];
    routeDistanceInfo = v5->_routeDistanceInfo;
    v5->_routeDistanceInfo = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MNNavigationServiceCallback_DidUpdateDisplayETA;
  coderCopy = coder;
  [(MNNavigationServiceCallbackParameters *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_batteryChargeInfo forKey:{@"_batteryChargeInfo", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_displayETAInfo forKey:@"_displayETAInfo"];
  [coderCopy encodeObject:self->_routeDistanceInfo forKey:@"_routeDistanceInfo"];
}

@end