@interface HKMedicationsDeviceInfo
+ (uint64_t)scheduleCompatibilityVersionForDevice:(uint64_t)device;
- (BOOL)isCompatibleWithSchedule:(id)schedule;
- (BOOL)isEqual:(id)equal;
- (HKMedicationsDeviceInfo)initWithCoder:(id)coder;
- (HKMedicationsDeviceInfo)initWithHardwareIdentifier:(id)identifier name:(id)name model:(id)model operatingSystemVersion:(id *)version scheduleCompatibilityVersion:(int64_t)compatibilityVersion localDevice:(BOOL)device;
- (HKMedicationsDeviceInfo)initWithLocalPairedDevice:(id)device;
- (HKMedicationsDeviceInfo)initWithPairedDevice:(id)device;
- (id)description;
- (id)filterOutCompatibleSchedules:(id)schedules;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMedicationsDeviceInfo

- (HKMedicationsDeviceInfo)initWithHardwareIdentifier:(id)identifier name:(id)name model:(id)model operatingSystemVersion:(id *)version scheduleCompatibilityVersion:(int64_t)compatibilityVersion localDevice:(BOOL)device
{
  identifierCopy = identifier;
  nameCopy = name;
  modelCopy = model;
  v22.receiver = self;
  v22.super_class = HKMedicationsDeviceInfo;
  v18 = [(HKMedicationsDeviceInfo *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_hardwareIdentifier, identifier);
    objc_storeStrong(&v19->_name, name);
    objc_storeStrong(&v19->_model, model);
    v20 = *&version->var0;
    v19->_operatingSystemVersion.patchVersion = version->var2;
    *&v19->_operatingSystemVersion.majorVersion = v20;
    v19->_scheduleCompatibilityVersion = compatibilityVersion;
    v19->_localDevice = device;
  }

  return v19;
}

- (HKMedicationsDeviceInfo)initWithPairedDevice:(id)device
{
  v4 = *MEMORY[0x277D2BAD0];
  deviceCopy = device;
  v6 = [deviceCopy valueForProperty:v4];
  v7 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBC0]];
  v8 = [deviceCopy valueForProperty:*MEMORY[0x277D2BC20]];
  HKNSOperatingSystemVersionFromString();
  v9 = [HKMedicationsDeviceInfo scheduleCompatibilityVersionForDevice:deviceCopy];

  v10 = [(HKMedicationsDeviceInfo *)self initWithHardwareIdentifier:0 name:v6 model:v7 operatingSystemVersion:v12 scheduleCompatibilityVersion:v9 localDevice:0];
  return v10;
}

+ (uint64_t)scheduleCompatibilityVersionForDevice:(uint64_t)device
{
  v2 = a2;
  objc_opt_self();
  v10 = 0uLL;
  v11 = 0;
  v3 = [v2 valueForProperty:*MEMORY[0x277D2BC20]];
  HKNSOperatingSystemVersionFromString();

  v4 = [v2 valueForProperty:*MEMORY[0x277D2BB90]];

  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    v8 = v10;
    v9 = v11;
    integerValue = HKMedicationScheduleCompatibilityVersionForOSVersion(&v8, 1);
  }

  v6 = integerValue;

  return v6;
}

- (HKMedicationsDeviceInfo)initWithLocalPairedDevice:(id)device
{
  v4 = *MEMORY[0x277D2BAD0];
  deviceCopy = device;
  v6 = [deviceCopy valueForProperty:v4];
  v7 = [deviceCopy valueForProperty:*MEMORY[0x277D2BBC0]];
  v8 = [deviceCopy valueForProperty:*MEMORY[0x277D2BC20]];
  HKNSOperatingSystemVersionFromString();
  v9 = [HKMedicationsDeviceInfo scheduleCompatibilityVersionForDevice:deviceCopy];

  v10 = [(HKMedicationsDeviceInfo *)self initWithHardwareIdentifier:0 name:v6 model:v7 operatingSystemVersion:v12 scheduleCompatibilityVersion:v9 localDevice:1];
  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  name = self->_name;
  model = self->_model;
  operatingSystemVersion = self->_operatingSystemVersion;
  v7 = HKNSOperatingSystemVersionString();
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_scheduleCompatibilityVersion];
  localDevice = self->_localDevice;
  v10 = HKStringFromBool();
  uUIDString = [(NSUUID *)self->_hardwareIdentifier UUIDString];
  v12 = [v3 stringWithFormat:@"<%@ name:%@, model:%@, operating system:%@, compatibility version: %@, localDevice: %@, hardware identifier: %@", v4, name, model, v7, v8, v10, uUIDString];

  return v12;
}

- (BOOL)isCompatibleWithSchedule:(id)schedule
{
  compatibilityRange = [schedule compatibilityRange];

  return [(HKMedicationsDeviceInfo *)self isCompatibleWithScheduleCompatibilityVersion:compatibilityRange];
}

- (id)filterOutCompatibleSchedules:(id)schedules
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__HKMedicationsDeviceInfo_filterOutCompatibleSchedules___block_invoke;
  v5[3] = &unk_2796CAC50;
  v5[4] = self;
  v3 = [schedules hk_filter:v5];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      hardwareIdentifier = self->_hardwareIdentifier;
      v7 = v5->_hardwareIdentifier;
      if (hardwareIdentifier != v7 && (!v7 || ![(NSUUID *)hardwareIdentifier isEqual:?]))
      {
        goto LABEL_17;
      }

      name = self->_name;
      v9 = v5->_name;
      if (name != v9 && (!v9 || ![(NSString *)name isEqual:?]))
      {
        goto LABEL_17;
      }

      if (((model = self->_model, v11 = v5->_model, model == v11) || v11 && [(NSString *)model isEqual:?]) && (v16 = *&self->_operatingSystemVersion.majorVersion, patchVersion = self->_operatingSystemVersion.patchVersion, v14 = *&v5->_operatingSystemVersion.majorVersion, v15 = v5->_operatingSystemVersion.patchVersion, HKNSOperatingSystemVersionsEqual()) && self->_scheduleCompatibilityVersion == v5->_scheduleCompatibilityVersion)
      {
        v12 = self->_localDevice == v5->_localDevice;
      }

      else
      {
LABEL_17:
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_hardwareIdentifier hash];
  v4 = [(NSString *)self->_name hash]^ v3;
  return v4 ^ [(NSString *)self->_model hash]^ self->_operatingSystemVersion.majorVersion ^ self->_operatingSystemVersion.minorVersion ^ self->_operatingSystemVersion.patchVersion ^ (self->_scheduleCompatibilityVersion << 16) ^ self->_localDevice;
}

- (void)encodeWithCoder:(id)coder
{
  hardwareIdentifier = self->_hardwareIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:hardwareIdentifier forKey:@"HardwareIdentifier"];
  [coderCopy encodeObject:self->_name forKey:@"Name"];
  [coderCopy encodeObject:self->_model forKey:@"Model"];
  operatingSystemVersion = self->_operatingSystemVersion;
  v6 = HKNSOperatingSystemVersionString();
  [coderCopy encodeObject:v6 forKey:{@"OperatingSystemVersion", *&operatingSystemVersion.majorVersion, operatingSystemVersion.patchVersion}];

  [coderCopy encodeInteger:self->_scheduleCompatibilityVersion forKey:@"ScheduleCompatibilityVersion"];
  [coderCopy encodeBool:self->_localDevice forKey:@"LocalDevice"];
}

- (HKMedicationsDeviceInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = HKMedicationsDeviceInfo;
  v6 = [(HKMedicationsDeviceInfo *)&v17 init];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HardwareIdentifier"];
    hardwareIdentifier = v6->_hardwareIdentifier;
    v6->_hardwareIdentifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Name"];
    name = v6->_name;
    v6->_name = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Model"];
    model = v6->_model;
    v6->_model = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OperatingSystemVersion"];
    if (!v13)
    {
      [(HKMedicationsDeviceInfo *)a2 initWithCoder:v6];
    }

    HKNSOperatingSystemVersionFromString();
    *&v6->_operatingSystemVersion.majorVersion = v15;
    v6->_operatingSystemVersion.patchVersion = v16;
    v6->_scheduleCompatibilityVersion = [coderCopy decodeIntegerForKey:@"ScheduleCompatibilityVersion"];
    v6->_localDevice = [coderCopy decodeBoolForKey:@"LocalDevice"];
  }

  return v6;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicationsDeviceInfo.m" lineNumber:183 description:@"Operating system version should not be nil"];
}

@end