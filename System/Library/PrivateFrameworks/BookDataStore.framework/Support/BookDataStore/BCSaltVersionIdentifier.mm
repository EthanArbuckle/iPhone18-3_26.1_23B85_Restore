@interface BCSaltVersionIdentifier
- (id)initIntoManagedObjectContext:(id)context;
@end

@implementation BCSaltVersionIdentifier

- (id)initIntoManagedObjectContext:(id)context
{
  contextCopy = context;
  v5 = [NSEntityDescription entityForName:@"BCSaltVersionIdentifier" inManagedObjectContext:contextCopy];
  v8.receiver = self;
  v8.super_class = BCSaltVersionIdentifier;
  v6 = [(BCSaltVersionIdentifier *)&v8 initWithEntity:v5 insertIntoManagedObjectContext:contextCopy];

  return v6;
}

@end