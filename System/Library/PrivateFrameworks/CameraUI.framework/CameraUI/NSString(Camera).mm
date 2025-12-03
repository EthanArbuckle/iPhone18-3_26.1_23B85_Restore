@interface NSString(Camera)
+ (id)cam_localizedTitleForMode:()Camera wantsCompactTitle:;
- (id)cam_capitalizedStringWithPreferredLocale;
- (id)cam_uppercaseStringWithPreferredLocale;
@end

@implementation NSString(Camera)

- (id)cam_uppercaseStringWithPreferredLocale
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  preferredLocalizations = [mainBundle preferredLocalizations];
  firstObject = [preferredLocalizations firstObject];
  v5 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:firstObject];
  v6 = [self uppercaseStringWithLocale:v5];

  return v6;
}

- (id)cam_capitalizedStringWithPreferredLocale
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  preferredLocalizations = [mainBundle preferredLocalizations];
  firstObject = [preferredLocalizations firstObject];
  v5 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:firstObject];
  v6 = [self capitalizedStringWithLocale:v5];

  return v6;
}

+ (id)cam_localizedTitleForMode:()Camera wantsCompactTitle:
{
  v4 = 0;
  if (a3 > 4)
  {
    if (a3 <= 6)
    {
      if (a3 == 5)
      {
        if (a4)
        {
          v5 = @"TIMELAPSE_IPAD";
        }

        else
        {
          v5 = @"TIMELAPSE";
        }

        v6 = @"Title in Camera's mode switcher for time-lapse mode.";
      }

      else
      {
        v5 = @"PORTRAIT";
        v6 = @"Title in Camera's mode switch for portrait mode.";
      }
    }

    else
    {
      switch(a3)
      {
        case 7:
          v5 = @"CINEMATIC";
          break;
        case 8:
          v5 = @"SPATIAL_VIDEO_MODE_TITLE";
          break;
        case 9:
          v5 = @"SPATIAL_PHOTO_MODE_TITLE";
          break;
        default:
          goto LABEL_27;
      }

      v6 = 0;
    }
  }

  else if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_27;
      }

      v5 = @"VIDEO";
      v6 = @"Title in Camera's mode switcher for video mode.";
    }

    else
    {
      v5 = @"PHOTO";
      v6 = @"Title in Camera's mode switch for still photo mode.";
    }
  }

  else if (a3 == 2)
  {
    v5 = @"SLALOM";
    v6 = @"Title in Camera's mode switcher for high frame rate video mode.";
  }

  else if (a3 == 3)
  {
    v5 = @"PANO";
    v6 = @"Title in Camera's mode switcher for panorama mode.";
  }

  else
  {
    v5 = @"SQUARE";
    v6 = @"Title in Camera's mode switcher for square still photo mode.";
  }

  v4 = CAMLocalizedFrameworkString(v5, v6);
LABEL_27:

  return v4;
}

@end