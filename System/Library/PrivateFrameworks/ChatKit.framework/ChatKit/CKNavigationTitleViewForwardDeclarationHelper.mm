@interface CKNavigationTitleViewForwardDeclarationHelper
+ (void)configureNavigationItemForInteractivePop:(id)pop;
+ (void)configureTitleViewForGlassDisplayLayer:(id)layer;
@end

@implementation CKNavigationTitleViewForwardDeclarationHelper

+ (void)configureTitleViewForGlassDisplayLayer:(id)layer
{
  layerCopy = layer;
  if (objc_opt_respondsToSelector())
  {
    [layerCopy setDisplayLayer:1];
  }
}

+ (void)configureNavigationItemForInteractivePop:(id)pop
{
  popCopy = pop;
  if (objc_opt_respondsToSelector())
  {
    [popCopy _setAllowsInteractivePopWhenBackButtonHidden:1];
  }
}

@end