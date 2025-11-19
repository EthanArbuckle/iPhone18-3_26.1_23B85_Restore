@interface CIDVUIBiometricBindingAttestations
- (CIDVUIBiometricBindingAttestations)initWithProgenitorKeyAttestation:(id)a3;
@end

@implementation CIDVUIBiometricBindingAttestations

- (CIDVUIBiometricBindingAttestations)initWithProgenitorKeyAttestation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CIDVUIBiometricBindingAttestations;
  v6 = [(CIDVUIBiometricBindingAttestations *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_progenitorKeyAttestation, a3);
  }

  return v7;
}

@end