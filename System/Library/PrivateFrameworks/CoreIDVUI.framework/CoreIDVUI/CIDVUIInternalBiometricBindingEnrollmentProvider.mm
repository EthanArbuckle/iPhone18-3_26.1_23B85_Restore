@interface CIDVUIInternalBiometricBindingEnrollmentProvider
- (unint64_t)fetchBiometricEnrollmentACLType;
@end

@implementation CIDVUIInternalBiometricBindingEnrollmentProvider

- (unint64_t)fetchBiometricEnrollmentACLType
{
  v3 = sub_24590F354();
  MEMORY[0x28223BE20](v3);
  selfCopy = self;
  v5 = sub_2457A7A78();

  return v5;
}

@end