@interface MSSubscribeMMCSProtocol
- (MSSubscribeMMCSProtocol)initWithPersonID:(id)d;
- (void)_getItemDone:(unint64_t)done path:(id)path error:(id)error;
- (void)_requestCompleted;
- (void)_tellDelegateProtocolDidFinishRetrievingAssetParams:(id)params;
- (void)deactivate;
- (void)dealloc;
- (void)retrieveAssets:(id)assets;
@end

@implementation MSSubscribeMMCSProtocol

- (void)_requestCompleted
{
  v15 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = objc_opt_class();
    v9 = v8;
    personID = [(MSMMCSProtocol *)self personID];
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = personID;
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

- (void)_getItemDone:(unint64_t)done path:(id)path error:(id)error
{
  v43 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  errorCopy = error;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:done];
  v11 = [(NSMutableDictionary *)self->_itemIDToAssetDict objectForKey:v10];
  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v16 = objc_opt_class();
      v17 = v16;
      personID = [(MSMMCSProtocol *)self personID];
      mSVerboseDescription = [errorCopy MSVerboseDescription];
      v33 = 138544386;
      v34 = v16;
      v35 = 2112;
      v36 = personID;
      v37 = 2114;
      doneCopy = v11;
      v39 = 2112;
      v40 = pathCopy;
      v41 = 2114;
      v42 = mSVerboseDescription;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Retrieved file for asset %{public}@ at path %@, error %{public}@", &v33, 0x34u);
    }

    [v11 setPath:pathCopy];
    [v11 setError:errorCopy];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v20 = objc_opt_class();
      v21 = v20;
      personID2 = [(MSMMCSProtocol *)self personID];
      mSVerboseDescription2 = [errorCopy MSVerboseDescription];
      v33 = 138544130;
      v34 = v20;
      v35 = 2112;
      v36 = personID2;
      v37 = 2114;
      doneCopy = v11;
      v39 = 2114;
      v40 = mSVerboseDescription2;
      _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@ - %@ Retreived asset %{public}@ with error %{public}@", &v33, 0x2Au);

      if (pathCopy)
      {
        goto LABEL_6;
      }
    }

    else if (pathCopy)
    {
LABEL_6:
      [(MSSubscribeStorageProtocolDelegate *)self->_delegate subscribeStorageProtocol:self didFinishRetrievingAsset:v11 error:0];
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager removeItemAtPath:pathCopy error:0];

LABEL_17:
      [(NSMutableDictionary *)self->_itemIDToAssetDict removeObjectForKey:v10];
      goto LABEL_18;
    }

    if (!errorCopy)
    {
      delegate = self->_delegate;
      v29 = MEMORY[0x277CCA9B8];
      v30 = MSCFCopyLocalizedString(@"ERROR_SUBSCRIBER_CANNOT_GET_ASSET");
      v31 = [v29 MSErrorWithDomain:@"MSSubscriberErrorDomain" code:0 description:v30];
      [(MSSubscribeStorageProtocolDelegate *)delegate subscribeStorageProtocol:self didFinishRetrievingAsset:v11 error:v31];

      errorCopy = 0;
      goto LABEL_17;
    }

    domain = [errorCopy domain];
    if ([domain isEqualToString:*MEMORY[0x277D25460]])
    {
      code = [errorCopy code];

      if (code != 14)
      {
LABEL_15:
        [(MSSubscribeStorageProtocolDelegate *)self->_delegate subscribeStorageProtocol:self didFinishRetrievingAsset:v11 error:errorCopy];
        goto LABEL_17;
      }

      v26 = MEMORY[0x277CCA9B8];
      domain = MSCFCopyLocalizedString(@"ERROR_SUBSCRIBER_BAD_TOKEN");
      v27 = [v26 MSErrorWithDomain:@"MSSubscribeStorageProtocolErrorDomain" code:0 description:domain];

      errorCopy = v27;
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v13 = objc_opt_class();
    v14 = v13;
    personID3 = [(MSMMCSProtocol *)self personID];
    v33 = 138543874;
    v34 = v13;
    v35 = 2112;
    v36 = personID3;
    v37 = 2048;
    doneCopy = done;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@ - %@ Cannot find asset for item ID %lld", &v33, 0x20u);
  }

LABEL_18:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)retrieveAssets:(id)assets
{
  v75 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v5 = [assetsCopy count];
  self->_itemCount = v5;
  if (!v5)
  {
    goto LABEL_38;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v52 = objc_opt_class();
    v53 = v52;
    personID = [(MSMMCSProtocol *)self personID];
    *buf = 138543874;
    *&buf[4] = v52;
    v71 = 2112;
    v72 = personID;
    v73 = 2114;
    v74 = assetsCopy;
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
    personID2 = [(MSMMCSProtocol *)self personID];
    mMCSURL = [v10 contentURLForPersonID:personID2];

    if (mMCSURL)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v13 = objc_opt_class();
        v14 = v13;
        personID3 = [(MSMMCSProtocol *)self personID];
        *buf = 138543874;
        *&buf[4] = v13;
        v71 = 2112;
        v72 = personID3;
        v73 = 2114;
        v74 = mMCSURL;
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

  v16 = [assetsCopy objectAtIndex:0];
  mMCSURL = [v16 MMCSURL];

  if (!self->_itemCount)
  {
    goto LABEL_41;
  }

LABEL_11:
  v58 = mMCSURL;
  v17 = 0;
  v18 = 0;
  do
  {
    v19 = [assetsCopy objectAtIndex:v18];
    fileHash = [v19 fileHash];
    bytes = [fileHash bytes];

    fileHash2 = [v19 fileHash];
    v23 = [fileHash2 length];

    if (v23 && v23 == MEMORY[0x245D7B450](bytes) && MEMORY[0x245D7B490](bytes))
    {
      self->_signatures[v17] = bytes;
      mMCSAccessHeader = [v19 MMCSAccessHeader];
      v25 = mMCSAccessHeader;
      if (mMCSAccessHeader && [mMCSAccessHeader length])
      {
        mMCSAccessHeader2 = [v19 MMCSAccessHeader];
        v27 = [mMCSAccessHeader2 cStringUsingEncoding:4];

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
  mMCSURL = v58;
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
      v57 = assetsCopy;
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
      assetsCopy = v57;
      mMCSURL = v58;
    }
  }

  else
  {
LABEL_41:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v48 = objc_opt_class();
      v49 = v48;
      personID4 = [(MSMMCSProtocol *)self personID];
      *buf = 138543618;
      *&buf[4] = v48;
      v71 = 2112;
      v72 = personID4;
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

- (void)_tellDelegateProtocolDidFinishRetrievingAssetParams:(id)params
{
  v21 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v5 = [paramsCopy objectForKey:@"asset"];
  v6 = [paramsCopy objectForKey:@"error"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = objc_opt_class();
    v9 = v8;
    personID = [(MSMMCSProtocol *)self personID];
    fileHash = [v5 fileHash];
    mSVerboseDescription = [v6 MSVerboseDescription];
    v13 = 138544130;
    v14 = v8;
    v15 = 2112;
    v16 = personID;
    v17 = 2114;
    v18 = fileHash;
    v19 = 2114;
    v20 = mSVerboseDescription;
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

- (MSSubscribeMMCSProtocol)initWithPersonID:(id)d
{
  dCopy = d;
  v5 = MSPathSubscribeMMCSLibraryForPersonID(dCopy);
  v8.receiver = self;
  v8.super_class = MSSubscribeMMCSProtocol;
  v6 = [(MSMMCSProtocol *)&v8 initWithPersonID:dCopy path:v5];

  return v6;
}

@end