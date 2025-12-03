@interface PKPeerPaymentEncryptionCertificatesVersions
- (BOOL)isEqual:(id)equal;
- (PKPeerPaymentEncryptionCertificatesVersions)initWithCoder:(id)coder;
- (PKPeerPaymentEncryptionCertificatesVersions)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)certificatesVersionForDestination:(unint64_t)destination;
@end

@implementation PKPeerPaymentEncryptionCertificatesVersions

- (PKPeerPaymentEncryptionCertificatesVersions)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7.receiver = self;
  v7.super_class = PKPeerPaymentEncryptionCertificatesVersions;
  v5 = [(PKPeerPaymentEncryptionCertificatesVersions *)&v7 init];
  if (v5)
  {
    v5->_recipientData = [dictionaryCopy PKIntegerForKey:@"recipientData"];
  }

  return v5;
}

- (PKPeerPaymentEncryptionCertificatesVersions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PKPeerPaymentEncryptionCertificatesVersions;
  v5 = [(PKPeerPaymentEncryptionCertificatesVersions *)&v7 init];
  if (v5)
  {
    v5->_recipientData = [coderCopy decodeIntegerForKey:@"recipientData"];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_recipientData == equalCopy[1];

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"recipientData: '%ld'; ", self->_recipientData];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [[PKPeerPaymentEncryptionCertificatesVersions allocWithZone:?]];
  *(result + 1) = self->_recipientData;
  return result;
}

- (int64_t)certificatesVersionForDestination:(unint64_t)destination
{
  if (destination == 1)
  {
    return self->_recipientData;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

@end