@interface IntervalBlocks
- (IntervalBlocks)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation IntervalBlocks

- (IntervalBlocks)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  MEMORY[0x1E69E5928](entity);
  MEMORY[0x1E69E5928](context);
  return IntervalBlocks.init(entity:insertInto:)(entity, context);
}

@end