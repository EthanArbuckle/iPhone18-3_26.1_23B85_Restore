@interface HIDUserDevice
- (BOOL)handleReport:(id)a3 error:(id *)a4;
- (BOOL)handleReport:(id)a3 withTimestamp:(unint64_t)a4 error:(id *)a5;
- (HIDUserDevice)initWithProperties:(id)a3;
- (id)propertyForKey:(id)a3;
- (void)activate;
- (void)dealloc;
- (void)setCancelHandler:(id)a3;
- (void)setGetReportHandler:(id)a3;
- (void)setSetReportHandler:(id)a3;
@end

@implementation HIDUserDevice

- (HIDUserDevice)initWithProperties:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HIDUserDevice;
  v5 = [(HIDUserDevice *)&v13 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [v4 objectForKeyedSubscript:@"HIDUserDeviceCreateInactive"];
  if (v6)
  {
    v7 = v6;
    v8 = [v4 objectForKeyedSubscript:@"HIDUserDeviceCreateInactive"];
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

- (id)propertyForKey:(id)a3
{
  v3 = IOHIDUserDeviceCopyProperty(self->_device, a3);

  return v3;
}

- (void)setCancelHandler:(id)a3
{
  v4 = _Block_copy(a3);
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

- (void)setGetReportHandler:(id)a3
{
  v4 = a3;
  if (self->_getReportHandler)
  {
    [HIDUserDevice setGetReportHandler:];
  }

  v8 = v4;
  v5 = _Block_copy(v4);
  getReportHandler = self->_getReportHandler;
  self->_getReportHandler = v5;

  device = self->_device;
  IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();
}

- (void)setSetReportHandler:(id)a3
{
  v4 = a3;
  if (self->_setReportHandler)
  {
    [HIDUserDevice setSetReportHandler:];
  }

  v8 = v4;
  v5 = _Block_copy(v4);
  setReportHandler = self->_setReportHandler;
  self->_setReportHandler = v5;

  device = self->_device;
  IOHIDUserDeviceRegisterSetReportCallback();
}

- (BOOL)handleReport:(id)a3 error:(id *)a4
{
  device = self->_device;
  v7 = a3;
  v8 = a3;
  [v8 bytes];
  [v8 length];

  v9 = IOHIDUserDeviceHandleReport();
  v10 = v9;
  if (a4 && v9)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithIOReturn:v9];
  }

  return v10 == 0;
}

- (BOOL)handleReport:(id)a3 withTimestamp:(unint64_t)a4 error:(id *)a5
{
  device = self->_device;
  v9 = a3;
  v10 = a3;
  v11 = [v10 bytes];
  v12 = [v10 length];

  v13 = IOHIDUserDeviceHandleReportWithTimeStamp(device, a4, v11, v12);
  v14 = v13;
  if (a5 && v13)
  {
    *a5 = [MEMORY[0x277CCA9B8] errorWithIOReturn:v13];
  }

  return v14 == 0;
}

@end