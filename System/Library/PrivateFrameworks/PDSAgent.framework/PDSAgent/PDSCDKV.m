@interface PDSCDKV
+ (id)insertIntoManagedObjectContext:(id)a3;
@end

@implementation PDSCDKV

+ (id)insertIntoManagedObjectContext:(id)a3
{
  v4 = MEMORY[0x277CBE408];
  v5 = a3;
  v6 = [v4 entityForName:@"PDSCDKV" inManagedObjectContext:v5];
  v7 = [[a1 alloc] initWithEntity:v6 insertIntoManagedObjectContext:v5];

  return v7;
}

@end