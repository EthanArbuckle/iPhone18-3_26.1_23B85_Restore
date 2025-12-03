@interface TOUPeaks
- (TOUPeaks)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation TOUPeaks

- (TOUPeaks)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  MEMORY[0x1E69E5928](entity);
  MEMORY[0x1E69E5928](context);
  return TOUPeaks.init(entity:insertInto:)(entity, context);
}

@end