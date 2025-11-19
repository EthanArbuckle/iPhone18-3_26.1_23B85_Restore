@interface FMDBAAAttestation
- (FMDBAAAttestation)initWithAttestation:(id)a3 signature:(id)a4;
- (FMDBAAAttestation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDBAAAttestation

- (FMDBAAAttestation)initWithAttestation:(id)a3 signature:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = FMDBAAAttestation;
  v8 = [(FMDBAAAttestation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(FMDBAAAttestation *)v8 setAttestation:v6];
    [(FMDBAAAttestation *)v9 setSignature:v7];
  }

  return v9;
}

- (FMDBAAAttestation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_attestation);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_signature);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = [(FMDBAAAttestation *)self initWithAttestation:v7 signature:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDBAAAttestation *)self attestation];
  v6 = NSStringFromSelector(sel_attestation);
  [v4 encodeObject:v5 forKey:v6];

  v8 = [(FMDBAAAttestation *)self signature];
  v7 = NSStringFromSelector(sel_signature);
  [v4 encodeObject:v8 forKey:v7];
}

@end