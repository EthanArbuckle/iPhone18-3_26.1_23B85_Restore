@interface HMDMutableHomeData
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMDMutableHomeData

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[HMDHomeData allocWithZone:](HMDHomeData init];
  __HMDHomeDataCopyProperties(v5, self, a3);
  return v5;
}

@end