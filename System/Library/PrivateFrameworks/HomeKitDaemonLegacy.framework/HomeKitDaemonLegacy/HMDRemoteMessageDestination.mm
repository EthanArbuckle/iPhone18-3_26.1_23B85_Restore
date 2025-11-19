@interface HMDRemoteMessageDestination
+ (HMDRemoteMessageDestination)allocWithZone:(_NSZone *)a3;
+ (id)allMessageDestinations;
- (NSArray)allRemoteDestinationStrings;
- (NSString)remoteDestinationString;
@end

@implementation HMDRemoteMessageDestination

- (NSArray)allRemoteDestinationStrings
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HMDRemoteMessageDestination *)self remoteDestinationString];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEA60] arrayWithObject:v3];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@This destination is not addressable: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v4 = MEMORY[0x277CBEBF8];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSString)remoteDestinationString
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (HMDRemoteMessageDestination)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {
    v6 = _HMFPreconditionFailure();
    +[(HMDRemoteMessageDestination *)v6];
  }

  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___HMDRemoteMessageDestination;
  return objc_msgSendSuper2(&v8, sel_allocWithZone_, a3);
}

+ (id)allMessageDestinations
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