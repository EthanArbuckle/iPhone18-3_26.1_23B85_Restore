@interface StoredTrustKey
- (StoredTrustKey)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation StoredTrustKey

- (StoredTrustKey)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for StoredTrustKey();
  return [(StoredTrustKey *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end