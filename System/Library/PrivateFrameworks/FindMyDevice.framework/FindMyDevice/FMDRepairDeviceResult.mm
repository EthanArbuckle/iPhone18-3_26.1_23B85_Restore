@interface FMDRepairDeviceResult
- (FMDRepairDeviceResult)initWithCoder:(id)coder;
- (FMDRepairDeviceResult)initWithEligibleDevices:(id)devices devicesInRepairMode:(id)mode;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDRepairDeviceResult

- (FMDRepairDeviceResult)initWithEligibleDevices:(id)devices devicesInRepairMode:(id)mode
{
  devicesCopy = devices;
  modeCopy = mode;
  v12.receiver = self;
  v12.super_class = FMDRepairDeviceResult;
  v9 = [(FMDRepairDeviceResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eligibleDevices, devices);
    objc_storeStrong(&v10->_devicesInRepairMode, mode);
  }

  return v10;
}

- (FMDRepairDeviceResult)initWithCoder:(id)coder
{
  v20[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = FMDRepairDeviceResult;
  v5 = [(FMDRepairDeviceResult *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"eligibleDevices"];
    eligibleDevices = v5->_eligibleDevices;
    v5->_eligibleDevices = v9;

    v11 = MEMORY[0x1E695DFD8];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"devicesInRepairMode"];
    devicesInRepairMode = v5->_devicesInRepairMode;
    v5->_devicesInRepairMode = v14;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  eligibleDevices = self->_eligibleDevices;
  coderCopy = coder;
  [coderCopy encodeObject:eligibleDevices forKey:@"eligibleDevices"];
  [coderCopy encodeObject:self->_devicesInRepairMode forKey:@"devicesInRepairMode"];
}

@end