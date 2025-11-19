@interface WidgetExtensionProvider
- (_TtC14CarPlayAssetUI23WidgetExtensionProvider)init;
- (_TtC14CarPlayAssetUI23WidgetExtensionProvider)initWithOptions:(id)a3;
- (id)initIncludingIntents:(BOOL)a3;
- (void)registerObserver:(id)a3;
@end

@implementation WidgetExtensionProvider

- (_TtC14CarPlayAssetUI23WidgetExtensionProvider)initWithOptions:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for WidgetExtensionProvider();
  return [(WidgetExtensionProvider *)&v5 initWithOptions:a3];
}

- (void)registerObserver:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAFB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_242F05450();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = self;
  v9[5] = a3;
  swift_unknownObjectRetain();
  v10 = self;
  sub_242E8C7B4(0, 0, v7, &unk_242F433A0, v9);
}

- (id)initIncludingIntents:(BOOL)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC14CarPlayAssetUI23WidgetExtensionProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end