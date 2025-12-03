@interface PurchaseManager
- (_TtC16NewsSubscription15PurchaseManager)init;
- (void)purchase:(id)purchase handleWindowRequest:(id)request completion:(id)completion;
- (void)purchaseFailedForInvalidPurchaseReceiptWithProductID:(id)d ongoingPurchaseEntry:(id)entry;
- (void)purchaseFailedWithProductID:(id)d transactionState:(int64_t)state transactionError:(id)error ongoingPurchaseEntry:(id)entry;
- (void)purchaseSuccessWithProductID:(id)d transaction:(id)transaction chargeCurrencyCode:(id)code ongoingPurchaseEntry:(id)entry;
@end

@implementation PurchaseManager

- (_TtC16NewsSubscription15PurchaseManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)purchase:(id)purchase handleWindowRequest:(id)request completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  purchaseCopy = purchase;
  requestCopy = request;
  selfCopy = self;
  sub_1D779D2A8(selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)purchaseFailedWithProductID:(id)d transactionState:(int64_t)state transactionError:(id)error ongoingPurchaseEntry:(id)entry
{
  v10 = sub_1D78B5C74();
  v12 = v11;
  errorCopy = error;
  entryCopy = entry;
  selfCopy = self;
  sub_1D779A420(v10, v12, state, errorCopy, entryCopy);
}

- (void)purchaseFailedForInvalidPurchaseReceiptWithProductID:(id)d ongoingPurchaseEntry:(id)entry
{
  v6 = sub_1D78B5C74();
  v8 = v7;
  entryCopy = entry;
  selfCopy = self;
  sub_1D779AFC0(v6, v8, entryCopy);
}

- (void)purchaseSuccessWithProductID:(id)d transaction:(id)transaction chargeCurrencyCode:(id)code ongoingPurchaseEntry:(id)entry
{
  v9 = sub_1D78B5C74();
  v11 = v10;
  v12 = sub_1D78B5C74();
  v14 = v13;
  transactionCopy = transaction;
  entryCopy = entry;
  selfCopy = self;
  sub_1D779B6E0(v9, v11, transactionCopy, v12, v14, entryCopy);
}

@end