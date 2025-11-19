@interface ICASDeviceData
- (ICASDeviceData)initWithDeviceModel:(id)a3 devicePlatform:(id)a4 osInstallVariant:(id)a5 osVersion:(id)a6 osBundleVersion:(id)a7;
- (id)toDict;
@end

@implementation ICASDeviceData

- (ICASDeviceData)initWithDeviceModel:(id)a3 devicePlatform:(id)a4 osInstallVariant:(id)a5 osVersion:(id)a6 osBundleVersion:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = ICASDeviceData;
  v17 = [(ICASDeviceData *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_deviceModel, a3);
    objc_storeStrong(&v18->_devicePlatform, a4);
    objc_storeStrong(&v18->_osInstallVariant, a5);
    objc_storeStrong(&v18->_osVersion, a6);
    objc_storeStrong(&v18->_osBundleVersion, a7);
  }

  return v18;
}

- (id)toDict
{
  v23[5] = *MEMORY[0x277D85DE8];
  v22[0] = @"deviceModel";
  v20 = [(ICASDeviceData *)self deviceModel];
  if (v20)
  {
    v3 = [(ICASDeviceData *)self deviceModel];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v4 = v3;
  v23[0] = v3;
  v22[1] = @"devicePlatform";
  v5 = [(ICASDeviceData *)self devicePlatform];
  if (v5)
  {
    v6 = [(ICASDeviceData *)self devicePlatform];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;
  v23[1] = v6;
  v22[2] = @"osInstallVariant";
  v8 = [(ICASDeviceData *)self osInstallVariant];
  if (v8)
  {
    v9 = [(ICASDeviceData *)self osInstallVariant];
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;
  v23[2] = v9;
  v22[3] = @"osVersion";
  v11 = [(ICASDeviceData *)self osVersion];
  if (v11)
  {
    v12 = [(ICASDeviceData *)self osVersion];
  }

  else
  {
    v12 = objc_opt_new();
  }

  v13 = v12;
  v23[3] = v12;
  v22[4] = @"osBundleVersion";
  v14 = [(ICASDeviceData *)self osBundleVersion];
  if (v14)
  {
    v15 = [(ICASDeviceData *)self osBundleVersion];
  }

  else
  {
    v15 = objc_opt_new();
  }

  v16 = v15;
  v23[4] = v15;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end