@interface FCStubPurchaseManagerDelegateObserver
- (void)purchaseFailedForInvalidPurchaseReceiptWithProductID:(id)d ongoingPurchaseEntry:(id)entry;
- (void)purchaseFailedWithProductID:(id)d transactionState:(int64_t)state transactionError:(id)error ongoingPurchaseEntry:(id)entry;
- (void)purchaseSuccessWithProductID:(id)d transaction:(id)transaction chargeCurrencyCode:(id)code ongoingPurchaseEntry:(id)entry;
@end

@implementation FCStubPurchaseManagerDelegateObserver

- (void)purchaseFailedWithProductID:(id)d transactionState:(int64_t)state transactionError:(id)error ongoingPurchaseEntry:(id)entry
{
  dCopy = d;
  errorCopy = error;
  entryCopy = entry;
  failedBlock = [(FCStubPurchaseManagerDelegateObserver *)self failedBlock];

  if (failedBlock)
  {
    failedBlock2 = [(FCStubPurchaseManagerDelegateObserver *)self failedBlock];
    (failedBlock2)[2](failedBlock2, dCopy, state, errorCopy, entryCopy);
  }
}

- (void)purchaseFailedForInvalidPurchaseReceiptWithProductID:(id)d ongoingPurchaseEntry:(id)entry
{
  dCopy = d;
  entryCopy = entry;
  failedWithInvalidReceiptBlock = [(FCStubPurchaseManagerDelegateObserver *)self failedWithInvalidReceiptBlock];

  if (failedWithInvalidReceiptBlock)
  {
    failedWithInvalidReceiptBlock2 = [(FCStubPurchaseManagerDelegateObserver *)self failedWithInvalidReceiptBlock];
    (failedWithInvalidReceiptBlock2)[2](failedWithInvalidReceiptBlock2, dCopy, entryCopy);
  }
}

- (void)purchaseSuccessWithProductID:(id)d transaction:(id)transaction chargeCurrencyCode:(id)code ongoingPurchaseEntry:(id)entry
{
  dCopy = d;
  transactionCopy = transaction;
  codeCopy = code;
  entryCopy = entry;
  successBlock = [(FCStubPurchaseManagerDelegateObserver *)self successBlock];

  if (successBlock)
  {
    successBlock2 = [(FCStubPurchaseManagerDelegateObserver *)self successBlock];
    receipt = [transactionCopy receipt];
    (successBlock2)[2](successBlock2, dCopy, receipt, codeCopy, entryCopy);
  }
}

@end