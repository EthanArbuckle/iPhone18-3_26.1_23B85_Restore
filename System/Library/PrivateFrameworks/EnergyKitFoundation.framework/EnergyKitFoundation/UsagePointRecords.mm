@interface UsagePointRecords
- (UsagePointRecords)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation UsagePointRecords

- (UsagePointRecords)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  MEMORY[0x1E69E5928](entity);
  MEMORY[0x1E69E5928](context);
  return UsagePointRecords.init(entity:insertInto:)(entity, context);
}

@end