@interface HBXShimWDProfile
- (HBXShimWDProfile)initWithHealthStore:(id)store;
@end

@implementation HBXShimWDProfile

- (HBXShimWDProfile)initWithHealthStore:(id)store
{
  v4.receiver = self;
  v4.super_class = HBXShimWDProfile;
  return [(WDProfile *)&v4 initWithHealthStore:store];
}

@end