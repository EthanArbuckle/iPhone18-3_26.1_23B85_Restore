@interface HDMCAccountDevicesInfo
- (BOOL)hasHealthAppDevicesWithHigherAlgorithmVersions;
- (BOOL)isEqual:(id)a3;
- (BOOL)localDeviceIsOnlyDeviceWithNotifications;
- (BOOL)shouldFireNotifications;
- (HDMCAccountDevicesInfo)initWithHealthAppDevicesInfo:(id)a3 localDeviceInfo:(id)a4;
@end

@implementation HDMCAccountDevicesInfo

- (BOOL)hasHealthAppDevicesWithHigherAlgorithmVersions
{
  healthAppDevicesInfo = self->_healthAppDevicesInfo;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__HDMCAccountDevicesInfo_hasHealthAppDevicesWithHigherAlgorithmVersions__block_invoke;
  v4[3] = &unk_27865AF90;
  v4[4] = self;
  return [(NSArray *)healthAppDevicesInfo hk_containsObjectPassingTest:v4];
}

- (BOOL)localDeviceIsOnlyDeviceWithNotifications
{
  v3 = [(NSArray *)self->_healthAppDevicesInfo hk_filter:&__block_literal_global_391];
  v4 = [v3 count];

  result = [(HDMCDeviceInfo *)self->_localDeviceInfo someNotificationsEnabled];
  if (v4 >= 2)
  {
    return 0;
  }

  return result;
}

- (BOOL)shouldFireNotifications
{
  if ([(HDMCAccountDevicesInfo *)self localDeviceIsOnlyDeviceWithNotifications])
  {
    return 1;
  }

  else
  {
    return ![(HDMCAccountDevicesInfo *)self hasHealthAppDevicesWithHigherAlgorithmVersions];
  }
}

- (HDMCAccountDevicesInfo)initWithHealthAppDevicesInfo:(id)a3 localDeviceInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HDMCAccountDevicesInfo;
  v8 = [(HDMCAccountDevicesInfo *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    healthAppDevicesInfo = v8->_healthAppDevicesInfo;
    v8->_healthAppDevicesInfo = v9;

    v11 = [v7 copy];
    localDeviceInfo = v8->_localDeviceInfo;
    v8->_localDeviceInfo = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      localDeviceInfo = self->_localDeviceInfo;
      v7 = v5->_localDeviceInfo;
      if (localDeviceInfo != v7 && (!v7 || ![(HDMCDeviceInfo *)localDeviceInfo isEqual:?]))
      {
        goto LABEL_11;
      }

      healthAppDevicesInfo = self->_healthAppDevicesInfo;
      v9 = v5->_healthAppDevicesInfo;
      if (healthAppDevicesInfo == v9)
      {
        v10 = 1;
        goto LABEL_13;
      }

      if (v9)
      {
        v10 = [(NSArray *)healthAppDevicesInfo isEqualToArray:?];
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

@end