@interface BCSaltVersionIdentifier
- (id)initIntoManagedObjectContext:(id)a3;
@end

@implementation BCSaltVersionIdentifier

- (id)initIntoManagedObjectContext:(id)a3
{
  v4 = MEMORY[0x1E695D5B8];
  v5 = a3;
  v6 = [v4 entityForName:@"BCSaltVersionIdentifier" inManagedObjectContext:v5];
  v9.receiver = self;
  v9.super_class = BCSaltVersionIdentifier;
  v7 = [(BCSaltVersionIdentifier *)&v9 initWithEntity:v6 insertIntoManagedObjectContext:v5];

  return v7;
}

@end