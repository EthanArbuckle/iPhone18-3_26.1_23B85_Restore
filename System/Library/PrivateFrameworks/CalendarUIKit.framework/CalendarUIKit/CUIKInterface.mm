@interface CUIKInterface
+ (id)shared;
- (BOOL)isCurrentProcessAnApplicationExtension;
- (BOOL)usesLargeTextLayout;
- (CUIKInterface)init;
- (id)preferredContentSizeCategoryOrOverride;
- (int64_t)layoutDirectionOrOverride;
@end

@implementation CUIKInterface

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[CUIKInterface shared];
  }

  v3 = shared_interface;

  return v3;
}

uint64_t __23__CUIKInterface_shared__block_invoke()
{
  shared_interface = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (CUIKInterface)init
{
  v5.receiver = self;
  v5.super_class = CUIKInterface;
  v2 = [(CUIKInterface *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_overrideLayoutDirection = 0;
    objc_storeStrong(&v2->_overridePreferredContentSizeCategory, *MEMORY[0x1E69DDC90]);
  }

  return v3;
}

- (BOOL)isCurrentProcessAnApplicationExtension
{
  extensionInfoForCurrentProcess = [MEMORY[0x1E696ABD0] extensionInfoForCurrentProcess];
  if (extensionInfoForCurrentProcess)
  {
    v3 = objc_opt_respondsToSelector();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (int64_t)layoutDirectionOrOverride
{
  if (![(CUIKInterface *)self isCurrentProcessAnApplicationExtension])
  {
    v3 = [MEMORY[0x1E69DC668] performSelector:sel_sharedApplication];
    v4 = NSSelectorFromString(&cfstr_Userinterfacel.isa);
    if (objc_opt_respondsToSelector())
    {
      v5 = ([v3 methodForSelector:v4])(v3, v4);

      return v5;
    }
  }

  return self->_overrideLayoutDirection;
}

- (id)preferredContentSizeCategoryOrOverride
{
  if (![(CUIKInterface *)self isCurrentProcessAnApplicationExtension])
  {
    v3 = [MEMORY[0x1E69DC668] performSelector:sel_sharedApplication];
    v4 = NSSelectorFromString(&cfstr_Preferredconte.isa);
    if (objc_opt_respondsToSelector())
    {
      v5 = ([v3 methodForSelector:v4])(v3, v4);

      goto LABEL_6;
    }
  }

  v5 = self->_overridePreferredContentSizeCategory;
LABEL_6:

  return v5;
}

- (BOOL)usesLargeTextLayout
{
  preferredContentSizeCategoryOrOverride = [(CUIKInterface *)self preferredContentSizeCategoryOrOverride];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategoryOrOverride);

  return IsAccessibilityCategory;
}

@end