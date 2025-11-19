@interface CKUIBehaviorClarityUIPhone
- (BOOL)areBannersSupported;
- (BOOL)resetsIdleTimer;
- (BOOL)shouldUseSimpleTimestampsInTranscript;
- (id)theme;
@end

@implementation CKUIBehaviorClarityUIPhone

- (id)theme
{
  if (theme_once_6374 != -1)
  {
    [CKUIBehaviorClarityUIPhone theme];
  }

  v3 = theme_sBehavior_6373;

  return v3;
}

void __35__CKUIBehaviorClarityUIPhone_theme__block_invoke()
{
  v0 = objc_alloc_init(CKUIThemeClarityUI);
  v1 = theme_sBehavior_6373;
  theme_sBehavior_6373 = v0;
}

- (BOOL)areBannersSupported
{
  if (areBannersSupported_once_6379 != -1)
  {
    [CKUIBehaviorClarityUIPhone areBannersSupported];
  }

  return 0;
}

- (BOOL)shouldUseSimpleTimestampsInTranscript
{
  if (shouldUseSimpleTimestampsInTranscript_once_6383 != -1)
  {
    [CKUIBehaviorClarityUIPhone shouldUseSimpleTimestampsInTranscript];
  }

  return shouldUseSimpleTimestampsInTranscript_sBehavior_6382;
}

- (BOOL)resetsIdleTimer
{
  if (resetsIdleTimer_once_6387 != -1)
  {
    [CKUIBehaviorClarityUIPhone resetsIdleTimer];
  }

  return 0;
}

@end