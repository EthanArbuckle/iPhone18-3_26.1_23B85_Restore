@interface CRKIdentitySharingSendAdvertisingIdentifierAndCertificateRequest
- (CRKIdentitySharingSendAdvertisingIdentifierAndCertificateRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKIdentitySharingSendAdvertisingIdentifierAndCertificateRequest

- (CRKIdentitySharingSendAdvertisingIdentifierAndCertificateRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = CRKIdentitySharingSendAdvertisingIdentifierAndCertificateRequest;
  v5 = [(CATTaskRequest *)&v21 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"recipients"];
    recipients = v5->_recipients;
    v5->_recipients = v9;

    v11 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"advertisingIdentifier"];
    advertisingIdentifier = v5->_advertisingIdentifier;
    v5->_advertisingIdentifier = v12;

    v14 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"activeCertificateData"];
    activeCertificateData = v5->_activeCertificateData;
    v5->_activeCertificateData = v15;

    v17 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"stagedCertificateData"];
    stagedCertificateData = v5->_stagedCertificateData;
    v5->_stagedCertificateData = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = CRKIdentitySharingSendAdvertisingIdentifierAndCertificateRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v9 encodeWithCoder:coderCopy];
  v5 = [(CRKIdentitySharingSendAdvertisingIdentifierAndCertificateRequest *)self recipients:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"recipients"];

  advertisingIdentifier = [(CRKIdentitySharingSendAdvertisingIdentifierAndCertificateRequest *)self advertisingIdentifier];
  [coderCopy encodeObject:advertisingIdentifier forKey:@"advertisingIdentifier"];

  activeCertificateData = [(CRKIdentitySharingSendAdvertisingIdentifierAndCertificateRequest *)self activeCertificateData];
  [coderCopy encodeObject:activeCertificateData forKey:@"activeCertificateData"];

  stagedCertificateData = [(CRKIdentitySharingSendAdvertisingIdentifierAndCertificateRequest *)self stagedCertificateData];
  [coderCopy encodeObject:stagedCertificateData forKey:@"stagedCertificateData"];
}

@end