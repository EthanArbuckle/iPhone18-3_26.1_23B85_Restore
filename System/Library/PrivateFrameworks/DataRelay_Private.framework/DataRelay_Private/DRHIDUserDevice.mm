@interface DRHIDUserDevice
- (uint64_t)dealloc;
- (void)activate;
- (void)dealloc;
- (void)handleReport:(id)report;
@end

@implementation DRHIDUserDevice

- (void)activate
{
  if (gLogCategory_DRHIDUserDevice <= 50 && (gLogCategory_DRHIDUserDevice != -1 || _LogCategory_Initialize()))
  {
    [DRHIDUserDevice activate];
  }

  v3 = [objc_alloc(MEMORY[0x277D0EF00]) initWithProperties:self->_properties];
  userDevice = self->_userDevice;
  self->_userDevice = v3;

  objc_initWeak(&location, self);
  v5 = self->_userDevice;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __27__DRHIDUserDevice_activate__block_invoke;
  v12[3] = &unk_278F4EB48;
  objc_copyWeak(&v13, &location);
  [(HIDUserDevice *)v5 setSetReportHandler:v12];
  v6 = self->_userDevice;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __27__DRHIDUserDevice_activate__block_invoke_2;
  v10[3] = &unk_278F4E780;
  objc_copyWeak(&v11, &location);
  [(HIDUserDevice *)v6 setCancelHandler:v10];
  v7 = self->_userDevice;
  v8 = MEMORY[0x277D85CD0];
  v9 = MEMORY[0x277D85CD0];
  [(HIDUserDevice *)v7 setDispatchQueue:v8];

  [(HIDUserDevice *)self->_userDevice activate];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

uint64_t __27__DRHIDUserDevice_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 3758097084;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained setReportHandler];

    if (v12)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:a4 length:a5];
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
      [v13 setObject:v15 forKey:@"type"];

      v16 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      [v13 setObject:v16 forKey:@"reportID"];

      [v13 setObject:v14 forKey:@"report"];
      v17 = [v11 setReportHandler];
      (v17)[2](v17, [v11 dataType], objc_msgSend(v11, "serviceID"), v13);

      v9 = 0;
    }
  }

  return v9;
}

void __27__DRHIDUserDevice_activate__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setUserDevice:0];
    WeakRetained = v2;
  }
}

- (void)handleReport:(id)report
{
  userDevice = self->_userDevice;
  reportCopy = report;
  [(HIDUserDevice *)userDevice handleReport:reportCopy withTimestamp:mach_absolute_time() error:0];
}

- (void)dealloc
{
  if (gLogCategory_DRHIDUserDevice <= 50 && (gLogCategory_DRHIDUserDevice != -1 || _LogCategory_Initialize()))
  {
    [(DRHIDUserDevice *)self dealloc];
  }

  userDevice = self->_userDevice;
  if (userDevice)
  {
    [(HIDUserDevice *)userDevice cancel];
  }

  v4.receiver = self;
  v4.super_class = DRHIDUserDevice;
  [(DRHIDUserDevice *)&v4 dealloc];
}

- (uint64_t)dealloc
{
  [self dataType];
  [self serviceID];
  return LogPrintF();
}

@end