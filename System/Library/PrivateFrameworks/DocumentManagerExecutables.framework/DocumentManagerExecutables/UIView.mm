@interface UIView
+ (void)doc_performAllowingAnimations:(BOOL)animations block:(id)block;
- (BOOL)doc_inWindowPerformingSnapshotting;
- (BOOL)enclosedInUIPDocumentLanding;
- (DOCAppearance)effectiveAppearance;
- (id)_appearance;
- (id)_inheritedAppearance;
- (void)_notifyAppearanceChange:(id)change;
- (void)doc_configureWithNoPlatter;
- (void)doc_configureWithStandardPlatterWithCornerRadius:(double)radius;
- (void)doc_didMoveToSuperview;
- (void)registerForTabSwitcherTraitChangesWithHandler:(id)handler;
- (void)registerForUIPDocumentLandingTraitChangesWithHandler:(id)handler;
@end

@implementation UIView

- (void)doc_didMoveToSuperview
{
  [(UIView *)self doc_didMoveToSuperview];
  _appearance = [(UIView *)self _appearance];

  if (!_appearance)
  {
    effectiveAppearance = [(UIView *)self effectiveAppearance];
    if (effectiveAppearance)
    {
      v5 = effectiveAppearance;
      [(UIView *)self _notifyAppearanceChange:effectiveAppearance];
      effectiveAppearance = v5;
    }
  }
}

- (id)_appearance
{
  _owningViewController = [(UIView *)self _owningViewController];
  _appearance = [_owningViewController _appearance];

  return _appearance;
}

- (DOCAppearance)effectiveAppearance
{
  _appearance = [(UIView *)self _appearance];
  v4 = _appearance;
  if (_appearance)
  {
    _inheritedAppearance = _appearance;
  }

  else
  {
    _inheritedAppearance = [(UIView *)self _inheritedAppearance];
  }

  v6 = _inheritedAppearance;

  return v6;
}

- (id)_inheritedAppearance
{
  superview = [(UIView *)self superview];
  if (superview)
  {
    do
    {
      v3 = superview;
      _appearance = [superview _appearance];
      superview = [superview superview];
    }

    while (superview && !_appearance);
  }

  else
  {
    _appearance = 0;
  }

  return _appearance;
}

- (BOOL)enclosedInUIPDocumentLanding
{
  selfCopy = self;
  v3 = specialized DOCUIPTraitEnvironment<>._enclosedInUIPDocumentLanding.getter(&lazy cache variable for type metadata for UIView);

  return v3 & 1;
}

- (void)_notifyAppearanceChange:(id)change
{
  changeCopy = change;
  v5 = MEMORY[0x277D75D18];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__UIView_DOCAppearanceInheritance___notifyAppearanceChange___block_invoke;
  v7[3] = &unk_278FA1E80;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  [v5 performWithoutAnimation:v7];
}

void __60__UIView_DOCAppearanceInheritance___notifyAppearanceChange___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) subviews];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 _appearance];

        if (!v8)
        {
          [v7 _notifyAppearanceChange:*(a1 + 40)];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  [*(a1 + 32) effectiveAppearanceDidChange:*(a1 + 40)];
  v9 = [*(a1 + 32) _owningViewController];
  [v9 effectiveAppearanceDidChange:*(a1 + 40)];
}

- (void)doc_configureWithStandardPlatterWithCornerRadius:(double)radius
{
  v5 = objc_opt_self();
  selfCopy = self;
  secondarySystemBackgroundColor = [v5 secondarySystemBackgroundColor];
  [(UIView *)selfCopy setBackgroundColor:secondarySystemBackgroundColor];

  if (radius > 0.0)
  {
    [(UIView *)selfCopy _setCornerRadius:radius];
  }
}

- (void)doc_configureWithNoPlatter
{
  v3 = objc_opt_self();
  selfCopy = self;
  clearColor = [v3 clearColor];
  [(UIView *)selfCopy setBackgroundColor:clearColor];
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

  UIView.registerForUIPTraitChanges<A>(tabStyle:documentLanding:options:_:)(1, 0, &v10, thunk for @callee_guaranteed () -> ()partial apply, v8, ObjectType);

  swift_unknownObjectRelease();
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
  v8[2] = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
  v8[3] = v7;
  v8[4] = ObjectType;
  selfCopy = self;

  UIView.registerForUIPTraitChanges<A>(tabStyle:documentLanding:options:_:)(0, 1, &v10, thunk for @callee_guaranteed () -> ()partial apply, v8, ObjectType);

  swift_unknownObjectRelease();
}

- (BOOL)doc_inWindowPerformingSnapshotting
{
  selfCopy = self;
  window = [(UIView *)selfCopy window];
  if (window && (v4 = window, v5 = [(UIWindow *)window windowScene], v4, v5))
  {
    _isPerformingSystemSnapshot = [(UIWindowScene *)v5 _isPerformingSystemSnapshot];
  }

  else
  {
    _isPerformingSystemSnapshot = 0;
  }

  return _isPerformingSystemSnapshot;
}

+ (void)doc_performAllowingAnimations:(BOOL)animations block:(id)block
{
  v5 = _Block_copy(block);
  specialized static UIView.doc_performAllowingAnimations(_:block:)(animations, v5);

  _Block_release(v5);
}

@end