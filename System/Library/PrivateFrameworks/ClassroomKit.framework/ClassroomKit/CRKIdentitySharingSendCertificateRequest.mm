@interface CRKIdentitySharingSendCertificateRequest
- (CRKIdentitySharingSendCertificateRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKIdentitySharingSendCertificateRequest

- (CRKIdentitySharingSendCertificateRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = CRKIdentitySharingSendCertificateRequest;
  v5 = [(CATTaskRequest *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"recipients"];
    recipients = v5->_recipients;
    v5->_recipients = v9;

    v11 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"activeCertificateData"];
    activeCertificateData = v5->_activeCertificateData;
    v5->_activeCertificateData = v12;

    v14 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"stagedCertificateData"];
    stagedCertificateData = v5->_stagedCertificateData;
    v5->_stagedCertificateData = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CRKIdentitySharingSendCertificateRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v8 encodeWithCoder:coderCopy];
  v5 = [(CRKIdentitySharingSendCertificateRequest *)self recipients:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"recipients"];

  activeCertificateData = [(CRKIdentitySharingSendCertificateRequest *)self activeCertificateData];
  [coderCopy encodeObject:activeCertificateData forKey:@"activeCertificateData"];

  stagedCertificateData = [(CRKIdentitySharingSendCertificateRequest *)self stagedCertificateData];
  [coderCopy encodeObject:stagedCertificateData forKey:@"stagedCertificateData"];
}

@end