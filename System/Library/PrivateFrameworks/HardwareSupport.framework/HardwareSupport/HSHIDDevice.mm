@interface HSHIDDevice
- (BOOL)_setReportWithID:(int64_t)a3 type:(int)a4 data:(id)a5 error:(id *)a6;
- (BOOL)close:(id *)a3;
- (BOOL)open:(id *)a3;
- (HSHIDDevice)initWithDeviceRef:(__IOHIDDevice *)a3;
- (HSHIDDevice)initWithService:(unsigned int)a3;
- (id)featureReportWithID:(int64_t)a3 error:(id *)a4;
- (void)dealloc;
- (void)scheduleWithRunLoop:(__CFRunLoop *)a3 mode:(__CFString *)a4;
@end

@implementation HSHIDDevice

- (HSHIDDevice)initWithDeviceRef:(__IOHIDDevice *)a3
{
  v7.receiver = self;
  v7.super_class = HSHIDDevice;
  v4 = [(HSHIDDevice *)&v7 init];
  v5 = v4;
  if (a3)
  {
    bzero(v4->_reportCallbackBuffer, 0x4000uLL);
    v5->_deviceRef = a3;
    *&v5->_active = 0;
    a3 = v5;
  }

  return a3;
}

- (HSHIDDevice)initWithService:(unsigned int)a3
{
  v4 = IOHIDDeviceCreate(*MEMORY[0x277CBECE8], a3);

  return [(HSHIDDevice *)self initWithDeviceRef:v4];
}

- (void)dealloc
{
  deviceRef = self->_deviceRef;
  if (deviceRef)
  {
    CFRelease(deviceRef);
  }

  v4.receiver = self;
  v4.super_class = HSHIDDevice;
  [(HSHIDDevice *)&v4 dealloc];
}

- (BOOL)open:(id *)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = IOHIDDeviceOpen(self->_deviceRef, 0);
  v5 = v4;
  if (a3 && v4)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to open the IOHIDDevice!"];
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA4A8];
    v14 = *MEMORY[0x277CCA450];
    v15[0] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v10 = [v7 errorWithDomain:v8 code:v5 userInfo:v9];

    v11 = v10;
    *a3 = v10;
  }

  result = v5 == 0;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)close:(id *)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = IOHIDDeviceClose(self->_deviceRef, 0);
  v5 = v4;
  if (a3 && v4)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to close the IOHIDDevice!"];
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA4A8];
    v14 = *MEMORY[0x277CCA450];
    v15[0] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v10 = [v7 errorWithDomain:v8 code:v5 userInfo:v9];

    v11 = v10;
    *a3 = v10;
  }

  result = v5 == 0;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_setReportWithID:(int64_t)a3 type:(int)a4 data:(id)a5 error:(id *)a6
{
  v26[1] = *MEMORY[0x277D85DE8];
  deviceRef = self->_deviceRef;
  v11 = a5;
  v12 = a5;
  v13 = [v12 bytes];
  v14 = [v12 length];

  v15 = IOHIDDeviceSetReport(deviceRef, a4, a3, v13, v14);
  v16 = v15;
  if (a6 && v15)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to set report 0x%x: %s", a3, mach_error_string(v15)];
    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA4A8];
    v25 = *MEMORY[0x277CCA450];
    v26[0] = v17;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v21 = [v18 errorWithDomain:v19 code:v16 userInfo:v20];

    v22 = v21;
    *a6 = v21;
  }

  result = v16 == 0;
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)featureReportWithID:(int64_t)a3 error:(id *)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = self;
  objc_sync_enter(v6);
  pReportLength = 0;
  Report = IOHIDDeviceGetReport(v6->_deviceRef, kIOHIDReportTypeFeature, a3, featureReportWithID_error__buffer, &pReportLength);
  v8 = Report;
  if (Report)
  {
    if (a4)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get report 0x%x: %s", a3, mach_error_string(Report)];
      v10 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277CCA450];
      v18[0] = v9;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v12 = [v10 errorWithDomain:*MEMORY[0x277CCA4A8] code:v8 userInfo:v11];

      v13 = v12;
      *a4 = v12;

      a4 = 0;
    }
  }

  else
  {
    a4 = [MEMORY[0x277CBEA90] dataWithBytes:featureReportWithID_error__buffer length:pReportLength];
  }

  objc_sync_exit(v6);

  v14 = *MEMORY[0x277D85DE8];

  return a4;
}

- (void)scheduleWithRunLoop:(__CFRunLoop *)a3 mode:(__CFString *)a4
{
  if (!self->_cancelled)
  {
    IOHIDDeviceRegisterRemovalCallback(self->_deviceRef, __deviceRemovedCallback, self);
    IOHIDDeviceRegisterInputReportCallback(self->_deviceRef, self->_reportCallbackBuffer, 0x4000, __deviceInputReportCallback, self);
  }

  deviceRef = self->_deviceRef;

  IOHIDDeviceScheduleWithRunLoop(deviceRef, a3, a4);
}

@end