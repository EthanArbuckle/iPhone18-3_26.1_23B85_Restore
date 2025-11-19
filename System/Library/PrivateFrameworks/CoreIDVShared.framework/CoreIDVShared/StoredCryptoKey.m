@interface StoredCryptoKey
- (StoredCryptoKey)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation StoredCryptoKey

- (StoredCryptoKey)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for StoredCryptoKey();
  return [(StoredCryptoKey *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end