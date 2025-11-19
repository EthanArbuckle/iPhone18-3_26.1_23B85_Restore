@interface CRKIdentitySharingRequestCertificateRequest
- (CRKIdentitySharingRequestCertificateRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKIdentitySharingRequestCertificateRequest

- (CRKIdentitySharingRequestCertificateRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CRKIdentitySharingRequestCertificateRequest;
  v5 = [(CATTaskRequest *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"recipient"];
    recipient = v5->_recipient;
    v5->_recipient = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRKIdentitySharingRequestCertificateRequest;
  v4 = a3;
  [(CATTaskRequest *)&v6 encodeWithCoder:v4];
  v5 = [(CRKIdentitySharingRequestCertificateRequest *)self recipient:v6.receiver];
  [v4 encodeObject:v5 forKey:@"recipient"];
}

@end