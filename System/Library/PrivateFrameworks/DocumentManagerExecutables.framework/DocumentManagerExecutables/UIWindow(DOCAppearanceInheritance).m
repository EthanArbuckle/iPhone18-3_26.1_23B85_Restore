@interface UIWindow(DOCAppearanceInheritance)
- (id)effectiveAppearance;
- (void)setAppearance:()DOCAppearanceInheritance;
@end

@implementation UIWindow(DOCAppearanceInheritance)

- (id)effectiveAppearance
{
  v2 = [a1 appearance];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &off_285D87CB0;
    v4 = objc_msgSendSuper2(&v7, sel_effectiveAppearance);
  }

  v5 = v4;

  return v5;
}

- (void)setAppearance:()DOCAppearanceInheritance
{
  objc_setAssociatedObject(a1, &_docAppearanceIdentifier, a3, 3);
  v4 = [a1 effectiveAppearance];
  [a1 _notifyAppearanceChange:v4];
}

@end