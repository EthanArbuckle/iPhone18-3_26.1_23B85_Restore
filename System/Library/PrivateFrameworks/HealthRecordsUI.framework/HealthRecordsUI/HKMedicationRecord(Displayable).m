@interface HKMedicationRecord(Displayable)
- (id)codings;
- (id)meaningfulDateTitle;
@end

@implementation HKMedicationRecord(Displayable)

- (id)codings
{
  v1 = [a1 medicationCodingCollection];
  v2 = [v1 codings];

  return v2;
}

- (id)meaningfulDateTitle
{
  if ([a1 notTaken])
  {
    HRLocalizedString(@"MEDICATION_RECORD_SORT_DATE_TITLE_NOT_TAKEN");
  }

  else
  {
    [a1 sortDateTitle];
  }
  v2 = ;

  return v2;
}

@end