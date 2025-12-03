@interface HKDiagnosticTestReport(Displayable)
- (id)codings;
@end

@implementation HKDiagnosticTestReport(Displayable)

- (id)codings
{
  diagnosticTestCodingCollection = [self diagnosticTestCodingCollection];
  codings = [diagnosticTestCodingCollection codings];

  return codings;
}

@end