@interface MSSubscribeMMCSProtocol
- (MSSubscribeMMCSProtocol)initWithPersonID:(id)a3;
- (void)_getItemDone:(unint64_t)a3 path:(id)a4 error:(id)a5;
- (void)_requestCompleted;
- (void)_tellDelegateProtocolDidFinishRetrievingAssetParams:(id)a3;
- (void)deactivate;
- (void)dealloc;
- (void)retrieveAssets:(id)a3;
@end

@implementation MSSubscribeMMCSProtocol

- (void)_requestCompleted
{
  v15 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = [(MSMMCSProtocol *)self personID];
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v10;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Finished retrieving assets.", &v11, 0x16u);
  }

  itemCount = self->_itemCount;
  if (itemCount)
  {
    for (i = 0; i < itemCount; ++i)
    {
      v5 = self->_authTokens[i];
      if (v5)
      {
        free(v5);
        itemCount = self->_itemCount;
      }
    }
  }

  itemIDToAssetDict = self->_itemIDToAssetDict;
  self->_itemIDToAssetDict = 0;

  free(self->_itemIDs);
  self->_itemIDs = 0;
  free(self->_signatures);
  self->_signatures = 0;
  free(self->_authTokens);
  self->_authTokens = 0;
  self->_itemCount = 0;
  [(MSSubscribeStorageProtocolDelegate *)self->_delegate subscribeStorageProtocolDidFinishRetrievingAllAssets:self];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_getItemDone:(unint64_t)a3 path:(id)a4 error:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v11 = [(NSMutableDictionary *)self->_itemIDToAssetDict objectForKey:v10];
  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v16 = objc_opt_class();
      v17 = v16;
      v18 = [(MSMMCSProtocol *)self personID];
      v19 = [v9 MSVerboseDescription];
      v33 = 138544386;
      v34 = v16;
      v35 = 2112;
      v36 = v18;
      v37 = 2114;
      v38 = v11;
      v39 = 2112;
      v40 = v8;
      v41 = 2114;
      v42 = v19;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Retrieved file for asset %{public}@ at path %@, error %{public}@", &v33, 0x34u);
    }

    [v11 setPath:v8];
    [v11 setError:v9];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v20 = objc_opt_class();
      v21 = v20;
      v22 = [(MSMMCSProtocol *)self personID];
      v23 = [v9 MSVerboseDescription];
      v33 = 138544130;
      v34 = v20;
      v35 = 2112;
      v36 = v22;
      v37 = 2114;
      v38 = v11;
      v39 = 2114;
      v40 = v23;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Retreived asset %{public}@ with error %{public}@", &v33, 0x2Au);

      if (v8)
      {
        goto LABEL_6;
      }
    }

    else if (v8)
    {
LABEL_6:
      [(MSSubscribeStorageProtocolDelegate *)self->_delegate subscribeStorageProtocol:self didFinishRetrievingAsset:v11 error:0];
      v12 = [MEMORY[0x277CCAA00] defaultManager];
      [v12 removeItemAtPath:v8 error:0];

LABEL_17:
      [(NSMutableDictionary *)self->_itemIDToAssetDict removeObjectForKey:v10];
      goto LABEL_18;
    }

    if (!v9)
    {
      delegate = self->_delegate;
      v29 = MEMORY[0x277CCA9B8];
      v30 = MSCFCopyLocalizedString(@"ERROR_SUBSCRIBER_CANNOT_GET_ASSET");
      v31 = [v29 MSErrorWithDomain:@"MSSubscriberErrorDomain" code:0 description:v30];
      [(MSSubscribeStorageProtocolDelegate *)delegate subscribeStorageProtocol:self didFinishRetrievingAsset:v11 error:v31];

      v9 = 0;
      goto LABEL_17;
    }

    v24 = [v9 domain];
    if ([v24 isEqualToString:*MEMORY[0x277D25460]])
    {
      v25 = [v9 code];

      if (v25 != 14)
      {
LABEL_15:
        [(MSSubscribeStorageProtocolDelegate *)self->_delegate subscribeStorageProtocol:self didFinishRetrievingAsset:v11 error:v9];
        goto LABEL_17;
      }

      v26 = MEMORY[0x277CCA9B8];
      v24 = MSCFCopyLocalizedString(@"ERROR_SUBSCRIBER_BAD_TOKEN");
      v27 = [v26 MSErrorWithDomain:@"MSSubscribeStorageProtocolErrorDomain" code:0 description:v24];

      v9 = v27;
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v13 = objc_opt_class();
    v14 = v13;
    v15 = [(MSMMCSProtocol *)self personID];
    v33 = 138543874;
    v34 = v13;
    v35 = 2112;
    v36 = v15;
    v37 = 2048;
    v38 = a3;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Cannot find asset for item ID %lld", &v33, 0x20u);
  }

LABEL_18:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)retrieveAssets:(id)a3
{
  v75 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 count];
  self->_itemCount = v5;
  if (!v5)
  {
    goto LABEL_38;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v52 = objc_opt_class();
    v53 = v52;
    v54 = [(MSMMCSProtocol *)self personID];
    *buf = 138543874;
    *&buf[4] = v52;
    v71 = 2112;
    v72 = v54;
    v73 = 2114;
    v74 = v4;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Begin retrieving assets %{public}@", buf, 0x20u);
  }

  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:self->_itemCount];
  itemIDToAssetDict = self->_itemIDToAssetDict;
  self->_itemIDToAssetDict = v6;

  self->_itemIDs = malloc_type_calloc(self->_itemCount, 8uLL, 0x100004000313F17uLL);
  self->_signatures = malloc_type_calloc(self->_itemCount, 8uLL, 0x10040436913F5uLL);
  self->_authTokens = malloc_type_calloc(self->_itemCount, 8uLL, 0xC0040B8AA526DuLL);
  v8 = MSPlatform();
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = MSPlatform();
    v11 = [(MSMMCSProtocol *)self personID];
    v12 = [v10 contentURLForPersonID:v11];

    if (v12)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v13 = objc_opt_class();
        v14 = v13;
        v15 = [(MSMMCSProtocol *)self personID];
        *buf = 138543874;
        *&buf[4] = v13;
        v71 = 2112;
        v72 = v15;
        v73 = 2114;
        v74 = v12;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Using contentURL %{public}@ from MSPlatform for download", buf, 0x20u);
      }

      goto LABEL_11;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to get contentURL from MSPlatform. Using URL from asset metadata for download", buf, 2u);
    }
  }

  v16 = [v4 objectAtIndex:0];
  v12 = [v16 MMCSURL];

  if (!self->_itemCount)
  {
    goto LABEL_41;
  }

LABEL_11:
  v58 = v12;
  v17 = 0;
  v18 = 0;
  do
  {
    v19 = [v4 objectAtIndex:v18];
    v20 = [v19 fileHash];
    v21 = [v20 bytes];

    v22 = [v19 fileHash];
    v23 = [v22 length];

    if (v23 && v23 == MEMORY[0x245D7B450](v21) && MEMORY[0x245D7B490](v21))
    {
      self->_signatures[v17] = v21;
      v24 = [v19 MMCSAccessHeader];
      v25 = v24;
      if (v24 && [v24 length])
      {
        v26 = [v19 MMCSAccessHeader];
        v27 = [v26 cStringUsingEncoding:4];

        v28 = strlen(v27);
        self->_authTokens[v17] = malloc_type_malloc(v28 + 1, 0x100004077774924uLL);
        strcpy(self->_authTokens[v17], v27);
      }

      v29 = [MSMMCSProtocol computeItemIDForAsset:v19];
      self->_itemIDs[v17] = [v29 unsignedLongLongValue];
      [(NSMutableDictionary *)self->_itemIDToAssetDict setObject:v19 forKey:v29];
      ++v17;
    }

    else
    {
      v30 = MEMORY[0x277CCA9B8];
      v31 = MSCFCopyLocalizedString(@"ERROR_SUBSCRIBER_ASSET_BAD_SIGNATURE");
      v32 = [v30 MSErrorWithDomain:@"MSSubscriberErrorDomain" code:2 description:v31];

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__MSSubscribeMMCSProtocol_retrieveAssets___block_invoke;
      block[3] = &unk_278E92638;
      block[4] = self;
      v67 = v19;
      v68 = v32;
      v25 = v32;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    ++v18;
  }

  while (v18 < self->_itemCount);
  v12 = v58;
  if (v17)
  {
    *buf = 0;
    [(MSMMCSProtocol *)self engine];
    [(MSMMCSProtocol *)self personID];
    MSPMMCSConnectionProperties();
    itemIDs = self->_itemIDs;
    signatures = self->_signatures;
    authTokens = self->_authTokens;
    v56 = buf;
    v35 = MMCSGetItems();
    v36 = *buf;
    if (!v35)
    {
      v57 = v4;
      if (!*buf)
      {
        v37 = MEMORY[0x277CCA9B8];
        v38 = MSCFCopyLocalizedString(@"ERROR_SUBSCRIBER_CANNOT_RETRIEVE");
        v36 = [v37 MSErrorWithDomain:@"MSSubscriberErrorDomain" code:5 description:{v38, authTokens, buf}];
      }

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v39 = self->_itemIDToAssetDict;
      v40 = [(NSMutableDictionary *)v39 countByEnumeratingWithState:&v62 objects:v69 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v63;
        v43 = MEMORY[0x277D85CD0];
        do
        {
          for (i = 0; i != v41; ++i)
          {
            if (*v63 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v45 = [(NSMutableDictionary *)self->_itemIDToAssetDict objectForKey:*(*(&v62 + 1) + 8 * i), authTokens, v56];
            v59[0] = MEMORY[0x277D85DD0];
            v59[1] = 3221225472;
            v59[2] = __42__MSSubscribeMMCSProtocol_retrieveAssets___block_invoke_20;
            v59[3] = &unk_278E92638;
            v59[4] = self;
            v60 = v45;
            v61 = v36;
            v46 = v45;
            dispatch_async(v43, v59);
          }

          v41 = [(NSMutableDictionary *)v39 countByEnumeratingWithState:&v62 objects:v69 count:16];
        }

        while (v41);
      }

      v47 = self->_itemIDToAssetDict;
      self->_itemIDToAssetDict = 0;

      free(self->_itemIDs);
      self->_itemIDs = 0;
      free(self->_signatures);
      self->_signatures = 0;
      free(self->_authTokens);
      self->_authTokens = 0;
      v4 = v57;
      v12 = v58;
    }
  }

  else
  {
LABEL_41:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v48 = objc_opt_class();
      v49 = v48;
      v50 = [(MSMMCSProtocol *)self personID];
      *buf = 138543618;
      *&buf[4] = v48;
      v71 = 2112;
      v72 = v50;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@ - %@ Nothing to retrieve.", buf, 0x16u);
    }
  }

LABEL_38:
  v51 = *MEMORY[0x277D85DE8];
}

void __42__MSSubscribeMMCSProtocol_retrieveAssets___block_invoke(void *a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v1 = a1[5];
  v6[0] = @"asset";
  v6[1] = @"error";
  v3 = a1[6];
  v7[0] = v1;
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [v2 _tellDelegateProtocolDidFinishRetrievingAssetParams:v4];

  v5 = *MEMORY[0x277D85DE8];
}

void __42__MSSubscribeMMCSProtocol_retrieveAssets___block_invoke_20(void *a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v1 = a1[5];
  v6[0] = @"asset";
  v6[1] = @"error";
  v3 = a1[6];
  v7[0] = v1;
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [v2 _tellDelegateProtocolDidFinishRetrievingAssetParams:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_tellDelegateProtocolDidFinishRetrievingAssetParams:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKey:@"asset"];
  v6 = [v4 objectForKey:@"error"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = [(MSMMCSProtocol *)self personID];
    v11 = [v5 fileHash];
    v12 = [v6 MSVerboseDescription];
    v13 = 138544130;
    v14 = v8;
    v15 = 2112;
    v16 = v10;
    v17 = 2114;
    v18 = v11;
    v19 = 2114;
    v20 = v12;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Failed to get asset with hash %{public}@\nError: %{public}@", &v13, 0x2Au);
  }

  [(MSSubscribeStorageProtocolDelegate *)self->_delegate subscribeStorageProtocol:self didFinishRetrievingAsset:v5 error:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(MSSubscribeMMCSProtocol *)self deactivate];
  v3.receiver = self;
  v3.super_class = MSSubscribeMMCSProtocol;
  [(MSMMCSProtocol *)&v3 dealloc];
}

- (void)deactivate
{
  v4.receiver = self;
  v4.super_class = MSSubscribeMMCSProtocol;
  [(MSMMCSProtocol *)&v4 deactivate];
  itemIDToAssetDict = self->_itemIDToAssetDict;
  self->_itemIDToAssetDict = 0;
}

- (MSSubscribeMMCSProtocol)initWithPersonID:(id)a3
{
  v4 = a3;
  v5 = MSPathSubscribeMMCSLibraryForPersonID(v4);
  v8.receiver = self;
  v8.super_class = MSSubscribeMMCSProtocol;
  v6 = [(MSMMCSProtocol *)&v8 initWithPersonID:v4 path:v5];

  return v6;
}

@end