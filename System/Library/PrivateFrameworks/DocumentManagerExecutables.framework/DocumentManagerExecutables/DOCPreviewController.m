@interface DOCPreviewController
+ (id)sharedControllerFor:(id)a3;
+ (void)clearSharedControllerFor:(id)a3;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (NSArray)keyCommands;
- (QLPreviewControllerDelegate)delegate;
- (_TtC26DocumentManagerExecutables20DOCPreviewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)dismissActionsForPreviewController:(id)a3;
- (id)excludedActivityTypesForPreviewController:(id)a3;
- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4;
- (id)previewController:(id)a3 transitionViewForPreviewItem:(id)a4;
- (int64_t)numberOfPreviewItemsInPreviewController:(id)a3;
- (int64_t)previewController:(id)a3 editingModeForPreviewItem:(id)a4;
- (void)documentPicker:(id)a3 didConfirmDocumentsAtURLs:(id)a4;
- (void)duplicate:(id)a3;
- (void)move:(id)a3;
- (void)previewController:(id)a3 didSaveEditedCopyOfPreviewItem:(id)a4 atURL:(id)a5;
- (void)previewController:(id)a3 willSaveEditedItem:(id)a4;
- (void)previewControllerWillDismiss:(id)a3;
- (void)reallyBecomeCurrent:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setModalPresentationStyle:(int64_t)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation DOCPreviewController

- (void)documentPicker:(id)a3 didConfirmDocumentsAtURLs:(id)a4
{
  type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  specialized DOCPreviewController.documentPicker(_:didConfirmDocumentsAt:)(v6);
}

- (QLPreviewControllerDelegate)delegate
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCPreviewController();
  v2 = [(QLPreviewController *)&v4 delegate];

  return v2;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  if (!a3)
  {
    v4 = self;
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for DOCPreviewController();
  v5 = self;
  swift_unknownObjectRetain();
  [(QLPreviewController *)&v6 setDelegate:v4];

  swift_unknownObjectRelease();
}

- (NSArray)keyCommands
{
  v2 = self;
  v3 = DOCPreviewController.keyCommands.getter();

  if (v3)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIKeyCommand);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = DOCPreviewController.canPerformAction(_:withSender:)(a3, v10);

  outlined destroy of CharacterSet?(v10, &_sypSgMd);
  return v8;
}

- (void)duplicate:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  DOCPreviewController.duplicate(_:)();

  outlined destroy of CharacterSet?(v6, &_sypSgMd);
}

- (void)move:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  DOCPreviewController.moveCurrentItem()();

  outlined destroy of CharacterSet?(v6, &_sypSgMd);
}

+ (id)sharedControllerFor:(id)a3
{
  v4 = a3;
  v5 = specialized static DOCPreviewController.sharedController(for:)(a3);

  return v5;
}

+ (void)clearSharedControllerFor:(id)a3
{
  if (a3)
  {
    v3 = one-time initialization token for mapTable;
    v4 = a3;
    if (v3 != -1)
    {
      swift_once();
    }

    [static DOCPreviewController.mapTable removeObjectForKey_];
  }

  else
  {
    if (one-time initialization token for Source != -1)
    {
      swift_once();
    }

    static os_log_type_t.debug.getter();

    os_log(_:dso:log:type:_:)();
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for DOCPreviewController();
  v4 = v6.receiver;
  [(QLPreviewController *)&v6 viewWillAppear:v3];
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  (*((*MEMORY[0x277D85000] & *v4) + 0x1F0))(v5);
  DOCPreviewController.loadLinkNavigateInteraction()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for DOCPreviewController();
  v15.receiver = self;
  v15.super_class = v9;
  v10 = self;
  v11 = [(QLPreviewController *)&v15 viewDidAppear:v3];
  (*((*MEMORY[0x277D85000] & v10->super.super.super.super.super.isa) + 0x288))(v11);
  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_importedURL;
  swift_beginAccess();
  outlined assign with take of URL?(v8, v10 + v13);
  swift_endAccess();
}

- (void)setModalPresentationStyle:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCPreviewController();
  [(DOCPreviewController *)&v4 setModalPresentationStyle:a3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  DOCPreviewController.viewWillDisappear(_:)(a3);
}

- (void)reallyBecomeCurrent:(id)a3
{
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x258);
  v6 = self;
  v5 = v4();
  [v5 becomeCurrent];

  if ([(QLPreviewController *)v6 currentPreviewItem])
  {
    (*((*v3 & v6->super.super.super.super.super.isa) + 0x208))();
    swift_unknownObjectRelease();
  }
}

- (int64_t)numberOfPreviewItemsInPreviewController:(id)a3
{
  v3 = *(&self->super.super.super._overrideTransitioningDelegate + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source);
  if (v3 == 255)
  {
    return 0;
  }

  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_source);
  if (v3)
  {
    return *(v4 + 16);
  }

  if (v4 >> 62)
  {
    return __CocoaSet.count.getter();
  }

  return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = specialized DOCPreviewController.previewController(_:previewItemAt:)(a4);

  return v8;
}

- (int64_t)previewController:(id)a3 editingModeForPreviewItem:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  v7 = specialized DOCPreviewController.previewController(_:editingModeFor:)();

  swift_unknownObjectRelease();
  return v7;
}

- (id)dismissActionsForPreviewController:(id)a3
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for QLDismissAction);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)previewController:(id)a3 willSaveEditedItem:(id)a4
{
  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x2A0);
  v9 = a3;
  swift_unknownObjectRetain();
  v8 = self;
  if (v7(v9, a4) == 1)
  {
    (*((*v6 & v8->super.super.super.super.super.isa) + 0x208))(a4);
  }

  swift_unknownObjectRelease();
}

- (void)previewController:(id)a3 didSaveEditedCopyOfPreviewItem:(id)a4 atURL:(id)a5
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  swift_unknownObjectRetain();
  v14 = self;
  specialized DOCPreviewController.previewController(_:didSaveEditedCopyOf:at:)(a4, v12);

  swift_unknownObjectRelease();
  (*(v9 + 8))(v12, v8);
}

- (void)previewControllerWillDismiss:(id)a3
{
  v3 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x108);
  v7 = self;
  if (v3())
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v7, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (id)previewController:(id)a3 transitionViewForPreviewItem:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  v7 = specialized DOCPreviewController.previewController(_:transitionViewFor:)();

  swift_unknownObjectRelease();

  return v7;
}

- (id)excludedActivityTypesForPreviewController:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCPreviewController.excludedActivityTypes(for:)();

  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (_TtC26DocumentManagerExecutables20DOCPreviewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end