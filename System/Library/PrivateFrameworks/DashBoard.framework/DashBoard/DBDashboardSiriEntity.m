@interface DBDashboardSiriEntity
+ (id)entity;
@end

@implementation DBDashboardSiriEntity

+ (id)entity
{
  v2 = [(DBDashboardEntity *)[DBDashboardSiriEntity alloc] _initWithIdentifier:@"com.apple.carplay.dashboard.siri"];

  return v2;
}

@end