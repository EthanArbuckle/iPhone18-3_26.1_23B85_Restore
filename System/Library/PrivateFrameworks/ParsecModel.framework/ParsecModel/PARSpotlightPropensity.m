@interface PARSpotlightPropensity
- (PARSpotlightPropensity)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation PARSpotlightPropensity

- (PARSpotlightPropensity)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  return PARSpotlightPropensity.init(entity:insertInto:)();
}

@end