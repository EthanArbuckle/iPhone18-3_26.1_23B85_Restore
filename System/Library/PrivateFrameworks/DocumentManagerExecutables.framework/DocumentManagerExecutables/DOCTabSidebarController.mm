@interface DOCTabSidebarController
- (_TtC26DocumentManagerExecutables23DOCTabSidebarController)initWithCoder:(id)coder;
- (_TtC26DocumentManagerExecutables23DOCTabSidebarController)initWithConfiguration:(id)configuration sourceObserver:(id)observer dataSourceDelegate:(id)delegate;
- (_TtC26DocumentManagerExecutables23DOCTabSidebarController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC26DocumentManagerExecutables23DOCTabSidebarController)initWithTabs:(id)tabs;
- (id)navigationOverflowMenu;
- (void)documentCameraViewController:(id)controller didFinishWithScan:(id)scan;
- (void)importScannedDocumentAt:(id)at presentingController:(id)controller importToCurrentLocation:(BOOL)location;
@end

@implementation DOCTabSidebarController

- (_TtC26DocumentManagerExecutables23DOCTabSidebarController)initWithConfiguration:(id)configuration sourceObserver:(id)observer dataSourceDelegate:(id)delegate
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarController_configuration) = configuration;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCTabSidebarController_sourceObserver) = observer;
  objc_allocWithZone(type metadata accessor for DOCTabSidebarDataSource());
  configurationCopy = configuration;
  observerCopy = observer;
  v10 = configurationCopy;
  v11 = observerCopy;
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

- (_TtC26DocumentManagerExecutables23DOCTabSidebarController)initWithCoder:(id)coder
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

  elementWithProvider_ = [v4 elementWithProvider_];
  _Block_release(v3);

  return elementWithProvider_;
}

- (_TtC26DocumentManagerExecutables23DOCTabSidebarController)initWithTabs:(id)tabs
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC26DocumentManagerExecutables23DOCTabSidebarController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)documentCameraViewController:(id)controller didFinishWithScan:(id)scan
{
  v7 = swift_allocObject();
  *(v7 + 16) = self;
  *(v7 + 24) = controller;
  controllerCopy = controller;
  selfCopy = self;
  v9 = controllerCopy;
  scanCopy = scan;
  specialized DOCDocumentScannerWriter.convertToPDFAndWrite(document:completionHandler:)(scanCopy, closure #1 in UIViewController.doc_documentCameraViewController(_:didFinishWith:)partial apply, v7);
}

- (void)importScannedDocumentAt:(id)at presentingController:(id)controller importToCurrentLocation:(BOOL)location
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v6 + 8))(v9, v5);
}

@end