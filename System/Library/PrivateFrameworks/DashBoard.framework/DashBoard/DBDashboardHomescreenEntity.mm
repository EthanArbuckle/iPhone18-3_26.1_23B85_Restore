@interface DBDashboardHomescreenEntity
+ (id)entity;
@end

@implementation DBDashboardHomescreenEntity

+ (id)entity
{
  v2 = [(DBDashboardEntity *)[DBDashboardHomescreenEntity alloc] _initWithIdentifier:@"com.apple.CarPlay.dashboard"];

  return v2;
}

@end