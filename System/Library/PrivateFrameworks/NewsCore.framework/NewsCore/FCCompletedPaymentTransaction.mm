@interface FCCompletedPaymentTransaction
- (FCCompletedPaymentTransaction)initWithProductID:(id)d receipt:(id)receipt appleIDAccountDetails:(id)details;
@end

@implementation FCCompletedPaymentTransaction

- (FCCompletedPaymentTransaction)initWithProductID:(id)d receipt:(id)receipt appleIDAccountDetails:(id)details
{
  dCopy = d;
  receiptCopy = receipt;
  detailsCopy = details;
  v15.receiver = self;
  v15.super_class = FCCompletedPaymentTransaction;
  v12 = [(FCCompletedPaymentTransaction *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_receipt, receipt);
    objc_storeStrong(&v13->_productID, d);
    objc_storeStrong(&v13->_appleIDAccountDetails, details);
  }

  return v13;
}

@end