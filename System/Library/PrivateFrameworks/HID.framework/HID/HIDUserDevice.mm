@interface HIDUserDevice
- (BOOL)handleReport:(id)report error:(id *)error;
- (BOOL)handleReport:(id)report withTimestamp:(unint64_t)timestamp error:(id *)error;
- (HIDUserDevice)initWithProperties:(id)properties;
- (id)propertyForKey:(id)key;
- (void)activate;
- (void)dealloc;
- (void)setCancelHandler:(id)handler;
- (void)setGetReportHandler:(id)handler;
- (void)setSetReportHandler:(id)handler;
@end

@implementation HIDUserDevice

- (HIDUserDevice)initWithProperties:(id)properties
{
  propertiesCopy = properties;
  v13.receiver = self;
  v13.super_class = HIDUserDevice;
  v5 = [(HIDUserDevice *)&v13 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [propertiesCopy objectForKeyedSubscript:@"HIDUserDeviceCreateInactive"];
  if (v6)
  {
    v7 = v6;
    v8 = [propertiesCopy objectForKeyedSubscript:@"HIDUserDeviceCreateInactive"];
    [v8 isEqual:MEMORY[0x277CBEC38]];
  }

  v9 = *MEMORY[0x277CBECE8];
  v10 = IOHIDUserDeviceCreateWithOptions();
  v5->_device = v10;
  if (v10)
  {
    v5->_service = IOHIDUserDeviceCopyService();
    v11 = v5;
  }

  else
  {
LABEL_6:
    v11 = 0;
  }

  return v11;
}

- (void)dealloc
{
  service = self->_service;
  if (service)
  {
    IOObjectRelease(service);
  }

  device = self->_device;
  if (device)
  {
    CFRelease(device);
  }

  v5.receiver = self;
  v5.super_class = HIDUserDevice;
  [(HIDUserDevice *)&v5 dealloc];
}

- (id)propertyForKey:(id)key
{
  v3 = IOHIDUserDeviceCopyProperty(self->_device, key);

  return v3;
}

- (void)setCancelHandler:(id)handler
{
  v4 = _Block_copy(handler);
  cancelHandler = self->_cancelHandler;
  self->_cancelHandler = v4;

  MEMORY[0x2821F96F8]();
}

- (void)activate
{
  device = self->_device;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __25__HIDUserDevice_activate__block_invoke;
  handler[3] = &unk_2787A6658;
  handler[4] = self;
  IOHIDUserDeviceSetCancelHandler(device, handler);
  IOHIDUserDeviceActivate(self->_device);
}

void __25__HIDUserDevice_activate__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

- (void)setGetReportHandler:(id)handler
{
  handlerCopy = handler;
  if (self->_getReportHandler)
  {
    [HIDUserDevice setGetReportHandler:];
  }

  v8 = handlerCopy;
  v5 = _Block_copy(handlerCopy);
  getReportHandler = self->_getReportHandler;
  self->_getReportHandler = v5;

  device = self->_device;
  IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();
}

- (void)setSetReportHandler:(id)handler
{
  handlerCopy = handler;
  if (self->_setReportHandler)
  {
    [HIDUserDevice setSetReportHandler:];
  }

  v8 = handlerCopy;
  v5 = _Block_copy(handlerCopy);
  setReportHandler = self->_setReportHandler;
  self->_setReportHandler = v5;

  device = self->_device;
  IOHIDUserDeviceRegisterSetReportCallback();
}

- (BOOL)handleReport:(id)report error:(id *)error
{
  device = self->_device;
  reportCopy = report;
  reportCopy2 = report;
  [reportCopy2 bytes];
  [reportCopy2 length];

  v9 = IOHIDUserDeviceHandleReport();
  v10 = v9;
  if (error && v9)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithIOReturn:v9];
  }

  return v10 == 0;
}

- (BOOL)handleReport:(id)report withTimestamp:(unint64_t)timestamp error:(id *)error
{
  device = self->_device;
  reportCopy = report;
  reportCopy2 = report;
  bytes = [reportCopy2 bytes];
  v12 = [reportCopy2 length];

  v13 = IOHIDUserDeviceHandleReportWithTimeStamp(device, timestamp, bytes, v12);
  v14 = v13;
  if (error && v13)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithIOReturn:v13];
  }

  return v14 == 0;
}

@end