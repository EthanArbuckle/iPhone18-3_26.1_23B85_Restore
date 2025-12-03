@interface GDVUStreamingGallery
- (id)addWithObservations:(id)observations observationIdentifiers:(id)identifiers trackIdentifiers:(id)trackIdentifiers context:(id)context error:(id *)error;
- (id)updateWithMaxKeyFacesPerCluster:(int64_t)cluster error:(id *)error;
- (id)updateWithMaxKeyFacesPerCluster:(int64_t)cluster sortBy:(id)by error:(id *)error;
@end

@implementation GDVUStreamingGallery

- (id)updateWithMaxKeyFacesPerCluster:(int64_t)cluster error:(id *)error
{
  selfCopy = self;
  GDVUStreamingGallery.update(withMaxKeyFacesPerCluster:)(cluster);

  type metadata accessor for GDVUClusterResult(v6);
  v7 = sub_1ABF240C4();

  return v7;
}

- (id)updateWithMaxKeyFacesPerCluster:(int64_t)cluster sortBy:(id)by error:(id *)error
{
  sub_1ABF240D4();
  selfCopy = self;
  GDVUStreamingGallery.update(withMaxKeyFacesPerCluster:sortBy:)();

  type metadata accessor for GDVUClusterResult(v7);
  v8 = sub_1ABF240C4();

  return v8;
}

- (id)addWithObservations:(id)observations observationIdentifiers:(id)identifiers trackIdentifiers:(id)trackIdentifiers context:(id)context error:(id *)error
{
  sub_1ABAFF390(0, &qword_1EB4CE6C8, 0x1E69845D8);
  v11 = sub_1ABF240D4();
  if (identifiers)
  {
    identifiers = sub_1ABF240D4();
  }

  if (trackIdentifiers)
  {
    trackIdentifiers = sub_1ABF240D4();
  }

  contextCopy = context;
  selfCopy = self;
  GDVUStreamingGallery.add(with:observationIdentifiers:trackIdentifiers:context:)(v11, identifiers, trackIdentifiers, context);

  v14 = sub_1ABF240C4();

  return v14;
}

@end