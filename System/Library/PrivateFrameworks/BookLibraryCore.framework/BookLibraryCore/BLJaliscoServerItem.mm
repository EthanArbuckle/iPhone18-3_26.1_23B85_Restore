@interface BLJaliscoServerItem
- (id)initIntoManagedObjectContext:(id)context;
@end

@implementation BLJaliscoServerItem

- (id)initIntoManagedObjectContext:(id)context
{
  v4 = MEMORY[0x277CBE408];
  contextCopy = context;
  v6 = [v4 entityForName:@"BLJaliscoServerItem" inManagedObjectContext:contextCopy];
  v9.receiver = self;
  v9.super_class = BLJaliscoServerItem;
  v7 = [(BLJaliscoServerItem *)&v9 initWithEntity:v6 insertIntoManagedObjectContext:contextCopy];

  return v7;
}

@end