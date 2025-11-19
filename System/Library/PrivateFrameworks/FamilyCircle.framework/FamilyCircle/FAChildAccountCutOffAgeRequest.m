@interface FAChildAccountCutOffAgeRequest
- (FAChildAccountCutOffAgeRequest)init;
- (FAChildAccountCutOffAgeRequest)initWithUrlProvider:(id)a3 urlSession:(id)a4;
- (void)fetchWithCompletionHandler:(id)a3;
@end

@implementation FAChildAccountCutOffAgeRequest

- (FAChildAccountCutOffAgeRequest)initWithUrlProvider:(id)a3 urlSession:(id)a4
{
  *(&self->super.isa + OBJC_IVAR___FAChildAccountCutOffAgeRequest_urlProvider) = a3;
  *(&self->super.isa + OBJC_IVAR___FAChildAccountCutOffAgeRequest_urlSession) = a4;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FAChildAccountCutOffAgeRequest();
  swift_unknownObjectRetain();
  v5 = a4;
  return [(FAChildAccountCutOffAgeRequest *)&v7 init];
}

- (void)fetchWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9833F8, &qword_1B7164C30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1B715E450();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B7166250;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B7164A30;
  v13[5] = v12;
  v14 = self;
  sub_1B7105F20(0, 0, v8, &unk_1B7166270, v13);
}

- (FAChildAccountCutOffAgeRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end