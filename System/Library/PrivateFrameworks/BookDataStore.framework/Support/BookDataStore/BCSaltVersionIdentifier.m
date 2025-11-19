@interface BCSaltVersionIdentifier
- (id)initIntoManagedObjectContext:(id)a3;
@end

@implementation BCSaltVersionIdentifier

- (id)initIntoManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = [NSEntityDescription entityForName:@"BCSaltVersionIdentifier" inManagedObjectContext:v4];
  v8.receiver = self;
  v8.super_class = BCSaltVersionIdentifier;
  v6 = [(BCSaltVersionIdentifier *)&v8 initWithEntity:v5 insertIntoManagedObjectContext:v4];

  return v6;
}

@end