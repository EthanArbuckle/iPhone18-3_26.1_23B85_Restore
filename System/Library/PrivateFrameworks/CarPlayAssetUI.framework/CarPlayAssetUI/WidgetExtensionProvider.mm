@interface WidgetExtensionProvider
- (_TtC14CarPlayAssetUI23WidgetExtensionProvider)init;
- (_TtC14CarPlayAssetUI23WidgetExtensionProvider)initWithOptions:(id)options;
- (id)initIncludingIntents:(BOOL)intents;
- (void)registerObserver:(id)observer;
@end

@implementation WidgetExtensionProvider

- (_TtC14CarPlayAssetUI23WidgetExtensionProvider)initWithOptions:(id)options
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for WidgetExtensionProvider();
  return [(WidgetExtensionProvider *)&v5 initWithOptions:options];
}

- (void)registerObserver:(id)observer
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
  v9[5] = observer;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_242E8C7B4(0, 0, v7, &unk_242F433A0, v9);
}

- (id)initIncludingIntents:(BOOL)intents
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