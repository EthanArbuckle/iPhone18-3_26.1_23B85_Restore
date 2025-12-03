@interface PDFPANEligibilityCredentialPassPair
- (PDFPANEligibilityCredentialPassPair)initWithCredential:(id)credential paymentPass:(id)pass;
@end

@implementation PDFPANEligibilityCredentialPassPair

- (PDFPANEligibilityCredentialPassPair)initWithCredential:(id)credential paymentPass:(id)pass
{
  credentialCopy = credential;
  passCopy = pass;
  v12.receiver = self;
  v12.super_class = PDFPANEligibilityCredentialPassPair;
  v9 = [(PDFPANEligibilityCredentialPassPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_credential, credential);
    objc_storeStrong(&v10->_paymentPass, pass);
  }

  return v10;
}

@end