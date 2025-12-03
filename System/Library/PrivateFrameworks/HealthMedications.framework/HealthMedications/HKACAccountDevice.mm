@interface HKACAccountDevice
- (BOOL)isCompatibleWithSchedule:(id)schedule;
- (BOOL)isEqual:(id)equal;
- (HKACAccountDevice)initWithCoder:(id)coder;
- (HKACAccountDevice)initWithDevice:(id)device;
- (HKACAccountDevice)initWithPairedDevice:(id)device;
- (id)description;
- (id)deviceType;
- (id)medicationScheduleCompatibilityVersion;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKACAccountDevice

- (HKACAccountDevice)initWithDevice:(id)device
{
  deviceCopy = device;
  v15.receiver = self;
  v15.super_class = HKACAccountDevice;
  v5 = [(HKACAccountDevice *)&v15 init];
  if (v5)
  {
    model = [deviceCopy model];
    v7 = [model copy];
    [(HKACAccountDevice *)v5 setModel:v7];

    name = [deviceCopy name];
    v9 = [name copy];
    [(HKACAccountDevice *)v5 setDeviceName:v9];

    swVersion = [deviceCopy swVersion];
    v11 = [swVersion componentsSeparatedByString:@""];;
    lastObject = [v11 lastObject];
    swVersion = v5->_swVersion;
    v5->_swVersion = lastObject;
  }

  return v5;
}

- (HKACAccountDevice)initWithPairedDevice:(id)device
{
  deviceCopy = device;
  v10.receiver = self;
  v10.super_class = HKACAccountDevice;
  v5 = [(HKACAccountDevice *)&v10 init];
  if (v5)
  {
    v6 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBC0]];
    [(HKACAccountDevice *)v5 setModel:v6];

    v7 = [deviceCopy valueForProperty:*MEMORY[0x277D2BAD0]];
    [(HKACAccountDevice *)v5 setDeviceName:v7];

    v8 = [deviceCopy valueForProperty:*MEMORY[0x277D2BC20]];
    [(HKACAccountDevice *)v5 setSwVersion:v8];
  }

  return v5;
}

- (id)deviceType
{
  model = [(HKACAccountDevice *)self model];
  v4 = [model hasPrefix:@"iPhone"];

  if (v4)
  {
    return &unk_2863B6BB0;
  }

  model2 = [(HKACAccountDevice *)self model];
  v7 = [model2 hasPrefix:@"iPad"];

  if (v7)
  {
    return &unk_2863B6BC8;
  }

  model3 = [(HKACAccountDevice *)self model];
  v9 = [model3 hasPrefix:@"Watch"];

  if (v9)
  {
    return &unk_2863B6BE0;
  }

  model4 = [(HKACAccountDevice *)self model];
  v11 = [model4 hasPrefix:@"RealityDevice"];

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
  deviceName = [(HKACAccountDevice *)self deviceName];
  swVersion = [(HKACAccountDevice *)self swVersion];
  model = [(HKACAccountDevice *)self model];
  v7 = [v3 stringWithFormat:@"Name: %@, OS: %@, Model: %@", deviceName, swVersion, model];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      model = [(HKACAccountDevice *)v5 model];
      model2 = [(HKACAccountDevice *)self model];
      v8 = model2;
      if (model == model2)
      {
      }

      else
      {
        model3 = [(HKACAccountDevice *)self model];
        if (!model3)
        {
          goto LABEL_19;
        }

        v10 = model3;
        model4 = [(HKACAccountDevice *)v5 model];
        model5 = [(HKACAccountDevice *)self model];
        v13 = [model4 isEqualToString:model5];

        if (!v13)
        {
          goto LABEL_20;
        }
      }

      model = [(HKACAccountDevice *)v5 deviceName];
      deviceName = [(HKACAccountDevice *)self deviceName];
      v8 = deviceName;
      if (model == deviceName)
      {
      }

      else
      {
        deviceName2 = [(HKACAccountDevice *)self deviceName];
        if (!deviceName2)
        {
          goto LABEL_19;
        }

        v17 = deviceName2;
        deviceName3 = [(HKACAccountDevice *)v5 deviceName];
        deviceName4 = [(HKACAccountDevice *)self deviceName];
        v20 = [deviceName3 isEqualToString:deviceName4];

        if (!v20)
        {
          goto LABEL_20;
        }
      }

      model = [(HKACAccountDevice *)v5 swVersion];
      swVersion = [(HKACAccountDevice *)self swVersion];
      v8 = swVersion;
      if (model == swVersion)
      {

LABEL_24:
        v14 = 1;
        goto LABEL_21;
      }

      swVersion2 = [(HKACAccountDevice *)self swVersion];
      if (swVersion2)
      {
        v23 = swVersion2;
        swVersion3 = [(HKACAccountDevice *)v5 swVersion];
        swVersion4 = [(HKACAccountDevice *)self swVersion];
        v26 = [swVersion3 isEqualToString:swVersion4];

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

- (void)encodeWithCoder:(id)coder
{
  model = self->_model;
  coderCopy = coder;
  [coderCopy encodeObject:model forKey:@"Model"];
  [coderCopy encodeObject:self->_deviceName forKey:@"DeviceName"];
  [coderCopy encodeObject:self->_swVersion forKey:@"SWVersion"];
}

- (HKACAccountDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = HKACAccountDevice;
  v5 = [(HKACAccountDevice *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Model"];
    [(HKACAccountDevice *)v5 setModel:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceName"];
    [(HKACAccountDevice *)v5 setDeviceName:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SWVersion"];
    [(HKACAccountDevice *)v5 setSwVersion:v8];
  }

  return v5;
}

- (id)medicationScheduleCompatibilityVersion
{
  v11 = 0uLL;
  v12 = 0;
  swVersion = [(HKACAccountDevice *)self swVersion];
  HKNSOperatingSystemVersionFromString();

  deviceType = [(HKACAccountDevice *)self deviceType];
  v5 = deviceType;
  if (deviceType)
  {
    integerValue = [deviceType integerValue];
    v9 = v11;
    v10 = v12;
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{HKMedicationScheduleCompatibilityVersionForOSVersion(&v9, integerValue)}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isCompatibleWithSchedule:(id)schedule
{
  scheduleCopy = schedule;
  medicationScheduleCompatibilityVersion = [(HKACAccountDevice *)self medicationScheduleCompatibilityVersion];
  v6 = medicationScheduleCompatibilityVersion;
  if (medicationScheduleCompatibilityVersion)
  {
    integerValue = [medicationScheduleCompatibilityVersion integerValue];
    v8 = integerValue >= [scheduleCopy compatibilityRange];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end