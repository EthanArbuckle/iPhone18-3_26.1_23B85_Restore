@interface HKACAccountDevice
- (BOOL)isCompatibleWithSchedule:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HKACAccountDevice)initWithCoder:(id)a3;
- (HKACAccountDevice)initWithDevice:(id)a3;
- (HKACAccountDevice)initWithPairedDevice:(id)a3;
- (id)description;
- (id)deviceType;
- (id)medicationScheduleCompatibilityVersion;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKACAccountDevice

- (HKACAccountDevice)initWithDevice:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HKACAccountDevice;
  v5 = [(HKACAccountDevice *)&v15 init];
  if (v5)
  {
    v6 = [v4 model];
    v7 = [v6 copy];
    [(HKACAccountDevice *)v5 setModel:v7];

    v8 = [v4 name];
    v9 = [v8 copy];
    [(HKACAccountDevice *)v5 setDeviceName:v9];

    v10 = [v4 swVersion];
    v11 = [v10 componentsSeparatedByString:@""];;
    v12 = [v11 lastObject];
    swVersion = v5->_swVersion;
    v5->_swVersion = v12;
  }

  return v5;
}

- (HKACAccountDevice)initWithPairedDevice:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HKACAccountDevice;
  v5 = [(HKACAccountDevice *)&v10 init];
  if (v5)
  {
    v6 = [v4 valueForProperty:*MEMORY[0x277D2BBC0]];
    [(HKACAccountDevice *)v5 setModel:v6];

    v7 = [v4 valueForProperty:*MEMORY[0x277D2BAD0]];
    [(HKACAccountDevice *)v5 setDeviceName:v7];

    v8 = [v4 valueForProperty:*MEMORY[0x277D2BC20]];
    [(HKACAccountDevice *)v5 setSwVersion:v8];
  }

  return v5;
}

- (id)deviceType
{
  v3 = [(HKACAccountDevice *)self model];
  v4 = [v3 hasPrefix:@"iPhone"];

  if (v4)
  {
    return &unk_2863B6BB0;
  }

  v6 = [(HKACAccountDevice *)self model];
  v7 = [v6 hasPrefix:@"iPad"];

  if (v7)
  {
    return &unk_2863B6BC8;
  }

  v8 = [(HKACAccountDevice *)self model];
  v9 = [v8 hasPrefix:@"Watch"];

  if (v9)
  {
    return &unk_2863B6BE0;
  }

  v10 = [(HKACAccountDevice *)self model];
  v11 = [v10 hasPrefix:@"RealityDevice"];

  if (v11)
  {
    return &unk_2863B6BF8;
  }

  else
  {
    return 0;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HKACAccountDevice *)self deviceName];
  v5 = [(HKACAccountDevice *)self swVersion];
  v6 = [(HKACAccountDevice *)self model];
  v7 = [v3 stringWithFormat:@"Name: %@, OS: %@, Model: %@", v4, v5, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HKACAccountDevice *)v5 model];
      v7 = [(HKACAccountDevice *)self model];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(HKACAccountDevice *)self model];
        if (!v9)
        {
          goto LABEL_19;
        }

        v10 = v9;
        v11 = [(HKACAccountDevice *)v5 model];
        v12 = [(HKACAccountDevice *)self model];
        v13 = [v11 isEqualToString:v12];

        if (!v13)
        {
          goto LABEL_20;
        }
      }

      v6 = [(HKACAccountDevice *)v5 deviceName];
      v15 = [(HKACAccountDevice *)self deviceName];
      v8 = v15;
      if (v6 == v15)
      {
      }

      else
      {
        v16 = [(HKACAccountDevice *)self deviceName];
        if (!v16)
        {
          goto LABEL_19;
        }

        v17 = v16;
        v18 = [(HKACAccountDevice *)v5 deviceName];
        v19 = [(HKACAccountDevice *)self deviceName];
        v20 = [v18 isEqualToString:v19];

        if (!v20)
        {
          goto LABEL_20;
        }
      }

      v6 = [(HKACAccountDevice *)v5 swVersion];
      v21 = [(HKACAccountDevice *)self swVersion];
      v8 = v21;
      if (v6 == v21)
      {

LABEL_24:
        v14 = 1;
        goto LABEL_21;
      }

      v22 = [(HKACAccountDevice *)self swVersion];
      if (v22)
      {
        v23 = v22;
        v24 = [(HKACAccountDevice *)v5 swVersion];
        v25 = [(HKACAccountDevice *)self swVersion];
        v26 = [v24 isEqualToString:v25];

        if (v26)
        {
          goto LABEL_24;
        }

LABEL_20:
        v14 = 0;
LABEL_21:

        goto LABEL_22;
      }

LABEL_19:

      goto LABEL_20;
    }

    v14 = 0;
  }

LABEL_22:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_model hash];
  v4 = [(NSString *)self->_deviceName hash]^ v3;
  return v4 ^ [(NSString *)self->_swVersion hash];
}

- (void)encodeWithCoder:(id)a3
{
  model = self->_model;
  v5 = a3;
  [v5 encodeObject:model forKey:@"Model"];
  [v5 encodeObject:self->_deviceName forKey:@"DeviceName"];
  [v5 encodeObject:self->_swVersion forKey:@"SWVersion"];
}

- (HKACAccountDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HKACAccountDevice;
  v5 = [(HKACAccountDevice *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Model"];
    [(HKACAccountDevice *)v5 setModel:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceName"];
    [(HKACAccountDevice *)v5 setDeviceName:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SWVersion"];
    [(HKACAccountDevice *)v5 setSwVersion:v8];
  }

  return v5;
}

- (id)medicationScheduleCompatibilityVersion
{
  v11 = 0uLL;
  v12 = 0;
  v3 = [(HKACAccountDevice *)self swVersion];
  HKNSOperatingSystemVersionFromString();

  v4 = [(HKACAccountDevice *)self deviceType];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
    v9 = v11;
    v10 = v12;
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{HKMedicationScheduleCompatibilityVersionForOSVersion(&v9, v6)}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isCompatibleWithSchedule:(id)a3
{
  v4 = a3;
  v5 = [(HKACAccountDevice *)self medicationScheduleCompatibilityVersion];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 integerValue];
    v8 = v7 >= [v4 compatibilityRange];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end