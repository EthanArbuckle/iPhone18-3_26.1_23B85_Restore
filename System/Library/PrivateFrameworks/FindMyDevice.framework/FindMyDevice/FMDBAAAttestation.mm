@interface FMDBAAAttestation
- (FMDBAAAttestation)initWithAttestation:(id)attestation signature:(id)signature;
- (FMDBAAAttestation)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDBAAAttestation

- (FMDBAAAttestation)initWithAttestation:(id)attestation signature:(id)signature
{
  attestationCopy = attestation;
  signatureCopy = signature;
  v11.receiver = self;
  v11.super_class = FMDBAAAttestation;
  v8 = [(FMDBAAAttestation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(FMDBAAAttestation *)v8 setAttestation:attestationCopy];
    [(FMDBAAAttestation *)v9 setSignature:signatureCopy];
  }

  return v9;
}

- (FMDBAAAttestation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_attestation);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_signature);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = [(FMDBAAAttestation *)self initWithAttestation:v7 signature:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  attestation = [(FMDBAAAttestation *)self attestation];
  v6 = NSStringFromSelector(sel_attestation);
  [coderCopy encodeObject:attestation forKey:v6];

  signature = [(FMDBAAAttestation *)self signature];
  v7 = NSStringFromSelector(sel_signature);
  [coderCopy encodeObject:signature forKey:v7];
}

@end