@interface HMDLegacyCloudDatabase
+ (id)recordZoneIDForLegacyName:(id)a3;
- (HMDLegacyCloudDatabase)initWithLocalDatabase:(id)a3 configuration:(id)a4 error:(id *)a5;
- (id)createLegacyZone:(id)a3 controllerIdentity:(id)a4 delegate:(id)a5 error:(id *)a6;
- (id)mirrorLegacyZone:(id)a3 controllerIdentity:(id)a4 delegate:(id)a5 error:(id *)a6;
@end

@implementation HMDLegacyCloudDatabase

- (id)createLegacyZone:(id)a3 controllerIdentity:(id)a4 delegate:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = [HMDLegacyCloudDatabase recordZoneIDForLegacyName:a3];
  v13 = mirrorLegacyZone(self, 1, v12, v11, v10, a6);

  return v13;
}

- (id)mirrorLegacyZone:(id)a3 controllerIdentity:(id)a4 delegate:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = [HMDLegacyCloudDatabase recordZoneIDForLegacyName:a3];
  v13 = mirrorLegacyZone(self, 0, v12, v11, v10, a6);

  return v13;
}

- (HMDLegacyCloudDatabase)initWithLocalDatabase:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v8.receiver = self;
  v8.super_class = HMDLegacyCloudDatabase;
  v5 = [(HMBCloudDatabase *)&v8 initWithLocalDatabase:a3 configuration:a4 error:a5];
  v6 = v5;
  if (v5)
  {
    [(HMBCloudDatabase *)v5 setCloudZoneFactory:&__block_literal_global_109111];
  }

  return v6;
}

id __68__HMDLegacyCloudDatabase_initWithLocalDatabase_configuration_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a2;
  v7 = objc_alloc_init(HMDMutableLegacyCloudZoneConfiguration);
  v8 = [v5 zoneID];
  v9 = [v8 zoneID];
  v10 = [v9 zoneName];
  v11 = [v10 isEqual:@"HomeDataBlobZone"];

  if (v11)
  {
    v12 = off_278666200;
  }

  else
  {
    v13 = [v5 zoneID];
    v14 = [v13 zoneID];
    v15 = [v14 zoneName];
    v16 = [v15 isEqual:@"1411CE6C-B4DE-4622-A49D-F66FE296D6B5"];

    if (v16)
    {
      v17 = @"14730983-0D6D-4F74-8076-4F5953FD83EB";
    }

    else
    {
      v17 = @"4B0A9686-599F-487E-B2B0-B63BF838D813";
    }

    [(HMDLegacyCloudZoneConfiguration *)v7 setRootRecordName:v17];
    v12 = off_278666220;
  }

  v18 = [objc_alloc(*v12) initWithCloudDatabase:v6 configuration:v7 state:v5];

  return v18;
}

+ (id)recordZoneIDForLegacyName:(id)a3
{
  v3 = MEMORY[0x277CBC5F8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithZoneName:v4 ownerName:*MEMORY[0x277CBBF28]];

  return v6;
}

@end