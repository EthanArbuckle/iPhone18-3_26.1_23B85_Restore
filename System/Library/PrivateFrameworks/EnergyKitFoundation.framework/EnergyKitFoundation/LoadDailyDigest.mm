@interface LoadDailyDigest
- (LoadDailyDigest)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation LoadDailyDigest

- (LoadDailyDigest)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  MEMORY[0x1E69E5928](entity);
  MEMORY[0x1E69E5928](context);
  return LoadDailyDigest.init(entity:insertInto:)(entity, context);
}

@end