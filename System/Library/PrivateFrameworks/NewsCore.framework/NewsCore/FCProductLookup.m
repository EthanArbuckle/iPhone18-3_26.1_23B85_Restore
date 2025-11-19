@interface FCProductLookup
- (id)initWithOfferName:(void *)a3 appAdamID:(void *)a4 storeExternalVersionID:(void *)a5 bundleID:;
- (void)lookup;
- (void)productsRequest:(id)a3 didReceiveResponse:(id)a4;
- (void)request:(id)a3 didFailWithError:(id)a4;
- (void)requestDidFinish:(id)a3;
- (void)setProductLookupError:(uint64_t)a1;
@end

@implementation FCProductLookup

- (id)initWithOfferName:(void *)a3 appAdamID:(void *)a4 storeExternalVersionID:(void *)a5 bundleID:
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (a1)
  {
    v27.receiver = a1;
    v27.super_class = FCProductLookup;
    v14 = objc_msgSendSuper2(&v27, sel_init);
    a1 = v14;
    if (v14)
    {
      objc_storeStrong(v14 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      objc_storeStrong(a1 + 3, a4);
      v15 = dispatch_group_create();
      v16 = a1[5];
      a1[5] = v15;

      v33 = 0;
      v34 = &v33;
      v35 = 0x2050000000;
      v17 = _MergedGlobals_206;
      v36 = _MergedGlobals_206;
      if (!_MergedGlobals_206)
      {
        v28 = MEMORY[0x1E69E9820];
        v29 = 3221225472;
        v30 = __getSKProductsRequestClass_block_invoke;
        v31 = &unk_1E7C3C510;
        v32 = &v33;
        __getSKProductsRequestClass_block_invoke(&v28);
        v17 = v34[3];
      }

      v18 = v17;
      _Block_object_dispose(&v33, 8);
      v19 = [v17 alloc];
      v20 = [MEMORY[0x1E695DFD8] setWithObjects:{v10, 0}];
      v21 = [v19 initWithProductIdentifiers:v20];
      v22 = a1[6];
      a1[6] = v21;

      v33 = 0;
      v34 = &v33;
      v35 = 0x2050000000;
      v23 = qword_1EDB27958;
      v36 = qword_1EDB27958;
      if (!qword_1EDB27958)
      {
        v28 = MEMORY[0x1E69E9820];
        v29 = 3221225472;
        v30 = __getSKPaymentQueueClientClass_block_invoke_1;
        v31 = &unk_1E7C3C510;
        v32 = &v33;
        __getSKPaymentQueueClientClass_block_invoke_1(&v28);
        v23 = v34[3];
      }

      v24 = v23;
      _Block_object_dispose(&v33, 8);
      v25 = objc_alloc_init(v23);
      [v25 setBundleIdentifier:@"com.apple.news"];
      [v25 setProductsRequestBundleIdentifier:v13];
      [v25 setBundleVersion:@"1.0"];
      [v25 setStoreExternalVersion:v12];
      [v25 setStoreItemIdentifier:v11];
      [a1[6] setPaymentQueueClient:v25];
      [a1[6] setDelegate:a1];
    }
  }

  return a1;
}

- (void)lookup
{
  if (a1)
  {
    v2 = a1;
    if (a1[7])
    {
      a1 = [objc_alloc(MEMORY[0x1E69B68F8]) initWithValue:a1[7]];
    }

    else
    {
      v3 = a1[8];
      v4 = objc_alloc(MEMORY[0x1E69B68F8]);
      if (v3)
      {
        a1 = [v4 initWithError:v2[8]];
      }

      else
      {
        var38[0] = MEMORY[0x1E69E9820];
        var38[1] = 3221225472;
        var38[2] = __25__FCProductLookup_lookup__block_invoke;
        var38[3] = &unk_1E7C39ED0;
        var38[4] = v2;
        a1 = [v4 initWithResolver:var38];
      }
    }

    v1 = var38[8];
  }

  return a1;
}

void __25__FCProductLookup_lookup__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 40);
  }

  else
  {
    v8 = 0;
  }

  dispatch_group_enter(v8);
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 48);
  }

  else
  {
    v10 = 0;
  }

  [v10 start];
  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = *(v11 + 40);
  }

  else
  {
    v12 = 0;
  }

  v13 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__FCProductLookup_lookup__block_invoke_2;
  block[3] = &unk_1E7C390B8;
  block[4] = v11;
  v17 = v5;
  v18 = v6;
  v14 = v6;
  v15 = v5;
  dispatch_group_notify(v12, v13, block);
}

uint64_t __25__FCProductLookup_lookup__block_invoke_2(uint64_t *a1)
{
  v2 = a1[4];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (*(v2 + 56))
  {
    v3 = a1[5];
    v4 = *(a1[5] + 16);
    goto LABEL_9;
  }

  if (*(v2 + 64))
  {
    v5 = a1[6];
  }

  else
  {
LABEL_6:
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.news.productlookup" code:1001 userInfo:0];
    [(FCProductLookup *)a1[4] setProductLookupError:v6];

    v2 = a1[4];
    v5 = a1[6];
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  v7 = *(v2 + 64);
LABEL_8:
  v4 = *(v5 + 16);
LABEL_9:

  return v4();
}

- (void)setProductLookupError:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
  }
}

- (void)productsRequest:(id)a3 didReceiveResponse:(id)a4
{
  v8 = [a4 products];
  v5 = [v8 count];
  v6 = v8;
  if (v5)
  {
    v7 = [v8 firstObject];
    if (self)
    {
      objc_storeStrong(&self->_product, v7);
    }

    v6 = v8;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)requestDidFinish:(id)a3
{
  if (self)
  {
    self = self->_productRequestGroup;
  }

  dispatch_group_leave(&self->super);
}

- (void)request:(id)a3 didFailWithError:(id)a4
{
  [(FCProductLookup *)self setProductLookupError:a4];
  if (self)
  {
    productRequestGroup = self->_productRequestGroup;
  }

  else
  {
    productRequestGroup = 0;
  }

  dispatch_group_leave(productRequestGroup);
}

@end