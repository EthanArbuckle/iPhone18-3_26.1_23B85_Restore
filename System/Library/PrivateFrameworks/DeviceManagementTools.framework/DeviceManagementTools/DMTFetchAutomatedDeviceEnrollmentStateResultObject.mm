@interface DMTFetchAutomatedDeviceEnrollmentStateResultObject
- (DMTFetchAutomatedDeviceEnrollmentStateResultObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMTFetchAutomatedDeviceEnrollmentStateResultObject

- (DMTFetchAutomatedDeviceEnrollmentStateResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = DMTFetchAutomatedDeviceEnrollmentStateResultObject;
  v5 = [(CATTaskResultObject *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enrollmentState"];
    v5->_enrollmentState = [v6 integerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMTFetchAutomatedDeviceEnrollmentStateResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DMTFetchAutomatedDeviceEnrollmentStateResultObject enrollmentState](self, "enrollmentState", v6.receiver, v6.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"enrollmentState"];
}

@end