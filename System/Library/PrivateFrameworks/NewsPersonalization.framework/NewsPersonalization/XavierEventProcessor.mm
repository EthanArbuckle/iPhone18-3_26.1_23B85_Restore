@interface XavierEventProcessor
- (_TtC19NewsPersonalization20XavierEventProcessor)init;
- (void)configurationManager:(id)a3 appConfigurationDidChange:(id)a4;
@end

@implementation XavierEventProcessor

- (_TtC19NewsPersonalization20XavierEventProcessor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)configurationManager:(id)a3 appConfigurationDidChange:(id)a4
{
  v6 = sub_1C6D76A40();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  swift_unknownObjectRetain();
  v14 = self;
  v15 = [a4 personalizationTreatment];
  sub_1C6B7A268();

  v16 = *(&v14->super.isa + OBJC_IVAR____TtC19NewsPersonalization20XavierEventProcessor__configuration);
  (*(v7 + 16))(v10, v13, v6);

  sub_1C6D78240();
  swift_unknownObjectRelease();

  (*(v7 + 8))(v13, v6);
}

@end