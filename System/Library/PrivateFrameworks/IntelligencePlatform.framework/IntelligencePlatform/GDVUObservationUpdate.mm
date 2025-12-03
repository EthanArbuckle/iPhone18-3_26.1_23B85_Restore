@interface GDVUObservationUpdate
- (GDEntityIdentifier)entityIdentifier;
- (int64_t)observationIdentifier;
@end

@implementation GDVUObservationUpdate

- (int64_t)observationIdentifier
{
  selfCopy = self;
  v3 = GDVUObservationUpdate.observationIdentifier.getter();

  return v3;
}

- (GDEntityIdentifier)entityIdentifier
{
  selfCopy = self;
  v3 = GDVUObservationUpdate.entityIdentifier.getter();

  return v3;
}

@end