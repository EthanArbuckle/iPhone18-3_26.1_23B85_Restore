@interface DOCTabSidebarController
- (_TtC26DocumentManagerExecutables23DOCTabSidebarController)initWithCoder:(id)a3;
- (_TtC26DocumentManagerExecutables23DOCTabSidebarController)initWithConfiguration:(id)a3 sourceObserver:(id)a4 dataSourceDelegate:(id)a5;
- (_TtC26DocumentManagerExecutables23DOCTabSidebarController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC26DocumentManagerExecutables23DOCTabSidebarController)initWithTabs:(id)a3;
- (id)navigationOverflowMenu;
- (void)documentCameraViewController:(id)a3 didFinishWithScan:(id)a4;
- (void)importScannedDocumentAt:(id)a3 presentingController:(id)a4 importToCurrentLocation:(BOOL)a5;
@end

@implementation DOCTabSidebarController

- (_TtC26DocumentManagerExecutables23DOCTabSidebarController)initWithConfiguration:(id)a3 sourceObserver:(id)a4 dataSourceDelegate:(id)a5
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarController_configuration) = a3;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarController_sourceObserver) = a4;
  objc_allocWithZone(type metadata accessor for DOCTabSidebarDataSource());
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = v9;
  swift_unknownObjectRetain_n();
  v12 = v10;
  v13 = v11;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarController_dataSource) = DOCTabSidebarDataSource.init(configuration:sourceObserver:delegate:)(v12, v13);
  v16.receiver = self;
  v16.super_class = type metadata accessor for DOCTabSidebarController();
  v14 = [(DOCTabSidebarController *)&v16 initWithNibName:0 bundle:0];

  swift_unknownObjectRelease();
  return v14;
}

- (_TtC26DocumentManagerExecutables23DOCTabSidebarController)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)navigationOverflowMenu
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = closure #1 in DOCTabSidebarController.navigationOverflowMenu()partial apply;
  v7[5] = v2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
  v7[3] = &block_descriptor_13_9;
  v3 = _Block_copy(v7);
  v4 = objc_opt_self();

  v5 = [v4 elementWithProvider_];
  _Block_release(v3);

  return v5;
}

- (_TtC26DocumentManagerExecutables23DOCTabSidebarController)initWithTabs:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables23DOCTabSidebarController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)documentCameraViewController:(id)a3 didFinishWithScan:(id)a4
{
  v7 = swift_allocObject();
  *(v7 + 16) = self;
  *(v7 + 24) = a3;
  v8 = a3;
  v11 = self;
  v9 = v8;
  v10 = a4;
  specialized DOCDocumentScannerWriter.convertToPDFAndWrite(document:completionHandler:)(v10, closure #1 in UIViewController.doc_documentCameraViewController(_:didFinishWith:)partial apply, v7);
}

- (void)importScannedDocumentAt:(id)a3 presentingController:(id)a4 importToCurrentLocation:(BOOL)a5
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v6 + 8))(v9, v5);
}

@end