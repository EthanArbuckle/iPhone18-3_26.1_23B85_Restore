@interface DMTMobileGestaltBackedDeviceInformationPrimitives
- (NSString)deviceClass;
- (NSString)deviceUDID;
- (NSString)marketingModelName;
- (NSString)modelIdentifier;
- (NSString)serialNumber;
@end

@implementation DMTMobileGestaltBackedDeviceInformationPrimitives

- (NSString)serialNumber
{
  serialNumber = self->_serialNumber;
  if (!serialNumber)
  {
    v4 = MGCopyAnswer();
    v5 = self->_serialNumber;
    self->_serialNumber = v4;

    serialNumber = self->_serialNumber;
  }

  v6 = [(NSString *)serialNumber copy];

  return v6;
}

- (NSString)deviceUDID
{
  v25 = *MEMORY[0x277D85DE8];
  deviceUDID = self->_deviceUDID;
  if (!deviceUDID)
  {
    v4 = MGCopyAnswer();
    v5 = MGCopyAnswer();
    v6 = MGCopyAnswer();
    v7 = MGCopyAnswer();
    v8 = MGCopyAnswer();
    if (_DMTLogGeneral_onceToken_2 != -1)
    {
      [DMTMobileGestaltBackedDeviceInformationPrimitives deviceUDID];
    }

    v9 = _DMTLogGeneral_logObj_2;
    if (os_log_type_enabled(_DMTLogGeneral_logObj_2, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138544386;
      v16 = v4;
      v17 = 2114;
      v18 = v5;
      v19 = 2114;
      v20 = v6;
      v21 = 2114;
      v22 = v7;
      v23 = 2114;
      v24 = v8;
      _os_log_debug_impl(&dword_24891B000, v9, OS_LOG_TYPE_DEBUG, "arrowUniqueID: %{public}@,\n provisioningUniqueID: %{public}@,\n unqiueChipID: %{public}@,\n uniqueDeviceID: %{public}@,\n attestationUniqueDeviceID: %{public}@", &v15, 0x34u);
    }

    v10 = MGCopyAnswer();
    v11 = self->_deviceUDID;
    self->_deviceUDID = v10;

    deviceUDID = self->_deviceUDID;
  }

  v12 = [(NSString *)deviceUDID copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (NSString)modelIdentifier
{
  modelIdentifier = self->_modelIdentifier;
  if (!modelIdentifier)
  {
    v4 = MGCopyAnswer();
    v5 = self->_modelIdentifier;
    self->_modelIdentifier = v4;

    modelIdentifier = self->_modelIdentifier;
  }

  v6 = [(NSString *)modelIdentifier copy];

  return v6;
}

- (NSString)marketingModelName
{
  marketingModelName = self->_marketingModelName;
  if (!marketingModelName)
  {
    v4 = MGCopyAnswer();
    v5 = self->_marketingModelName;
    self->_marketingModelName = v4;

    marketingModelName = self->_marketingModelName;
  }

  v6 = [(NSString *)marketingModelName copy];

  return v6;
}

- (NSString)deviceClass
{
  deviceClass = self->_deviceClass;
  if (!deviceClass)
  {
    v4 = MGCopyAnswer();
    v5 = self->_deviceClass;
    self->_deviceClass = v4;

    deviceClass = self->_deviceClass;
  }

  return deviceClass;
}

@end