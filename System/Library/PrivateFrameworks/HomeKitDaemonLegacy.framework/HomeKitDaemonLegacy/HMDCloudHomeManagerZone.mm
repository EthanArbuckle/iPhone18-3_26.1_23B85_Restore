@interface HMDCloudHomeManagerZone
+ (void)createHomeManagerZoneWithName:(id)a3 owner:(id)a4 cacheZone:(id)a5 cloudCache:(id)a6 completion:(id)a7;
- (void)setServerChangeToken:(id)a3;
@end

@implementation HMDCloudHomeManagerZone

- (void)setServerChangeToken:(id)a3
{
  v4.receiver = self;
  v4.super_class = HMDCloudHomeManagerZone;
  [(HMDCloudZone *)&v4 setServerChangeToken:a3];
  [(HMDCloudZone *)self updateCurrentServerChangeToken];
}

+ (void)createHomeManagerZoneWithName:(id)a3 owner:(id)a4 cacheZone:(id)a5 cloudCache:(id)a6 completion:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [objc_opt_class() zoneRootRecordName];
  v17 = [objc_opt_class() zoneSubscriptionName:v15];
  v18 = objc_opt_class();
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __95__HMDCloudHomeManagerZone_createHomeManagerZoneWithName_owner_cacheZone_cloudCache_completion___block_invoke;
  v20[3] = &unk_2797252D0;
  v21 = v11;
  v19 = v11;
  [v18 createZoneWithName:v15 rootRecordName:v16 subscriptionName:v17 owner:v14 cacheZone:v13 cloudCache:v12 completion:v20];
}

uint64_t __95__HMDCloudHomeManagerZone_createHomeManagerZoneWithName_owner_cacheZone_cloudCache_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end