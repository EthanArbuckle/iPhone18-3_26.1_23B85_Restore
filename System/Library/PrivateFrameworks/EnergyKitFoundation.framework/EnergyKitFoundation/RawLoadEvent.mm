@interface RawLoadEvent
- (RawLoadEvent)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation RawLoadEvent

- (RawLoadEvent)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  MEMORY[0x1E69E5928](entity);
  MEMORY[0x1E69E5928](context);
  return RawLoadEvent.init(entity:insertInto:)(entity, context);
}

@end