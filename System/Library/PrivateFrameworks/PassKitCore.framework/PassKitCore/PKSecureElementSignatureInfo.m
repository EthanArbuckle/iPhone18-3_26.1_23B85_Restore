@interface PKSecureElementSignatureInfo
- (PKSecureElementSignatureInfo)initWithCoder:(id)a3;
- (PKSecureElementSignatureInfo)initWithSecureElementCertificateSet:(id)a3 sequenceCounter:(id)a4 platformIdentifier:(id)a5 certificateVersion:(unint64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKSecureElementSignatureInfo

- (PKSecureElementSignatureInfo)initWithSecureElementCertificateSet:(id)a3 sequenceCounter:(id)a4 platformIdentifier:(id)a5 certificateVersion:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = PKSecureElementSignatureInfo;
  v14 = [(PKSecureElementSignatureInfo *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_certificates, a3);
    objc_storeStrong(&v15->_sequenceCounter, a4);
    objc_storeStrong(&v15->_platformIdentifier, a5);
    v15->_certificateVersion = a6;
  }

  return v15;
}

- (PKSecureElementSignatureInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKSecureElementSignatureInfo;
  v5 = [(PKSecureElementSignatureInfo *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"certificates"];
    certificates = v5->_certificates;
    v5->_certificates = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sequenceCounter"];
    sequenceCounter = v5->_sequenceCounter;
    v5->_sequenceCounter = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"platformIdentifier"];
    platformIdentifier = v5->_platformIdentifier;
    v5->_platformIdentifier = v10;

    v5->_certificateVersion = [v4 decodeIntegerForKey:@"certificateVersion"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(PKSecureElementCertificateSet *)self->_certificates copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_sequenceCounter copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_platformIdentifier copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v5[4] = self->_certificateVersion;
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  certificates = self->_certificates;
  v5 = a3;
  [v5 encodeObject:certificates forKey:@"certificates"];
  [v5 encodeObject:self->_sequenceCounter forKey:@"sequenceCounter"];
  [v5 encodeObject:self->_platformIdentifier forKey:@"platformIdentifier"];
  [v5 encodeInteger:self->_certificateVersion forKey:@"certificateVersion"];
}

@end