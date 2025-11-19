@interface FCMockPaymentTransactionManager
+ (id)mockPaymentTransactionWithFailForProductID:(id)a3 transactionState:(int64_t)a4 transactionError:(id)a5;
+ (id)mockPaymentTransactionWithSuccessForProductID:(id)a3;
- (FCPaymentTransactionManagerDelegate)delegate;
- (void)startPurchaseWithTagID:(id)a3 productID:(id)a4 purchaseID:(id)a5 bundleID:(id)a6 appAdamID:(id)a7 storeExternalVersion:(id)a8 price:(id)a9 webAccessOptIn:(BOOL)a10 payment:(id)a11;
@end

@implementation FCMockPaymentTransactionManager

+ (id)mockPaymentTransactionWithSuccessForProductID:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(FCMockPaymentTransactionManager);
  [(FCMockPaymentTransactionManager *)v4 setProductID:v3];

  [(FCMockPaymentTransactionManager *)v4 setTransactionExpectation:0];

  return v4;
}

+ (id)mockPaymentTransactionWithFailForProductID:(id)a3 transactionState:(int64_t)a4 transactionError:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = objc_alloc_init(FCMockPaymentTransactionManager);
  [(FCMockPaymentTransactionManager *)v9 setProductID:v8];

  [(FCMockPaymentTransactionManager *)v9 setTransactionState:a4];
  [(FCMockPaymentTransactionManager *)v9 setTransactionError:v7];

  [(FCMockPaymentTransactionManager *)v9 setTransactionExpectation:1];

  return v9;
}

- (void)startPurchaseWithTagID:(id)a3 productID:(id)a4 purchaseID:(id)a5 bundleID:(id)a6 appAdamID:(id)a7 storeExternalVersion:(id)a8 price:(id)a9 webAccessOptIn:(BOOL)a10 payment:(id)a11
{
  if ([(FCMockPaymentTransactionManager *)self transactionExpectation:a3])
  {
    if ([(FCMockPaymentTransactionManager *)self transactionExpectation]!= 1)
    {
      return;
    }

    v17 = [(FCMockPaymentTransactionManager *)self delegate];
    v12 = [(FCMockPaymentTransactionManager *)self productID];
    v13 = [(FCMockPaymentTransactionManager *)self transactionState];
    v14 = [(FCMockPaymentTransactionManager *)self transactionError];
    [(FCCompletedPaymentTransaction *)v17 transactionFailedWithProductID:v12 transactionState:v13 transactionError:v14];
  }

  else
  {
    v15 = [FCCompletedPaymentTransaction alloc];
    v16 = [(FCMockPaymentTransactionManager *)self productID];
    v17 = [(FCCompletedPaymentTransaction *)v15 initWithProductID:v16 receipt:0 appleIDAccountDetails:0];

    v12 = [(FCMockPaymentTransactionManager *)self delegate];
    [v12 transactionPurchased:v17];
  }
}

- (FCPaymentTransactionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end