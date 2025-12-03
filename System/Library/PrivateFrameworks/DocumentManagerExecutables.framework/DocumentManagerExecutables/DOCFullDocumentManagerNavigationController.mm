@interface DOCFullDocumentManagerNavigationController
- (BOOL)chromelessAppearanceDisabled;
- (BOOL)navigationBar:(id)bar shouldPopItem:(id)item;
- (NSArray)viewControllers;
- (_TtC26DocumentManagerExecutables42DOCFullDocumentManagerNavigationController)init;
- (_TtC26DocumentManagerExecutables42DOCFullDocumentManagerNavigationController)initWithConfiguration:(id)configuration;
- (_TtC26DocumentManagerExecutables42DOCFullDocumentManagerNavigationController)initWithRootViewController:(id)controller;
- (void)setChromelessAppearanceDisabled:(BOOL)disabled;
- (void)setViewControllers:(id)controllers;
@end

@implementation DOCFullDocumentManagerNavigationController

- (_TtC26DocumentManagerExecutables42DOCFullDocumentManagerNavigationController)initWithConfiguration:(id)configuration
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables42DOCFullDocumentManagerNavigationController_chromelessAppearanceDisabled) = 1;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables42DOCFullDocumentManagerNavigationController_configuration) = configuration;
  v9.receiver = self;
  v9.super_class = type metadata accessor for DOCFullDocumentManagerNavigationController();
  configurationCopy = configuration;
  v5 = [(DOCNavigationController *)&v9 init];
  v6 = *(&v5->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables42DOCFullDocumentManagerNavigationController_configuration);
  v7 = v5;
  [v6 isPickerUI];

  return v7;
}

- (NSArray)viewControllers
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for DOCFullDocumentManagerNavigationController();
  v2 = v5.receiver;
  isa = [(DOCFullDocumentManagerNavigationController *)&v5 viewControllers];
  if (!isa)
  {
    type metadata accessor for UIViewController();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  return isa;
}

- (void)setViewControllers:(id)controllers
{
  type metadata accessor for UIViewController();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  DOCFullDocumentManagerNavigationController.viewControllers.setter(v4);
}

- (BOOL)chromelessAppearanceDisabled
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables42DOCFullDocumentManagerNavigationController_chromelessAppearanceDisabled;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setChromelessAppearanceDisabled:(BOOL)disabled
{
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables42DOCFullDocumentManagerNavigationController_chromelessAppearanceDisabled;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = disabled;
  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x50);
  selfCopy = self;
  v9 = v7();
  (*((*v6 & *v9) + 0x88))(*(&self->super.super.super.super.super.isa + v5));
}

- (BOOL)navigationBar:(id)bar shouldPopItem:(id)item
{
  selfCopy = self;
  if ([(DOCFullDocumentManagerNavigationController *)selfCopy delegate])
  {
    v5 = swift_dynamicCastObjCProtocolConditional();
    if (v5)
    {
      v6 = v5;
      topViewController = [(DOCFullDocumentManagerNavigationController *)selfCopy topViewController];
      LOBYTE(v6) = [v6 navigationController:selfCopy canPop:topViewController];

      swift_unknownObjectRelease();
      return v6;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return 1;
}

- (_TtC26DocumentManagerExecutables42DOCFullDocumentManagerNavigationController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables42DOCFullDocumentManagerNavigationController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end