@interface CRKIdentitySharingSendCertificateRequest
- (CRKIdentitySharingSendCertificateRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKIdentitySharingSendCertificateRequest

- (CRKIdentitySharingSendCertificateRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CRKIdentitySharingSendCertificateRequest;
  v5 = [(CATTaskRequest *)&v18 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"recipients"];
    recipients = v5->_recipients;
    v5->_recipients = v9;

    v11 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"activeCertificateData"];
    activeCertificateData = v5->_activeCertificateData;
    v5->_activeCertificateData = v12;

    v14 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"stagedCertificateData"];
    stagedCertificateData = v5->_stagedCertificateData;
    v5->_stagedCertificateData = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = CRKIdentitySharingSendCertificateRequest;
  v4 = a3;
  [(CATTaskRequest *)&v8 encodeWithCoder:v4];
  v5 = [(CRKIdentitySharingSendCertificateRequest *)self recipients:v8.receiver];
  [v4 encodeObject:v5 forKey:@"recipients"];

  v6 = [(CRKIdentitySharingSendCertificateRequest *)self activeCertificateData];
  [v4 encodeObject:v6 forKey:@"activeCertificateData"];

  v7 = [(CRKIdentitySharingSendCertificateRequest *)self stagedCertificateData];
  [v4 encodeObject:v7 forKey:@"stagedCertificateData"];
}

@end