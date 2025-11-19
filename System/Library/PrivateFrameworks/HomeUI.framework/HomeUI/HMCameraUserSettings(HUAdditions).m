@interface HMCameraUserSettings(HUAdditions)
- (__CFString)hu_currentAccessModeDescription;
- (__CFString)hu_indicatorImageNameForCurrentAccessMode;
- (__CFString)hu_indicatorImageNameForLiveStreaming;
- (id)hu_indicatorColorForCurrentAccessMode;
@end

@implementation HMCameraUserSettings(HUAdditions)

- (id)hu_indicatorColorForCurrentAccessMode
{
  v1 = [a1 currentAccessMode];
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v1 = [MEMORY[0x277D75348] systemRedColor];
      goto LABEL_9;
    }

    if (v1 != 3)
    {
      goto LABEL_9;
    }

LABEL_7:
    v1 = [MEMORY[0x277D75348] systemGrayColor];
    goto LABEL_9;
  }

  if (!v1)
  {
    goto LABEL_7;
  }

  if (v1 == 1)
  {
    v1 = [MEMORY[0x277D75348] systemBlueColor];
  }

LABEL_9:

  return v1;
}

- (__CFString)hu_indicatorImageNameForCurrentAccessMode
{
  if ([a1 currentAccessMode] == 2)
  {
    v2 = [a1 hu_indicatorImageNameForLiveStreaming];
  }

  else
  {
    v2 = @"circle.fill";
  }

  return v2;
}

- (__CFString)hu_indicatorImageNameForLiveStreaming
{
  if (UIAccessibilityShouldDifferentiateWithoutColor())
  {
    return @"triangle.fill";
  }

  else
  {
    return @"circle.fill";
  }
}

- (__CFString)hu_currentAccessModeDescription
{
  v1 = [a1 currentAccessMode];
  if ((v1 - 1) > 2)
  {
    return @"Off";
  }

  else
  {
    return off_277DC00C8[v1 - 1];
  }
}

@end