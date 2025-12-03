@interface CIDVUIBiometricBindingAttestations
- (CIDVUIBiometricBindingAttestations)initWithProgenitorKeyAttestation:(id)attestation;
@end

@implementation CIDVUIBiometricBindingAttestations

- (CIDVUIBiometricBindingAttestations)initWithProgenitorKeyAttestation:(id)attestation
{
  attestationCopy = attestation;
  v9.receiver = self;
  v9.super_class = CIDVUIBiometricBindingAttestations;
  v6 = [(CIDVUIBiometricBindingAttestations *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_progenitorKeyAttestation, attestation);
  }

  return v7;
}

@end