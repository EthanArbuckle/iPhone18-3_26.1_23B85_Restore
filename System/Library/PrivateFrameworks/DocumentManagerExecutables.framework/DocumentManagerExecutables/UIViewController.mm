@interface UIViewController
+ (void)doc_performWithDeferredTransitionsAndAnimationsDisabled:(id)disabled;
- (BOOL)doc_inWindowPerformingSnapshotting;
- (BOOL)enclosedInUIPDocumentLanding;
- (DOCAppearance)effectiveAppearance;
- (UIView)dimmingOverlayHostView;
- (_TtC26DocumentManagerExecutables13DOCTabBarItem)DOCTabBarItem;
- (void)_doc_liveResizeDidEnd;
- (void)_notifyAppearanceChange:(id)change;
- (void)dimmingOverlayStateDidChange:(id)change state:(int64_t)state;
- (void)doc_addChildViewController:(id)controller addSubviewBlock:(id)block;
- (void)doc_addChildWithEqualAutoresizingFrame:(id)frame;
- (void)doc_dismissViewController;
- (void)doc_removeFromParentWithRemoveSubviewBlock:(id)block;
- (void)doc_updateBarButtonTrackingViewsIfNecessary;
- (void)doc_viewDidLoad;
- (void)objc_doc_preheatDidFinish;
- (void)objc_doc_preheatForPresentingWithCompletion:(id)completion;
- (void)registerForTabSwitcherTraitChangesWithHandler:(id)handler;
- (void)registerForUIPDocumentLandingTraitChangesWithHandler:(id)handler;
- (void)setAppearance:(id)appearance;
@end

@implementation UIViewController

- (void)doc_viewDidLoad
{
  [(UIViewController *)self doc_viewDidLoad];
  _appearance = [(UIViewController *)self _appearance];
  if (_appearance)
  {
    v5 = _appearance;
    viewIfLoaded = [(UIViewController *)self viewIfLoaded];
    [viewIfLoaded _notifyAppearanceChange:v5];

    _appearance = v5;
  }
}

- (BOOL)enclosedInUIPDocumentLanding
{
  selfCopy = self;
  v3 = specialized DOCUIPTraitEnvironment<>._enclosedInUIPDocumentLanding.getter(lazy cache variable for type metadata for UIViewController);

  return v3 & 1;
}

- (void)registerForTabSwitcherTraitChangesWithHandler:(id)handler
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v10 = 0;
  v11 = 1;
  v8 = swift_allocObject();
  v8[2] = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  v8[3] = v7;
  v8[4] = ObjectType;
  selfCopy = self;

  UIViewController.registerForUIPTraitChanges<A>(tabStyle:documentLanding:options:_:)(1, 0, &v10, thunk for @callee_guaranteed () -> ()partial apply, v8, ObjectType);

  swift_unknownObjectRelease();
}

- (DOCAppearance)effectiveAppearance
{
  _appearance = [(UIViewController *)self _appearance];
  if (_appearance)
  {
    effectiveAppearance = _appearance;
  }

  else
  {
    viewIfLoaded = [(UIViewController *)self viewIfLoaded];
    effectiveAppearance = [viewIfLoaded effectiveAppearance];

    if (!effectiveAppearance)
    {
      parentViewController = [(UIViewController *)self parentViewController];
      effectiveAppearance = [parentViewController effectiveAppearance];
    }
  }

  return effectiveAppearance;
}

- (void)setAppearance:(id)appearance
{
  objc_setAssociatedObject(self, &_docAppearanceIdentifier, appearance, 3);
  effectiveAppearance = [(UIViewController *)self effectiveAppearance];
  [(UIViewController *)self _notifyAppearanceChange:effectiveAppearance];
}

- (void)_notifyAppearanceChange:(id)change
{
  changeCopy = change;
  v5 = MEMORY[0x277D75D18];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__UIViewController_DOCAppearanceInheritance___notifyAppearanceChange___block_invoke;
  v7[3] = &unk_278FA1E80;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  [v5 performWithoutAnimation:v7];
}

void __70__UIViewController_DOCAppearanceInheritance___notifyAppearanceChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) effectiveAppearanceDidChange:*(a1 + 40)];
  v2 = [*(a1 + 32) viewIfLoaded];
  [v2 _notifyAppearanceChange:*(a1 + 40)];
}

- (void)objc_doc_preheatForPresentingWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  if (swift_dynamicCastObjCProtocolConditional())
  {
    selfCopy = self;
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
    selfCopy = self;
    DOCPresentationPreheatable<>.doc_preheatDidFinish()();
  }
}

- (void)doc_dismissViewController
{
  selfCopy = self;
  UIViewController.doc_dismiss(animated:includingPresented:completion:)(1, 1, DOCGridLayout.specIconWidth.modify, 0);
}

- (_TtC26DocumentManagerExecutables13DOCTabBarItem)DOCTabBarItem
{
  selfCopy = self;
  result = [(UIViewController *)selfCopy tabBarItem];
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

- (void)registerForUIPDocumentLandingTraitChangesWithHandler:(id)handler
{
  ObjectType = swift_getObjectType();
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v10 = 0;
  v11 = 1;
  v8 = swift_allocObject();
  v8[2] = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  v8[3] = v7;
  v8[4] = ObjectType;
  selfCopy = self;

  UIViewController.registerForUIPTraitChanges<A>(tabStyle:documentLanding:options:_:)(0, 1, &v10, thunk for @callee_guaranteed () -> ()partial apply, v8, ObjectType);

  swift_unknownObjectRelease();
}

- (BOOL)doc_inWindowPerformingSnapshotting
{
  selfCopy = self;
  viewIfLoaded = [(UIViewController *)selfCopy viewIfLoaded];
  if (viewIfLoaded)
  {
    v4 = viewIfLoaded;
    doc_inWindowPerformingSnapshotting = [(UIView *)viewIfLoaded doc_inWindowPerformingSnapshotting];
  }

  else
  {
    doc_inWindowPerformingSnapshotting = 0;
  }

  return doc_inWindowPerformingSnapshotting;
}

- (void)doc_removeFromParentWithRemoveSubviewBlock:(id)block
{
  v4 = _Block_copy(block);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v4 = thunk for @escaping @callee_unowned @convention(block) (@unowned UIView) -> ()partial apply;
  }

  selfCopy = self;
  parentViewController = [(UIViewController *)selfCopy parentViewController];
  if (parentViewController)
  {

    [(UIViewController *)selfCopy willMoveToParentViewController:0];
    removeFromSuperview #1 () in UIViewController._doc_removeFromParentViewController(removeSubview:)(selfCopy, v4);
    [(UIViewController *)selfCopy removeFromParentViewController];
  }

  else
  {
    removeFromSuperview #1 () in UIViewController._doc_removeFromParentViewController(removeSubview:)(selfCopy, v4);
  }

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v4);
}

- (void)doc_addChildViewController:(id)controller addSubviewBlock:(id)block
{
  v6 = _Block_copy(block);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned DOCSourceByType) -> ();
  }

  controllerCopy = controller;
  selfCopy = self;
  UIViewController.doc_addChildViewController(_:addSubview:)(controllerCopy, v6);

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
}

- (void)doc_addChildWithEqualAutoresizingFrame:(id)frame
{
  frameCopy = frame;
  selfCopy = self;
  UIViewController.doc_addChildWithEqualAutoresizingFrame(_:)(frameCopy);
}

+ (void)doc_performWithDeferredTransitionsAndAnimationsDisabled:(id)disabled
{
  v3 = _Block_copy(disabled);
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
  selfCopy = self;
  DOCRunInMainThread(_:)();
}

- (UIView)dimmingOverlayHostView
{
  selfCopy = self;
  result = [(UIViewController *)selfCopy view];
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

- (void)dimmingOverlayStateDidChange:(id)change state:(int64_t)state
{
  v5 = objc_opt_self();
  changeCopy = change;
  _dimmingViewColor = [v5 _dimmingViewColor];
  [changeCopy setBackgroundColor_];
}

- (void)doc_updateBarButtonTrackingViewsIfNecessary
{
  selfCopy = self;
  parentViewController = [(UIViewController *)selfCopy parentViewController];
  [(UIViewController *)parentViewController doc_updateBarButtonTrackingViewsIfNecessary];
}

@end