@interface HKProcedureRecord(Displayable)
- (id)codings;
- (id)meaningfulDateTitle;
@end

@implementation HKProcedureRecord(Displayable)

- (id)codings
{
  procedureCodingCollection = [self procedureCodingCollection];
  codings = [procedureCodingCollection codings];

  return codings;
}

- (id)meaningfulDateTitle
{
  if ([self notPerformed])
  {
    HRLocalizedString(@"PROCEDURE_RECORD_SORT_DATE_TITLE_NOT_PERFORMED");
  }

  else
  {
    [self sortDateTitle];
  }
  v2 = ;

  return v2;
}

@end