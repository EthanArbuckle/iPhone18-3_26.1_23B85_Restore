@interface CIDVUIBiometricBindingEnrollmentProvider
- (CIDVUIBiometricBindingEnrollmentProvider)init;
@end

@implementation CIDVUIBiometricBindingEnrollmentProvider

- (CIDVUIBiometricBindingEnrollmentProvider)init
{
  v6.receiver = self;
  v6.super_class = CIDVUIBiometricBindingEnrollmentProvider;
  v2 = [(CIDVUIBiometricBindingEnrollmentProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC9CoreIDVUI48CIDVUIInternalBiometricBindingEnrollmentProvider);
    internalProvider = v2->_internalProvider;
    v2->_internalProvider = v3;
  }

  return v2;
}

@end