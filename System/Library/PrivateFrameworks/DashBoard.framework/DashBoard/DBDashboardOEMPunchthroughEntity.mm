@interface DBDashboardOEMPunchthroughEntity
+ (id)oemPunchthroughEntityForIdentifier:(id)identifier;
- (id)_initWithOEMPunchthroughIdentifier:(id)identifier;
@end

@implementation DBDashboardOEMPunchthroughEntity

- (id)_initWithOEMPunchthroughIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = DBDashboardOEMPunchthroughEntity;
  return [(DBDashboardEntity *)&v4 _initWithIdentifier:identifier];
}

+ (id)oemPunchthroughEntityForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[DBDashboardOEMPunchthroughEntity alloc] _initWithOEMPunchthroughIdentifier:identifierCopy];

  return v4;
}

@end