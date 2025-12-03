@interface EnergyKitAppTracker
- (EnergyKitAppTracker)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation EnergyKitAppTracker

- (EnergyKitAppTracker)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  MEMORY[0x1E69E5928](entity);
  MEMORY[0x1E69E5928](context);
  return EnergyKitAppTracker.init(entity:insertInto:)(entity, context);
}

@end