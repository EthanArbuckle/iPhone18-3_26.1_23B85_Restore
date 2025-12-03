@interface PKSpotlightPaymentCardDocumentProcessor
- (id)extractAttributesFromPKPass:(id)pass;
@end

@implementation PKSpotlightPaymentCardDocumentProcessor

- (id)extractAttributesFromPKPass:(id)pass
{
  passCopy = pass;
  v4 = objc_opt_new();
  paymentPass = [passCopy paymentPass];

  if (paymentPass)
  {
    if ([paymentPass isIdentityPass])
    {
      if ([paymentPass identityType] == 1)
      {
        [v4 setObject:*MEMORY[0x1E6963A80] forKey:*MEMORY[0x1E6963DE8]];
      }
    }

    else if ([paymentPass cardType] == 1)
    {
      devicePrimaryPaymentApplication = [paymentPass devicePrimaryPaymentApplication];
      paymentType = [devicePrimaryPaymentApplication paymentType];

      v8 = PKDisplayablePaymentMethodStringFromType(paymentType);
      [v4 safelySetObject:v8 forKey:*MEMORY[0x1E6963DE8]];
    }
  }

  return v4;
}

@end