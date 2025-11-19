@interface HMDBackingStoreCacheGroup
- (HMDBackingStoreCacheGroup)initWithGroupID:(int64_t)a3 zone:(id)a4 rootRecord:(id)a5 serverChangeToken:(id)a6 subscriptionName:(id)a7 owner:(id)a8 subscription:(id)a9;
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
  v3 = [MEMORY[0x277CCAB68] string];
  [v3 appendFormat:@"zone_group: %lu (%p)\n", -[HMDBackingStoreCacheGroup groupID](self, "groupID"), self];
  v4 = [(HMDBackingStoreCacheGroup *)self zone];
  [v3 appendFormat:@"  zone: %p\n", v4];

  v5 = [(HMDBackingStoreCacheGroup *)self rootRecordName];
  [v3 appendFormat:@"  root: %@\n", v5];

  v6 = [(HMDBackingStoreCacheGroup *)self owner];
  [v3 appendFormat:@"  owner: %@\n", v6];

  v7 = [(HMDBackingStoreCacheGroup *)self subscriptionName];
  [v3 appendFormat:@"  subs: %@\n", v7];

  v8 = [(HMDBackingStoreCacheGroup *)self serverChangeToken];
  [v3 appendFormat:@"  token: %@\n", v8];

  v9 = [(HMDBackingStoreCacheGroup *)self subscription];
  [v3 appendFormat:@"  subscription: %@\n", v9];

  return v3;
}

- (HMDBackingStoreCacheGroup)initWithGroupID:(int64_t)a3 zone:(id)a4 rootRecord:(id)a5 serverChangeToken:(id)a6 subscriptionName:(id)a7 owner:(id)a8 subscription:(id)a9
{
  v15 = a4;
  v24 = a5;
  v23 = a6;
  v22 = a7;
  v16 = a8;
  v17 = a9;
  v25.receiver = self;
  v25.super_class = HMDBackingStoreCacheGroup;
  v18 = [(HMDBackingStoreCacheGroup *)&v25 init];
  v19 = v18;
  if (v18)
  {
    v18->_groupID = a3;
    objc_storeWeak(&v18->_zone, v15);
    objc_storeStrong(&v19->_rootRecordName, a5);
    objc_storeStrong(&v19->_serverChangeToken, a6);
    objc_storeStrong(&v19->_subscriptionName, a7);
    objc_storeStrong(&v19->_owner, a8);
    objc_storeStrong(&v19->_subscription, a9);
    v20 = v19;
  }

  return v19;
}

@end