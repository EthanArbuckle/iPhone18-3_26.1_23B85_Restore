@interface CKCommSafetyAnalytics
+ (int64_t)contentTypeForURL:(id)a3;
+ (void)recordContextMenuButtonTappedWithContentType:(int64_t)a3 subContentType:(int64_t)a4 direction:(int64_t)a5 options:(int64_t)a6 isBlurred:(BOOL)a7 identifier:(id)a8;
+ (void)recordObscuredViewRemovedWithIdentifier:(id)a3;
+ (void)recordObscuredViewShownWithContentType:(int64_t)a3 subcontentType:(int64_t)a4 identifier:(id)a5;
+ (void)recordWaysToGetHelpTappedWithOptions:(int64_t)a3;
@end

@implementation CKCommSafetyAnalytics

+ (void)recordObscuredViewShownWithContentType:(int64_t)a3 subcontentType:(int64_t)a4 identifier:(id)a5
{
  v7 = a5;
  if (getSCUIAnalyticsClass())
  {
    getSCUIAnalyticsClass();
    if (objc_opt_respondsToSelector())
    {
      [getSCUIAnalyticsClass() obscuredViewShownWithContentType:a3 subcontentType:a4 identifier:v7];
    }
  }
}

+ (void)recordObscuredViewRemovedWithIdentifier:(id)a3
{
  v3 = a3;
  if (getSCUIAnalyticsClass())
  {
    getSCUIAnalyticsClass();
    if (objc_opt_respondsToSelector())
    {
      [getSCUIAnalyticsClass() obscuredViewRemovedWithIdentifier:v3];
    }
  }
}

+ (void)recordWaysToGetHelpTappedWithOptions:(int64_t)a3
{
  if (getSCUIAnalyticsClass())
  {
    getSCUIAnalyticsClass();
    if (objc_opt_respondsToSelector())
    {
      SCUIAnalyticsClass = getSCUIAnalyticsClass();

      [SCUIAnalyticsClass waysToGetHelpTappedWithOptions:a3];
    }
  }
}

+ (void)recordContextMenuButtonTappedWithContentType:(int64_t)a3 subContentType:(int64_t)a4 direction:(int64_t)a5 options:(int64_t)a6 isBlurred:(BOOL)a7 identifier:(id)a8
{
  v8 = a7;
  v13 = a8;
  if (getSCUIAnalyticsClass())
  {
    getSCUIAnalyticsClass();
    if (objc_opt_respondsToSelector())
    {
      [getSCUIAnalyticsClass() contextMenuButtonTappedWithContentType:a3 subContentType:a4 direction:a5 options:a6 isBlurred:v8 identifier:v13];
    }
  }
}

+ (int64_t)contentTypeForURL:(id)a3
{
  v3 = a3;
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