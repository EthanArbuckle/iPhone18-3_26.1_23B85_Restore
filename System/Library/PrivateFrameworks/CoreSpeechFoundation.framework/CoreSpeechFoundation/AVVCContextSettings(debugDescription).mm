@interface AVVCContextSettings(debugDescription)
- (id)debugDescription;
@end

@implementation AVVCContextSettings(debugDescription)

- (id)debugDescription
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"[Context = %ld]", objc_msgSend(self, "activationMode")];
  activationDeviceUID = [self activationDeviceUID];
  [string appendFormat:@"[DeviceId = %@]", activationDeviceUID];

  [string appendFormat:@"[Announced = %d]", objc_msgSend(self, "announceCallsEnabled")];

  return string;
}

@end