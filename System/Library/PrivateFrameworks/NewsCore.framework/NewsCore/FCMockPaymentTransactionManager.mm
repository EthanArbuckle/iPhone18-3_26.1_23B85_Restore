@interface FCMockPaymentTransactionManager
+ (id)mockPaymentTransactionWithFailForProductID:(id)d transactionState:(int64_t)state transactionError:(id)error;
+ (id)mockPaymentTransactionWithSuccessForProductID:(id)d;
- (FCPaymentTransactionManagerDelegate)delegate;
- (void)startPurchaseWithTagID:(id)d productID:(id)iD purchaseID:(id)purchaseID bundleID:(id)bundleID appAdamID:(id)adamID storeExternalVersion:(id)version price:(id)price webAccessOptIn:(BOOL)self0 payment:(id)self1;
@end

@implementation FCMockPaymentTransactionManager

+ (id)mockPaymentTransactionWithSuccessForProductID:(id)d
{
  dCopy = d;
  v4 = objc_alloc_init(FCMockPaymentTransactionManager);
  [(FCMockPaymentTransactionManager *)v4 setProductID:dCopy];

  [(FCMockPaymentTransactionManager *)v4 setTransactionExpectation:0];

  return v4;
}

+ (id)mockPaymentTransactionWithFailForProductID:(id)d transactionState:(int64_t)state transactionError:(id)error
{
  errorCopy = error;
  dCopy = d;
  v9 = objc_alloc_init(FCMockPaymentTransactionManager);
  [(FCMockPaymentTransactionManager *)v9 setProductID:dCopy];

  [(FCMockPaymentTransactionManager *)v9 setTransactionState:state];
  [(FCMockPaymentTransactionManager *)v9 setTransactionError:errorCopy];

  [(FCMockPaymentTransactionManager *)v9 setTransactionExpectation:1];

  return v9;
}

- (void)startPurchaseWithTagID:(id)d productID:(id)iD purchaseID:(id)purchaseID bundleID:(id)bundleID appAdamID:(id)adamID storeExternalVersion:(id)version price:(id)price webAccessOptIn:(BOOL)self0 payment:(id)self1
{
  if ([(FCMockPaymentTransactionManager *)self transactionExpectation:d])
  {
    if ([(FCMockPaymentTransactionManager *)self transactionExpectation]!= 1)
    {
      return;
    }

    delegate = [(FCMockPaymentTransactionManager *)self delegate];
    productID = [(FCMockPaymentTransactionManager *)self productID];
    transactionState = [(FCMockPaymentTransactionManager *)self transactionState];
    transactionError = [(FCMockPaymentTransactionManager *)self transactionError];
    [(FCCompletedPaymentTransaction *)delegate transactionFailedWithProductID:productID transactionState:transactionState transactionError:transactionError];
  }

  else
  {
    v15 = [FCCompletedPaymentTransaction alloc];
    productID2 = [(FCMockPaymentTransactionManager *)self productID];
    delegate = [(FCCompletedPaymentTransaction *)v15 initWithProductID:productID2 receipt:0 appleIDAccountDetails:0];

    productID = [(FCMockPaymentTransactionManager *)self delegate];
    [productID transactionPurchased:delegate];
  }
}

- (FCPaymentTransactionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end