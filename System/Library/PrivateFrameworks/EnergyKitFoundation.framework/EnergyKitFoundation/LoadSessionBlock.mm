@interface LoadSessionBlock
- (LoadSessionBlock)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation LoadSessionBlock

- (LoadSessionBlock)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  MEMORY[0x1E69E5928](entity);
  MEMORY[0x1E69E5928](context);
  return LoadSessionBlock.init(entity:insertInto:)(entity, context);
}

@end