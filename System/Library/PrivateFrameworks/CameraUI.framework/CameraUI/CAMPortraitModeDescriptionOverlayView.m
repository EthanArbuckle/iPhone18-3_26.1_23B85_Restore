@interface CAMPortraitModeDescriptionOverlayView
- (id)descriptionTextUsingNarrowWidth:(BOOL)a3;
- (id)infoTextUsingNarrowWidth:(BOOL)a3;
@end

@implementation CAMPortraitModeDescriptionOverlayView

- (id)descriptionTextUsingNarrowWidth:(BOOL)a3
{
  v3 = a3;
  v4 = +[CAMCaptureCapabilities capabilities];
  v5 = [v4 arePortraitEffectsSupported];

  v6 = @"PORTRAIT_MODE_LIGHTING_DESCRIPTION_OVERLAY_DESCRIPTION";
  if (v3)
  {
    v6 = @"PORTRAIT_MODE_LIGHTING_DESCRIPTION_OVERLAY_DESCRIPTION_NO_NEWLINE";
  }

  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"PORTRAIT_MODE_DESCRIPTION_OVERLAY_DESCRIPTION";
  }

  return CAMLocalizedFrameworkString(v7, &stru_1F1660A30);
}

- (id)infoTextUsingNarrowWidth:(BOOL)a3
{
  v3 = +[CAMCaptureCapabilities capabilities];
  v4 = [v3 arePortraitEffectsSupported];

  if (v4)
  {
    v5 = @"PORTRAIT_MODE_LIGHTING_DESCRIPTION_OVERLAY_INFO";
  }

  else
  {
    v5 = @"PORTRAIT_MODE_DESCRIPTION_OVERLAY_INFO";
  }

  return CAMLocalizedFrameworkString(v5, &stru_1F1660A30);
}

@end