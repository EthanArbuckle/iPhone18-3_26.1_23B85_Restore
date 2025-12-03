@interface PBBridgeIDSReachabilityStatusObject
+ (id)connectivityString:(unint64_t)string;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation PBBridgeIDSReachabilityStatusObject

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    v5 = [(NSUUID *)self->_idsDeviceID isEqual:equalCopy[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PBBridgeIDSReachabilityStatusObject allocWithZone:?]];
  objc_storeStrong(&v4->_idsDeviceID, self->_idsDeviceID);
  v4->_reachability = self->_reachability;
  return v4;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  idsDeviceID = self->_idsDeviceID;
  v4 = [objc_opt_class() connectivityString:self->_reachability];
  v5 = [v2 stringWithFormat:@"%s: idsID=%@ connectivity=%@", "-[PBBridgeIDSReachabilityStatusObject description]", idsDeviceID, v4];

  return v5;
}

+ (id)connectivityString:(unint64_t)string
{
  if (string > 2)
  {
    return @"unknown enum value";
  }

  else
  {
    return off_2799F48E8[string];
  }
}

@end