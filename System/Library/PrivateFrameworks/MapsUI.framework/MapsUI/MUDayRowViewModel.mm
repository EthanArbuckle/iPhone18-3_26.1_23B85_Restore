@interface MUDayRowViewModel
- (id)buildDefaultPlacecardHoursString;
@end

@implementation MUDayRowViewModel

- (id)buildDefaultPlacecardHoursString
{
  v2 = [MUPlaceHoursFormatter hoursFormatterFromHoursStringComponents:self->_hourStrings AMPMSymbols:self->_AMPMStrings];
  buildDefaultPlacecardHoursString = [v2 buildDefaultPlacecardHoursString];

  return buildDefaultPlacecardHoursString;
}

@end