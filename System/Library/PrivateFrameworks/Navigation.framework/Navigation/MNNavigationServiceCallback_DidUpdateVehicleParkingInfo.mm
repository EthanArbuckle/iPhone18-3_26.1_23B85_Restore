@interface MNNavigationServiceCallback_DidUpdateVehicleParkingInfo
- (MNNavigationServiceCallback_DidUpdateVehicleParkingInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNNavigationServiceCallback_DidUpdateVehicleParkingInfo

- (MNNavigationServiceCallback_DidUpdateVehicleParkingInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MNNavigationServiceCallback_DidUpdateVehicleParkingInfo;
  v5 = [(MNNavigationServiceCallbackParameters *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_vehicleParkingInfo"];
    vehicleParkingInfo = v5->_vehicleParkingInfo;
    v5->_vehicleParkingInfo = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MNNavigationServiceCallback_DidUpdateVehicleParkingInfo;
  v4 = a3;
  [(MNNavigationServiceCallbackParameters *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_vehicleParkingInfo forKey:{@"_vehicleParkingInfo", v5.receiver, v5.super_class}];
}

@end