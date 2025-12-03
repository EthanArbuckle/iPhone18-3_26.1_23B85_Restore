@interface PKSecureElementSignatureInfo
- (PKSecureElementSignatureInfo)initWithCoder:(id)coder;
- (PKSecureElementSignatureInfo)initWithSecureElementCertificateSet:(id)set sequenceCounter:(id)counter platformIdentifier:(id)identifier certificateVersion:(unint64_t)version;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSecureElementSignatureInfo

- (PKSecureElementSignatureInfo)initWithSecureElementCertificateSet:(id)set sequenceCounter:(id)counter platformIdentifier:(id)identifier certificateVersion:(unint64_t)version
{
  setCopy = set;
  counterCopy = counter;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = PKSecureElementSignatureInfo;
  v14 = [(PKSecureElementSignatureInfo *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_certificates, set);
    objc_storeStrong(&v15->_sequenceCounter, counter);
    objc_storeStrong(&v15->_platformIdentifier, identifier);
    v15->_certificateVersion = version;
  }

  return v15;
}

- (PKSecureElementSignatureInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKSecureElementSignatureInfo;
  v5 = [(PKSecureElementSignatureInfo *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"certificates"];
    certificates = v5->_certificates;
    v5->_certificates = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sequenceCounter"];
    sequenceCounter = v5->_sequenceCounter;
    v5->_sequenceCounter = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"platformIdentifier"];
    platformIdentifier = v5->_platformIdentifier;
    v5->_platformIdentifier = v10;

    v5->_certificateVersion = [coderCopy decodeIntegerForKey:@"certificateVersion"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(PKSecureElementCertificateSet *)self->_certificates copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_sequenceCounter copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_platformIdentifier copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v5[4] = self->_certificateVersion;
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  certificates = self->_certificates;
  coderCopy = coder;
  [coderCopy encodeObject:certificates forKey:@"certificates"];
  [coderCopy encodeObject:self->_sequenceCounter forKey:@"sequenceCounter"];
  [coderCopy encodeObject:self->_platformIdentifier forKey:@"platformIdentifier"];
  [coderCopy encodeInteger:self->_certificateVersion forKey:@"certificateVersion"];
}

@end