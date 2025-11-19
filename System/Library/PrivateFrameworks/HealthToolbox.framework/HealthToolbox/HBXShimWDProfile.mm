@interface HBXShimWDProfile
- (HBXShimWDProfile)initWithHealthStore:(id)a3;
@end

@implementation HBXShimWDProfile

- (HBXShimWDProfile)initWithHealthStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = HBXShimWDProfile;
  return [(WDProfile *)&v4 initWithHealthStore:a3];
}

@end