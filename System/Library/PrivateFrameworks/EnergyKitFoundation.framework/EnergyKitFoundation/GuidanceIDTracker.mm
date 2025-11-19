@interface GuidanceIDTracker
- (GuidanceIDTracker)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation GuidanceIDTracker

- (GuidanceIDTracker)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  return GuidanceIDTracker.init(entity:insertInto:)(a3, a4);
}

@end