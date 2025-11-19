@interface PDFPANEligibilityCredentialPassPair
- (PDFPANEligibilityCredentialPassPair)initWithCredential:(id)a3 paymentPass:(id)a4;
@end

@implementation PDFPANEligibilityCredentialPassPair

- (PDFPANEligibilityCredentialPassPair)initWithCredential:(id)a3 paymentPass:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PDFPANEligibilityCredentialPassPair;
  v9 = [(PDFPANEligibilityCredentialPassPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_credential, a3);
    objc_storeStrong(&v10->_paymentPass, a4);
  }

  return v10;
}

@end