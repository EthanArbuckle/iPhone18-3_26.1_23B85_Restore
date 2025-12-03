@interface ICASDeviceData
- (ICASDeviceData)initWithDeviceModel:(id)model devicePlatform:(id)platform osInstallVariant:(id)variant osVersion:(id)version osBundleVersion:(id)bundleVersion;
- (id)toDict;
@end

@implementation ICASDeviceData

- (ICASDeviceData)initWithDeviceModel:(id)model devicePlatform:(id)platform osInstallVariant:(id)variant osVersion:(id)version osBundleVersion:(id)bundleVersion
{
  modelCopy = model;
  platformCopy = platform;
  variantCopy = variant;
  versionCopy = version;
  bundleVersionCopy = bundleVersion;
  v21.receiver = self;
  v21.super_class = ICASDeviceData;
  v17 = [(ICASDeviceData *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_deviceModel, model);
    objc_storeStrong(&v18->_devicePlatform, platform);
    objc_storeStrong(&v18->_osInstallVariant, variant);
    objc_storeStrong(&v18->_osVersion, version);
    objc_storeStrong(&v18->_osBundleVersion, bundleVersion);
  }

  return v18;
}

- (id)toDict
{
  v23[5] = *MEMORY[0x277D85DE8];
  v22[0] = @"deviceModel";
  deviceModel = [(ICASDeviceData *)self deviceModel];
  if (deviceModel)
  {
    deviceModel2 = [(ICASDeviceData *)self deviceModel];
  }

  else
  {
    deviceModel2 = objc_opt_new();
  }

  v4 = deviceModel2;
  v23[0] = deviceModel2;
  v22[1] = @"devicePlatform";
  devicePlatform = [(ICASDeviceData *)self devicePlatform];
  if (devicePlatform)
  {
    devicePlatform2 = [(ICASDeviceData *)self devicePlatform];
  }

  else
  {
    devicePlatform2 = objc_opt_new();
  }

  v7 = devicePlatform2;
  v23[1] = devicePlatform2;
  v22[2] = @"osInstallVariant";
  osInstallVariant = [(ICASDeviceData *)self osInstallVariant];
  if (osInstallVariant)
  {
    osInstallVariant2 = [(ICASDeviceData *)self osInstallVariant];
  }

  else
  {
    osInstallVariant2 = objc_opt_new();
  }

  v10 = osInstallVariant2;
  v23[2] = osInstallVariant2;
  v22[3] = @"osVersion";
  osVersion = [(ICASDeviceData *)self osVersion];
  if (osVersion)
  {
    osVersion2 = [(ICASDeviceData *)self osVersion];
  }

  else
  {
    osVersion2 = objc_opt_new();
  }

  v13 = osVersion2;
  v23[3] = osVersion2;
  v22[4] = @"osBundleVersion";
  osBundleVersion = [(ICASDeviceData *)self osBundleVersion];
  if (osBundleVersion)
  {
    osBundleVersion2 = [(ICASDeviceData *)self osBundleVersion];
  }

  else
  {
    osBundleVersion2 = objc_opt_new();
  }

  v16 = osBundleVersion2;
  v23[4] = osBundleVersion2;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end