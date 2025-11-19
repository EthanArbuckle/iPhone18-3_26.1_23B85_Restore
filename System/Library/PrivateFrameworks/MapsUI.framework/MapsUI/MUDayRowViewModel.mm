@interface MUDayRowViewModel
- (id)buildDefaultPlacecardHoursString;
@end

@implementation MUDayRowViewModel

- (id)buildDefaultPlacecardHoursString
{
  v2 = [MUPlaceHoursFormatter hoursFormatterFromHoursStringComponents:self->_hourStrings AMPMSymbols:self->_AMPMStrings];
  v3 = [v2 buildDefaultPlacecardHoursString];

  return v3;
}

@end