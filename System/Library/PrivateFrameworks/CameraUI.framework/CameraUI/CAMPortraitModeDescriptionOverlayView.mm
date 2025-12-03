@interface CAMPortraitModeDescriptionOverlayView
- (id)descriptionTextUsingNarrowWidth:(BOOL)width;
- (id)infoTextUsingNarrowWidth:(BOOL)width;
@end

@implementation CAMPortraitModeDescriptionOverlayView

- (id)descriptionTextUsingNarrowWidth:(BOOL)width
{
  widthCopy = width;
  v4 = +[CAMCaptureCapabilities capabilities];
  arePortraitEffectsSupported = [v4 arePortraitEffectsSupported];

  v6 = @"PORTRAIT_MODE_LIGHTING_DESCRIPTION_OVERLAY_DESCRIPTION";
  if (widthCopy)
  {
    v6 = @"PORTRAIT_MODE_LIGHTING_DESCRIPTION_OVERLAY_DESCRIPTION_NO_NEWLINE";
  }

  if (arePortraitEffectsSupported)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"PORTRAIT_MODE_DESCRIPTION_OVERLAY_DESCRIPTION";
  }

  return CAMLocalizedFrameworkString(v7, &stru_1F1660A30);
}

- (id)infoTextUsingNarrowWidth:(BOOL)width
{
  v3 = +[CAMCaptureCapabilities capabilities];
  arePortraitEffectsSupported = [v3 arePortraitEffectsSupported];

  if (arePortraitEffectsSupported)
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