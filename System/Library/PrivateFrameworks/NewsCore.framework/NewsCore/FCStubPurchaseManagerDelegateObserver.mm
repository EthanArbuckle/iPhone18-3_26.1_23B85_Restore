@interface FCStubPurchaseManagerDelegateObserver
- (void)purchaseFailedForInvalidPurchaseReceiptWithProductID:(id)a3 ongoingPurchaseEntry:(id)a4;
- (void)purchaseFailedWithProductID:(id)a3 transactionState:(int64_t)a4 transactionError:(id)a5 ongoingPurchaseEntry:(id)a6;
- (void)purchaseSuccessWithProductID:(id)a3 transaction:(id)a4 chargeCurrencyCode:(id)a5 ongoingPurchaseEntry:(id)a6;
@end

@implementation FCStubPurchaseManagerDelegateObserver

- (void)purchaseFailedWithProductID:(id)a3 transactionState:(int64_t)a4 transactionError:(id)a5 ongoingPurchaseEntry:(id)a6
{
  v14 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [(FCStubPurchaseManagerDelegateObserver *)self failedBlock];

  if (v12)
  {
    v13 = [(FCStubPurchaseManagerDelegateObserver *)self failedBlock];
    (v13)[2](v13, v14, a4, v10, v11);
  }
}

- (void)purchaseFailedForInvalidPurchaseReceiptWithProductID:(id)a3 ongoingPurchaseEntry:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(FCStubPurchaseManagerDelegateObserver *)self failedWithInvalidReceiptBlock];

  if (v7)
  {
    v8 = [(FCStubPurchaseManagerDelegateObserver *)self failedWithInvalidReceiptBlock];
    (v8)[2](v8, v9, v6);
  }
}

- (void)purchaseSuccessWithProductID:(id)a3 transaction:(id)a4 chargeCurrencyCode:(id)a5 ongoingPurchaseEntry:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(FCStubPurchaseManagerDelegateObserver *)self successBlock];

  if (v13)
  {
    v14 = [(FCStubPurchaseManagerDelegateObserver *)self successBlock];
    v15 = [v10 receipt];
    (v14)[2](v14, v16, v15, v11, v12);
  }
}

@end