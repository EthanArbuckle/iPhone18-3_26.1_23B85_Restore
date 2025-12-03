@interface HKMedicationsAccountDevicesInfo
- (BOOL)isEqual:(id)equal;
- (HKMedicationsAccountDevicesInfo)initWithCoder:(id)coder;
- (HKMedicationsAccountDevicesInfo)initWithMedicationFeatureDevicesInfo:(id)info localDeviceInfo:(id)deviceInfo;
- (id)_unitTest_newAccountInfoWithAddedDevice:(id)device;
- (id)remoteDeviceIdentifiers;
- (id)remoteDevices;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMedicationsAccountDevicesInfo

- (HKMedicationsAccountDevicesInfo)initWithMedicationFeatureDevicesInfo:(id)info localDeviceInfo:(id)deviceInfo
{
  infoCopy = info;
  deviceInfoCopy = deviceInfo;
  v10 = deviceInfoCopy;
  if (infoCopy)
  {
    if (deviceInfoCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKMedicationsAccountDevicesInfo initWithMedicationFeatureDevicesInfo:a2 localDeviceInfo:self];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [HKMedicationsAccountDevicesInfo initWithMedicationFeatureDevicesInfo:a2 localDeviceInfo:self];
LABEL_3:
  if (([v10 isLocalDevice] & 1) == 0)
  {
    [HKMedicationsAccountDevicesInfo initWithMedicationFeatureDevicesInfo:a2 localDeviceInfo:self];
  }

  v14.receiver = self;
  v14.super_class = HKMedicationsAccountDevicesInfo;
  v11 = [(HKMedicationsAccountDevicesInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_medicationFeatureDevicesInfo, info);
    objc_storeStrong(&v12->_localDeviceInfo, deviceInfo);
  }

  return v12;
}

- (id)remoteDevices
{
  v3 = [(NSArray *)self->_medicationFeatureDevicesInfo mutableCopy];
  [v3 removeObjectIdenticalTo:self->_localDeviceInfo];

  return v3;
}

- (id)remoteDeviceIdentifiers
{
  v3 = [(NSArray *)self->_medicationFeatureDevicesInfo mutableCopy];
  [v3 removeObjectIdenticalTo:self->_localDeviceInfo];
  v4 = [v3 hk_map:&__block_literal_global_309];

  return v4;
}

- (id)_unitTest_newAccountInfoWithAddedDevice:(id)device
{
  medicationFeatureDevicesInfo = self->_medicationFeatureDevicesInfo;
  deviceCopy = device;
  v6 = [(NSArray *)medicationFeatureDevicesInfo mutableCopy];
  v7 = [v6 arrayByAddingObject:deviceCopy];

  v8 = [[HKMedicationsAccountDevicesInfo alloc] initWithMedicationFeatureDevicesInfo:v7 localDeviceInfo:self->_localDeviceInfo];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      localDeviceInfo = self->_localDeviceInfo;
      v7 = v5->_localDeviceInfo;
      if (localDeviceInfo != v7 && (!v7 || ![(HKMedicationsDeviceInfo *)localDeviceInfo isEqual:?]))
      {
        goto LABEL_11;
      }

      medicationFeatureDevicesInfo = self->_medicationFeatureDevicesInfo;
      v9 = v5->_medicationFeatureDevicesInfo;
      if (medicationFeatureDevicesInfo == v9)
      {
        v10 = 1;
        goto LABEL_13;
      }

      if (v9)
      {
        v10 = [(NSArray *)medicationFeatureDevicesInfo isEqualToArray:?];
      }

      else
      {
LABEL_11:
        v10 = 0;
      }

LABEL_13:

      goto LABEL_14;
    }

    v10 = 0;
  }

LABEL_14:

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  medicationFeatureDevicesInfo = self->_medicationFeatureDevicesInfo;
  coderCopy = coder;
  [coderCopy encodeObject:medicationFeatureDevicesInfo forKey:@"MedicationFeatureDevices"];
  [coderCopy encodeObject:self->_localDeviceInfo forKey:@"LocalDevice"];
}

- (HKMedicationsAccountDevicesInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = HKMedicationsAccountDevicesInfo;
  v5 = [(HKMedicationsAccountDevicesInfo *)&v12 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"MedicationFeatureDevices"];
    medicationFeatureDevicesInfo = v5->_medicationFeatureDevicesInfo;
    v5->_medicationFeatureDevicesInfo = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LocalDevice"];
    localDeviceInfo = v5->_localDeviceInfo;
    v5->_localDeviceInfo = v9;
  }

  return v5;
}

- (void)initWithMedicationFeatureDevicesInfo:(uint64_t)a1 localDeviceInfo:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicationsAccountDevicesInfo.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"medicationFeatureDevicesInfo != nil"}];
}

- (void)initWithMedicationFeatureDevicesInfo:(uint64_t)a1 localDeviceInfo:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicationsAccountDevicesInfo.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"localDeviceInfo != nil"}];
}

- (void)initWithMedicationFeatureDevicesInfo:(uint64_t)a1 localDeviceInfo:(uint64_t)a2 .cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicationsAccountDevicesInfo.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"localDeviceInfo.isLocalDevice == YES"}];
}

@end