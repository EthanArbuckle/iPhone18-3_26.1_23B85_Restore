@interface HMDAccessoryReachabilityTuple
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation HMDAccessoryReachabilityTuple

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDAccessoryReachabilityTuple *)self accessoryUUID];
  [(HMDAccessoryReachabilityTuple *)self previouslySentReachability];
  v5 = HMFBooleanToString();
  [(HMDAccessoryReachabilityTuple *)self currentReachability];
  v6 = HMFBooleanToString();
  v7 = [v3 stringWithFormat:@"AccessoryUUID: %@, initialReachability: %@, currentReachability: %@", v4, v5, v6];

  [(HMDAccessoryReachabilityTuple *)self previouslySentSuspendedState];
  v8 = HAPAccessorySuspendedStateDescription();
  [(HMDAccessoryReachabilityTuple *)self currentSuspendedState];
  v9 = HAPAccessorySuspendedStateDescription();
  v10 = [v7 stringByAppendingFormat:@", initialSuspendedState: %@, currentSuspendedState: '%@'", v8, v9];

  return v10;
}

- (unint64_t)hash
{
  v2 = [(HMDAccessoryReachabilityTuple *)self accessoryUUID];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryReachabilityTuple *)self accessoryUUID];
  v6 = [v4 accessoryUUID];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

@end