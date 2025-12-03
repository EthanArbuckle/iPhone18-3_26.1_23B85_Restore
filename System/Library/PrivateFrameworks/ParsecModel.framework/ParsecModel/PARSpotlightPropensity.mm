@interface PARSpotlightPropensity
- (PARSpotlightPropensity)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation PARSpotlightPropensity

- (PARSpotlightPropensity)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  entityCopy = entity;
  contextCopy = context;
  return PARSpotlightPropensity.init(entity:insertInto:)();
}

@end