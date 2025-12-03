@interface DOCPreviewController
+ (id)sharedControllerFor:(id)for;
+ (void)clearSharedControllerFor:(id)for;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (NSArray)keyCommands;
- (QLPreviewControllerDelegate)delegate;
- (_TtC26DocumentManagerExecutables20DOCPreviewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)dismissActionsForPreviewController:(id)controller;
- (id)excludedActivityTypesForPreviewController:(id)controller;
- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index;
- (id)previewController:(id)controller transitionViewForPreviewItem:(id)item;
- (int64_t)numberOfPreviewItemsInPreviewController:(id)controller;
- (int64_t)previewController:(id)controller editingModeForPreviewItem:(id)item;
- (void)documentPicker:(id)picker didConfirmDocumentsAtURLs:(id)ls;
- (void)duplicate:(id)duplicate;
- (void)move:(id)move;
- (void)previewController:(id)controller didSaveEditedCopyOfPreviewItem:(id)item atURL:(id)l;
- (void)previewController:(id)controller willSaveEditedItem:(id)item;
- (void)previewControllerWillDismiss:(id)dismiss;
- (void)reallyBecomeCurrent:(id)current;
- (void)setDelegate:(id)delegate;
- (void)setModalPresentationStyle:(int64_t)style;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation DOCPreviewController

- (void)documentPicker:(id)picker didConfirmDocumentsAtURLs:(id)ls
{
  type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  pickerCopy = picker;
  selfCopy = self;
  specialized DOCPreviewController.documentPicker(_:didConfirmDocumentsAt:)(v6);
}

- (QLPreviewControllerDelegate)delegate
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCPreviewController();
  delegate = [(QLPreviewController *)&v4 delegate];

  return delegate;
}

- (void)setDelegate:(id)delegate
{
  selfCopy = delegate;
  if (!delegate)
  {
    selfCopy = self;
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for DOCPreviewController();
  selfCopy2 = self;
  swift_unknownObjectRetain();
  [(QLPreviewController *)&v6 setDelegate:selfCopy];

  swift_unknownObjectRelease();
}

- (NSArray)keyCommands
{
  selfCopy = self;
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

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = DOCPreviewController.canPerformAction(_:withSender:)(action, v10);

  outlined destroy of CharacterSet?(v10, &_sypSgMd);
  return v8;
}

- (void)duplicate:(id)duplicate
{
  if (duplicate)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  DOCPreviewController.duplicate(_:)();

  outlined destroy of CharacterSet?(v6, &_sypSgMd);
}

- (void)move:(id)move
{
  if (move)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  DOCPreviewController.moveCurrentItem()();

  outlined destroy of CharacterSet?(v6, &_sypSgMd);
}

+ (id)sharedControllerFor:(id)for
{
  forCopy = for;
  v5 = specialized static DOCPreviewController.sharedController(for:)(for);

  return v5;
}

+ (void)clearSharedControllerFor:(id)for
{
  if (for)
  {
    v3 = one-time initialization token for mapTable;
    forCopy = for;
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

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for DOCPreviewController();
  v4 = v6.receiver;
  [(QLPreviewController *)&v6 viewWillAppear:appearCopy];
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  (*((*MEMORY[0x277D85000] & *v4) + 0x1F0))(v5);
  DOCPreviewController.loadLinkNavigateInteraction()();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for DOCPreviewController();
  v15.receiver = self;
  v15.super_class = v9;
  selfCopy = self;
  v11 = [(QLPreviewController *)&v15 viewDidAppear:appearCopy];
  (*((*MEMORY[0x277D85000] & selfCopy->super.super.super.super.super.isa) + 0x288))(v11);
  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables20DOCPreviewController_importedURL;
  swift_beginAccess();
  outlined assign with take of URL?(v8, selfCopy + v13);
  swift_endAccess();
}

- (void)setModalPresentationStyle:(int64_t)style
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCPreviewController();
  [(DOCPreviewController *)&v4 setModalPresentationStyle:style];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  DOCPreviewController.viewWillDisappear(_:)(disappear);
}

- (void)reallyBecomeCurrent:(id)current
{
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x258);
  selfCopy = self;
  v5 = v4();
  [v5 becomeCurrent];

  if ([(QLPreviewController *)selfCopy currentPreviewItem])
  {
    (*((*v3 & selfCopy->super.super.super.super.super.isa) + 0x208))();
    swift_unknownObjectRelease();
  }
}

- (int64_t)numberOfPreviewItemsInPreviewController:(id)controller
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

- (id)previewController:(id)controller previewItemAtIndex:(int64_t)index
{
  controllerCopy = controller;
  selfCopy = self;
  v8 = specialized DOCPreviewController.previewController(_:previewItemAt:)(index);

  return v8;
}

- (int64_t)previewController:(id)controller editingModeForPreviewItem:(id)item
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = specialized DOCPreviewController.previewController(_:editingModeFor:)();

  swift_unknownObjectRelease();
  return v7;
}

- (id)dismissActionsForPreviewController:(id)controller
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for QLDismissAction);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)previewController:(id)controller willSaveEditedItem:(id)item
{
  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x2A0);
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  if (v7(controllerCopy, item) == 1)
  {
    (*((*v6 & selfCopy->super.super.super.super.super.isa) + 0x208))(item);
  }

  swift_unknownObjectRelease();
}

- (void)previewController:(id)controller didSaveEditedCopyOfPreviewItem:(id)item atURL:(id)l
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized DOCPreviewController.previewController(_:didSaveEditedCopyOf:at:)(item, v12);

  swift_unknownObjectRelease();
  (*(v9 + 8))(v12, v8);
}

- (void)previewControllerWillDismiss:(id)dismiss
{
  v3 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x108);
  selfCopy = self;
  if (v3())
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(selfCopy, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (id)previewController:(id)controller transitionViewForPreviewItem:(id)item
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = specialized DOCPreviewController.previewController(_:transitionViewFor:)();

  swift_unknownObjectRelease();

  return v7;
}

- (id)excludedActivityTypesForPreviewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  specialized DOCPreviewController.excludedActivityTypes(for:)();

  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (_TtC26DocumentManagerExecutables20DOCPreviewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end