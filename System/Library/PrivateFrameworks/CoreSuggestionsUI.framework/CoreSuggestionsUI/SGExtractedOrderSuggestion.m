@interface SGExtractedOrderSuggestion
- (id)makePreviewControllerWithMessageID:(id)a3 orderNumber:(id)a4 completion:(id)a5;
- (id)walletLogo;
@end

@implementation SGExtractedOrderSuggestion

- (id)makePreviewControllerWithMessageID:(id)a3 orderNumber:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  FKExtractedOrderSuggestionsBannerProviderClass = getFKExtractedOrderSuggestionsBannerProviderClass();
  if (objc_opt_respondsToSelector())
  {
    v11 = [FKExtractedOrderSuggestionsBannerProviderClass makePreviewControllerWithMessageID:v7 orderNumber:v8 completion:v9];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)walletLogo
{
  FKExtractedOrderSuggestionsBannerProviderClass = getFKExtractedOrderSuggestionsBannerProviderClass();
  if (objc_opt_respondsToSelector())
  {
    v3 = [FKExtractedOrderSuggestionsBannerProviderClass walletLogo];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end