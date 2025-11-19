@interface BLJaliscoServerInfo
- (id)initIntoManagedObjectContext:(id)a3;
@end

@implementation BLJaliscoServerInfo

- (id)initIntoManagedObjectContext:(id)a3
{
  v4 = MEMORY[0x277CBE408];
  v5 = a3;
  v6 = [v4 entityForName:@"BLJaliscoServerInfo" inManagedObjectContext:v5];
  v9.receiver = self;
  v9.super_class = BLJaliscoServerInfo;
  v7 = [(BLJaliscoServerInfo *)&v9 initWithEntity:v6 insertIntoManagedObjectContext:v5];

  return v7;
}

@end