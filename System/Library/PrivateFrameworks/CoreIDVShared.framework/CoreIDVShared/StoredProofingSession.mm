@interface StoredProofingSession
- (StoredProofingSession)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation StoredProofingSession

- (StoredProofingSession)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for StoredProofingSession();
  return [(StoredProofingSession *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end