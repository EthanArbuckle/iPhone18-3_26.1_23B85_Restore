@interface BTCloudDeviceSupportInformation
+ (id)deviceSupportInformationWithBluetoothAddress:(id)a3;
- (BTCloudDeviceSupportInformation)initWithBluetoothAddress:(id)a3;
- (BTCloudDeviceSupportInformation)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BTCloudDeviceSupportInformation

+ (id)deviceSupportInformationWithBluetoothAddress:(id)a3
{
  v3 = a3;
  v4 = [[BTCloudDeviceSupportInformation alloc] initWithBluetoothAddress:v3];

  return v4;
}

- (BTCloudDeviceSupportInformation)initWithBluetoothAddress:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BTCloudDeviceSupportInformation;
  v5 = [(BTCloudDeviceSupportInformation *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BTCloudDeviceSupportInformation *)v5 setBluetoothAddress:v4];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BTCloudDeviceSupportInformation *)self bluetoothAddress];
  v6 = NSStringFromSelector(sel_bluetoothAddress);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(BTCloudDeviceSupportInformation *)self ancAssetVersion];
  v8 = NSStringFromSelector(sel_ancAssetVersion);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(BTCloudDeviceSupportInformation *)self budsFirmwareVersion];
  v10 = NSStringFromSelector(sel_budsFirmwareVersion);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(BTCloudDeviceSupportInformation *)self caseName];
  v12 = NSStringFromSelector(sel_caseName);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(BTCloudDeviceSupportInformation *)self caseFirmwareVersion];
  v14 = NSStringFromSelector(sel_caseFirmwareVersion);
  [v4 encodeObject:v13 forKey:v14];

  v15 = [(BTCloudDeviceSupportInformation *)self caseSerialNumber];
  v16 = NSStringFromSelector(sel_caseSerialNumber);
  [v4 encodeObject:v15 forKey:v16];

  v17 = [(BTCloudDeviceSupportInformation *)self hardwareVersion];
  v18 = NSStringFromSelector(sel_hardwareVersion);
  [v4 encodeObject:v17 forKey:v18];

  v19 = [(BTCloudDeviceSupportInformation *)self leftBudSerialNumber];
  v20 = NSStringFromSelector(sel_leftBudSerialNumber);
  [v4 encodeObject:v19 forKey:v20];

  v22 = [(BTCloudDeviceSupportInformation *)self rightBudSerialNumber];
  v21 = NSStringFromSelector(sel_rightBudSerialNumber);
  [v4 encodeObject:v22 forKey:v21];
}

- (BTCloudDeviceSupportInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = BTCloudDeviceSupportInformation;
  v5 = [(BTCloudDeviceSupportInformation *)&v35 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_bluetoothAddress);
  v8 = [v4 decodeObjectOfClass:v6 forKey:v7];

  if (v8)
  {
    [(BTCloudDeviceSupportInformation *)v5 setBluetoothAddress:v8];
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_ancAssetVersion);
    v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
    [(BTCloudDeviceSupportInformation *)v5 setAncAssetVersion:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_budsFirmwareVersion);
    v14 = [v4 decodeObjectOfClass:v12 forKey:v13];
    [(BTCloudDeviceSupportInformation *)v5 setBudsFirmwareVersion:v14];

    v15 = objc_opt_class();
    v16 = NSStringFromSelector(sel_caseName);
    v17 = [v4 decodeObjectOfClass:v15 forKey:v16];
    [(BTCloudDeviceSupportInformation *)v5 setCaseName:v17];

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_caseFirmwareVersion);
    v20 = [v4 decodeObjectOfClass:v18 forKey:v19];
    [(BTCloudDeviceSupportInformation *)v5 setCaseFirmwareVersion:v20];

    v21 = objc_opt_class();
    v22 = NSStringFromSelector(sel_caseSerialNumber);
    v23 = [v4 decodeObjectOfClass:v21 forKey:v22];
    [(BTCloudDeviceSupportInformation *)v5 setCaseSerialNumber:v23];

    v24 = objc_opt_class();
    v25 = NSStringFromSelector(sel_hardwareVersion);
    v26 = [v4 decodeObjectOfClass:v24 forKey:v25];
    [(BTCloudDeviceSupportInformation *)v5 setHardwareVersion:v26];

    v27 = objc_opt_class();
    v28 = NSStringFromSelector(sel_leftBudSerialNumber);
    v29 = [v4 decodeObjectOfClass:v27 forKey:v28];
    [(BTCloudDeviceSupportInformation *)v5 setLeftBudSerialNumber:v29];

    v30 = objc_opt_class();
    v31 = NSStringFromSelector(sel_rightBudSerialNumber);
    v32 = [v4 decodeObjectOfClass:v30 forKey:v31];
    [(BTCloudDeviceSupportInformation *)v5 setRightBudSerialNumber:v32];

LABEL_4:
    v33 = v5;
    goto LABEL_9;
  }

  if (gLogCategory_BTCloudDevice <= 90 && (gLogCategory_BTCloudDevice != -1 || _LogCategory_Initialize()))
  {
    [BTCloudDeviceSupportInformation initWithCoder:];
  }

  v33 = 0;
LABEL_9:

  return v33;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(BTCloudDeviceSupportInformation *)self bluetoothAddress];
  v5 = [(BTCloudDeviceSupportInformation *)self budsFirmwareVersion];
  v6 = [(BTCloudDeviceSupportInformation *)self caseFirmwareVersion];
  v7 = [(BTCloudDeviceSupportInformation *)self caseSerialNumber];
  v8 = [(BTCloudDeviceSupportInformation *)self hardwareVersion];
  v9 = [(BTCloudDeviceSupportInformation *)self leftBudSerialNumber];
  v10 = [(BTCloudDeviceSupportInformation *)self rightBudSerialNumber];
  v11 = [(BTCloudDeviceSupportInformation *)self caseName];
  v12 = [(BTCloudDeviceSupportInformation *)self ancAssetVersion];
  v13 = [v3 stringWithFormat:@"BTCloudDeviceInformation: %@, %@, %@, %@, %@, %@, %@, %@, %@", v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

@end