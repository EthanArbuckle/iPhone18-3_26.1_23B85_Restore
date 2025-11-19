@interface EnergyGuidanceCache
- (EnergyGuidanceCache)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation EnergyGuidanceCache

- (EnergyGuidanceCache)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  (MEMORY[0x1E69E5928])();
  MEMORY[0x1E69E5928](a4);
  return EnergyGuidanceCache.init(entity:insertInto:)(a3, a4);
}

@end