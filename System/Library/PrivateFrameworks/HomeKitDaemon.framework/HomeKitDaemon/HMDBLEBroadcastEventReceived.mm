@interface HMDBLEBroadcastEventReceived
- (id)initBroadcastEventFromAccessory:(id)accessory withExpectedGSN:(BOOL)n;
@end

@implementation HMDBLEBroadcastEventReceived

- (id)initBroadcastEventFromAccessory:(id)accessory withExpectedGSN:(BOOL)n
{
  accessoryCopy = accessory;
  v11.receiver = self;
  v11.super_class = HMDBLEBroadcastEventReceived;
  v8 = [(HMMLogEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_accessory, accessory);
    v9->_hasExpectedGSN = n;
  }

  return v9;
}

@end