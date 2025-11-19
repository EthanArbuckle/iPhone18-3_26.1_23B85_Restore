@interface _PBUIWallpaperViewControllerAssertion
- (PBUIWallpaperViewController)wallpaperViewController;
- (_PBUIWallpaperViewControllerAssertion)initWithWallpaperViewController:(id)a3 type:(int64_t)a4 reason:(id)a5;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _PBUIWallpaperViewControllerAssertion

- (_PBUIWallpaperViewControllerAssertion)initWithWallpaperViewController:(id)a3 type:(int64_t)a4 reason:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = _PBUIWallpaperViewControllerAssertion;
  v10 = [(_PBUIWallpaperViewControllerAssertion *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_wallpaperViewController, v8);
    v11->_type = a4;
    v12 = [v9 copy];
    reason = v11->_reason;
    v11->_reason = v12;
  }

  return v11;
}

- (void)invalidate
{
  if (![(_PBUIWallpaperViewControllerAssertion *)self isInvalidated])
  {
    [(_PBUIWallpaperViewControllerAssertion *)self setInvalidated:1];
    v3 = [(_PBUIWallpaperViewControllerAssertion *)self wallpaperViewController];
    [v3 _invalidateWallpaperAssertion:self];
  }
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PBUIWallpaperViewController.m" lineNumber:2141 description:{@"Wallpaper assertion type %ld %@ was not invalidated before dealloc!", *(a1 + 24), *(a1 + 32)}];
}

- (id)succinctDescription
{
  v2 = [(_PBUIWallpaperViewControllerAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_PBUIWallpaperViewControllerAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(_PBUIWallpaperViewControllerAssertion *)self succinctDescriptionBuilder];
  v5 = [(_PBUIWallpaperViewControllerAssertion *)self wallpaperViewController];
  v6 = [v4 appendPointer:v5 withName:@"wallpaperViewController"];

  v7 = [v4 appendInteger:-[_PBUIWallpaperViewControllerAssertion type](self withName:{"type"), @"type"}];
  v8 = [(_PBUIWallpaperViewControllerAssertion *)self reason];
  v9 = [v4 appendObject:v8 withName:@"reason"];

  v10 = [v4 appendBool:-[_PBUIWallpaperViewControllerAssertion isInvalidated](self withName:"isInvalidated") ifEqualTo:{@"isInvalidated", 1}];

  return v4;
}

- (PBUIWallpaperViewController)wallpaperViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperViewController);

  return WeakRetained;
}

@end