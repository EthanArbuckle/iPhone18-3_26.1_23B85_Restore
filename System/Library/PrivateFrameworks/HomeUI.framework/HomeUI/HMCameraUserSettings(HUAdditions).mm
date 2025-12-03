@interface HMCameraUserSettings(HUAdditions)
- (__CFString)hu_currentAccessModeDescription;
- (__CFString)hu_indicatorImageNameForCurrentAccessMode;
- (__CFString)hu_indicatorImageNameForLiveStreaming;
- (id)hu_indicatorColorForCurrentAccessMode;
@end

@implementation HMCameraUserSettings(HUAdditions)

- (id)hu_indicatorColorForCurrentAccessMode
{
  currentAccessMode = [self currentAccessMode];
  if (currentAccessMode > 1)
  {
    if (currentAccessMode == 2)
    {
      currentAccessMode = [MEMORY[0x277D75348] systemRedColor];
      goto LABEL_9;
    }

    if (currentAccessMode != 3)
    {
      goto LABEL_9;
    }

LABEL_7:
    currentAccessMode = [MEMORY[0x277D75348] systemGrayColor];
    goto LABEL_9;
  }

  if (!currentAccessMode)
  {
    goto LABEL_7;
  }

  if (currentAccessMode == 1)
  {
    currentAccessMode = [MEMORY[0x277D75348] systemBlueColor];
  }

LABEL_9:

  return currentAccessMode;
}

- (__CFString)hu_indicatorImageNameForCurrentAccessMode
{
  if ([self currentAccessMode] == 2)
  {
    hu_indicatorImageNameForLiveStreaming = [self hu_indicatorImageNameForLiveStreaming];
  }

  else
  {
    hu_indicatorImageNameForLiveStreaming = @"circle.fill";
  }

  return hu_indicatorImageNameForLiveStreaming;
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
  currentAccessMode = [self currentAccessMode];
  if ((currentAccessMode - 1) > 2)
  {
    return @"Off";
  }

  else
  {
    return off_277DC00C8[currentAccessMode - 1];
  }
}

@end