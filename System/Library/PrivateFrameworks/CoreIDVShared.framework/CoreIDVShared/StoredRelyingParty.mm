@interface StoredRelyingParty
- (StoredRelyingParty)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation StoredRelyingParty

- (StoredRelyingParty)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for StoredRelyingParty();
  return [(StoredRelyingParty *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end