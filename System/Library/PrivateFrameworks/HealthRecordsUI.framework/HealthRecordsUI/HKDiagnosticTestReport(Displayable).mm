@interface HKDiagnosticTestReport(Displayable)
- (id)codings;
@end

@implementation HKDiagnosticTestReport(Displayable)

- (id)codings
{
  v1 = [a1 diagnosticTestCodingCollection];
  v2 = [v1 codings];

  return v2;
}

@end