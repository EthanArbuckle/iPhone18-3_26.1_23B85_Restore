@interface HMDMutableHomeData
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMDMutableHomeData

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[HMDHomeData allocWithZone:](HMDHomeData init];
  __HMDHomeDataCopyProperties(v5, self, zone);
  return v5;
}

@end