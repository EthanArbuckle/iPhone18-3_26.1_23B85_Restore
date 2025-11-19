@interface MUHoursSummaryViewModel
- (MUHoursSummaryViewModel)init;
- (id)buildDefaultPlacecardHoursString;
@end

@implementation MUHoursSummaryViewModel

- (id)buildDefaultPlacecardHoursString
{
  v2 = [[MUPlaceHoursFormatter alloc] initWithHoursString:self->_hoursText AMPMSymbols:self->_AMPMSymbols];
  v3 = [(MUPlaceHoursFormatter *)v2 buildDefaultPlacecardHoursString];

  return v3;
}

- (MUHoursSummaryViewModel)init
{
  v6.receiver = self;
  v6.super_class = MUHoursSummaryViewModel;
  v2 = [(MUHoursSummaryViewModel *)&v6 init];
  if (v2)
  {
    v3 = +[MUInfoCardStyle textColor];
    openStateColor = v2->_openStateColor;
    v2->_openStateColor = v3;
  }

  return v2;
}

@end