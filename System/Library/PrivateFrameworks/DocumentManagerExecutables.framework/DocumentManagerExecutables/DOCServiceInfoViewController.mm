@interface DOCServiceInfoViewController
- (_TtC26DocumentManagerExecutables28DOCServiceInfoViewController)init;
- (_TtC26DocumentManagerExecutables28DOCServiceInfoViewController)initWithConfiguration:(id)configuration actionReporting:(id)reporting nodes:(id)nodes showTagsOnly:(BOOL)only;
- (int64_t)modalPresentationStyle;
- (void)doc_startPreheatIfNecessary;
- (void)doneButtonTapped:(id)tapped;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)setModalPresentationStyle:(int64_t)style;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation DOCServiceInfoViewController

- (_TtC26DocumentManagerExecutables28DOCServiceInfoViewController)initWithConfiguration:(id)configuration actionReporting:(id)reporting nodes:(id)nodes showTagsOnly:(BOOL)only
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  v11 = specialized DOCServiceInfoViewController.init(configuration:actionReporting:nodes:showTagsOnly:)(configurationCopy, reporting, v9, only);

  swift_unknownObjectRelease();
  return v11;
}

- (void)viewDidLoad
{
  selfCopy = self;
  DOCServiceInfoViewController.viewDidLoad()();
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  swift_unknownObjectRetain();
  selfCopy = self;
  DOCServiceInfoViewController.preferredContentSizeDidChange(forChildContentContainer:)(container);
  swift_unknownObjectRelease();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  DOCServiceInfoViewController.traitCollectionDidChange(_:)(v9);
}

- (void)doneButtonTapped:(id)tapped
{
  if (tapped)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    selfCopy2 = self;
  }

  [(DOCServiceInfoViewController *)self dismissViewControllerAnimated:1 completion:0, v6, v7];

  outlined destroy of Any?(&v6);
}

- (int64_t)modalPresentationStyle
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(DOCServiceInfoViewController *)&v3 modalPresentationStyle];
}

- (void)setModalPresentationStyle:(int64_t)style
{
  ObjectType = swift_getObjectType();
  v10.receiver = self;
  v10.super_class = ObjectType;
  selfCopy = self;
  [(DOCServiceInfoViewController *)&v10 setModalPresentationStyle:style];
  traitCollection = [(DOCServiceInfoViewController *)selfCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 6)
  {
    v9.receiver = selfCopy;
    v9.super_class = ObjectType;
    if ([(DOCServiceInfoViewController *)&v9 modalPresentationStyle]== 2)
    {
      [(DOCServiceInfoViewController *)selfCopy setPreferredContentSize:0.0, 0.0];
    }
  }
}

- (_TtC26DocumentManagerExecutables28DOCServiceInfoViewController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)doc_startPreheatIfNecessary
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_infoViewController);
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v7[4] = closure #1 in DOCServiceInfoViewController.doc_startPreheatIfNecessary()partial apply;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v7[3] = &block_descriptor_11_1;
  v5 = _Block_copy(v7);
  selfCopy = self;

  [v3 objc:v5 doc:? preheatForPresentingWithCompletion:?];
  _Block_release(v5);
}

- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized DOCServiceInfoViewController.presentationController(_:willPresentWithAdaptiveStyle:transitionCoordinator:)(style);

  swift_unknownObjectRelease();
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = one-time initialization token for associatedObjectStorageKey;
    dismissCopy = dismiss;
    selfCopy = self;
    if (v7 != -1)
    {
      swift_once();
    }

    v10 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo31UIPopoverPresentationControllerC_Tt1B5(v6, static UIPopoverPresentationController.associatedObjectStorageKey);
    KeyPath = swift_getKeyPath();
    v12[0] = 0;
    v12[1] = 0;
    (*((*MEMORY[0x277D85000] & *v10) + 0x80))(v12, KeyPath);
  }
}

@end