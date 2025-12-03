@interface CRKIdentitySharingRequestCertificateRequest
- (CRKIdentitySharingRequestCertificateRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKIdentitySharingRequestCertificateRequest

- (CRKIdentitySharingRequestCertificateRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CRKIdentitySharingRequestCertificateRequest;
  v5 = [(CATTaskRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"recipient"];
    recipient = v5->_recipient;
    v5->_recipient = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRKIdentitySharingRequestCertificateRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CRKIdentitySharingRequestCertificateRequest *)self recipient:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"recipient"];
}

@end