@interface StoredAuthACL
- (StoredAuthACL)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation StoredAuthACL

- (StoredAuthACL)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for StoredAuthACL();
  return [(StoredAuthACL *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end