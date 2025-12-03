@interface HMDAccessoryReachabilityTuple
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation HMDAccessoryReachabilityTuple

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  accessoryUUID = [(HMDAccessoryReachabilityTuple *)self accessoryUUID];
  [(HMDAccessoryReachabilityTuple *)self previouslySentReachability];
  v5 = HMFBooleanToString();
  [(HMDAccessoryReachabilityTuple *)self currentReachability];
  v6 = HMFBooleanToString();
  v7 = [v3 stringWithFormat:@"AccessoryUUID: %@, initialReachability: %@, currentReachability: %@", accessoryUUID, v5, v6];

  [(HMDAccessoryReachabilityTuple *)self previouslySentSuspendedState];
  v8 = HAPAccessorySuspendedStateDescription();
  [(HMDAccessoryReachabilityTuple *)self currentSuspendedState];
  v9 = HAPAccessorySuspendedStateDescription();
  v10 = [v7 stringByAppendingFormat:@", initialSuspendedState: %@, currentSuspendedState: '%@'", v8, v9];

  return v10;
}

- (unint64_t)hash
{
  accessoryUUID = [(HMDAccessoryReachabilityTuple *)self accessoryUUID];
  v3 = [accessoryUUID hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  accessoryUUID = [(HMDAccessoryReachabilityTuple *)self accessoryUUID];
  accessoryUUID2 = [equalCopy accessoryUUID];

  LOBYTE(equalCopy) = [accessoryUUID isEqual:accessoryUUID2];
  return equalCopy;
}

@end