@interface PARImagesPropensity
- (PARImagesPropensity)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation PARImagesPropensity

- (PARImagesPropensity)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  entityCopy = entity;
  contextCopy = context;
  return PARImagesPropensity.init(entity:insertInto:)();
}

@end