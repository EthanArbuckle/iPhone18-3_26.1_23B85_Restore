@interface WidgetExtensionProviderObserver
- (_TtC14CarPlayAssetUI31WidgetExtensionProviderObserver)init;
- (void)dealloc;
- (void)extensionsDidChangeForExtensionProvider:(id)provider;
@end

@implementation WidgetExtensionProviderObserver

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_provider);
  selfCopy = self;
  [v2 unregisterObserver_];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for WidgetExtensionProviderObserver();
  [(WidgetExtensionProviderObserver *)&v4 dealloc];
}

- (void)extensionsDidChangeForExtensionProvider:(id)provider
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAFB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_242F05450();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  selfCopy = self;
  sub_242E8C7B4(0, 0, v6, &unk_242F43398, v8);
}

- (_TtC14CarPlayAssetUI31WidgetExtensionProviderObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end