@interface CKNavigationTitleViewForwardDeclarationHelper
+ (void)configureNavigationItemForInteractivePop:(id)a3;
+ (void)configureTitleViewForGlassDisplayLayer:(id)a3;
@end

@implementation CKNavigationTitleViewForwardDeclarationHelper

+ (void)configureTitleViewForGlassDisplayLayer:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v3 setDisplayLayer:1];
  }
}

+ (void)configureNavigationItemForInteractivePop:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v3 _setAllowsInteractivePopWhenBackButtonHidden:1];
  }
}

@end