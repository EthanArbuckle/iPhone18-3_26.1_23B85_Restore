@interface ODISessionInternal
- (NSString)description;
- (_TtC7CoreODI18ODISessionInternal)init;
- (_TtC7CoreODI18ODISessionInternal)initWithServiceIdentifier:(id)a3 forDSIDType:(unint64_t)a4 locationBundle:(id)a5 andLocationBundleIdentifier:(id)a6 sessionStateDelegate:(id)a7;
- (void)getAssessment:(id)a3;
- (void)provideFeedbackOnPartialAssessmentID:(id)a3;
- (void)provideFeedbackOnPayloadOutcome:(unint64_t)a3 feedbackRecorded:(id)a4;
- (void)updateWithAdditionalAttributes:(id)a3;
- (void)validateForDeinit;
@end

@implementation ODISessionInternal

- (NSString)description
{

  sub_24619FAEC();
  MEMORY[0x24C19A830](0x697373655349444FLL, 0xEF20726F66206E6FLL);
  v5 = *(&self->super.super.isa + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_providerID);
  type metadata accessor for ODIServiceProviderId(0);
  sub_24619FB6C();

  v3 = sub_24619F88C();

  return v3;
}

- (_TtC7CoreODI18ODISessionInternal)initWithServiceIdentifier:(id)a3 forDSIDType:(unint64_t)a4 locationBundle:(id)a5 andLocationBundleIdentifier:(id)a6 sessionStateDelegate:(id)a7
{
  if (a6)
  {
    v11 = sub_24619F8BC();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = a3;
  v15 = a5;
  swift_unknownObjectRetain();
  return ODISessionInternal.init(serviceIdentifier:forDSIDType:locationBundle:andLocationBundleIdentifier:sessionStateDelegate:)(v14, a4, a5, v11, v13, a7);
}

- (void)updateWithAdditionalAttributes:(id)a3
{
  v4 = a3;

  sub_24617707C(a3);
}

- (void)getAssessment:(id)a3
{
  v5 = sub_24619F4DC();
  v18 = *(v5 - 8);
  v19 = v5;
  v6 = *(v18 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24619F7FC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(a3);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = *&self->$defaultActor[OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 24];
  __swift_project_boxed_opaque_existential_1((&self->super.super.isa + OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger), *&self->$defaultActor[OBJC_IVAR____TtC7CoreODI18ODISessionInternal_logger + 16]);
  (*(v10 + 104))(v13, *MEMORY[0x277D00790], v9);

  sub_24619F6CC();
  (*(v10 + 8))(v13, v9);
  sub_24619F4BC();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_24618B9C4;
  *(v17 + 24) = v15;

  sub_246180944(v8, sub_24618BD1C, v17);

  (*(v18 + 8))(v8, v19);
}

- (void)provideFeedbackOnPayloadOutcome:(unint64_t)a3 feedbackRecorded:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  sub_24617823C(a3, sub_24618B9B4, v6);
}

- (void)provideFeedbackOnPartialAssessmentID:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_24619F8BC();
  v10 = v9;
  v11 = sub_24619F9CC();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  v12[5] = v8;
  v12[6] = v10;

  sub_2461703A8(0, 0, v7, &unk_2461A1320, v12);
}

- (void)validateForDeinit
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  v7 = sub_24619F9CC();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;

  sub_2461703A8(0, 0, v6, &unk_2461A1318, v8);
}

- (_TtC7CoreODI18ODISessionInternal)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end