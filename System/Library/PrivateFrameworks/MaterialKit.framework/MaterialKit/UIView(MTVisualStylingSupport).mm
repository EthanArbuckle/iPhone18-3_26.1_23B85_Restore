@interface UIView(MTVisualStylingSupport)
- (void)mt_applyVisualStyling:()MTVisualStylingSupport;
- (void)mt_removeAllVisualStyling;
- (void)mt_replaceVisualStyling:()MTVisualStylingSupport;
@end

@implementation UIView(MTVisualStylingSupport)

- (void)mt_removeAllVisualStyling
{
  layer = [self layer];
  [layer mt_removeAllVisualStyling];
}

- (void)mt_replaceVisualStyling:()MTVisualStylingSupport
{
  v4 = a3;
  [self mt_removeAllVisualStyling];
  [self mt_applyVisualStyling:v4];
}

- (void)mt_applyVisualStyling:()MTVisualStylingSupport
{
  v7 = a3;
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  MethodImplementation = class_getMethodImplementation(v5, sel__mt_applyVisualStyling_);
  if (MethodImplementation == class_getMethodImplementation(v4, sel__mt_applyVisualStyling_))
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__UIView_MTVisualStylingSupport__mt_applyVisualStyling___block_invoke;
    v8[3] = &unk_27835D4F0;
    v8[4] = self;
    [v7 applyToView:self withColorBlock:v8];
  }

  else
  {
    [self _mt_applyVisualStyling:v7];
  }
}

@end