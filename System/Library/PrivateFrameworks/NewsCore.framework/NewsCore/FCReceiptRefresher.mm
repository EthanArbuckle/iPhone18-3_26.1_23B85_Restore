@interface FCReceiptRefresher
- (id)refreshForPurchase:(id)a3;
- (void)request:(id)a3 didFailWithError:(id)a4;
- (void)requestDidFinish:(id)a3;
@end

@implementation FCReceiptRefresher

- (id)refreshForPurchase:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69B68F0]);
  [(FCReceiptRefresher *)self setPendingPromise:v5];

  v6 = [v4 bundleID];
  [(FCReceiptRefresher *)self setRestoreBundleID:v6];

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
  v14 = [v4 bundleID];
  [v13 setProductsRequestBundleIdentifier:v14];

  v15 = [v4 appAdamID];
  [v13 setStoreItemIdentifier:v15];

  [v13 setBundleVersion:@"1.0"];
  v16 = [v4 storeExternalVersion];
  [v13 setStoreExternalVersion:v16];

  [v13 setVendorIdentifier:v10];
  v17 = [(FCReceiptRefresher *)self restoreBundleID];
  v18 = FCPurchaseReceiptDirectoryURL(v17);

  v19 = [v18 path];
  [v13 setReceiptDirectoryPath:v19];

  v20 = [(FCReceiptRefresher *)self request];
  [v20 setPaymentQueueClient:v13];

  v21 = [(FCReceiptRefresher *)self request];
  [v21 setDelegate:self];

  v22 = [(FCReceiptRefresher *)self request];
  [v22 start];

  v23 = [(FCReceiptRefresher *)self pendingPromise];
  v24 = [v23 promise];

  return v24;
}

- (void)requestDidFinish:(id)a3
{
  v4 = [(FCReceiptRefresher *)self restoreBundleID];
  v5 = FCPurchaseReceiptDirectoryURL(v4);

  v11 = [v5 URLByAppendingPathComponent:@"/StoreKit/receipt"];

  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v11];
  v7 = [v6 base64EncodedStringWithOptions:0];
  if (v7)
  {
    v8 = [(FCReceiptRefresher *)self pendingPromise];
    v9 = [v8 resolve];
    (v9)[2](v9, v7);
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.news.refresh.receipt" code:1001 userInfo:0];
    v9 = [(FCReceiptRefresher *)self pendingPromise];
    v10 = [v9 reject];
    (v10)[2](v10, v8);
  }
}

- (void)request:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  v7 = [(FCReceiptRefresher *)self pendingPromise];
  v6 = [v7 reject];
  (v6)[2](v6, v5);
}

@end