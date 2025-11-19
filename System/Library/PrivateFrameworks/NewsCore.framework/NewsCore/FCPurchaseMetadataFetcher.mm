@interface FCPurchaseMetadataFetcher
- (FCPurchaseMetadataFetcher)init;
- (id)clientIdentifier;
- (id)fetchPurchaseMetadataForPurchaseID:(id)a3 restorePurchase:(BOOL)a4;
- (id)promiseStoreExternalVersionWithAppAdamID:(void *)a1;
@end

@implementation FCPurchaseMetadataFetcher

- (FCPurchaseMetadataFetcher)init
{
  v7.receiver = self;
  v7.super_class = FCPurchaseMetadataFetcher;
  v2 = [(FCPurchaseMetadataFetcher *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.news.purchaseMetadataFetcher", v3);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v4;
  }

  return v2;
}

void __45__FCPurchaseMetadataFetcher_clientIdentifier__block_invoke()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];

  if ([v1 isEqualToString:@"com.apple.stocks"])
  {
    v2 = _MergedGlobals_147;
    v3 = @"com.apple.stocks.subscriptions";
  }

  else
  {
    if (![v1 isEqualToString:@"com.apple.news"] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"FCPurchaseMetadataFetcher: Unknown clientID for bundle %@.", v1];
      *buf = 136315906;
      v7 = "[FCPurchaseMetadataFetcher clientIdentifier]_block_invoke";
      v8 = 2080;
      v9 = "FCPurchaseMetadataFetcher.m";
      v10 = 1024;
      v11 = 85;
      v12 = 2114;
      v13 = v5;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v2 = _MergedGlobals_147;
    v3 = @"com.apple.news.subscriptions";
  }

  _MergedGlobals_147 = v3;

  v4 = *MEMORY[0x1E69E9840];
}

- (id)clientIdentifier
{
  if (a1)
  {
    if (qword_1EDB27088 != -1)
    {
      dispatch_once(&qword_1EDB27088, &__block_literal_global_39);
    }

    a1 = _MergedGlobals_147;
    v1 = vars8;
  }

  return a1;
}

- (id)fetchPurchaseMetadataForPurchaseID:(id)a3 restorePurchase:(BOOL)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E69B68F8];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __80__FCPurchaseMetadataFetcher_fetchPurchaseMetadataForPurchaseID_restorePurchase___block_invoke;
  v37[3] = &unk_1E7C3AE08;
  v37[4] = self;
  v28 = v6;
  v38 = v28;
  v27 = [v7 firstly:v37];
  v8 = [v27 thenOn];
  if (self)
  {
    accessQueue = self->_accessQueue;
  }

  else
  {
    accessQueue = 0;
  }

  v10 = accessQueue;
  v32 = MEMORY[0x1E69E9820];
  v33 = 3221225472;
  v34 = __80__FCPurchaseMetadataFetcher_fetchPurchaseMetadataForPurchaseID_restorePurchase___block_invoke_2;
  v35 = &unk_1E7C3C388;
  v36 = self;
  v26 = v10;
  v25 = v8[2](v8);
  v11 = [v25 thenOn];
  if (self)
  {
    v12 = self->_accessQueue;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __80__FCPurchaseMetadataFetcher_fetchPurchaseMetadataForPurchaseID_restorePurchase___block_invoke_3;
  v30[3] = &unk_1E7C3C3B0;
  v30[4] = self;
  v31 = a4;
  v14 = (v11)[2](v11, v13, v30);
  v15 = [v14 thenOn];
  v16 = v15;
  if (self)
  {
    v17 = self->_accessQueue;
  }

  else
  {
    v17 = 0;
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __80__FCPurchaseMetadataFetcher_fetchPurchaseMetadataForPurchaseID_restorePurchase___block_invoke_4;
  v29[3] = &unk_1E7C3C3D8;
  v29[4] = self;
  v18 = *(v15 + 16);
  v19 = v17;
  v20 = v18(v16, v19, v29);
  v21 = [v20 thenOn];
  v22 = dispatch_get_global_queue(25, 0);
  v23 = (v21)[2](v21, v22, &__block_literal_global_38_0);

  return v23;
}

id __80__FCPurchaseMetadataFetcher_fetchPurchaseMetadataForPurchaseID_restorePurchase___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    v3 = objc_alloc(MEMORY[0x1E69B68F8]);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64__FCPurchaseMetadataFetcher_promisePurchaseLookupWithAppAdamID___block_invoke;
    v6[3] = &unk_1E7C3B310;
    v6[4] = v1;
    v7 = v2;
    v4 = [v3 initWithResolver:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __80__FCPurchaseMetadataFetcher_fetchPurchaseMetadataForPurchaseID_restorePurchase___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2 && (objc_storeStrong((v2 + 24), a2), (v4 = *(a1 + 32)) != 0))
  {
    v5 = v4[3];
    v6 = v5;
    if (v5)
    {
      v7 = *(v5 + 6);
      if (*(v5 + 7))
      {
        v8 = v7;
        v9 = objc_alloc(MEMORY[0x1E69B68F8]);
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __66__FCPurchaseMetadataFetcher_checkIfOfferUsedAlreadyWithAppAdamID___block_invoke;
        v17[3] = &unk_1E7C39ED0;
        v10 = v8;
        v18 = v10;
        v11 = [v9 initWithResolver:v17];

        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __73__FCPurchaseMetadataFetcher_promiseStoreExternalVersionWithLookupResult___block_invoke;
        v14[3] = &unk_1E7C3C448;
        v6 = v6;
        v15 = v6;
        v16 = v4;
        v12 = [v11 then:v14];

        goto LABEL_9;
      }
    }

    else
    {
      v7 = 0;
    }

    v12 = [(FCPurchaseMetadataFetcher *)v4 promiseStoreExternalVersionWithAppAdamID:v7];
  }

  else
  {
    v6 = 0;
    v12 = 0;
  }

LABEL_9:

  return v12;
}

void *__80__FCPurchaseMetadataFetcher_fetchPurchaseMetadataForPurchaseID_restorePurchase___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    objc_setProperty_nonatomic_copy(v5, v3, v4, 16);
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = v6[3];
      goto LABEL_4;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
LABEL_4:
  v8 = v7;
  v9 = v4;
  if (v6)
  {
    if (v8)
    {
      v10 = v8[6];
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = objc_alloc(MEMORY[0x1E69B68F8]);
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __58__FCPurchaseMetadataFetcher_promiseBundleIDWithAppAdamID___block_invoke;
    v19 = &unk_1E7C3B310;
    v20 = v6;
    v13 = v11;
    v21 = v13;
    v14 = [v12 initWithResolver:&v16];

    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __100__FCPurchaseMetadataFetcher_promiseProductLookupWithLookupResult_externalVersionID_restorePurchase___block_invoke;
    v19 = &unk_1E7C3C4E8;
    v20 = v6;
    v21 = v8;
    v22 = v9;
    v6 = [v14 then:&v16];
  }

  return v6;
}

FCPurchase *__80__FCPurchaseMetadataFetcher_fetchPurchaseMetadataForPurchaseID_restorePurchase___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [FCPurchase alloc];
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = v5[3];
    if (v6)
    {
      v49 = v6;
      v5 = v6[1];
    }

    else
    {
      v49 = 0;
      v5 = 0;
    }
  }

  else
  {
    v49 = 0;
  }

  v48 = v5;
  v50 = [v48 copy];
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = v7[3];
    if (v8)
    {
      v47 = v8;
      v7 = v8[6];
    }

    else
    {
      v47 = 0;
      v7 = 0;
    }
  }

  else
  {
    v47 = 0;
  }

  v46 = v7;
  v45 = [v46 copy];
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = v9[3];
    if (v10)
    {
      v44 = v10;
      v9 = v10[4];
    }

    else
    {
      v44 = 0;
      v9 = 0;
    }
  }

  else
  {
    v44 = 0;
  }

  v43 = v9;
  v42 = [v43 copy];
  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = v11[3];
    if (v12)
    {
      v41 = v12;
      v11 = v12[3];
    }

    else
    {
      v41 = 0;
      v11 = 0;
    }
  }

  else
  {
    v41 = 0;
  }

  v40 = v11;
  v39 = [v40 copy];
  v13 = *(a1 + 32);
  if (v13)
  {
    v14 = v13[3];
    if (v14)
    {
      v38 = v14;
      v13 = v14[2];
    }

    else
    {
      v38 = 0;
      v13 = 0;
    }
  }

  else
  {
    v38 = 0;
  }

  v37 = v13;
  v36 = [v37 copy];
  v15 = *(a1 + 32);
  if (v15)
  {
    v15 = v15[2];
  }

  v35 = v15;
  v34 = [v35 copy];
  v16 = *(a1 + 32);
  if (v16)
  {
    v16 = v16[1];
  }

  v33 = v16;
  v17 = [v33 copy];
  v18 = *(a1 + 32);
  if (v18)
  {
    v19 = v18[3];
    if (v19)
    {
      v32 = v19;
      v18 = v19[5];
    }

    else
    {
      v32 = 0;
      v18 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  v31 = v18;
  v20 = [v31 copy];
  v21 = *(a1 + 32);
  if (v21)
  {
    v22 = v21[3];
    v23 = v22;
    if (v22)
    {
      v21 = v22[7];
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = v21;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2050000000;
  v25 = qword_1EDB27090;
  v55 = qword_1EDB27090;
  if (!qword_1EDB27090)
  {
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __getSKMutablePaymentClass_block_invoke;
    v51[3] = &unk_1E7C3C510;
    v51[4] = &v52;
    __getSKMutablePaymentClass_block_invoke(v51);
    v25 = v53[3];
  }

  v26 = v25;
  _Block_object_dispose(&v52, 8);
  [v25 paymentWithProduct:v3];
  v27 = v30 = v3;
  v29 = [(FCPurchase *)v4 initWithPurchaseID:v50 appAdamID:v45 subscriptionPriceFormatted:v42 subscriptionPeriodInISO_8601:v39 offerName:v36 storeExternalVersion:v34 bundleID:v17 price:v20 introOffer:v24 payment:v27];

  return v29;
}

void __64__FCPurchaseMetadataFetcher_promisePurchaseLookupWithAppAdamID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc(MEMORY[0x1E698C9E0]);
  v8 = [(FCPurchaseMetadataFetcher *)*(a1 + 32) clientIdentifier];
  v9 = +[FCAMSBag bag];
  v10 = [v7 initWithType:2 clientIdentifier:v8 clientVersion:@"1" bag:v9];

  v22[0] = *(a1 + 40);
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  [v10 setItemIdentifiers:v11];

  v21 = *MEMORY[0x1E698C6C0];
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  [v10 setAdditionalPlatforms:v12];

  v13 = [v10 perform];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__FCPurchaseMetadataFetcher_promisePurchaseLookupWithAppAdamID___block_invoke_2;
  v17[3] = &unk_1E7C3C420;
  v19 = v6;
  v18 = *(a1 + 40);
  v20 = v5;
  v14 = v5;
  v15 = v6;
  [v13 addFinishBlock:v17];

  v16 = *MEMORY[0x1E69E9840];
}

void __64__FCPurchaseMetadataFetcher_promisePurchaseLookupWithAppAdamID___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v41 = v5;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
    goto LABEL_42;
  }

  v6 = [v5 responseDataItems];
  v7 = [v6 firstObject];

  v40 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.news.purchaselookup" code:1001 userInfo:0];
  objc_opt_class();
  v8 = [v7 objectForKeyedSubscript:@"attributes"];
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v41 fc_appAdamID];
  v12 = [v41 fc_offerName];
  v13 = [v41 fc_subscriptionPeriodInISO];
  v14 = 0;
  if (!v13 || !v12)
  {
    v15 = 0;
    v16 = 0;
    goto LABEL_40;
  }

  v15 = 0;
  v16 = 0;
  if (v11)
  {
    objc_opt_class();
    v38 = v10;
    v17 = [v10 objectForKeyedSubscript:@"offers"];
    v39 = v7;
    if (v17)
    {
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    if ([v19 count])
    {
      objc_opt_class();
      v20 = [v19 firstObject];
      if (v20)
      {
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;

      v23 = [v41 fc_introductoryOffers];
      v16 = [v23 firstObject];

      objc_opt_class();
      v24 = [v22 objectForKeyedSubscript:@"priceFormatted"];
      if (v24)
      {
        if (objc_opt_isKindOfClass())
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }

      v15 = v25;

      objc_opt_class();
      v26 = [v22 objectForKeyedSubscript:@"price"];
      if (v26)
      {
        if (objc_opt_isKindOfClass())
        {
          v27 = v26;
        }

        else
        {
          v27 = 0;
        }
      }

      else
      {
        v27 = 0;
      }

      v14 = v27;

      if (v15)
      {
        v10 = v38;
        v7 = v39;
        if (v14)
        {
          v28 = objc_alloc_init(FCPurchaseLookupResult);
          p_isa = &v28->super.isa;
          if (v28)
          {
            objc_setProperty_nonatomic_copy(v28, v29, *(a1 + 32), 8);
            objc_setProperty_nonatomic_copy(p_isa, v31, v11, 48);
            objc_setProperty_nonatomic_copy(p_isa, v32, v12, 16);
            objc_setProperty_nonatomic_copy(p_isa, v33, v13, 24);
            objc_setProperty_nonatomic_copy(p_isa, v34, v15, 32);
            objc_storeStrong(p_isa + 7, v16);
            objc_setProperty_nonatomic_copy(p_isa, v35, v14, 40);
          }

          (*(*(a1 + 48) + 16))();

          v36 = v40;
          goto LABEL_41;
        }

        goto LABEL_40;
      }
    }

    else
    {

      v14 = 0;
      v15 = 0;
      v16 = 0;
    }

    v10 = v38;
    v7 = v39;
  }

LABEL_40:
  v37 = *(*(a1 + 40) + 16);
  v36 = v40;
  v37();
LABEL_41:

LABEL_42:
}

id __73__FCPurchaseMetadataFetcher_promiseStoreExternalVersionWithLookupResult___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 integerValue] == 1)
  {
    [(FCPurchaseLookupResult *)*(a1 + 32) setIntroOffer:?];
  }

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v4)
  {
    v5 = *(v4 + 48);
  }

  else
  {
    v5 = 0;
  }

  return [(FCPurchaseMetadataFetcher *)v3 promiseStoreExternalVersionWithAppAdamID:v5];
}

- (id)promiseStoreExternalVersionWithAppAdamID:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc(MEMORY[0x1E69B68F8]);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __70__FCPurchaseMetadataFetcher_promiseStoreExternalVersionWithAppAdamID___block_invoke;
    v6[3] = &unk_1E7C3B310;
    v6[4] = a1;
    v7 = v3;
    a1 = [v4 initWithResolver:v6];
  }

  return a1;
}

void __66__FCPurchaseMetadataFetcher_checkIfOfferUsedAlreadyWithAppAdamID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E698B4B8] sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__FCPurchaseMetadataFetcher_checkIfOfferUsedAlreadyWithAppAdamID___block_invoke_2;
  v6[3] = &unk_1E7C39710;
  v8 = v3;
  v7 = *(a1 + 32);
  v5 = v3;
  [v4 refreshIAPsForActiveAccountWithCompletionHandler:v6];
}

void __66__FCPurchaseMetadataFetcher_checkIfOfferUsedAlreadyWithAppAdamID___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E698B4B8] sharedInstance];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66__FCPurchaseMetadataFetcher_checkIfOfferUsedAlreadyWithAppAdamID___block_invoke_3;
  v3[3] = &unk_1E7C3C498;
  v5 = *(a1 + 40);
  v4 = *(a1 + 32);
  [v2 getAllIAPsForActiveAccountWithResultHandler:v3];
}

void __66__FCPurchaseMetadataFetcher_checkIfOfferUsedAlreadyWithAppAdamID___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __66__FCPurchaseMetadataFetcher_checkIfOfferUsedAlreadyWithAppAdamID___block_invoke_4;
    v12 = &unk_1E7C3C470;
    v13 = *(a1 + 32);
    v14 = &v15;
    [v5 enumerateObjectsUsingBlock:&v9];
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{*(v16 + 24), v9, v10, v11, v12}];
    (*(v7 + 16))(v7, v8);

    _Block_object_dispose(&v15, 8);
  }
}

void __66__FCPurchaseMetadataFetcher_checkIfOfferUsedAlreadyWithAppAdamID___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [v6 appAdamId];
  v8 = [v7 isEqualToNumber:*(a1 + 32)];

  if (v8)
  {
    v9 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = v9;
      if ([v6 hasUsedFreeOffer])
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      *v15 = 138412802;
      if ([v6 hasUsedIntroPricingOffer])
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      *&v15[4] = v10;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "FCPurchaseMetaDataFetcher checkIfOfferUsedAlready appAdamId=%@ hasUsedFreeOffer = %@ hasUsedIntroPricingOffer = %@", v15, 0x20u);
    }

    if (([v6 hasUsedFreeOffer] & 1) != 0 || objc_msgSend(v6, "hasUsedIntroPricingOffer"))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __70__FCPurchaseMetadataFetcher_promiseStoreExternalVersionWithAppAdamID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc(MEMORY[0x1E698C9E0]);
  v8 = [(FCPurchaseMetadataFetcher *)*(a1 + 32) clientIdentifier];
  v9 = +[FCAMSBag bag];
  v10 = [v7 initWithType:0 clientIdentifier:v8 clientVersion:@"1" bag:v9];

  v11 = [*(a1 + 40) stringValue];
  v22[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  [v10 setItemIdentifiers:v12];

  v21 = *MEMORY[0x1E698C6C0];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  [v10 setAdditionalPlatforms:v13];

  v14 = [v10 perform];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __70__FCPurchaseMetadataFetcher_promiseStoreExternalVersionWithAppAdamID___block_invoke_2;
  v18[3] = &unk_1E7C3C4C0;
  v19 = v5;
  v20 = v6;
  v15 = v6;
  v16 = v5;
  [v14 addFinishBlock:v18];

  v17 = *MEMORY[0x1E69E9840];
}

void __70__FCPurchaseMetadataFetcher_promiseStoreExternalVersionWithAppAdamID___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.news.purchaselookup" code:1002 userInfo:0];
    v6 = [v8 fc_externalVersionID];
    if (v6)
    {
      v7 = *(*(a1 + 32) + 16);
    }

    else
    {
      v7 = *(*(a1 + 40) + 16);
    }

    v7();
  }
}

id __100__FCPurchaseMetadataFetcher_promiseProductLookupWithLookupResult_externalVersionID_restorePurchase___block_invoke(void *a1, void *a2)
{
  v4 = a2;
  v5 = a1[4];
  if (v5)
  {
    objc_setProperty_nonatomic_copy(v5, v3, v4, 8);
  }

  v6 = [FCProductLookup alloc];
  v7 = a1[5];
  if (v7)
  {
    v8 = *(v7 + 16);
    v9 = *(v7 + 48);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = a1[6];
  v11 = v8;
  v12 = [(FCProductLookup *)&v6->super.isa initWithOfferName:v11 appAdamID:v9 storeExternalVersionID:v10 bundleID:v4];

  v13 = [(FCProductLookup *)v12 lookup];

  return v13;
}

void __58__FCPurchaseMetadataFetcher_promiseBundleIDWithAppAdamID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc(MEMORY[0x1E698C9E0]);
  v8 = [(FCPurchaseMetadataFetcher *)*(a1 + 32) clientIdentifier];
  v9 = +[FCAMSBag bag];
  v10 = [v7 initWithType:0 clientIdentifier:v8 clientVersion:@"1" bag:v9];

  v11 = [*(a1 + 40) stringValue];
  v22[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  [v10 setItemIdentifiers:v12];

  v21 = *MEMORY[0x1E698C6C0];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  [v10 setAdditionalPlatforms:v13];

  v14 = [v10 perform];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __58__FCPurchaseMetadataFetcher_promiseBundleIDWithAppAdamID___block_invoke_2;
  v18[3] = &unk_1E7C3C4C0;
  v19 = v5;
  v20 = v6;
  v15 = v6;
  v16 = v5;
  [v14 addFinishBlock:v18];

  v17 = *MEMORY[0x1E69E9840];
}

void __58__FCPurchaseMetadataFetcher_promiseBundleIDWithAppAdamID___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.news.purchaselookup" code:1003 userInfo:0];
    v6 = [v8 fc_bundleID];
    if (v6)
    {
      v7 = *(*(a1 + 32) + 16);
    }

    else
    {
      v7 = *(*(a1 + 40) + 16);
    }

    v7();
  }
}

@end