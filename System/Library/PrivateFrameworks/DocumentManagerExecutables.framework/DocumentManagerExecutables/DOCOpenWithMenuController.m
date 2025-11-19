@interface DOCOpenWithMenuController
+ (_TtC26DocumentManagerExecutables25DOCOpenWithMenuController)shared;
- (_TtC26DocumentManagerExecutables25DOCOpenWithMenuController)init;
- (id)openWithDeferredMenuFor:(id)a3 suppressTitle:(BOOL)a4;
- (void)openWithFlow:(id)a3 didFailToOpenAppStoreWithError:(id)a4;
- (void)openWithFlow:(id)a3 didFailToOpenUsingBoundBundle:(id)a4 withError:(id)a5;
- (void)openWithFlowDidOpenAppStore:(id)a3;
- (void)openWithMenuFromConstructorDidSelectAppStoreItem:(id)a3;
@end

@implementation DOCOpenWithMenuController

+ (_TtC26DocumentManagerExecutables25DOCOpenWithMenuController)shared
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static DOCOpenWithMenuController.shared;

  return v3;
}

- (id)openWithDeferredMenuFor:(id)a3 suppressTitle:(BOOL)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  DOCOpenWithMenuController.openWithDeferredMenu(for:suppressTitle:)(a3, a4);
  v9 = v8;
  swift_unknownObjectRelease();

  return v9;
}

- (void)openWithMenuFromConstructorDidSelectAppStoreItem:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249B9A480;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 32) = 0xD000000000000023;
  *(v3 + 40) = 0x8000000249BCA910;
  print(_:separator:terminator:)();
}

- (void)openWithFlow:(id)a3 didFailToOpenUsingBoundBundle:(id)a4 withError:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  v9 = a5;
  v8 = self;
  specialized DOCOpenWithMenuController.openWithFlow(_:didFailToOpenUsing:error:)();

  swift_unknownObjectRelease();
}

- (void)openWithFlowDidOpenAppStore:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249B9A480;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 32) = 0xD000000000000010;
  *(v3 + 40) = 0x8000000249BCA940;
  print(_:separator:terminator:)();
}

- (void)openWithFlow:(id)a3 didFailToOpenAppStoreWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  specialized DOCOpenWithMenuController.openWithFlow(_:didFailToOpenAppStoreWithError:)();
}

- (_TtC26DocumentManagerExecutables25DOCOpenWithMenuController)init
{
  *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCOpenWithMenuController_openWithFlow) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCOpenWithMenuController_setHandlerFlow) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCOpenWithMenuController();
  return [(DOCOpenWithMenuController *)&v3 init];
}

@end