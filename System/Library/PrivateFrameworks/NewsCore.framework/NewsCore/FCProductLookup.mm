@interface FCProductLookup
- (id)initWithOfferName:(void *)name appAdamID:(void *)d storeExternalVersionID:(void *)iD bundleID:;
- (void)lookup;
- (void)productsRequest:(id)request didReceiveResponse:(id)response;
- (void)request:(id)request didFailWithError:(id)error;
- (void)requestDidFinish:(id)finish;
- (void)setProductLookupError:(uint64_t)error;
@end

@implementation FCProductLookup

- (id)initWithOfferName:(void *)name appAdamID:(void *)d storeExternalVersionID:(void *)iD bundleID:
{
  v10 = a2;
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  if (self)
  {
    v27.receiver = self;
    v27.super_class = FCProductLookup;
    v14 = objc_msgSendSuper2(&v27, sel_init);
    self = v14;
    if (v14)
    {
      objc_storeStrong(v14 + 1, a2);
      objc_storeStrong(self + 2, name);
      objc_storeStrong(self + 3, d);
      v15 = dispatch_group_create();
      v16 = self[5];
      self[5] = v15;

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
      v22 = self[6];
      self[6] = v21;

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
      [v25 setProductsRequestBundleIdentifier:iDCopy];
      [v25 setBundleVersion:@"1.0"];
      [v25 setStoreExternalVersion:dCopy];
      [v25 setStoreItemIdentifier:nameCopy];
      [self[6] setPaymentQueueClient:v25];
      [self[6] setDelegate:self];
    }
  }

  return self;
}

- (void)lookup
{
  if (self)
  {
    selfCopy = self;
    if (self[7])
    {
      self = [objc_alloc(MEMORY[0x1E69B68F8]) initWithValue:self[7]];
    }

    else
    {
      v3 = self[8];
      v4 = objc_alloc(MEMORY[0x1E69B68F8]);
      if (v3)
      {
        self = [v4 initWithError:selfCopy[8]];
      }

      else
      {
        var38[0] = MEMORY[0x1E69E9820];
        var38[1] = 3221225472;
        var38[2] = __25__FCProductLookup_lookup__block_invoke;
        var38[3] = &unk_1E7C39ED0;
        var38[4] = selfCopy;
        self = [v4 initWithResolver:var38];
      }
    }

    v1 = var38[8];
  }

  return self;
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

- (void)setProductLookupError:(uint64_t)error
{
  if (error)
  {
    objc_storeStrong((error + 64), a2);
  }
}

- (void)productsRequest:(id)request didReceiveResponse:(id)response
{
  products = [response products];
  v5 = [products count];
  v6 = products;
  if (v5)
  {
    firstObject = [products firstObject];
    if (self)
    {
      objc_storeStrong(&self->_product, firstObject);
    }

    v6 = products;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)requestDidFinish:(id)finish
{
  if (self)
  {
    self = self->_productRequestGroup;
  }

  dispatch_group_leave(&self->super);
}

- (void)request:(id)request didFailWithError:(id)error
{
  [(FCProductLookup *)self setProductLookupError:error];
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