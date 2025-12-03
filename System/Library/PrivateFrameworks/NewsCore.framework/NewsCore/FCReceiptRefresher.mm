@interface FCReceiptRefresher
- (id)refreshForPurchase:(id)purchase;
- (void)request:(id)request didFailWithError:(id)error;
- (void)requestDidFinish:(id)finish;
@end

@implementation FCReceiptRefresher

- (id)refreshForPurchase:(id)purchase
{
  purchaseCopy = purchase;
  v5 = objc_alloc_init(MEMORY[0x1E69B68F0]);
  [(FCReceiptRefresher *)self setPendingPromise:v5];

  bundleID = [purchaseCopy bundleID];
  [(FCReceiptRefresher *)self setRestoreBundleID:bundleID];

  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v7 = _MergedGlobals_170;
  v34 = _MergedGlobals_170;
  if (!_MergedGlobals_170)
  {
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __getSKReceiptRefreshRequestClass_block_invoke;
    v29 = &unk_1E7C3C510;
    v30 = &v31;
    __getSKReceiptRefreshRequestClass_block_invoke(&v26);
    v7 = v32[3];
  }

  v8 = v7;
  _Block_object_dispose(&v31, 8);
  v9 = objc_alloc_init(v7);
  [(FCReceiptRefresher *)self setRequest:v9];

  v10 = FCDeviceIdentifierForVendor();
  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v11 = qword_1EDB27570;
  v34 = qword_1EDB27570;
  if (!qword_1EDB27570)
  {
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __getSKPaymentQueueClientClass_block_invoke_0;
    v29 = &unk_1E7C3C510;
    v30 = &v31;
    __getSKPaymentQueueClientClass_block_invoke_0(&v26);
    v11 = v32[3];
  }

  v12 = v11;
  _Block_object_dispose(&v31, 8);
  v13 = objc_alloc_init(v11);
  [v13 setBundleIdentifier:@"com.apple.news"];
  bundleID2 = [purchaseCopy bundleID];
  [v13 setProductsRequestBundleIdentifier:bundleID2];

  appAdamID = [purchaseCopy appAdamID];
  [v13 setStoreItemIdentifier:appAdamID];

  [v13 setBundleVersion:@"1.0"];
  storeExternalVersion = [purchaseCopy storeExternalVersion];
  [v13 setStoreExternalVersion:storeExternalVersion];

  [v13 setVendorIdentifier:v10];
  restoreBundleID = [(FCReceiptRefresher *)self restoreBundleID];
  v18 = FCPurchaseReceiptDirectoryURL(restoreBundleID);

  path = [v18 path];
  [v13 setReceiptDirectoryPath:path];

  request = [(FCReceiptRefresher *)self request];
  [request setPaymentQueueClient:v13];

  request2 = [(FCReceiptRefresher *)self request];
  [request2 setDelegate:self];

  request3 = [(FCReceiptRefresher *)self request];
  [request3 start];

  pendingPromise = [(FCReceiptRefresher *)self pendingPromise];
  promise = [pendingPromise promise];

  return promise;
}

- (void)requestDidFinish:(id)finish
{
  restoreBundleID = [(FCReceiptRefresher *)self restoreBundleID];
  v5 = FCPurchaseReceiptDirectoryURL(restoreBundleID);

  v11 = [v5 URLByAppendingPathComponent:@"/StoreKit/receipt"];

  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v11];
  v7 = [v6 base64EncodedStringWithOptions:0];
  if (v7)
  {
    pendingPromise = [(FCReceiptRefresher *)self pendingPromise];
    resolve = [pendingPromise resolve];
    (resolve)[2](resolve, v7);
  }

  else
  {
    pendingPromise = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.news.refresh.receipt" code:1001 userInfo:0];
    resolve = [(FCReceiptRefresher *)self pendingPromise];
    reject = [resolve reject];
    (reject)[2](reject, pendingPromise);
  }
}

- (void)request:(id)request didFailWithError:(id)error
{
  errorCopy = error;
  pendingPromise = [(FCReceiptRefresher *)self pendingPromise];
  reject = [pendingPromise reject];
  (reject)[2](reject, errorCopy);
}

@end