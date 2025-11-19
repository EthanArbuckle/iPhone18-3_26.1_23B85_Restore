@interface CNUsageReporting
+ (BOOL)isEnabled;
@end

@implementation CNUsageReporting

+ (BOOL)isEnabled
{
  if (_CFMZEnabled())
  {
    return 0;
  }

  v3 = softLinkDiagnosticLogSubmissionEnabled;

  return v3();
}

@end