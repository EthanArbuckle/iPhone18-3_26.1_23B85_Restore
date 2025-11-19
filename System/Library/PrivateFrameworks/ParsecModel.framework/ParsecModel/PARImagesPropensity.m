@interface PARImagesPropensity
- (PARImagesPropensity)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation PARImagesPropensity

- (PARImagesPropensity)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  return PARImagesPropensity.init(entity:insertInto:)();
}

@end