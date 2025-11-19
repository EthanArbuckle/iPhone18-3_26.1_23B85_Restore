@interface HMDUserPushCache
- (BOOL)isExpired;
- (HMDUserPushCache)init;
- (HMDUserPushCache)initWithDevice:(id)a3;
@end

@implementation HMDUserPushCache

- (BOOL)isExpired
{
  v2 = [(HMDUserPushCache *)self expirationDate];
  [v2 timeIntervalSinceNow];
  v4 = v3 < 0.0;

  return v4;
}

- (HMDUserPushCache)initWithDevice:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HMDUserPushCache;
  v6 = [(HMDUserPushCache *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:userPushCacheTimeInterval];
    expirationDate = v7->_expirationDate;
    v7->_expirationDate = v8;
  }

  return v7;
}

- (HMDUserPushCache)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end