@interface ODIPartialAssessmentInitiator
- (_TtC7CoreODI29ODIPartialAssessmentInitiator)init;
- (_TtC7CoreODI29ODIPartialAssessmentInitiator)initWithProviderID:(id)a3;
- (id)makeInitialPartialAssessmentID;
- (id)makeInitialPartialAssessmentPayload;
@end

@implementation ODIPartialAssessmentInitiator

- (_TtC7CoreODI29ODIPartialAssessmentInitiator)initWithProviderID:(id)a3
{
  v5 = sub_24619F64C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&self->super.isa + OBJC_IVAR____TtC7CoreODI29ODIPartialAssessmentInitiator_providerID) = a3;
  sub_24619F8BC();
  v10 = a3;
  sub_24619F62C();
  (*(v6 + 32))(self + OBJC_IVAR____TtC7CoreODI29ODIPartialAssessmentInitiator_adapter, v9, v5);
  v11 = type metadata accessor for ODIPartialAssessmentInitiator();
  v14.receiver = self;
  v14.super_class = v11;
  v12 = [(ODIPartialAssessmentInitiator *)&v14 init];

  return v12;
}

- (id)makeInitialPartialAssessmentPayload
{
  v2 = self;
  sub_246196AE0();

  v3 = sub_24619F88C();

  return v3;
}

- (id)makeInitialPartialAssessmentID
{
  v2 = sub_24619F88C();

  return v2;
}

- (_TtC7CoreODI29ODIPartialAssessmentInitiator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end