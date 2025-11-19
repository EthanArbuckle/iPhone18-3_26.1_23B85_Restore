@interface GEOAPUploadTimeProvider
- (NSDate)dateNow;
- (double)now;
@end

@implementation GEOAPUploadTimeProvider

- (NSDate)dateNow
{
  v2 = +[GEOReferenceTimeManager sharedManager];
  v3 = [v2 bestReferenceDate];

  return v3;
}

- (double)now
{
  v2 = +[GEOReferenceTimeManager sharedManager];
  [v2 bestReferenceTime];
  v4 = v3;

  return v4;
}

@end