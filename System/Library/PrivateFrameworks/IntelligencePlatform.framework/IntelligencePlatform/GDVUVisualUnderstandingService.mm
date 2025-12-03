@interface GDVUVisualUnderstandingService
- (BOOL)keyObservationFor:(id)for output:(int64_t *)output error:(id *)error;
- (BOOL)similarEntitiesTo:(id)to error:(id *)error body:(id)body;
- (BOOL)similarityWithBetween:(id)between and:(id)and output:(double *)output error:(id *)error;
- (GDVUGallery)gallery;
- (GDVUVisualUnderstandingService)initWithClient:(id)client version:(int64_t)version url:(id)url error:(id *)error;
- (id)changesSince:(id)since error:(id *)error body:(id)body;
- (id)entitiesFor:(id)for error:(id *)error body:(id)body;
- (id)inferredDeviceOwner;
- (id)inferredDeviceOwnerWithIgnoreMeGroundTruth:(BOOL)truth;
- (id)recognizeIn:(id)in context:(id)context error:(id *)error;
@end

@implementation GDVUVisualUnderstandingService

- (GDVUGallery)gallery
{
  selfCopy = self;
  v3 = GDVUVisualUnderstandingService.gallery.getter();

  return v3;
}

- (GDVUVisualUnderstandingService)initWithClient:(id)client version:(int64_t)version url:(id)url error:(id *)error
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
  if (url)
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
  clientCopy = client;
  GDVUVisualUnderstandingService.init(client:version:url:)();
  return result;
}

- (id)recognizeIn:(id)in context:(id)context error:(id *)error
{
  inCopy = in;
  contextCopy = context;
  selfCopy = self;
  GDVUVisualUnderstandingService.recognize(in:context:)();

  type metadata accessor for GDVURecognitionResult(v10);
  v11 = sub_1ABF240C4();

  return v11;
}

- (id)entitiesFor:(id)for error:(id *)error body:(id)body
{
  v7 = _Block_copy(body);
  if (for)
  {
    sub_1ABAFF390(0, &unk_1EB4CE670, off_1E795FE98);
    for = sub_1ABF240D4();
  }

  _Block_copy(v7);
  selfCopy = self;
  v9 = sub_1ABECA6CC(for, selfCopy, v7);

  _Block_release(v7);

  return v9;
}

- (BOOL)keyObservationFor:(id)for output:(int64_t *)output error:(id *)error
{
  forCopy = for;
  selfCopy = self;
  GDVUVisualUnderstandingService.keyObservation(for:output:)(forCopy, output);

  return 1;
}

- (BOOL)similarityWithBetween:(id)between and:(id)and output:(double *)output error:(id *)error
{
  betweenCopy = between;
  andCopy = and;
  selfCopy = self;
  GDVUVisualUnderstandingService.similarity(withBetween:and:output:)(betweenCopy, andCopy, output);

  return 1;
}

- (BOOL)similarEntitiesTo:(id)to error:(id *)error body:(id)body
{
  v7 = _Block_copy(body);
  _Block_copy(v7);
  toCopy = to;
  selfCopy = self;
  sub_1ABECB5B0(toCopy, selfCopy, v7);

  _Block_release(v7);
  return 1;
}

- (id)changesSince:(id)since error:(id *)error body:(id)body
{
  v7 = _Block_copy(body);
  _Block_copy(v7);
  sinceCopy = since;
  selfCopy = self;
  v10 = sub_1ABECB854(sinceCopy, selfCopy, v7);

  _Block_release(v7);

  return v10;
}

- (id)inferredDeviceOwner
{
  selfCopy = self;
  v3 = sub_1ABECC04C();

  return v3;
}

- (id)inferredDeviceOwnerWithIgnoreMeGroundTruth:(BOOL)truth
{
  selfCopy = self;
  v4 = sub_1ABECC210();

  return v4;
}

@end