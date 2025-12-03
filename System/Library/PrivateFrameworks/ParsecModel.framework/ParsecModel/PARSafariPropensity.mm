@interface PARSafariPropensity
- (PARSafariPropensity)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation PARSafariPropensity

- (PARSafariPropensity)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  entityCopy = entity;
  contextCopy = context;
  return PARSafariPropensity.init(entity:insertInto:)();
}

@end