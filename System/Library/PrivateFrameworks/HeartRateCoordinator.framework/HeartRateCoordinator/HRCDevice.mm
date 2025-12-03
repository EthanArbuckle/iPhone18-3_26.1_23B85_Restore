@interface HRCDevice
- (HRCDevice)initWithCoder:(id)coder;
- (HRCDevice)initWithName:(id)name manufacturer:(id)manufacturer model:(id)model hardwareVersion:(id)version firmwareVersion:(id)firmwareVersion softwareVersion:(id)softwareVersion localIdentifier:(id)identifier UDIDeviceIdentifier:(id)self0 bluetoothIdentifier:(id)self1;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HRCDevice

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_name);
  [coderCopy encodeObject:name forKey:v6];

  manufacturer = self->_manufacturer;
  v8 = NSStringFromSelector(sel_manufacturer);
  [coderCopy encodeObject:manufacturer forKey:v8];

  model = self->_model;
  v10 = NSStringFromSelector(sel_model);
  [coderCopy encodeObject:model forKey:v10];

  hardwareVersion = self->_hardwareVersion;
  v12 = NSStringFromSelector(sel_hardwareVersion);
  [coderCopy encodeObject:hardwareVersion forKey:v12];

  firmwareVersion = self->_firmwareVersion;
  v14 = NSStringFromSelector(sel_firmwareVersion);
  [coderCopy encodeObject:firmwareVersion forKey:v14];

  softwareVersion = self->_softwareVersion;
  v16 = NSStringFromSelector(sel_softwareVersion);
  [coderCopy encodeObject:softwareVersion forKey:v16];

  localIdentifier = self->_localIdentifier;
  v18 = NSStringFromSelector(sel_localIdentifier);
  [coderCopy encodeObject:localIdentifier forKey:v18];

  UDIDeviceIdentifier = self->_UDIDeviceIdentifier;
  v20 = NSStringFromSelector(sel_UDIDeviceIdentifier);
  [coderCopy encodeObject:UDIDeviceIdentifier forKey:v20];

  bluetoothIdentifier = self->_bluetoothIdentifier;
  v22 = NSStringFromSelector(sel_bluetoothIdentifier);
  [coderCopy encodeObject:bluetoothIdentifier forKey:v22];
}

- (HRCDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_opt_class();
  v5 = NSStringFromSelector(sel_name);
  v32 = [coderCopy decodeObjectOfClass:v4 forKey:v5];

  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_manufacturer);
  v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];

  v9 = objc_opt_class();
  v10 = NSStringFromSelector(sel_model);
  v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];

  v12 = objc_opt_class();
  v13 = NSStringFromSelector(sel_hardwareVersion);
  v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];

  v15 = objc_opt_class();
  v16 = NSStringFromSelector(sel_firmwareVersion);
  v17 = [coderCopy decodeObjectOfClass:v15 forKey:v16];

  v18 = objc_opt_class();
  v19 = NSStringFromSelector(sel_softwareVersion);
  v20 = [coderCopy decodeObjectOfClass:v18 forKey:v19];

  v21 = objc_opt_class();
  v22 = NSStringFromSelector(sel_localIdentifier);
  v23 = [coderCopy decodeObjectOfClass:v21 forKey:v22];

  v24 = objc_opt_class();
  v25 = NSStringFromSelector(sel_UDIDeviceIdentifier);
  v26 = [coderCopy decodeObjectOfClass:v24 forKey:v25];

  v27 = objc_opt_class();
  v28 = NSStringFromSelector(sel_bluetoothIdentifier);
  v29 = [coderCopy decodeObjectOfClass:v27 forKey:v28];

  v30 = [(HRCDevice *)self initWithName:v32 manufacturer:v8 model:v11 hardwareVersion:v14 firmwareVersion:v17 softwareVersion:v20 localIdentifier:v23 UDIDeviceIdentifier:v26 bluetoothIdentifier:v29];
  return v30;
}

- (HRCDevice)initWithName:(id)name manufacturer:(id)manufacturer model:(id)model hardwareVersion:(id)version firmwareVersion:(id)firmwareVersion softwareVersion:(id)softwareVersion localIdentifier:(id)identifier UDIDeviceIdentifier:(id)self0 bluetoothIdentifier:(id)self1
{
  nameCopy = name;
  manufacturerCopy = manufacturer;
  modelCopy = model;
  versionCopy = version;
  firmwareVersionCopy = firmwareVersion;
  softwareVersionCopy = softwareVersion;
  identifierCopy = identifier;
  deviceIdentifierCopy = deviceIdentifier;
  bluetoothIdentifierCopy = bluetoothIdentifier;
  v45.receiver = self;
  v45.super_class = HRCDevice;
  v23 = [(HRCDevice *)&v45 init];
  name = v23->_name;
  v23->_name = nameCopy;
  v25 = nameCopy;

  manufacturer = v23->_manufacturer;
  v23->_manufacturer = manufacturerCopy;
  v27 = manufacturerCopy;

  model = v23->_model;
  v23->_model = modelCopy;
  v29 = modelCopy;

  hardwareVersion = v23->_hardwareVersion;
  v23->_hardwareVersion = versionCopy;
  v31 = versionCopy;

  firmwareVersion = v23->_firmwareVersion;
  v23->_firmwareVersion = firmwareVersionCopy;
  v33 = firmwareVersionCopy;

  softwareVersion = v23->_softwareVersion;
  v23->_softwareVersion = softwareVersionCopy;
  v35 = softwareVersionCopy;

  localIdentifier = v23->_localIdentifier;
  v23->_localIdentifier = identifierCopy;
  v37 = identifierCopy;

  UDIDeviceIdentifier = v23->_UDIDeviceIdentifier;
  v23->_UDIDeviceIdentifier = deviceIdentifierCopy;
  v39 = deviceIdentifierCopy;

  bluetoothIdentifier = v23->_bluetoothIdentifier;
  v23->_bluetoothIdentifier = bluetoothIdentifierCopy;

  return v23;
}

@end