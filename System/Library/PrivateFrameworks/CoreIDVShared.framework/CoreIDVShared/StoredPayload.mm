@interface StoredPayload
- (StoredPayload)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation StoredPayload

- (StoredPayload)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for StoredPayload();
  return [(StoredPayload *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end