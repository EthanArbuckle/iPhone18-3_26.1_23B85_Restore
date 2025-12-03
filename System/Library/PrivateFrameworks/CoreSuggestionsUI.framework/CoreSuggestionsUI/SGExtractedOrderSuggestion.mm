@interface SGExtractedOrderSuggestion
- (id)makePreviewControllerWithMessageID:(id)d orderNumber:(id)number completion:(id)completion;
- (id)walletLogo;
@end

@implementation SGExtractedOrderSuggestion

- (id)makePreviewControllerWithMessageID:(id)d orderNumber:(id)number completion:(id)completion
{
  dCopy = d;
  numberCopy = number;
  completionCopy = completion;
  FKExtractedOrderSuggestionsBannerProviderClass = getFKExtractedOrderSuggestionsBannerProviderClass();
  if (objc_opt_respondsToSelector())
  {
    v11 = [FKExtractedOrderSuggestionsBannerProviderClass makePreviewControllerWithMessageID:dCopy orderNumber:numberCopy completion:completionCopy];
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
    walletLogo = [FKExtractedOrderSuggestionsBannerProviderClass walletLogo];
  }

  else
  {
    walletLogo = 0;
  }

  return walletLogo;
}

@end