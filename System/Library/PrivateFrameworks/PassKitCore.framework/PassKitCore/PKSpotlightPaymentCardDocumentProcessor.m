@interface PKSpotlightPaymentCardDocumentProcessor
- (id)extractAttributesFromPKPass:(id)a3;
@end

@implementation PKSpotlightPaymentCardDocumentProcessor

- (id)extractAttributesFromPKPass:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 paymentPass];

  if (v5)
  {
    if ([v5 isIdentityPass])
    {
      if ([v5 identityType] == 1)
      {
        [v4 setObject:*MEMORY[0x1E6963A80] forKey:*MEMORY[0x1E6963DE8]];
      }
    }

    else if ([v5 cardType] == 1)
    {
      v6 = [v5 devicePrimaryPaymentApplication];
      v7 = [v6 paymentType];

      v8 = PKDisplayablePaymentMethodStringFromType(v7);
      [v4 safelySetObject:v8 forKey:*MEMORY[0x1E6963DE8]];
    }
  }

  return v4;
}

@end