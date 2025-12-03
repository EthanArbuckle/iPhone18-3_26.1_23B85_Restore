@interface BCSaltVersionIdentifier
- (id)initIntoManagedObjectContext:(id)context;
@end

@implementation BCSaltVersionIdentifier

- (id)initIntoManagedObjectContext:(id)context
{
  v4 = MEMORY[0x1E695D5B8];
  contextCopy = context;
  v6 = [v4 entityForName:@"BCSaltVersionIdentifier" inManagedObjectContext:contextCopy];
  v9.receiver = self;
  v9.super_class = BCSaltVersionIdentifier;
  v7 = [(BCSaltVersionIdentifier *)&v9 initWithEntity:v6 insertIntoManagedObjectContext:contextCopy];

  return v7;
}

@end