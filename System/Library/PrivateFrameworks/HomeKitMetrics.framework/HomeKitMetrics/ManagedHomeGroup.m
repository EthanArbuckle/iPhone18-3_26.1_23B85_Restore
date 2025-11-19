@interface ManagedHomeGroup
- (ManagedHomeGroup)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation ManagedHomeGroup

- (ManagedHomeGroup)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ManagedHomeGroup();
  return [(ManagedNamedGroup *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end