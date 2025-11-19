@interface PKPeerPaymentEncryptionCertificatesVersions
- (BOOL)isEqual:(id)a3;
- (PKPeerPaymentEncryptionCertificatesVersions)initWithCoder:(id)a3;
- (PKPeerPaymentEncryptionCertificatesVersions)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)certificatesVersionForDestination:(unint64_t)a3;
@end

@implementation PKPeerPaymentEncryptionCertificatesVersions

- (PKPeerPaymentEncryptionCertificatesVersions)initWithDictionary:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PKPeerPaymentEncryptionCertificatesVersions;
  v5 = [(PKPeerPaymentEncryptionCertificatesVersions *)&v7 init];
  if (v5)
  {
    v5->_recipientData = [v4 PKIntegerForKey:@"recipientData"];
  }

  return v5;
}

- (PKPeerPaymentEncryptionCertificatesVersions)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PKPeerPaymentEncryptionCertificatesVersions;
  v5 = [(PKPeerPaymentEncryptionCertificatesVersions *)&v7 init];
  if (v5)
  {
    v5->_recipientData = [v4 decodeIntegerForKey:@"recipientData"];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_recipientData == v4[1];

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"recipientData: '%ld'; ", self->_recipientData];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[PKPeerPaymentEncryptionCertificatesVersions allocWithZone:?]];
  *(result + 1) = self->_recipientData;
  return result;
}

- (int64_t)certificatesVersionForDestination:(unint64_t)a3
{
  if (a3 == 1)
  {
    return self->_recipientData;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

@end