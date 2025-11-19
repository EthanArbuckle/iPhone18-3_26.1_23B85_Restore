@interface BLJaliscoServerBookletItem
- (id)initIntoManagedObjectContext:(id)a3;
@end

@implementation BLJaliscoServerBookletItem

- (id)initIntoManagedObjectContext:(id)a3
{
  v4 = MEMORY[0x277CBE408];
  v5 = a3;
  v6 = [v4 entityForName:@"BLJaliscoServerBookletItem" inManagedObjectContext:v5];
  v9.receiver = self;
  v9.super_class = BLJaliscoServerBookletItem;
  v7 = [(BLJaliscoServerBookletItem *)&v9 initWithEntity:v6 insertIntoManagedObjectContext:v5];

  return v7;
}

@end