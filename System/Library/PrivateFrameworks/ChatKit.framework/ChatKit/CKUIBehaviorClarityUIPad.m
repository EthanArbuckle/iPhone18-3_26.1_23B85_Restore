@interface CKUIBehaviorClarityUIPad
- (BOOL)areBannersSupported;
- (BOOL)resetsIdleTimer;
- (BOOL)shouldUseSimpleTimestampsInTranscript;
- (id)theme;
@end

@implementation CKUIBehaviorClarityUIPad

- (id)theme
{
  if (theme_once_6395 != -1)
  {
    [CKUIBehaviorClarityUIPad theme];
  }

  v3 = theme_sBehavior_6394;

  return v3;
}

void __33__CKUIBehaviorClarityUIPad_theme__block_invoke()
{
  v0 = objc_alloc_init(CKUIThemeClarityUI);
  v1 = theme_sBehavior_6394;
  theme_sBehavior_6394 = v0;
}

- (BOOL)areBannersSupported
{
  if (areBannersSupported_once_6399 != -1)
  {
    [CKUIBehaviorClarityUIPad areBannersSupported];
  }

  return 0;
}

- (BOOL)shouldUseSimpleTimestampsInTranscript
{
  if (shouldUseSimpleTimestampsInTranscript_once_6403 != -1)
  {
    [CKUIBehaviorClarityUIPad shouldUseSimpleTimestampsInTranscript];
  }

  return shouldUseSimpleTimestampsInTranscript_sBehavior_6402;
}

- (BOOL)resetsIdleTimer
{
  if (resetsIdleTimer_once_6407 != -1)
  {
    [CKUIBehaviorClarityUIPad resetsIdleTimer];
  }

  return 0;
}

@end