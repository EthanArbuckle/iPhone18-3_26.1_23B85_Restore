@interface HMDBackingStoreCacheGroup
- (HMDBackingStoreCacheGroup)initWithGroupID:(int64_t)d zone:(id)zone rootRecord:(id)record serverChangeToken:(id)token subscriptionName:(id)name owner:(id)owner subscription:(id)subscription;
- (HMDBackingStoreCacheZone)zone;
- (id)dumpDebug;
@end

@implementation HMDBackingStoreCacheGroup

- (HMDBackingStoreCacheZone)zone
{
  WeakRetained = objc_loadWeakRetained(&self->_zone);

  return WeakRetained;
}

- (id)dumpDebug
{
  string = [MEMORY[0x277CCAB68] string];
  [string appendFormat:@"zone_group: %lu (%p)\n", -[HMDBackingStoreCacheGroup groupID](self, "groupID"), self];
  v4 = [(HMDBackingStoreCacheGroup *)self zone];
  [string appendFormat:@"  zone: %p\n", v4];

  rootRecordName = [(HMDBackingStoreCacheGroup *)self rootRecordName];
  [string appendFormat:@"  root: %@\n", rootRecordName];

  owner = [(HMDBackingStoreCacheGroup *)self owner];
  [string appendFormat:@"  owner: %@\n", owner];

  subscriptionName = [(HMDBackingStoreCacheGroup *)self subscriptionName];
  [string appendFormat:@"  subs: %@\n", subscriptionName];

  serverChangeToken = [(HMDBackingStoreCacheGroup *)self serverChangeToken];
  [string appendFormat:@"  token: %@\n", serverChangeToken];

  subscription = [(HMDBackingStoreCacheGroup *)self subscription];
  [string appendFormat:@"  subscription: %@\n", subscription];

  return string;
}

- (HMDBackingStoreCacheGroup)initWithGroupID:(int64_t)d zone:(id)zone rootRecord:(id)record serverChangeToken:(id)token subscriptionName:(id)name owner:(id)owner subscription:(id)subscription
{
  zoneCopy = zone;
  recordCopy = record;
  tokenCopy = token;
  nameCopy = name;
  ownerCopy = owner;
  subscriptionCopy = subscription;
  v25.receiver = self;
  v25.super_class = HMDBackingStoreCacheGroup;
  v18 = [(HMDBackingStoreCacheGroup *)&v25 init];
  v19 = v18;
  if (v18)
  {
    v18->_groupID = d;
    objc_storeWeak(&v18->_zone, zoneCopy);
    objc_storeStrong(&v19->_rootRecordName, record);
    objc_storeStrong(&v19->_serverChangeToken, token);
    objc_storeStrong(&v19->_subscriptionName, name);
    objc_storeStrong(&v19->_owner, owner);
    objc_storeStrong(&v19->_subscription, subscription);
    v20 = v19;
  }

  return v19;
}

@end