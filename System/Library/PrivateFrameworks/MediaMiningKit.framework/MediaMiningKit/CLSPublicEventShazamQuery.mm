@interface CLSPublicEventShazamQuery
- (CLSPublicEventShazamQuery)init;
- (CLSPublicEventShazamQuery)initWithTimeLocationTuples:(id)a3 radius:(double)a4 queryContext:(id)a5;
- (NSDictionary)invalidationTokens;
- (NSDictionary)resolvedPublicEventsByTimeLocationTupleIdentifier;
- (void)submitWithHandler:(id)a3;
@end

@implementation CLSPublicEventShazamQuery

- (NSDictionary)invalidationTokens
{
  if (*(self + OBJC_IVAR___CLSPublicEventShazamQuery_invalidationTokens))
  {

    v2 = sub_22F989AA0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSDictionary)resolvedPublicEventsByTimeLocationTupleIdentifier
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1C98);
  v2 = sub_22F989AA0();

  return v2;
}

- (CLSPublicEventShazamQuery)initWithTimeLocationTuples:(id)a3 radius:(double)a4 queryContext:(id)a5
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1C90);
  v6 = sub_22F989B90();
  swift_unknownObjectRetain();
  v7 = sub_22F91BCD8(v6, a4);
  swift_unknownObjectRelease();
  return v7;
}

- (void)submitWithHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD1990);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22F989BE0();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22F992110;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22F992200;
  v12[5] = v11;
  v13 = self;
  sub_22F91FC54(0, 0, v7, &unk_22F991EF0, v12);
}

- (CLSPublicEventShazamQuery)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end