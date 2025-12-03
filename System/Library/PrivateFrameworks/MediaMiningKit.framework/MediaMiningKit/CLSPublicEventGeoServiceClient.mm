@interface CLSPublicEventGeoServiceClient
- (CLSPublicEventGeoServiceClient)init;
- (id)publicEventQueryHelperWithTimeLocationTuples:(id)tuples queryRadius:(double)radius queryContext:(id)context simulatesTimeout:(BOOL)timeout;
- (id)queryContext;
- (int64_t)maximumBatchSize;
- (void)serverVersionWithCompletionBlock:(id)block;
@end

@implementation CLSPublicEventGeoServiceClient

- (int64_t)maximumBatchSize
{
  result = [objc_opt_self() sharedService];
  if (result)
  {
    v3 = result;
    maxParametersCountForSpatialEventLookup = [result maxParametersCountForSpatialEventLookup];

    return maxParametersCountForSpatialEventLookup;
  }

  return result;
}

- (id)publicEventQueryHelperWithTimeLocationTuples:(id)tuples queryRadius:(double)radius queryContext:(id)context simulatesTimeout:(BOOL)timeout
{
  timeoutCopy = timeout;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1C90);
  sub_22F989B90();
  v9 = objc_allocWithZone(CLSPublicEventGeoServiceQuery);
  swift_unknownObjectRetain();
  selfCopy = self;
  v11 = sub_22F989B80();
  v12 = [v9 initWithTimeLocationTuples:v11 radius:radius];

  if (v12)
  {
    initWithQueryObject_ = [objc_allocWithZone(CLSQueueBasedGeoMapQueryHelper) initWithQueryObject_];
    [initWithQueryObject_ setSimulatesTimeout_];
  }

  else
  {

    initWithQueryObject_ = 0;
  }

  swift_unknownObjectRelease();

  return initWithQueryObject_;
}

- (id)queryContext
{
  v2 = [objc_allocWithZone(CLSPublicEventGEOQueryContext) init];

  return v2;
}

- (void)serverVersionWithCompletionBlock:(id)block
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1990);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(block);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22F989BE0();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22F9921F8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22F992200;
  v12[5] = v11;
  selfCopy = self;
  sub_22F91FC54(0, 0, v7, &unk_22F991EF0, v12);
}

- (CLSPublicEventGeoServiceClient)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PublicEventGeoServiceClient();
  return [(CLSPublicEventGeoServiceClient *)&v3 init];
}

@end