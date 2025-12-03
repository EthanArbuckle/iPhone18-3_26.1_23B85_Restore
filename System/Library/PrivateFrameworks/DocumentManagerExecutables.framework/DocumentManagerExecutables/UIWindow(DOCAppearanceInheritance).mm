@interface UIWindow(DOCAppearanceInheritance)
- (id)effectiveAppearance;
- (void)setAppearance:()DOCAppearanceInheritance;
@end

@implementation UIWindow(DOCAppearanceInheritance)

- (id)effectiveAppearance
{
  appearance = [self appearance];
  v3 = appearance;
  if (appearance)
  {
    v4 = appearance;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &off_285D87CB0;
    v4 = objc_msgSendSuper2(&v7, sel_effectiveAppearance);
  }

  v5 = v4;

  return v5;
}

- (void)setAppearance:()DOCAppearanceInheritance
{
  objc_setAssociatedObject(self, &_docAppearanceIdentifier, a3, 3);
  effectiveAppearance = [self effectiveAppearance];
  [self _notifyAppearanceChange:effectiveAppearance];
}

@end