@interface BTCloudDevice
+ (id)deviceWithBluetoothAddress:(id)address;
- (BTCloudDevice)initWithBluetoothAddress:(id)address;
- (BTCloudDevice)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BTCloudDevice

+ (id)deviceWithBluetoothAddress:(id)address
{
  addressCopy = address;
  v4 = [[BTCloudDevice alloc] initWithBluetoothAddress:addressCopy];

  return v4;
}

- (BTCloudDevice)initWithBluetoothAddress:(id)address
{
  addressCopy = address;
  v8.receiver = self;
  v8.super_class = BTCloudDevice;
  v5 = [(BTCloudDevice *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BTCloudDevice *)v5 setBluetoothAddress:addressCopy];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bluetoothAddress = [(BTCloudDevice *)self bluetoothAddress];
  v6 = NSStringFromSelector(sel_bluetoothAddress);
  [coderCopy encodeObject:bluetoothAddress forKey:v6];

  manufacturer = [(BTCloudDevice *)self manufacturer];
  v8 = NSStringFromSelector(sel_manufacturer);
  [coderCopy encodeObject:manufacturer forKey:v8];

  modelNumber = [(BTCloudDevice *)self modelNumber];
  v10 = NSStringFromSelector(sel_modelNumber);
  [coderCopy encodeObject:modelNumber forKey:v10];

  nickname = [(BTCloudDevice *)self nickname];
  v12 = NSStringFromSelector(sel_nickname);
  [coderCopy encodeObject:nickname forKey:v12];

  productID = [(BTCloudDevice *)self productID];
  v14 = NSStringFromSelector(sel_productID);
  [coderCopy encodeObject:productID forKey:v14];

  vendorID = [(BTCloudDevice *)self vendorID];
  v15 = NSStringFromSelector(sel_vendorID);
  [coderCopy encodeObject:vendorID forKey:v15];
}

- (BTCloudDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = BTCloudDevice;
  v5 = [(BTCloudDevice *)&v26 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_bluetoothAddress);
  v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];

  if (v8)
  {
    [(BTCloudDevice *)v5 setBluetoothAddress:v8];
    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_manufacturer);
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    [(BTCloudDevice *)v5 setManufacturer:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_modelNumber);
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
    [(BTCloudDevice *)v5 setModelNumber:v14];

    v15 = objc_opt_class();
    v16 = NSStringFromSelector(sel_nickname);
    v17 = [coderCopy decodeObjectOfClass:v15 forKey:v16];
    [(BTCloudDevice *)v5 setNickname:v17];

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_productID);
    v20 = [coderCopy decodeObjectOfClass:v18 forKey:v19];
    [(BTCloudDevice *)v5 setProductID:v20];

    v21 = objc_opt_class();
    v22 = NSStringFromSelector(sel_vendorID);
    v23 = [coderCopy decodeObjectOfClass:v21 forKey:v22];
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
  bluetoothAddress = [(BTCloudDevice *)self bluetoothAddress];
  nickname = [(BTCloudDevice *)self nickname];
  manufacturer = [(BTCloudDevice *)self manufacturer];
  modelNumber = [(BTCloudDevice *)self modelNumber];
  productID = [(BTCloudDevice *)self productID];
  vendorID = [(BTCloudDevice *)self vendorID];
  v10 = [v3 stringWithFormat:@"BTCloudDevice: %@, %@, %@, %@, %@, %@", bluetoothAddress, nickname, manufacturer, modelNumber, productID, vendorID];

  return v10;
}

@end