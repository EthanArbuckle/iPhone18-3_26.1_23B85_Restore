@interface _PBUIWallpaperViewControllerAssertion
- (PBUIWallpaperViewController)wallpaperViewController;
- (_PBUIWallpaperViewControllerAssertion)initWithWallpaperViewController:(id)controller type:(int64_t)type reason:(id)reason;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _PBUIWallpaperViewControllerAssertion

- (_PBUIWallpaperViewControllerAssertion)initWithWallpaperViewController:(id)controller type:(int64_t)type reason:(id)reason
{
  controllerCopy = controller;
  reasonCopy = reason;
  v15.receiver = self;
  v15.super_class = _PBUIWallpaperViewControllerAssertion;
  v10 = [(_PBUIWallpaperViewControllerAssertion *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_wallpaperViewController, controllerCopy);
    v11->_type = type;
    v12 = [reasonCopy copy];
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
    wallpaperViewController = [(_PBUIWallpaperViewControllerAssertion *)self wallpaperViewController];
    [wallpaperViewController _invalidateWallpaperAssertion:self];
  }
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PBUIWallpaperViewController.m" lineNumber:2141 description:{@"Wallpaper assertion type %ld %@ was not invalidated before dealloc!", *(self + 24), *(self + 32)}];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_PBUIWallpaperViewControllerAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_PBUIWallpaperViewControllerAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(_PBUIWallpaperViewControllerAssertion *)self succinctDescriptionBuilder];
  wallpaperViewController = [(_PBUIWallpaperViewControllerAssertion *)self wallpaperViewController];
  v6 = [succinctDescriptionBuilder appendPointer:wallpaperViewController withName:@"wallpaperViewController"];

  v7 = [succinctDescriptionBuilder appendInteger:-[_PBUIWallpaperViewControllerAssertion type](self withName:{"type"), @"type"}];
  reason = [(_PBUIWallpaperViewControllerAssertion *)self reason];
  v9 = [succinctDescriptionBuilder appendObject:reason withName:@"reason"];

  v10 = [succinctDescriptionBuilder appendBool:-[_PBUIWallpaperViewControllerAssertion isInvalidated](self withName:"isInvalidated") ifEqualTo:{@"isInvalidated", 1}];

  return succinctDescriptionBuilder;
}

- (PBUIWallpaperViewController)wallpaperViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_wallpaperViewController);

  return WeakRetained;
}

@end