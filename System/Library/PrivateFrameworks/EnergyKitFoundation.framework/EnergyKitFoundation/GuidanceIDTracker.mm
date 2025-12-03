@interface GuidanceIDTracker
- (GuidanceIDTracker)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation GuidanceIDTracker

- (GuidanceIDTracker)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  MEMORY[0x1E69E5928](entity);
  MEMORY[0x1E69E5928](context);
  return GuidanceIDTracker.init(entity:insertInto:)(entity, context);
}

@end