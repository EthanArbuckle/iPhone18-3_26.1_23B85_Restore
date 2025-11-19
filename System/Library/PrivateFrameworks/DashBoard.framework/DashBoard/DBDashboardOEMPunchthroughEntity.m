@interface DBDashboardOEMPunchthroughEntity
+ (id)oemPunchthroughEntityForIdentifier:(id)a3;
- (id)_initWithOEMPunchthroughIdentifier:(id)a3;
@end

@implementation DBDashboardOEMPunchthroughEntity

- (id)_initWithOEMPunchthroughIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = DBDashboardOEMPunchthroughEntity;
  return [(DBDashboardEntity *)&v4 _initWithIdentifier:a3];
}

+ (id)oemPunchthroughEntityForIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[DBDashboardOEMPunchthroughEntity alloc] _initWithOEMPunchthroughIdentifier:v3];

  return v4;
}

@end