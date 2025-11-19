@interface _UINavigationControllerPalette(SUUINavigationControllerAdditions)
- (void)SUUI_beginHidingPaletteShadow;
- (void)SUUI_endHidingPaletteShadow;
@end

@implementation _UINavigationControllerPalette(SUUINavigationControllerAdditions)

- (void)SUUI_beginHidingPaletteShadow
{
  v2 = objc_getAssociatedObject(a1, _SUUINavigationControllerAssociatedObjectKeyPaletteShadowHidden);
  v3 = [v2 unsignedIntegerValue];

  v4 = _SUUINavigationControllerAssociatedObjectKeyPaletteShadowHidden;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3 + 1];
  objc_setAssociatedObject(a1, v4, v5, 1);

  if (!v3)
  {

    [a1 setPaletteShadowIsHidden:1];
  }
}

- (void)SUUI_endHidingPaletteShadow
{
  v2 = objc_getAssociatedObject(a1, _SUUINavigationControllerAssociatedObjectKeyPaletteShadowHidden);
  v3 = [v2 unsignedIntegerValue];

  if (v3)
  {
    v4 = _SUUINavigationControllerAssociatedObjectKeyPaletteShadowHidden;
    v5 = (v3 - 1);
    if (v3 == 1)
    {
      objc_setAssociatedObject(a1, _SUUINavigationControllerAssociatedObjectKeyPaletteShadowHidden, v5, 1);

      [a1 setPaletteShadowIsHidden:0];
    }

    else
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
      objc_setAssociatedObject(a1, v4, v6, 1);
    }
  }
}

@end