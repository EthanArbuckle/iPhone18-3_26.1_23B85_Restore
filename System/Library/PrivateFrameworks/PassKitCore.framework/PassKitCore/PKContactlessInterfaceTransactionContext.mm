@interface PKContactlessInterfaceTransactionContext
- (PKContactlessInterfaceTransactionContext)initWithPaymentPass:(id)pass activatedPaymentApplications:(id)applications;
@end

@implementation PKContactlessInterfaceTransactionContext

- (PKContactlessInterfaceTransactionContext)initWithPaymentPass:(id)pass activatedPaymentApplications:(id)applications
{
  passCopy = pass;
  applicationsCopy = applications;
  v12.receiver = self;
  v12.super_class = PKContactlessInterfaceTransactionContext;
  v9 = [(PKContactlessInterfaceTransactionContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_paymentPass, pass);
    objc_storeStrong(&v10->_activatedPaymentApplications, applications);
  }

  return v10;
}

@end