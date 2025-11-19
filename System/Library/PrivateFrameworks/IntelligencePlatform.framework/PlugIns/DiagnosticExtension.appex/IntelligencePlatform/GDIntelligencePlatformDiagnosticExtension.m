@interface GDIntelligencePlatformDiagnosticExtension
- (GDIntelligencePlatformDiagnosticExtension)init;
@end

@implementation GDIntelligencePlatformDiagnosticExtension

- (GDIntelligencePlatformDiagnosticExtension)init
{
  v6.receiver = self;
  v6.super_class = GDIntelligencePlatformDiagnosticExtension;
  v2 = [(GDIntelligencePlatformDiagnosticExtension *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    swiftDiagnosticExtension = v2->_swiftDiagnosticExtension;
    v2->_swiftDiagnosticExtension = v3;
  }

  return v2;
}

@end