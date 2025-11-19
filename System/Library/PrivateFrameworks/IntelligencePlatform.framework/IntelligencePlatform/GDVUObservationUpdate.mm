@interface GDVUObservationUpdate
- (GDEntityIdentifier)entityIdentifier;
- (int64_t)observationIdentifier;
@end

@implementation GDVUObservationUpdate

- (int64_t)observationIdentifier
{
  v2 = self;
  v3 = GDVUObservationUpdate.observationIdentifier.getter();

  return v3;
}

- (GDEntityIdentifier)entityIdentifier
{
  v2 = self;
  v3 = GDVUObservationUpdate.entityIdentifier.getter();

  return v3;
}

@end