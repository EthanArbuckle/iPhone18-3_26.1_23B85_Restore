@interface BLJaliscoServerDatabase
- (id)initIntoManagedObjectContext:(id)a3;
@end

@implementation BLJaliscoServerDatabase

- (id)initIntoManagedObjectContext:(id)a3
{
  v4 = MEMORY[0x277CBE408];
  v5 = a3;
  v6 = [v4 entityForName:@"BLJaliscoServerDatabase" inManagedObjectContext:v5];
  v9.receiver = self;
  v9.super_class = BLJaliscoServerDatabase;
  v7 = [(BLJaliscoServerDatabase *)&v9 initWithEntity:v6 insertIntoManagedObjectContext:v5];

  return v7;
}

@end