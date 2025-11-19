@interface HKVaccinationRecord(Displayable)
- (id)meaningfulDateTitle;
@end

@implementation HKVaccinationRecord(Displayable)

- (id)meaningfulDateTitle
{
  if ([a1 notGiven])
  {
    HRLocalizedString(@"VACCINATION_RECORD_SORT_DATE_TITLE_NOT_ADMINISTERED");
  }

  else
  {
    [a1 sortDateTitle];
  }
  v2 = ;

  return v2;
}

@end