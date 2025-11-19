@interface CertValidityStartDateIsPastCutoff
@end

@implementation CertValidityStartDateIsPastCutoff

void ___CertValidityStartDateIsPastCutoff_block_invoke()
{
  v0 = _PKParseW3CDTSCompleteDatePlusHoursMinutesAndOptionalSeconds(@"2013-07-01T00:00:00+00:00", 0, 0);
  v1 = _MergedGlobals_204;
  _MergedGlobals_204 = v0;
}

@end