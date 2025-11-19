@interface UIView
+ (void)doc_performAllowingAnimations:(BOOL)a3 block:(id)a4;
- (BOOL)doc_inWindowPerformingSnapshotting;
- (BOOL)enclosedInUIPDocumentLanding;
- (DOCAppearance)effectiveAppearance;
- (id)_appearance;
- (id)_inheritedAppearance;
- (void)_notifyAppearanceChange:(id)a3;
- (void)doc_configureWithNoPlatter;
- (void)doc_configureWithStandardPlatterWithCornerRadius:(double)a3;
- (void)doc_didMoveToSuperview;
- (void)registerForTabSwitcherTraitChangesWithHandler:(id)a3;
- (void)registerForUIPDocumentLandingTraitChangesWithHandler:(id)a3;
@end

@implementation UIView

- (void)doc_didMoveToSuperview
{
  [(UIView *)self doc_didMoveToSuperview];
  v3 = [(UIView *)self _appearance];

  if (!v3)
  {
    v4 = [(UIView *)self effectiveAppearance];
    if (v4)
    {
      v5 = v4;
      [(UIView *)self _notifyAppearanceChange:v4];
      v4 = v5;
    }
  }
}

- (id)_appearance
{
  v2 = [(UIView *)self _owningViewController];
  v3 = [v2 _appearance];

  return v3;
}

- (DOCAppearance)effectiveAppearance
{
  v3 = [(UIView *)self _appearance];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(UIView *)self _inheritedAppearance];
  }

  v6 = v5;

  return v6;
}

- (id)_inheritedAppearance
{
  v2 = [(UIView *)self superview];
  if (v2)
  {
    do
    {
      v3 = v2;
      v4 = [v2 _appearance];
      v2 = [v2 superview];
    }

    while (v2 && !v4);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)enclosedInUIPDocumentLanding
{
  v2 = self;
  v3 = specialized DOCUIPTraitEnvironment<>._enclosedInUIPDocumentLanding.getter(&lazy cache variable for type metadata for UIView);

  return v3 & 1;
}

- (void)_notifyAppearanceChange:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D75D18];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__UIView_DOCAppearanceInheritance___notifyAppearanceChange___block_invoke;
  v7[3] = &unk_278FA1E80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)doc_configureWithStandardPlatterWithCornerRadius:(double)a3
{
  v5 = objc_opt_self();
  v7 = self;
  v6 = [v5 secondarySystemBackgroundColor];
  [(UIView *)v7 setBackgroundColor:v6];

  if (a3 > 0.0)
  {
    [(UIView *)v7 _setCornerRadius:a3];
  }
}

- (void)doc_configureWithNoPlatter
{
  v3 = objc_opt_self();
  v5 = self;
  v4 = [v3 clearColor];
  [(UIView *)v5 setBackgroundColor:v4];
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

  UIView.registerForUIPTraitChanges<A>(tabStyle:documentLanding:options:_:)(1, 0, &v10, thunk for @callee_guaranteed () -> ()partial apply, v8, ObjectType);

  swift_unknownObjectRelease();
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
  v8[2] = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
  v8[3] = v7;
  v8[4] = ObjectType;
  v9 = self;

  UIView.registerForUIPTraitChanges<A>(tabStyle:documentLanding:options:_:)(0, 1, &v10, thunk for @callee_guaranteed () -> ()partial apply, v8, ObjectType);

  swift_unknownObjectRelease();
}

- (BOOL)doc_inWindowPerformingSnapshotting
{
  v2 = self;
  v3 = [(UIView *)v2 window];
  if (v3 && (v4 = v3, v5 = [(UIWindow *)v3 windowScene], v4, v5))
  {
    v6 = [(UIWindowScene *)v5 _isPerformingSystemSnapshot];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)doc_performAllowingAnimations:(BOOL)a3 block:(id)a4
{
  v5 = _Block_copy(a4);
  specialized static UIView.doc_performAllowingAnimations(_:block:)(a3, v5);

  _Block_release(v5);
}

@end