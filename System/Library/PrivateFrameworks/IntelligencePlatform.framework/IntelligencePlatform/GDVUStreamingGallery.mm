@interface GDVUStreamingGallery
- (id)addWithObservations:(id)a3 observationIdentifiers:(id)a4 trackIdentifiers:(id)a5 context:(id)a6 error:(id *)a7;
- (id)updateWithMaxKeyFacesPerCluster:(int64_t)a3 error:(id *)a4;
- (id)updateWithMaxKeyFacesPerCluster:(int64_t)a3 sortBy:(id)a4 error:(id *)a5;
@end

@implementation GDVUStreamingGallery

- (id)updateWithMaxKeyFacesPerCluster:(int64_t)a3 error:(id *)a4
{
  v5 = self;
  GDVUStreamingGallery.update(withMaxKeyFacesPerCluster:)(a3);

  type metadata accessor for GDVUClusterResult(v6);
  v7 = sub_1ABF240C4();

  return v7;
}

- (id)updateWithMaxKeyFacesPerCluster:(int64_t)a3 sortBy:(id)a4 error:(id *)a5
{
  sub_1ABF240D4();
  v6 = self;
  GDVUStreamingGallery.update(withMaxKeyFacesPerCluster:sortBy:)();

  type metadata accessor for GDVUClusterResult(v7);
  v8 = sub_1ABF240C4();

  return v8;
}

- (id)addWithObservations:(id)a3 observationIdentifiers:(id)a4 trackIdentifiers:(id)a5 context:(id)a6 error:(id *)a7
{
  sub_1ABAFF390(0, &qword_1EB4CE6C8, 0x1E69845D8);
  v11 = sub_1ABF240D4();
  if (a4)
  {
    a4 = sub_1ABF240D4();
  }

  if (a5)
  {
    a5 = sub_1ABF240D4();
  }

  v12 = a6;
  v13 = self;
  GDVUStreamingGallery.add(with:observationIdentifiers:trackIdentifiers:context:)(v11, a4, a5, a6);

  v14 = sub_1ABF240C4();

  return v14;
}

@end