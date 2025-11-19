@interface CAFSessionAnalytics
- (CAFSessionAnalytics)initWithCoder:(id)a3;
- (CAFSessionAnalytics)initWithSession:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CAFSessionAnalytics

- (CAFSessionAnalytics)initWithSession:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = CAFSessionAnalytics;
  v5 = [(CAFSessionAnalytics *)&v24 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CF8A80] sharedInstance];
    v7 = [v4 MFiCertificateSerialNumber];
    if (v7)
    {
      v8 = [v6 vehicleAccessoryForCertificateSerial:v7];
      v9 = v8;
      if (v8)
      {
        v10 = [v8 analyticsDescription];
        v11 = [v10 objectForKeyedSubscript:@"name"];
        name = v5->_name;
        v5->_name = v11;

        v13 = [v10 objectForKeyedSubscript:@"ppid"];
        ppid = v5->_ppid;
        v5->_ppid = v13;

        v15 = [v10 objectForKeyedSubscript:@"firmwareVersion"];
        firmwareVersion = v5->_firmwareVersion;
        v5->_firmwareVersion = v15;

        v17 = [v10 objectForKeyedSubscript:@"hardwareVersion"];
        hardwareVersion = v5->_hardwareVersion;
        v5->_hardwareVersion = v17;

        v19 = [v10 objectForKeyedSubscript:@"manufacturer"];
        manufacturer = v5->_manufacturer;
        v5->_manufacturer = v19;

        v21 = [v10 objectForKeyedSubscript:@"modelName"];
        model = v5->_model;
        v5->_model = v21;

        v5->_supportsBluetoothLE = [v9 supportsBluetoothLE];
      }
    }
  }

  return v5;
}

- (CAFSessionAnalytics)initWithCoder:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = CAFSessionAnalytics;
  v5 = [(CAFSessionAnalytics *)&v32 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_name);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    name = v5->_name;
    v5->_name = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_ppid);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    ppid = v5->_ppid;
    v5->_ppid = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_firmwareVersion);
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
    firmwareVersion = v5->_firmwareVersion;
    v5->_firmwareVersion = v16;

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_hardwareVersion);
    v20 = [v4 decodeObjectOfClass:v18 forKey:v19];
    hardwareVersion = v5->_hardwareVersion;
    v5->_hardwareVersion = v20;

    v22 = objc_opt_class();
    v23 = NSStringFromSelector(sel_manufacturer);
    v24 = [v4 decodeObjectOfClass:v22 forKey:v23];
    manufacturer = v5->_manufacturer;
    v5->_manufacturer = v24;

    v26 = objc_opt_class();
    v27 = NSStringFromSelector(sel_model);
    v28 = [v4 decodeObjectOfClass:v26 forKey:v27];
    model = v5->_model;
    v5->_model = v28;

    v30 = NSStringFromSelector(sel_supportsBluetoothLE);
    v5->_supportsBluetoothLE = [v4 decodeBoolForKey:v30];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  v6 = NSStringFromSelector(sel_name);
  [v5 encodeObject:name forKey:v6];

  ppid = self->_ppid;
  v8 = NSStringFromSelector(sel_ppid);
  [v5 encodeObject:ppid forKey:v8];

  firmwareVersion = self->_firmwareVersion;
  v10 = NSStringFromSelector(sel_firmwareVersion);
  [v5 encodeObject:firmwareVersion forKey:v10];

  hardwareVersion = self->_hardwareVersion;
  v12 = NSStringFromSelector(sel_hardwareVersion);
  [v5 encodeObject:hardwareVersion forKey:v12];

  manufacturer = self->_manufacturer;
  v14 = NSStringFromSelector(sel_manufacturer);
  [v5 encodeObject:manufacturer forKey:v14];

  model = self->_model;
  v16 = NSStringFromSelector(sel_model);
  [v5 encodeObject:model forKey:v16];

  supportsBluetoothLE = self->_supportsBluetoothLE;
  v18 = NSStringFromSelector(sel_supportsBluetoothLE);
  [v5 encodeBool:supportsBluetoothLE forKey:v18];
}

@end