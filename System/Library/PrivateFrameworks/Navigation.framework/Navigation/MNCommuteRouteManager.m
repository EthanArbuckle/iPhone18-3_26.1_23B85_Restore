@interface MNCommuteRouteManager
+ (MNCommuteRouteManager)shared;
- (MNCommuteRouteManager)init;
@end

@implementation MNCommuteRouteManager

+ (MNCommuteRouteManager)shared
{
  if (qword_1EC75BFD0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC75C720;

  return v3;
}

- (MNCommuteRouteManager)init
{
  v3.receiver = self;
  v3.super_class = MNCommuteRouteManager;
  return [(MNCommuteRouteManager *)&v3 init];
}

@end