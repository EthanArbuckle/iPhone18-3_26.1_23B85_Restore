@interface _MKLocalizedHoursBuilder(MUPlaceRibbonExtras)
- (__CFString)ribbonSummaryForOpeningState;
@end

@implementation _MKLocalizedHoursBuilder(MUPlaceRibbonExtras)

- (__CFString)ribbonSummaryForOpeningState
{
  state = [self state];
  if (state < 5 || state == 6)
  {
    localizedOperatingHours = [self localizedOperatingHours];
  }

  else if (state == 5)
  {
    localizedOperatingHours = _MULocalizedStringFromThisBundle(@"Open [Ribbon]");
  }

  else
  {
    localizedOperatingHours = &stru_1F44CA030;
  }

  return localizedOperatingHours;
}

@end