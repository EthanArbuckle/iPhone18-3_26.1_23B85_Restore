@interface HMDCloudMetadataZone
+ (void)createMetadataZoneWithName:(id)name owner:(id)owner cacheZone:(id)zone cloudCache:(id)cache completion:(id)completion;
- (void)setServerChangeToken:(id)token;
@end

@implementation HMDCloudMetadataZone

- (void)setServerChangeToken:(id)token
{
  v4.receiver = self;
  v4.super_class = HMDCloudMetadataZone;
  [(HMDCloudZone *)&v4 setServerChangeToken:token];
  [(HMDCloudZone *)self updateCurrentServerChangeToken];
}

+ (void)createMetadataZoneWithName:(id)name owner:(id)owner cacheZone:(id)zone cloudCache:(id)cache completion:(id)completion
{
  completionCopy = completion;
  cacheCopy = cache;
  zoneCopy = zone;
  ownerCopy = owner;
  nameCopy = name;
  zoneRootRecordName = [objc_opt_class() zoneRootRecordName];
  v17 = [objc_opt_class() zoneSubscriptionName:nameCopy];
  v18 = objc_opt_class();
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __89__HMDCloudMetadataZone_createMetadataZoneWithName_owner_cacheZone_cloudCache_completion___block_invoke;
  v20[3] = &unk_2797252D0;
  v21 = completionCopy;
  v19 = completionCopy;
  [v18 createZoneWithName:nameCopy rootRecordName:zoneRootRecordName subscriptionName:v17 owner:ownerCopy cacheZone:zoneCopy cloudCache:cacheCopy completion:v20];
}

uint64_t __89__HMDCloudMetadataZone_createMetadataZoneWithName_owner_cacheZone_cloudCache_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end