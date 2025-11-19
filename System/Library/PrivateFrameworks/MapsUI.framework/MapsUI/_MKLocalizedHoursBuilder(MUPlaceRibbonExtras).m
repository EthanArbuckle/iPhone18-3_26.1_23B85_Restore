@interface _MKLocalizedHoursBuilder(MUPlaceRibbonExtras)
- (__CFString)ribbonSummaryForOpeningState;
@end

@implementation _MKLocalizedHoursBuilder(MUPlaceRibbonExtras)

- (__CFString)ribbonSummaryForOpeningState
{
  v2 = [a1 state];
  if (v2 < 5 || v2 == 6)
  {
    v3 = [a1 localizedOperatingHours];
  }

  else if (v2 == 5)
  {
    v3 = _MULocalizedStringFromThisBundle(@"Open [Ribbon]");
  }

  else
  {
    v3 = &stru_1F44CA030;
  }

  return v3;
}

@end