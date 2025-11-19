@interface HMIThermalMonitorService
- (HMIThermalMonitorService)initWithService:(__IOHIDServiceClient *)a3;
- (double)readValue;
- (void)dealloc;
@end

@implementation HMIThermalMonitorService

- (HMIThermalMonitorService)initWithService:(__IOHIDServiceClient *)a3
{
  v7.receiver = self;
  v7.super_class = HMIThermalMonitorService;
  v4 = [(HMIThermalMonitorService *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_service = a3;
    CFRetain(a3);
  }

  return v5;
}

- (void)dealloc
{
  CFRelease(self->_service);
  v3.receiver = self;
  v3.super_class = HMIThermalMonitorService;
  [(HMIThermalMonitorService *)&v3 dealloc];
}

- (double)readValue
{
  v2 = IOHIDServiceClientCopyEvent();
  if (!v2)
  {
    return 0.0;
  }

  v3 = v2;
  IOHIDEventGetFloatValue();
  v5 = v4;
  CFRelease(v3);
  return v5;
}

@end