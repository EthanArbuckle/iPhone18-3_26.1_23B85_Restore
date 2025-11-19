@interface MNNavigationServiceCallback_DidUpdateDisplayETA
- (MNNavigationServiceCallback_DidUpdateDisplayETA)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNNavigationServiceCallback_DidUpdateDisplayETA

- (MNNavigationServiceCallback_DidUpdateDisplayETA)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MNNavigationServiceCallback_DidUpdateDisplayETA;
  v5 = [(MNNavigationServiceCallbackParameters *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_batteryChargeInfo"];
    batteryChargeInfo = v5->_batteryChargeInfo;
    v5->_batteryChargeInfo = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_displayETAInfo"];
    displayETAInfo = v5->_displayETAInfo;
    v5->_displayETAInfo = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_routeDistanceInfo"];
    routeDistanceInfo = v5->_routeDistanceInfo;
    v5->_routeDistanceInfo = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MNNavigationServiceCallback_DidUpdateDisplayETA;
  v4 = a3;
  [(MNNavigationServiceCallbackParameters *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_batteryChargeInfo forKey:{@"_batteryChargeInfo", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_displayETAInfo forKey:@"_displayETAInfo"];
  [v4 encodeObject:self->_routeDistanceInfo forKey:@"_routeDistanceInfo"];
}

@end