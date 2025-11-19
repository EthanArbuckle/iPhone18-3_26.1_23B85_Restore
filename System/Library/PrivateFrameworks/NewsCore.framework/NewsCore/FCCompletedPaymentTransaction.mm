@interface FCCompletedPaymentTransaction
- (FCCompletedPaymentTransaction)initWithProductID:(id)a3 receipt:(id)a4 appleIDAccountDetails:(id)a5;
@end

@implementation FCCompletedPaymentTransaction

- (FCCompletedPaymentTransaction)initWithProductID:(id)a3 receipt:(id)a4 appleIDAccountDetails:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = FCCompletedPaymentTransaction;
  v12 = [(FCCompletedPaymentTransaction *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_receipt, a4);
    objc_storeStrong(&v13->_productID, a3);
    objc_storeStrong(&v13->_appleIDAccountDetails, a5);
  }

  return v13;
}

@end