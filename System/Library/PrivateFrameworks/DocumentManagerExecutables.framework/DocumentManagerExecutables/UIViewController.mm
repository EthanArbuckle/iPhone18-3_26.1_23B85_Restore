@interface UIViewController
+ (void)doc_performWithDeferredTransitionsAndAnimationsDisabled:(id)a3;
- (BOOL)doc_inWindowPerformingSnapshotting;
- (BOOL)enclosedInUIPDocumentLanding;
- (DOCAppearance)effectiveAppearance;
- (UIView)dimmingOverlayHostView;
- (_TtC26DocumentManagerExecutables13DOCTabBarItem)DOCTabBarItem;
- (void)_doc_liveResizeDidEnd;
- (void)_notifyAppearanceChange:(id)a3;
- (void)dimmingOverlayStateDidChange:(id)a3 state:(int64_t)a4;
- (void)doc_addChildViewController:(id)a3 addSubviewBlock:(id)a4;
- (void)doc_addChildWithEqualAutoresizingFrame:(id)a3;
- (void)doc_dismissViewController;
- (void)doc_removeFromParentWithRemoveSubviewBlock:(id)a3;
- (void)doc_updateBarButtonTrackingViewsIfNecessary;
- (void)doc_viewDidLoad;
- (void)objc_doc_preheatDidFinish;
- (void)objc_doc_preheatForPresentingWithCompletion:(id)a3;
- (void)registerForTabSwitcherTraitChangesWithHandler:(id)a3;
- (void)registerForUIPDocumentLandingTraitChangesWithHandler:(id)a3;
- (void)setAppearance:(id)a3;
@end

@implementation UIViewController

- (void)doc_viewDidLoad
{
  [(UIViewController *)self doc_viewDidLoad];
  v3 = [(UIViewController *)self _appearance];
  if (v3)
  {
    v5 = v3;
    v4 = [(UIViewController *)self viewIfLoaded];
    [v4 _notifyAppearanceChange:v5];

    v3 = v5;
  }
}

- (BOOL)enclosedInUIPDocumentLanding
{
  v2 = self;
  v3 = specialized DOCUIPTraitEnvironment<>._enclosedInUIPDocumentLanding.getter(lazy cache variable for type metadata for UIViewController);

  return v3 & 1;
}

- (void)registerForTabSwitcherTraitChangesWithHandler:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v10 = 0;
  v11 = 1;
  v8 = swift_allocObject();
  v8[2] = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  v8[3] = v7;
  v8[4] = ObjectType;
  v9 = self;

  UIViewController.registerForUIPTraitChanges<A>(tabStyle:documentLanding:options:_:)(1, 0, &v10, thunk for @callee_guaranteed () -> ()partial apply, v8, ObjectType);

  swift_unknownObjectRelease();
}

- (DOCAppearance)effectiveAppearance
{
  v3 = [(UIViewController *)self _appearance];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [(UIViewController *)self viewIfLoaded];
    v4 = [v5 effectiveAppearance];

    if (!v4)
    {
      v6 = [(UIViewController *)self parentViewController];
      v4 = [v6 effectiveAppearance];
    }
  }

  return v4;
}

- (void)setAppearance:(id)a3
{
  objc_setAssociatedObject(self, &_docAppearanceIdentifier, a3, 3);
  v4 = [(UIViewController *)self effectiveAppearance];
  [(UIViewController *)self _notifyAppearanceChange:v4];
}

- (void)_notifyAppearanceChange:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D75D18];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__UIViewController_DOCAppearanceInheritance___notifyAppearanceChange___block_invoke;
  v7[3] = &unk_278FA1E80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performWithoutAnimation:v7];
}

void __70__UIViewController_DOCAppearanceInheritance___notifyAppearanceChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) effectiveAppearanceDidChange:*(a1 + 40)];
  v2 = [*(a1 + 32) viewIfLoaded];
  [v2 _notifyAppearanceChange:*(a1 + 40)];
}

- (void)objc_doc_preheatForPresentingWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  if (swift_dynamicCastObjCProtocolConditional())
  {
    v6 = self;
    DOCPresentationPreheatable<>.doc_preheatForPresenting(completion:)(partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (), v5);
  }

  else
  {
    _Block_copy(v4);
    v4[2](v4);

    _Block_release(v4);
  }
}

- (void)objc_doc_preheatDidFinish
{
  if (swift_dynamicCastObjCProtocolConditional())
  {
    v3 = self;
    DOCPresentationPreheatable<>.doc_preheatDidFinish()();
  }
}

- (void)doc_dismissViewController
{
  v2 = self;
  UIViewController.doc_dismiss(animated:includingPresented:completion:)(1, 1, DOCGridLayout.specIconWidth.modify, 0);
}

- (_TtC26DocumentManagerExecutables13DOCTabBarItem)DOCTabBarItem
{
  v2 = self;
  result = [(UIViewController *)v2 tabBarItem];
  if (result)
  {

    type metadata accessor for DOCTabBarItem();
    v4 = swift_dynamicCastClassUnconditional();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)registerForUIPDocumentLandingTraitChangesWithHandler:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v10 = 0;
  v11 = 1;
  v8 = swift_allocObject();
  v8[2] = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  v8[3] = v7;
  v8[4] = ObjectType;
  v9 = self;

  UIViewController.registerForUIPTraitChanges<A>(tabStyle:documentLanding:options:_:)(0, 1, &v10, thunk for @callee_guaranteed () -> ()partial apply, v8, ObjectType);

  swift_unknownObjectRelease();
}

- (BOOL)doc_inWindowPerformingSnapshotting
{
  v2 = self;
  v3 = [(UIViewController *)v2 viewIfLoaded];
  if (v3)
  {
    v4 = v3;
    v5 = [(UIView *)v3 doc_inWindowPerformingSnapshotting];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)doc_removeFromParentWithRemoveSubviewBlock:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v4 = thunk for @escaping @callee_unowned @convention(block) (@unowned UIView) -> ()partial apply;
  }

  v5 = self;
  v6 = [(UIViewController *)v5 parentViewController];
  if (v6)
  {

    [(UIViewController *)v5 willMoveToParentViewController:0];
    removeFromSuperview #1 () in UIViewController._doc_removeFromParentViewController(removeSubview:)(v5, v4);
    [(UIViewController *)v5 removeFromParentViewController];
  }

  else
  {
    removeFromSuperview #1 () in UIViewController._doc_removeFromParentViewController(removeSubview:)(v5, v4);
  }

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v4);
}

- (void)doc_addChildViewController:(id)a3 addSubviewBlock:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned DOCSourceByType) -> ();
  }

  v8 = a3;
  v7 = self;
  UIViewController.doc_addChildViewController(_:addSubview:)(v8, v6);

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
}

- (void)doc_addChildWithEqualAutoresizingFrame:(id)a3
{
  v4 = a3;
  v5 = self;
  UIViewController.doc_addChildWithEqualAutoresizingFrame(_:)(v4);
}

+ (void)doc_performWithDeferredTransitionsAndAnimationsDisabled:(id)a3
{
  v3 = _Block_copy(a3);
  v8[2] = v3;
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
  *(v5 + 32) = v8;
  v6 = swift_allocObject();
  *(v6 + 16) = closure #1 in DOCPerformWithDeferredTransitionsDisabled(allowAnimation:_:)partial apply;
  *(v6 + 24) = v5;
  aBlock[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_41_1;
  v7 = _Block_copy(aBlock);

  [v4 _performWithoutDeferringTransitions_];
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  _Block_release(v3);
  if (v4)
  {
    __break(1u);
  }
}

- (void)_doc_liveResizeDidEnd
{
  *(swift_allocObject() + 16) = self;
  v3 = self;
  DOCRunInMainThread(_:)();
}

- (UIView)dimmingOverlayHostView
{
  v2 = self;
  result = [(UIViewController *)v2 view];
  if (result)
  {
    v4 = result;

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)dimmingOverlayStateDidChange:(id)a3 state:(int64_t)a4
{
  v5 = objc_opt_self();
  v7 = a3;
  v6 = [v5 _dimmingViewColor];
  [v7 setBackgroundColor_];
}

- (void)doc_updateBarButtonTrackingViewsIfNecessary
{
  v3 = self;
  v2 = [(UIViewController *)v3 parentViewController];
  [(UIViewController *)v2 doc_updateBarButtonTrackingViewsIfNecessary];
}

@end