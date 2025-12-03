@interface StoredCredential
- (StoredCredential)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation StoredCredential

- (StoredCredential)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for StoredCredential();
  return [(StoredCredential *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end