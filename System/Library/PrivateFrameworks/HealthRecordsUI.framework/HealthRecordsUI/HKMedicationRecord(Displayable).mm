@interface HKMedicationRecord(Displayable)
- (id)codings;
- (id)meaningfulDateTitle;
@end

@implementation HKMedicationRecord(Displayable)

- (id)codings
{
  medicationCodingCollection = [self medicationCodingCollection];
  codings = [medicationCodingCollection codings];

  return codings;
}

- (id)meaningfulDateTitle
{
  if ([self notTaken])
  {
    HRLocalizedString(@"MEDICATION_RECORD_SORT_DATE_TITLE_NOT_TAKEN");
  }

  else
  {
    [self sortDateTitle];
  }
  v2 = ;

  return v2;
}

@end