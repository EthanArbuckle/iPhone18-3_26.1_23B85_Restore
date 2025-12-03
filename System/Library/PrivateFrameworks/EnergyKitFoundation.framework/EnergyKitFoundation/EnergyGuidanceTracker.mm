@interface EnergyGuidanceTracker
- (EnergyGuidanceTracker)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation EnergyGuidanceTracker

- (EnergyGuidanceTracker)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  MEMORY[0x1E69E5928](entity);
  MEMORY[0x1E69E5928](context);
  return EnergyGuidanceTracker.init(entity:insertInto:)(entity, context);
}

@end