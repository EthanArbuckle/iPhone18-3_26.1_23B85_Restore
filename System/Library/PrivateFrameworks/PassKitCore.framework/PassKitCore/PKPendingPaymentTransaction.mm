@interface PKPendingPaymentTransaction
- (PKPendingPaymentTransaction)initWithTransaction:(id)transaction pass:(id)pass paymentApplication:(id)application;
@end

@implementation PKPendingPaymentTransaction

- (PKPendingPaymentTransaction)initWithTransaction:(id)transaction pass:(id)pass paymentApplication:(id)application
{
  transactionCopy = transaction;
  passCopy = pass;
  applicationCopy = application;
  v15.receiver = self;
  v15.super_class = PKPendingPaymentTransaction;
  v12 = [(PKPendingPaymentTransaction *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_transaction, transaction);
    objc_storeStrong(&v13->_pass, pass);
    objc_storeStrong(&v13->_paymentApplication, application);
  }

  return v13;
}

@end