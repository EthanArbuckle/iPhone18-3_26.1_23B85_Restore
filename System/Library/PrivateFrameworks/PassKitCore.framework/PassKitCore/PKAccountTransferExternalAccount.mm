@interface PKAccountTransferExternalAccount
- (id)hashComponent;
@end

@implementation PKAccountTransferExternalAccount

- (id)hashComponent
{
  string = [MEMORY[0x1E696AD60] string];
  type = [(PKAccountPaymentFundingSource *)self type];
  switch(type)
  {
    case 4:
      v6 = PKAccountFundingSourceTypeStringSavings;
      goto LABEL_7;
    case 2:
      v6 = PKAccountFundingSourceTypeStringApplePayCash;
LABEL_7:
      [string appendString:*v6];
      break;
    case 1:
      [string appendString:@"ACH"];
      identifier = [(PKAccountPaymentFundingSource *)self identifier];
      [string appendString:identifier];

      break;
  }

  v7 = [string copy];

  return v7;
}

@end