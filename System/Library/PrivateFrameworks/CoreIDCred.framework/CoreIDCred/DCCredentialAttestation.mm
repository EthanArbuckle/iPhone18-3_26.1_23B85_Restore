@interface DCCredentialAttestation
- (DCCredentialAttestation)initWithCoder:(id)a3;
- (DCCredentialAttestation)initWithData:(id)a3 type:(unint64_t)a4;
- (NSData)attestationData;
- (unint64_t)attestationType;
- (void)encodeWithCoder:(id)a3;
- (void)setAttestationData:(id)a3;
- (void)setAttestationType:(unint64_t)a3;
@end

@implementation DCCredentialAttestation

- (DCCredentialAttestation)initWithData:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = DCCredentialAttestation;
  v7 = [(DCCredentialAttestation *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_lock._os_unfair_lock_opaque = 0;
    v9 = [v6 copy];
    attestationData = v8->_attestationData;
    v8->_attestationData = v9;

    v8->_attestationType = a4;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [v4 encodeObject:self->_attestationData forKey:0x28586D240];
  [v4 encodeInteger:self->_attestationType forKey:10830140000];

  os_unfair_lock_unlock(&self->_lock);
}

- (DCCredentialAttestation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:0x28586D240];
  v6 = [v4 decodeIntegerForKey:10830140000];

  v7 = [(DCCredentialAttestation *)self initWithData:v5 type:v6];
  return v7;
}

- (NSData)attestationData
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_attestationData;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setAttestationData:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_attestationData != v6)
  {
    v4 = [(NSData *)v6 copyWithZone:0];
    attestationData = self->_attestationData;
    self->_attestationData = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)attestationType
{
  os_unfair_lock_lock(&self->_lock);
  attestationType = self->_attestationType;
  os_unfair_lock_unlock(&self->_lock);
  return attestationType;
}

- (void)setAttestationType:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_attestationType = a3;

  os_unfair_lock_unlock(&self->_lock);
}

@end