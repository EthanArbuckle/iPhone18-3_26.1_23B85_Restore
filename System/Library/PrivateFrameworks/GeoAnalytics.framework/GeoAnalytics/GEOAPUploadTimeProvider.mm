@interface GEOAPUploadTimeProvider
- (NSDate)dateNow;
- (double)now;
@end

@implementation GEOAPUploadTimeProvider

- (NSDate)dateNow
{
  v2 = +[GEOReferenceTimeManager sharedManager];
  bestReferenceDate = [v2 bestReferenceDate];

  return bestReferenceDate;
}

- (double)now
{
  v2 = +[GEOReferenceTimeManager sharedManager];
  [v2 bestReferenceTime];
  v4 = v3;

  return v4;
}

@end