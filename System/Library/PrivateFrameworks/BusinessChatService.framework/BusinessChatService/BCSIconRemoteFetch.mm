@interface BCSIconRemoteFetch
- (id)initWithCoalesceHelper:(id *)helper;
- (void)fetchSquareIconDataForBusinessItem:(void *)item forClientBundleID:(void *)d completion:;
@end

@implementation BCSIconRemoteFetch

- (id)initWithCoalesceHelper:(id *)helper
{
  v4 = a2;
  if (helper)
  {
    v7.receiver = helper;
    v7.super_class = BCSIconRemoteFetch;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    helper = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return helper;
}

- (void)fetchSquareIconDataForBusinessItem:(void *)item forClientBundleID:(void *)d completion:
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  itemCopy = item;
  dCopy = d;
  if (self)
  {
    squareLogoURL = [v7 squareLogoURL];
    if (squareLogoURL)
    {
      v11 = [MEMORY[0x277CCAD20] requestWithURL:squareLogoURL cachePolicy:1 timeoutInterval:10.0];
      v28 = 0;
      v12 = MEMORY[0x277CCACA8];
      bizID = [v7 bizID];
      v14 = [v12 stringWithFormat:@"squareLogoFetch__%@", bizID];

      v15 = [[BCSCoalesceObjectData alloc] initWithCompletionBlock:dCopy coalesceKey:v14];
      coalesceHelper = [self coalesceHelper];
      [coalesceHelper enqueueCoalesceObject:v15 isDuplicateRequest:&v28];

      v17 = v28;
      ephemeralSessionConfiguration = ABSLogCommon();
      v19 = os_log_type_enabled(ephemeralSessionConfiguration, OS_LOG_TYPE_DEFAULT);
      if (v17 == 1)
      {
        if (v19)
        {
          *buf = 136315138;
          v30 = "[BCSIconRemoteFetch fetchSquareIconDataForBusinessItem:forClientBundleID:completion:]";
          _os_log_impl(&dword_242072000, ephemeralSessionConfiguration, OS_LOG_TYPE_DEFAULT, "New request is duplicate and already in progress: %s", buf, 0xCu);
        }
      }

      else
      {
        if (v19)
        {
          bizID2 = [v7 bizID];
          *buf = 138412290;
          v30 = bizID2;
          _os_log_impl(&dword_242072000, ephemeralSessionConfiguration, OS_LOG_TYPE_DEFAULT, "Remote Fetch icon data for business: %@", buf, 0xCu);
        }

        ephemeralSessionConfiguration = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
        [ephemeralSessionConfiguration set_sourceApplicationBundleIdentifier:itemCopy];
        v23 = [MEMORY[0x277CCAD30] sessionWithConfiguration:ephemeralSessionConfiguration];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __86__BCSIconRemoteFetch_fetchSquareIconDataForBusinessItem_forClientBundleID_completion___block_invoke;
        v26[3] = &unk_278D3A1F0;
        v26[4] = self;
        v27 = v14;
        v24 = [v23 dataTaskWithRequest:v11 completionHandler:v26];
        [v24 resume];
      }
    }

    else
    {
      v20 = ABSLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        bizID3 = [v7 bizID];
        *buf = 138412290;
        v30 = bizID3;
        _os_log_impl(&dword_242072000, v20, OS_LOG_TYPE_DEFAULT, "No square logo URL set for business item with ID: %@", buf, 0xCu);
      }

      (*(dCopy + 2))(dCopy, 0, 0);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __86__BCSIconRemoteFetch_fetchSquareIconDataForBusinessItem_forClientBundleID_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) coalesceHelper];
  v9 = [v8 dequeueCoalesceObjectsForCoalesceKey:*(a1 + 40)];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v15 dataCompletionBlock];
          (*(v16 + 16))(v16, v6, v7);
        }

        else
        {
          v16 = ABSLogCommon();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v23 = "[BCSIconRemoteFetch fetchSquareIconDataForBusinessItem:forClientBundleID:completion:]_block_invoke";
            _os_log_error_impl(&dword_242072000, v16, OS_LOG_TYPE_ERROR, "Wrong type of completion block added to data pool: %s", buf, 0xCu);
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end