@interface MNNavigationServiceCallback_DidUpdateVehicleParkingInfo
- (MNNavigationServiceCallback_DidUpdateVehicleParkingInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNNavigationServiceCallback_DidUpdateVehicleParkingInfo

- (MNNavigationServiceCallback_DidUpdateVehicleParkingInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = MNNavigationServiceCallback_DidUpdateVehicleParkingInfo;
  v5 = [(MNNavigationServiceCallbackParameters *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_vehicleParkingInfo"];
    vehicleParkingInfo = v5->_vehicleParkingInfo;
    v5->_vehicleParkingInfo = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MNNavigationServiceCallback_DidUpdateVehicleParkingInfo;
  coderCopy = coder;
  [(MNNavigationServiceCallbackParameters *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_vehicleParkingInfo forKey:{@"_vehicleParkingInfo", v5.receiver, v5.super_class}];
}

@end