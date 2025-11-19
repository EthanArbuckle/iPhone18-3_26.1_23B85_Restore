@interface DMTFetchAutomatedDeviceEnrollmentStateResultObject
- (DMTFetchAutomatedDeviceEnrollmentStateResultObject)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMTFetchAutomatedDeviceEnrollmentStateResultObject

- (DMTFetchAutomatedDeviceEnrollmentStateResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DMTFetchAutomatedDeviceEnrollmentStateResultObject;
  v5 = [(CATTaskResultObject *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"enrollmentState"];
    v5->_enrollmentState = [v6 integerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = DMTFetchAutomatedDeviceEnrollmentStateResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v6 encodeWithCoder:v4];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DMTFetchAutomatedDeviceEnrollmentStateResultObject enrollmentState](self, "enrollmentState", v6.receiver, v6.super_class)}];
  [v4 encodeObject:v5 forKey:@"enrollmentState"];
}

@end