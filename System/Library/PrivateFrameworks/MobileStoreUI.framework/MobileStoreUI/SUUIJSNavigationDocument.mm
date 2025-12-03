@interface SUUIJSNavigationDocument
- (BOOL)isStopPageBagValueOverrideEnabledForTab:(id)tab;
- (BOOL)isStopPageEnabledForTab:(id)tab;
- (void)showStopPageForTab:(id)tab replacementAppAdamId:(id)id title:(id)title subtitle:(id)subtitle artwork:(id)artwork deeplinkUrl:(id)url force:(BOOL)force purchasesUrl:(id)self0 wishlistButtonTitle:(id)self1 showWishlistButton:(BOOL)self2;
@end

@implementation SUUIJSNavigationDocument

- (void)showStopPageForTab:(id)tab replacementAppAdamId:(id)id title:(id)title subtitle:(id)subtitle artwork:(id)artwork deeplinkUrl:(id)url force:(BOOL)force purchasesUrl:(id)self0 wishlistButtonTitle:(id)self1 showWishlistButton:(BOOL)self2
{
  tabCopy = tab;
  idCopy = id;
  titleCopy = title;
  subtitleCopy = subtitle;
  artworkCopy = artwork;
  urlCopy = url;
  purchasesUrlCopy = purchasesUrl;
  buttonTitleCopy = buttonTitle;
  navigationControllerDelegate = [(IKJSNavigationDocument *)self navigationControllerDelegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    navigationControllerDelegate2 = [(IKJSNavigationDocument *)self navigationControllerDelegate];
    LOBYTE(v29) = button;
    LOBYTE(v28) = force;
    [navigationControllerDelegate2 showStopPageForTab:tabCopy replacementAppAdamId:idCopy title:titleCopy subtitle:subtitleCopy artwork:artworkCopy deeplinkUrl:urlCopy force:v28 purchasesUrl:purchasesUrlCopy wishlistButtonTitle:buttonTitleCopy showWishlistButton:v29];
  }
}

- (BOOL)isStopPageEnabledForTab:(id)tab
{
  tabCopy = tab;
  navigationControllerDelegate = [(IKJSNavigationDocument *)self navigationControllerDelegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    navigationControllerDelegate2 = [(IKJSNavigationDocument *)self navigationControllerDelegate];
    v8 = [navigationControllerDelegate2 isStopPageEnabledForTab:tabCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isStopPageBagValueOverrideEnabledForTab:(id)tab
{
  tabCopy = tab;
  navigationControllerDelegate = [(IKJSNavigationDocument *)self navigationControllerDelegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    navigationControllerDelegate2 = [(IKJSNavigationDocument *)self navigationControllerDelegate];
    v8 = [navigationControllerDelegate2 isStopPageBagValueOverrideEnabledForTab:tabCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end