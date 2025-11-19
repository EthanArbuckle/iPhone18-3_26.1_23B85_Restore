@interface LoadDailyDigest
- (LoadDailyDigest)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation LoadDailyDigest

- (LoadDailyDigest)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  return LoadDailyDigest.init(entity:insertInto:)(a3, a4);
}

@end