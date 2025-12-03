@interface CKCommSafetyAnalytics
+ (int64_t)contentTypeForURL:(id)l;
+ (void)recordContextMenuButtonTappedWithContentType:(int64_t)type subContentType:(int64_t)contentType direction:(int64_t)direction options:(int64_t)options isBlurred:(BOOL)blurred identifier:(id)identifier;
+ (void)recordObscuredViewRemovedWithIdentifier:(id)identifier;
+ (void)recordObscuredViewShownWithContentType:(int64_t)type subcontentType:(int64_t)subcontentType identifier:(id)identifier;
+ (void)recordWaysToGetHelpTappedWithOptions:(int64_t)options;
@end

@implementation CKCommSafetyAnalytics

+ (void)recordObscuredViewShownWithContentType:(int64_t)type subcontentType:(int64_t)subcontentType identifier:(id)identifier
{
  identifierCopy = identifier;
  if (getSCUIAnalyticsClass())
  {
    getSCUIAnalyticsClass();
    if (objc_opt_respondsToSelector())
    {
      [getSCUIAnalyticsClass() obscuredViewShownWithContentType:type subcontentType:subcontentType identifier:identifierCopy];
    }
  }
}

+ (void)recordObscuredViewRemovedWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (getSCUIAnalyticsClass())
  {
    getSCUIAnalyticsClass();
    if (objc_opt_respondsToSelector())
    {
      [getSCUIAnalyticsClass() obscuredViewRemovedWithIdentifier:identifierCopy];
    }
  }
}

+ (void)recordWaysToGetHelpTappedWithOptions:(int64_t)options
{
  if (getSCUIAnalyticsClass())
  {
    getSCUIAnalyticsClass();
    if (objc_opt_respondsToSelector())
    {
      SCUIAnalyticsClass = getSCUIAnalyticsClass();

      [SCUIAnalyticsClass waysToGetHelpTappedWithOptions:options];
    }
  }
}

+ (void)recordContextMenuButtonTappedWithContentType:(int64_t)type subContentType:(int64_t)contentType direction:(int64_t)direction options:(int64_t)options isBlurred:(BOOL)blurred identifier:(id)identifier
{
  blurredCopy = blurred;
  identifierCopy = identifier;
  if (getSCUIAnalyticsClass())
  {
    getSCUIAnalyticsClass();
    if (objc_opt_respondsToSelector())
    {
      [getSCUIAnalyticsClass() contextMenuButtonTappedWithContentType:type subContentType:contentType direction:direction options:options isBlurred:blurredCopy identifier:identifierCopy];
    }
  }
}

+ (int64_t)contentTypeForURL:(id)l
{
  lCopy = l;
  if (IMCommSafetyContentAttachmentTypeForURL() == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = IMCommSafetyContentAttachmentTypeForURL() == 0;
  }

  return v4;
}

@end