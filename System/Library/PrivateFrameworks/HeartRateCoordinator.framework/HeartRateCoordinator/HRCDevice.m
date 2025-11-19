@interface HRCDevice
- (HRCDevice)initWithCoder:(id)a3;
- (HRCDevice)initWithName:(id)a3 manufacturer:(id)a4 model:(id)a5 hardwareVersion:(id)a6 firmwareVersion:(id)a7 softwareVersion:(id)a8 localIdentifier:(id)a9 UDIDeviceIdentifier:(id)a10 bluetoothIdentifier:(id)a11;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HRCDevice

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  v6 = NSStringFromSelector(sel_name);
  [v5 encodeObject:name forKey:v6];

  manufacturer = self->_manufacturer;
  v8 = NSStringFromSelector(sel_manufacturer);
  [v5 encodeObject:manufacturer forKey:v8];

  model = self->_model;
  v10 = NSStringFromSelector(sel_model);
  [v5 encodeObject:model forKey:v10];

  hardwareVersion = self->_hardwareVersion;
  v12 = NSStringFromSelector(sel_hardwareVersion);
  [v5 encodeObject:hardwareVersion forKey:v12];

  firmwareVersion = self->_firmwareVersion;
  v14 = NSStringFromSelector(sel_firmwareVersion);
  [v5 encodeObject:firmwareVersion forKey:v14];

  softwareVersion = self->_softwareVersion;
  v16 = NSStringFromSelector(sel_softwareVersion);
  [v5 encodeObject:softwareVersion forKey:v16];

  localIdentifier = self->_localIdentifier;
  v18 = NSStringFromSelector(sel_localIdentifier);
  [v5 encodeObject:localIdentifier forKey:v18];

  UDIDeviceIdentifier = self->_UDIDeviceIdentifier;
  v20 = NSStringFromSelector(sel_UDIDeviceIdentifier);
  [v5 encodeObject:UDIDeviceIdentifier forKey:v20];

  bluetoothIdentifier = self->_bluetoothIdentifier;
  v22 = NSStringFromSelector(sel_bluetoothIdentifier);
  [v5 encodeObject:bluetoothIdentifier forKey:v22];
}

- (HRCDevice)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = NSStringFromSelector(sel_name);
  v32 = [v3 decodeObjectOfClass:v4 forKey:v5];

  v6 = objc_opt_class();
  v7 = NSStringFromSelector(sel_manufacturer);
  v8 = [v3 decodeObjectOfClass:v6 forKey:v7];

  v9 = objc_opt_class();
  v10 = NSStringFromSelector(sel_model);
  v11 = [v3 decodeObjectOfClass:v9 forKey:v10];

  v12 = objc_opt_class();
  v13 = NSStringFromSelector(sel_hardwareVersion);
  v14 = [v3 decodeObjectOfClass:v12 forKey:v13];

  v15 = objc_opt_class();
  v16 = NSStringFromSelector(sel_firmwareVersion);
  v17 = [v3 decodeObjectOfClass:v15 forKey:v16];

  v18 = objc_opt_class();
  v19 = NSStringFromSelector(sel_softwareVersion);
  v20 = [v3 decodeObjectOfClass:v18 forKey:v19];

  v21 = objc_opt_class();
  v22 = NSStringFromSelector(sel_localIdentifier);
  v23 = [v3 decodeObjectOfClass:v21 forKey:v22];

  v24 = objc_opt_class();
  v25 = NSStringFromSelector(sel_UDIDeviceIdentifier);
  v26 = [v3 decodeObjectOfClass:v24 forKey:v25];

  v27 = objc_opt_class();
  v28 = NSStringFromSelector(sel_bluetoothIdentifier);
  v29 = [v3 decodeObjectOfClass:v27 forKey:v28];

  v30 = [(HRCDevice *)self initWithName:v32 manufacturer:v8 model:v11 hardwareVersion:v14 firmwareVersion:v17 softwareVersion:v20 localIdentifier:v23 UDIDeviceIdentifier:v26 bluetoothIdentifier:v29];
  return v30;
}

- (HRCDevice)initWithName:(id)a3 manufacturer:(id)a4 model:(id)a5 hardwareVersion:(id)a6 firmwareVersion:(id)a7 softwareVersion:(id)a8 localIdentifier:(id)a9 UDIDeviceIdentifier:(id)a10 bluetoothIdentifier:(id)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v43 = a10;
  v44 = a11;
  v45.receiver = self;
  v45.super_class = HRCDevice;
  v23 = [(HRCDevice *)&v45 init];
  name = v23->_name;
  v23->_name = v16;
  v25 = v16;

  manufacturer = v23->_manufacturer;
  v23->_manufacturer = v17;
  v27 = v17;

  model = v23->_model;
  v23->_model = v18;
  v29 = v18;

  hardwareVersion = v23->_hardwareVersion;
  v23->_hardwareVersion = v19;
  v31 = v19;

  firmwareVersion = v23->_firmwareVersion;
  v23->_firmwareVersion = v20;
  v33 = v20;

  softwareVersion = v23->_softwareVersion;
  v23->_softwareVersion = v21;
  v35 = v21;

  localIdentifier = v23->_localIdentifier;
  v23->_localIdentifier = v22;
  v37 = v22;

  UDIDeviceIdentifier = v23->_UDIDeviceIdentifier;
  v23->_UDIDeviceIdentifier = v43;
  v39 = v43;

  bluetoothIdentifier = v23->_bluetoothIdentifier;
  v23->_bluetoothIdentifier = v44;

  return v23;
}

@end