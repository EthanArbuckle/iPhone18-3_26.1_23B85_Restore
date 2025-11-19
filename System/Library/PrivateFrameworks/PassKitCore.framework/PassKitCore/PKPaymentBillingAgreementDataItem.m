@interface PKPaymentBillingAgreementDataItem
- (NSString)billingAgreement;
@end

@implementation PKPaymentBillingAgreementDataItem

- (NSString)billingAgreement
{
  v2 = [(PKPaymentDataItem *)self model];
  v3 = [v2 paymentRequest];

  v4 = [v3 recurringPaymentRequest];
  v5 = [v3 automaticReloadPaymentRequest];
  v6 = v5;
  if (v4)
  {
    v5 = v4;
  }

  v7 = [v5 billingAgreement];

  return v7;
}

@end