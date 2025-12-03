@interface objcDiagnosticPatternMatching
- (objcDiagnosticPatternMatching)initWithSwiftDiagnosticPatternMatching:(id)matching;
@end

@implementation objcDiagnosticPatternMatching

- (objcDiagnosticPatternMatching)initWithSwiftDiagnosticPatternMatching:(id)matching
{
  matchingCopy = matching;
  v9.receiver = self;
  v9.super_class = objcDiagnosticPatternMatching;
  v6 = [(objcDiagnosticPatternMatching *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_swiftDiagnosticPatternMatching, matching);
  }

  return v7;
}

@end