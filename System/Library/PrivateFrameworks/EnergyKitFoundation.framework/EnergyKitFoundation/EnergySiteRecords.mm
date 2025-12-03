@interface EnergySiteRecords
- (EnergySiteRecords)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation EnergySiteRecords

- (EnergySiteRecords)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  MEMORY[0x1E69E5928](entity);
  MEMORY[0x1E69E5928](context);
  return EnergySiteRecords.init(entity:insertInto:)(entity, context);
}

@end