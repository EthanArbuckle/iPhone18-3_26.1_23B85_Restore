@interface PKPendingPaymentTransaction
- (PKPendingPaymentTransaction)initWithTransaction:(id)a3 pass:(id)a4 paymentApplication:(id)a5;
@end

@implementation PKPendingPaymentTransaction

- (PKPendingPaymentTransaction)initWithTransaction:(id)a3 pass:(id)a4 paymentApplication:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PKPendingPaymentTransaction;
  v12 = [(PKPendingPaymentTransaction *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_transaction, a3);
    objc_storeStrong(&v13->_pass, a4);
    objc_storeStrong(&v13->_paymentApplication, a5);
  }

  return v13;
}

@end