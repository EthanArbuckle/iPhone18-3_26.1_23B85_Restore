@interface PurchaseManager
- (_TtC16NewsSubscription15PurchaseManager)init;
- (void)purchase:(id)a3 handleWindowRequest:(id)a4 completion:(id)a5;
- (void)purchaseFailedForInvalidPurchaseReceiptWithProductID:(id)a3 ongoingPurchaseEntry:(id)a4;
- (void)purchaseFailedWithProductID:(id)a3 transactionState:(int64_t)a4 transactionError:(id)a5 ongoingPurchaseEntry:(id)a6;
- (void)purchaseSuccessWithProductID:(id)a3 transaction:(id)a4 chargeCurrencyCode:(id)a5 ongoingPurchaseEntry:(id)a6;
@end

@implementation PurchaseManager

- (_TtC16NewsSubscription15PurchaseManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)purchase:(id)a3 handleWindowRequest:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_1D779D2A8(v11, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)purchaseFailedWithProductID:(id)a3 transactionState:(int64_t)a4 transactionError:(id)a5 ongoingPurchaseEntry:(id)a6
{
  v10 = sub_1D78B5C74();
  v12 = v11;
  v15 = a5;
  v13 = a6;
  v14 = self;
  sub_1D779A420(v10, v12, a4, v15, v13);
}

- (void)purchaseFailedForInvalidPurchaseReceiptWithProductID:(id)a3 ongoingPurchaseEntry:(id)a4
{
  v6 = sub_1D78B5C74();
  v8 = v7;
  v9 = a4;
  v10 = self;
  sub_1D779AFC0(v6, v8, v9);
}

- (void)purchaseSuccessWithProductID:(id)a3 transaction:(id)a4 chargeCurrencyCode:(id)a5 ongoingPurchaseEntry:(id)a6
{
  v9 = sub_1D78B5C74();
  v11 = v10;
  v12 = sub_1D78B5C74();
  v14 = v13;
  v15 = a4;
  v16 = a6;
  v17 = self;
  sub_1D779B6E0(v9, v11, v15, v12, v14, v16);
}

@end