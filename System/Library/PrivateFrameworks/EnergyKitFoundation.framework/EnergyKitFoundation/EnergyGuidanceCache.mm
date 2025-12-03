@interface EnergyGuidanceCache
- (EnergyGuidanceCache)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation EnergyGuidanceCache

- (EnergyGuidanceCache)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  (MEMORY[0x1E69E5928])();
  MEMORY[0x1E69E5928](context);
  return EnergyGuidanceCache.init(entity:insertInto:)(entity, context);
}

@end