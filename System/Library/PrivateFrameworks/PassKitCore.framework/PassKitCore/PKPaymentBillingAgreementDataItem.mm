@interface PKPaymentBillingAgreementDataItem
- (NSString)billingAgreement;
@end

@implementation PKPaymentBillingAgreementDataItem

- (NSString)billingAgreement
{
  model = [(PKPaymentDataItem *)self model];
  paymentRequest = [model paymentRequest];

  recurringPaymentRequest = [paymentRequest recurringPaymentRequest];
  automaticReloadPaymentRequest = [paymentRequest automaticReloadPaymentRequest];
  v6 = automaticReloadPaymentRequest;
  if (recurringPaymentRequest)
  {
    automaticReloadPaymentRequest = recurringPaymentRequest;
  }

  billingAgreement = [automaticReloadPaymentRequest billingAgreement];

  return billingAgreement;
}

@end