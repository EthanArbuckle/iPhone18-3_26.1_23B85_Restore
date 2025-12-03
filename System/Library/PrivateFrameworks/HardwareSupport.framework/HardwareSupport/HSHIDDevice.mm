@interface HSHIDDevice
- (BOOL)_setReportWithID:(int64_t)d type:(int)type data:(id)data error:(id *)error;
- (BOOL)close:(id *)close;
- (BOOL)open:(id *)open;
- (HSHIDDevice)initWithDeviceRef:(__IOHIDDevice *)ref;
- (HSHIDDevice)initWithService:(unsigned int)service;
- (id)featureReportWithID:(int64_t)d error:(id *)error;
- (void)dealloc;
- (void)scheduleWithRunLoop:(__CFRunLoop *)loop mode:(__CFString *)mode;
@end

@implementation HSHIDDevice

- (HSHIDDevice)initWithDeviceRef:(__IOHIDDevice *)ref
{
  v7.receiver = self;
  v7.super_class = HSHIDDevice;
  v4 = [(HSHIDDevice *)&v7 init];
  v5 = v4;
  if (ref)
  {
    bzero(v4->_reportCallbackBuffer, 0x4000uLL);
    v5->_deviceRef = ref;
    *&v5->_active = 0;
    ref = v5;
  }

  return ref;
}

- (HSHIDDevice)initWithService:(unsigned int)service
{
  v4 = IOHIDDeviceCreate(*MEMORY[0x277CBECE8], service);

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

- (BOOL)open:(id *)open
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = IOHIDDeviceOpen(self->_deviceRef, 0);
  v5 = v4;
  if (open && v4)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to open the IOHIDDevice!"];
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA4A8];
    v14 = *MEMORY[0x277CCA450];
    v15[0] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v10 = [v7 errorWithDomain:v8 code:v5 userInfo:v9];

    v11 = v10;
    *open = v10;
  }

  result = v5 == 0;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)close:(id *)close
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = IOHIDDeviceClose(self->_deviceRef, 0);
  v5 = v4;
  if (close && v4)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to close the IOHIDDevice!"];
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA4A8];
    v14 = *MEMORY[0x277CCA450];
    v15[0] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v10 = [v7 errorWithDomain:v8 code:v5 userInfo:v9];

    v11 = v10;
    *close = v10;
  }

  result = v5 == 0;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_setReportWithID:(int64_t)d type:(int)type data:(id)data error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  deviceRef = self->_deviceRef;
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v14 = [dataCopy2 length];

  v15 = IOHIDDeviceSetReport(deviceRef, type, d, bytes, v14);
  v16 = v15;
  if (error && v15)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to set report 0x%x: %s", d, mach_error_string(v15)];
    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA4A8];
    v25 = *MEMORY[0x277CCA450];
    v26[0] = v17;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v21 = [v18 errorWithDomain:v19 code:v16 userInfo:v20];

    v22 = v21;
    *error = v21;
  }

  result = v16 == 0;
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)featureReportWithID:(int64_t)d error:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pReportLength = 0;
  Report = IOHIDDeviceGetReport(selfCopy->_deviceRef, kIOHIDReportTypeFeature, d, featureReportWithID_error__buffer, &pReportLength);
  v8 = Report;
  if (Report)
  {
    if (error)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get report 0x%x: %s", d, mach_error_string(Report)];
      v10 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277CCA450];
      v18[0] = v9;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v12 = [v10 errorWithDomain:*MEMORY[0x277CCA4A8] code:v8 userInfo:v11];

      v13 = v12;
      *error = v12;

      error = 0;
    }
  }

  else
  {
    error = [MEMORY[0x277CBEA90] dataWithBytes:featureReportWithID_error__buffer length:pReportLength];
  }

  objc_sync_exit(selfCopy);

  v14 = *MEMORY[0x277D85DE8];

  return error;
}

- (void)scheduleWithRunLoop:(__CFRunLoop *)loop mode:(__CFString *)mode
{
  if (!self->_cancelled)
  {
    IOHIDDeviceRegisterRemovalCallback(self->_deviceRef, __deviceRemovedCallback, self);
    IOHIDDeviceRegisterInputReportCallback(self->_deviceRef, self->_reportCallbackBuffer, 0x4000, __deviceInputReportCallback, self);
  }

  deviceRef = self->_deviceRef;

  IOHIDDeviceScheduleWithRunLoop(deviceRef, loop, mode);
}

@end