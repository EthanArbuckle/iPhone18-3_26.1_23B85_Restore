@interface CIDCInternalPayloadBuilder
- (_TtC17CoreIDCredBuilder26CIDCInternalPayloadBuilder)init;
- (_TtC17CoreIDCredBuilder26CIDCInternalPayloadBuilder)initWithDelegate:(id)delegate payloadBuilder:(id)builder;
- (void)buildPayloadWithDetails:(CIDCPayloadBuilderDetails *)details completionHandler:(id)handler;
@end

@implementation CIDCInternalPayloadBuilder

- (_TtC17CoreIDCredBuilder26CIDCInternalPayloadBuilder)initWithDelegate:(id)delegate payloadBuilder:(id)builder
{
  swift_unknownObjectRetain();
  builderCopy = builder;
  v6 = sub_24567E3B8();
  swift_unknownObjectRelease();

  return v6;
}

- (void)buildPayloadWithDetails:(CIDCPayloadBuilderDetails *)details completionHandler:(id)handler
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE208D0, &qword_245682BF8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = details;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_245681F4C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_245682C08;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_245682C18;
  v14[5] = v13;
  detailsCopy = details;
  selfCopy = self;
  sub_24567C9C8(0, 0, v9, &unk_245682C28, v14);
}

- (_TtC17CoreIDCredBuilder26CIDCInternalPayloadBuilder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end