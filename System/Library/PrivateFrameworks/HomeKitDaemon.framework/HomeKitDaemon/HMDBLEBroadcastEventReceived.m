@interface HMDBLEBroadcastEventReceived
- (id)initBroadcastEventFromAccessory:(id)a3 withExpectedGSN:(BOOL)a4;
@end

@implementation HMDBLEBroadcastEventReceived

- (id)initBroadcastEventFromAccessory:(id)a3 withExpectedGSN:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HMDBLEBroadcastEventReceived;
  v8 = [(HMMLogEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_accessory, a3);
    v9->_hasExpectedGSN = a4;
  }

  return v9;
}

@end