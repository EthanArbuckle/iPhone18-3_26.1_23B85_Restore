@interface SUUIStoreAssetResourceLoaderDelegate
+ (id)storeAssetResourceLoaderDelegateForPlayableAsset:(id)a3 clientContext:(id)a4;
- (BOOL)resourceLoader:(id)a3 shouldWaitForLoadingOfRequestedResource:(id)a4;
@end

@implementation SUUIStoreAssetResourceLoaderDelegate

+ (id)storeAssetResourceLoaderDelegateForPlayableAsset:(id)a3 clientContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 shouldUseITunesStoreSecureKeyDelivery])
  {
    v7 = objc_alloc_init(SUUIStoreAssetResourceLoaderDelegate);
    v8 = v7;
    if (!v7)
    {
      goto LABEL_11;
    }

    v7->_shouldUseITunesStoreSecureKeyDelivery = 1;
  }

  else
  {
    clientContext = [v5 keyCertificateURL];
    v10 = [v5 keyServerURL];
    v11 = v10;
    if (!clientContext || !v10 || (v12 = objc_alloc_init(SUUIStoreAssetResourceLoaderDelegate)) == 0)
    {

      v8 = 0;
      goto LABEL_10;
    }

    v8 = v12;
    keyCertificateURL = v12->_keyCertificateURL;
    v12->_keyCertificateURL = clientContext;
    v14 = clientContext;

    keyServerURL = v8->_keyServerURL;
    v8->_keyServerURL = v11;

    v8->_isITunesStream = [v5 isITunesStream];
  }

  v16 = v6;
  clientContext = v8->_clientContext;
  v8->_clientContext = v16;
LABEL_10:

LABEL_11:

  return v8;
}

- (BOOL)resourceLoader:(id)a3 shouldWaitForLoadingOfRequestedResource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SSVAssetResourceLoadingRequestContainsSecureKeyDeliveryRequest();
  if (v8)
  {
    if (!self->_operationQueue)
    {
      v9 = objc_alloc_init(MEMORY[0x277CCABD8]);
      operationQueue = self->_operationQueue;
      self->_operationQueue = v9;

      [(NSOperationQueue *)self->_operationQueue setName:@"com.apple.iTunesStoreUI.SUUIStoreAssetResourceLoaderDelegate.operationQueue"];
      [(NSOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:3];
    }

    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__7;
    v42 = __Block_byref_object_dispose__7;
    v43 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__7;
    v36 = __Block_byref_object_dispose__7;
    v37 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __95__SUUIStoreAssetResourceLoaderDelegate_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke;
    aBlock[3] = &unk_2798F68C8;
    v25 = &v38;
    v26 = &v32;
    v27 = &v28;
    v23 = v7;
    v24 = self;
    v11 = _Block_copy(aBlock);
    if (self->_shouldUseITunesStoreSecureKeyDelivery)
    {
      *(v29 + 24) = 1;
      v12 = [(SUUIClientContext *)self->_clientContext URLBag];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v15 = MEMORY[0x277D69C88];
        v16 = [MEMORY[0x277D69C90] contextWithBagType:0];
        v14 = [v15 URLBagForContext:v16];
      }

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __95__SUUIStoreAssetResourceLoaderDelegate_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke_3;
      v18[3] = &unk_2798F68F0;
      v20 = &v32;
      v21 = &v38;
      v19 = v11;
      [v14 loadWithCompletionBlock:v18];
    }

    else
    {
      objc_storeStrong(v39 + 5, self->_keyCertificateURL);
      objc_storeStrong(v33 + 5, self->_keyServerURL);
      *(v29 + 24) = self->_isITunesStream;
      (*(v11 + 2))(v11, 0);
    }

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v32, 8);

    _Block_object_dispose(&v38, 8);
  }

  return v8;
}

void __95__SUUIStoreAssetResourceLoaderDelegate_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) finishLoadingWithError:v3];
  }

  else
  {
    if (*(*(*(a1 + 48) + 8) + 40) && *(*(*(a1 + 56) + 8) + 40))
    {
      v4 = objc_alloc_init(MEMORY[0x277D69D08]);
      [v4 setITunesStoreRequest:*(*(*(a1 + 64) + 8) + 24)];
      [v4 setCertificateURL:*(*(*(a1 + 48) + 8) + 40)];
      [v4 setKeyServerURL:*(*(*(a1 + 56) + 8) + 40)];
      [v4 setResourceLoadingRequest:*(a1 + 32)];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __95__SUUIStoreAssetResourceLoaderDelegate_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke_2;
      v6[3] = &unk_2798F68A0;
      v7 = *(a1 + 32);
      [v4 setResponseBlock:v6];
      [*(*(a1 + 40) + 32) addOperation:v4];
    }

    else
    {
      v5 = *(a1 + 32);
      v4 = SSError();
      [v5 finishLoadingWithError:v4];
    }
  }
}

uint64_t __95__SUUIStoreAssetResourceLoaderDelegate_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishLoadingWithError:a2];
  }

  else
  {
    return [v2 finishLoading];
  }
}

void __95__SUUIStoreAssetResourceLoaderDelegate_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke_3(void *a1, void *a2, void *a3)
{
  v14 = a3;
  if (!v14)
  {
    v5 = MEMORY[0x277D69D28];
    v6 = a2;
    v7 = [[v5 alloc] initWithURLBagDictionary:v6];

    v8 = [v7 pastisKeyServerURL];
    v9 = *(a1[5] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = [v7 pastisCertificateURL];
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  (*(a1[4] + 16))();
}

@end