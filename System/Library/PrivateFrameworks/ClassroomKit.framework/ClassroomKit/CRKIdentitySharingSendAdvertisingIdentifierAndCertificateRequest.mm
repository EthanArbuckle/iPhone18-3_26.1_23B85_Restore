@interface CRKIdentitySharingSendAdvertisingIdentifierAndCertificateRequest
- (CRKIdentitySharingSendAdvertisingIdentifierAndCertificateRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKIdentitySharingSendAdvertisingIdentifierAndCertificateRequest

- (CRKIdentitySharingSendAdvertisingIdentifierAndCertificateRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CRKIdentitySharingSendAdvertisingIdentifierAndCertificateRequest;
  v5 = [(CATTaskRequest *)&v21 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"recipients"];
    recipients = v5->_recipients;
    v5->_recipients = v9;

    v11 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"advertisingIdentifier"];
    advertisingIdentifier = v5->_advertisingIdentifier;
    v5->_advertisingIdentifier = v12;

    v14 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"activeCertificateData"];
    activeCertificateData = v5->_activeCertificateData;
    v5->_activeCertificateData = v15;

    v17 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"stagedCertificateData"];
    stagedCertificateData = v5->_stagedCertificateData;
    v5->_stagedCertificateData = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = CRKIdentitySharingSendAdvertisingIdentifierAndCertificateRequest;
  v4 = a3;
  [(CATTaskRequest *)&v9 encodeWithCoder:v4];
  v5 = [(CRKIdentitySharingSendAdvertisingIdentifierAndCertificateRequest *)self recipients:v9.receiver];
  [v4 encodeObject:v5 forKey:@"recipients"];

  v6 = [(CRKIdentitySharingSendAdvertisingIdentifierAndCertificateRequest *)self advertisingIdentifier];
  [v4 encodeObject:v6 forKey:@"advertisingIdentifier"];

  v7 = [(CRKIdentitySharingSendAdvertisingIdentifierAndCertificateRequest *)self activeCertificateData];
  [v4 encodeObject:v7 forKey:@"activeCertificateData"];

  v8 = [(CRKIdentitySharingSendAdvertisingIdentifierAndCertificateRequest *)self stagedCertificateData];
  [v4 encodeObject:v8 forKey:@"stagedCertificateData"];
}

@end