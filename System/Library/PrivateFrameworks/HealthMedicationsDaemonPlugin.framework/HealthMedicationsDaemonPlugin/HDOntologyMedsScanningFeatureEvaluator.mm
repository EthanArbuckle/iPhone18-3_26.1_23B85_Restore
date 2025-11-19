@interface HDOntologyMedsScanningFeatureEvaluator
- (HDOntologyMedsScanningFeatureEvaluator)init;
@end

@implementation HDOntologyMedsScanningFeatureEvaluator

- (HDOntologyMedsScanningFeatureEvaluator)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

@end