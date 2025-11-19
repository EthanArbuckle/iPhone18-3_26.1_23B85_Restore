@interface BTCloudDevice
+ (id)deviceWithBluetoothAddress:(id)a3;
- (BTCloudDevice)initWithBluetoothAddress:(id)a3;
- (BTCloudDevice)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BTCloudDevice

+ (id)deviceWithBluetoothAddress:(id)a3
{
  v3 = a3;
  v4 = [[BTCloudDevice alloc] initWithBluetoothAddress:v3];

  return v4;
}

- (BTCloudDevice)initWithBluetoothAddress:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BTCloudDevice;
  v5 = [(BTCloudDevice *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BTCloudDevice *)v5 setBluetoothAddress:v4];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BTCloudDevice *)self bluetoothAddress];
  v6 = NSStringFromSelector(sel_bluetoothAddress);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(BTCloudDevice *)self manufacturer];
  v8 = NSStringFromSelector(sel_manufacturer);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(BTCloudDevice *)self modelNumber];
  v10 = NSStringFromSelector(sel_modelNumber);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(BTCloudDevice *)self nickname];
  v12 = NSStringFromSelector(sel_nickname);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(BTCloudDevice *)self productID];
  v14 = NSStringFromSelector(sel_productID);
  [v4 encodeObject:v13 forKey:v14];

  v16 = [(BTCloudDevice *)self vendorID];
  v15 = NSStringFromSelector(sel_vendorID);
  [v4 encodeObject:v16 forKey:v15];
}

- (BTCloudDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = BTCloudDevice;
  v5 = [(BTCloudDevice *)&v26 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_bluetoothAddress);
  v8 = [v4 decodeObjectOfClass:v6 forKey:v7];

  if (v8)
  {
    [(BTCloudDevice *)v5 setBluetoothAddress:v8];
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_manufacturer);
    v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
    [(BTCloudDevice *)v5 setManufacturer:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_modelNumber);
    v14 = [v4 decodeObjectOfClass:v12 forKey:v13];
    [(BTCloudDevice *)v5 setModelNumber:v14];

    v15 = objc_opt_class();
    v16 = NSStringFromSelector(sel_nickname);
    v17 = [v4 decodeObjectOfClass:v15 forKey:v16];
    [(BTCloudDevice *)v5 setNickname:v17];

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_productID);
    v20 = [v4 decodeObjectOfClass:v18 forKey:v19];
    [(BTCloudDevice *)v5 setProductID:v20];

    v21 = objc_opt_class();
    v22 = NSStringFromSelector(sel_vendorID);
    v23 = [v4 decodeObjectOfClass:v21 forKey:v22];
    [(BTCloudDevice *)v5 setVendorID:v23];

LABEL_4:
    v24 = v5;
    goto LABEL_9;
  }

  if (gLogCategory_BTCloudDevice <= 90 && (gLogCategory_BTCloudDevice != -1 || _LogCategory_Initialize()))
  {
    [BTCloudDevice initWithCoder:];
  }

  v24 = 0;
LABEL_9:

  return v24;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(BTCloudDevice *)self bluetoothAddress];
  v5 = [(BTCloudDevice *)self nickname];
  v6 = [(BTCloudDevice *)self manufacturer];
  v7 = [(BTCloudDevice *)self modelNumber];
  v8 = [(BTCloudDevice *)self productID];
  v9 = [(BTCloudDevice *)self vendorID];
  v10 = [v3 stringWithFormat:@"BTCloudDevice: %@, %@, %@, %@, %@, %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

@end