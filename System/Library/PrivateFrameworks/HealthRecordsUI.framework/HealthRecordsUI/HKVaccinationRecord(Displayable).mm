@interface HKVaccinationRecord(Displayable)
- (id)meaningfulDateTitle;
@end

@implementation HKVaccinationRecord(Displayable)

- (id)meaningfulDateTitle
{
  if ([self notGiven])
  {
    HRLocalizedString(@"VACCINATION_RECORD_SORT_DATE_TITLE_NOT_ADMINISTERED");
  }

  else
  {
    [self sortDateTitle];
  }
  v2 = ;

  return v2;
}

@end