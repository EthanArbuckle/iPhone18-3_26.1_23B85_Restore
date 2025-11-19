@interface DOCServiceInfoViewController
- (_TtC26DocumentManagerExecutables28DOCServiceInfoViewController)init;
- (_TtC26DocumentManagerExecutables28DOCServiceInfoViewController)initWithConfiguration:(id)a3 actionReporting:(id)a4 nodes:(id)a5 showTagsOnly:(BOOL)a6;
- (int64_t)modalPresentationStyle;
- (void)doc_startPreheatIfNecessary;
- (void)doneButtonTapped:(id)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)setModalPresentationStyle:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation DOCServiceInfoViewController

- (_TtC26DocumentManagerExecutables28DOCServiceInfoViewController)initWithConfiguration:(id)a3 actionReporting:(id)a4 nodes:(id)a5 showTagsOnly:(BOOL)a6
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  swift_unknownObjectRetain();
  v11 = specialized DOCServiceInfoViewController.init(configuration:actionReporting:nodes:showTagsOnly:)(v10, a4, v9, a6);

  swift_unknownObjectRelease();
  return v11;
}

- (void)viewDidLoad
{
  v2 = self;
  DOCServiceInfoViewController.viewDidLoad()();
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  DOCServiceInfoViewController.preferredContentSizeDidChange(forChildContentContainer:)(a3);
  swift_unknownObjectRelease();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  DOCServiceInfoViewController.traitCollectionDidChange(_:)(v9);
}

- (void)doneButtonTapped:(id)a3
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
    v6 = 0u;
    v7 = 0u;
    v5 = self;
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

- (void)setModalPresentationStyle:(int64_t)a3
{
  ObjectType = swift_getObjectType();
  v10.receiver = self;
  v10.super_class = ObjectType;
  v6 = self;
  [(DOCServiceInfoViewController *)&v10 setModalPresentationStyle:a3];
  v7 = [(DOCServiceInfoViewController *)v6 traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (v8 != 6)
  {
    v9.receiver = v6;
    v9.super_class = ObjectType;
    if ([(DOCServiceInfoViewController *)&v9 modalPresentationStyle]== 2)
    {
      [(DOCServiceInfoViewController *)v6 setPreferredContentSize:0.0, 0.0];
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
  v6 = self;

  [v3 objc:v5 doc:? preheatForPresentingWithCompletion:?];
  _Block_release(v5);
}

- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = self;
  specialized DOCServiceInfoViewController.presentationController(_:willPresentWithAdaptiveStyle:transitionCoordinator:)(a4);

  swift_unknownObjectRelease();
}

- (void)presentationControllerWillDismiss:(id)a3
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = one-time initialization token for associatedObjectStorageKey;
    v8 = a3;
    v9 = self;
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