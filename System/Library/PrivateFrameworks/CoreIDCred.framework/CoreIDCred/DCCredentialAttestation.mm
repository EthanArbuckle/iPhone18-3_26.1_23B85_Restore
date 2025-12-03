@interface DCCredentialAttestation
- (DCCredentialAttestation)initWithCoder:(id)coder;
- (DCCredentialAttestation)initWithData:(id)data type:(unint64_t)type;
- (NSData)attestationData;
- (unint64_t)attestationType;
- (void)encodeWithCoder:(id)coder;
- (void)setAttestationData:(id)data;
- (void)setAttestationType:(unint64_t)type;
@end

@implementation DCCredentialAttestation

- (DCCredentialAttestation)initWithData:(id)data type:(unint64_t)type
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = DCCredentialAttestation;
  v7 = [(DCCredentialAttestation *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_lock._os_unfair_lock_opaque = 0;
    v9 = [dataCopy copy];
    attestationData = v8->_attestationData;
    v8->_attestationData = v9;

    v8->_attestationType = type;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  os_unfair_lock_lock(&self->_lock);
  [coderCopy encodeObject:self->_attestationData forKey:0x28586D240];
  [coderCopy encodeInteger:self->_attestationType forKey:10830140000];

  os_unfair_lock_unlock(&self->_lock);
}

- (DCCredentialAttestation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586D240];
  v6 = [coderCopy decodeIntegerForKey:10830140000];

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

- (void)setAttestationData:(id)data
{
  dataCopy = data;
  os_unfair_lock_lock(&self->_lock);
  if (self->_attestationData != dataCopy)
  {
    v4 = [(NSData *)dataCopy copyWithZone:0];
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

- (void)setAttestationType:(unint64_t)type
{
  os_unfair_lock_lock(&self->_lock);
  self->_attestationType = type;

  os_unfair_lock_unlock(&self->_lock);
}

@end