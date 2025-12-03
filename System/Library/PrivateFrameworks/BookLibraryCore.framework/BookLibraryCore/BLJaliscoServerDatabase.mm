@interface BLJaliscoServerDatabase
- (id)initIntoManagedObjectContext:(id)context;
@end

@implementation BLJaliscoServerDatabase

- (id)initIntoManagedObjectContext:(id)context
{
  v4 = MEMORY[0x277CBE408];
  contextCopy = context;
  v6 = [v4 entityForName:@"BLJaliscoServerDatabase" inManagedObjectContext:contextCopy];
  v9.receiver = self;
  v9.super_class = BLJaliscoServerDatabase;
  v7 = [(BLJaliscoServerDatabase *)&v9 initWithEntity:v6 insertIntoManagedObjectContext:contextCopy];

  return v7;
}

@end