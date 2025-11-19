@interface objcDiagnosticPatternMatching
- (objcDiagnosticPatternMatching)initWithSwiftDiagnosticPatternMatching:(id)a3;
@end

@implementation objcDiagnosticPatternMatching

- (objcDiagnosticPatternMatching)initWithSwiftDiagnosticPatternMatching:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = objcDiagnosticPatternMatching;
  v6 = [(objcDiagnosticPatternMatching *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_swiftDiagnosticPatternMatching, a3);
  }

  return v7;
}

@end