@interface HKProcedureRecord(Displayable)
- (id)codings;
- (id)meaningfulDateTitle;
@end

@implementation HKProcedureRecord(Displayable)

- (id)codings
{
  v1 = [a1 procedureCodingCollection];
  v2 = [v1 codings];

  return v2;
}

- (id)meaningfulDateTitle
{
  if ([a1 notPerformed])
  {
    HRLocalizedString(@"PROCEDURE_RECORD_SORT_DATE_TITLE_NOT_PERFORMED");
  }

  else
  {
    [a1 sortDateTitle];
  }
  v2 = ;

  return v2;
}

@end