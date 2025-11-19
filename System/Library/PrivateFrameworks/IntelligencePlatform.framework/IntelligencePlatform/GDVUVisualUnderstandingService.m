@interface GDVUVisualUnderstandingService
- (BOOL)keyObservationFor:(id)a3 output:(int64_t *)a4 error:(id *)a5;
- (BOOL)similarEntitiesTo:(id)a3 error:(id *)a4 body:(id)a5;
- (BOOL)similarityWithBetween:(id)a3 and:(id)a4 output:(double *)a5 error:(id *)a6;
- (GDVUGallery)gallery;
- (GDVUVisualUnderstandingService)initWithClient:(id)a3 version:(int64_t)a4 url:(id)a5 error:(id *)a6;
- (id)changesSince:(id)a3 error:(id *)a4 body:(id)a5;
- (id)entitiesFor:(id)a3 error:(id *)a4 body:(id)a5;
- (id)inferredDeviceOwner;
- (id)inferredDeviceOwnerWithIgnoreMeGroundTruth:(BOOL)a3;
- (id)recognizeIn:(id)a3 context:(id)a4 error:(id *)a5;
@end

@implementation GDVUVisualUnderstandingService

- (GDVUGallery)gallery
{
  v2 = self;
  v3 = GDVUVisualUnderstandingService.gallery.getter();

  return v3;
}

- (GDVUVisualUnderstandingService)initWithClient:(id)a3 version:(int64_t)a4 url:(id)a5 error:(id *)a6
{
  v8 = sub_1ABF21CF4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1ABAD219C(&qword_1EB4D1E40, &qword_1ABF349F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v20[-v15];
  if (a5)
  {
    sub_1ABF21CA4();
    (*(v9 + 32))(v16, v12, v8);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  sub_1ABA7B9B4(v16, v17, 1, v8);
  v18 = a3;
  GDVUVisualUnderstandingService.init(client:version:url:)();
  return result;
}

- (id)recognizeIn:(id)a3 context:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  GDVUVisualUnderstandingService.recognize(in:context:)();

  type metadata accessor for GDVURecognitionResult(v10);
  v11 = sub_1ABF240C4();

  return v11;
}

- (id)entitiesFor:(id)a3 error:(id *)a4 body:(id)a5
{
  v7 = _Block_copy(a5);
  if (a3)
  {
    sub_1ABAFF390(0, &unk_1EB4CE670, off_1E795FE98);
    a3 = sub_1ABF240D4();
  }

  _Block_copy(v7);
  v8 = self;
  v9 = sub_1ABECA6CC(a3, v8, v7);

  _Block_release(v7);

  return v9;
}

- (BOOL)keyObservationFor:(id)a3 output:(int64_t *)a4 error:(id *)a5
{
  v7 = a3;
  v8 = self;
  GDVUVisualUnderstandingService.keyObservation(for:output:)(v7, a4);

  return 1;
}

- (BOOL)similarityWithBetween:(id)a3 and:(id)a4 output:(double *)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = self;
  GDVUVisualUnderstandingService.similarity(withBetween:and:output:)(v9, v10, a5);

  return 1;
}

- (BOOL)similarEntitiesTo:(id)a3 error:(id *)a4 body:(id)a5
{
  v7 = _Block_copy(a5);
  _Block_copy(v7);
  v8 = a3;
  v9 = self;
  sub_1ABECB5B0(v8, v9, v7);

  _Block_release(v7);
  return 1;
}

- (id)changesSince:(id)a3 error:(id *)a4 body:(id)a5
{
  v7 = _Block_copy(a5);
  _Block_copy(v7);
  v8 = a3;
  v9 = self;
  v10 = sub_1ABECB854(v8, v9, v7);

  _Block_release(v7);

  return v10;
}

- (id)inferredDeviceOwner
{
  v2 = self;
  v3 = sub_1ABECC04C();

  return v3;
}

- (id)inferredDeviceOwnerWithIgnoreMeGroundTruth:(BOOL)a3
{
  v3 = self;
  v4 = sub_1ABECC210();

  return v4;
}

@end