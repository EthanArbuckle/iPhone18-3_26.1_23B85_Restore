@interface PDSCDKV
+ (id)insertIntoManagedObjectContext:(id)context;
@end

@implementation PDSCDKV

+ (id)insertIntoManagedObjectContext:(id)context
{
  v4 = MEMORY[0x277CBE408];
  contextCopy = context;
  v6 = [v4 entityForName:@"PDSCDKV" inManagedObjectContext:contextCopy];
  v7 = [[self alloc] initWithEntity:v6 insertIntoManagedObjectContext:contextCopy];

  return v7;
}

@end