@interface StoredCryptoKey
- (StoredCryptoKey)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation StoredCryptoKey

- (StoredCryptoKey)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for StoredCryptoKey();
  return [(StoredCryptoKey *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end