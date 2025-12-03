@interface BLHLSKeyFetcher
+ (BLHLSKeyFetcher)sharedInstance;
- (BLHLSKeyFetcher)init;
- (id)fetchOfflineKeyForMediaItem:(id)item identity:(id)identity completion:(id)completion;
- (id)fetchOnlineKeyForMediaItem:(id)item loadingRequest:(id)request;
@end

@implementation BLHLSKeyFetcher

- (BLHLSKeyFetcher)init
{
  v7.receiver = self;
  v7.super_class = BLHLSKeyFetcher;
  v2 = [(BLHLSKeyFetcher *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_ignoreCache = 1;
    v4 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_241D0D000, v4, OS_LOG_TYPE_INFO, "Ignoring any local cache.", v6, 2u);
    }
  }

  return v3;
}

+ (BLHLSKeyFetcher)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D12570;
  block[3] = &unk_278D15938;
  block[4] = self;
  if (qword_280C4FA90 != -1)
  {
    dispatch_once(&qword_280C4FA90, block);
  }

  v2 = qword_27EC71328;

  return v2;
}

- (id)fetchOnlineKeyForMediaItem:(id)item loadingRequest:(id)request
{
  v27 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  requestCopy = request;
  objc_opt_class();
  v7 = sub_241D12404();
  v10 = objc_msgSend_valueForProperty_(itemCopy, v8, v7, v9);
  v11 = BUDynamicCast();
  v15 = objc_msgSend_unsignedIntValue(v11, v12, v13, v14);

  v16 = BLHLSKeyFetchingLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v26 = v15;
    _os_log_impl(&dword_241D0D000, v16, OS_LOG_TYPE_DEFAULT, "Fetching online key for %llu.", buf, 0xCu);
  }

  v17 = [BLStreamingKeyRequest alloc];
  v19 = objc_msgSend_initWithMediaItem_loadingRequest_(v17, v18, itemCopy, requestCopy);

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_241D12758;
  v24[3] = &unk_278D15958;
  v24[4] = v15;
  objc_msgSend_performRequestWithResponseHandler_(v19, v20, v24, v21);

  v22 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)fetchOfflineKeyForMediaItem:(id)item identity:(id)identity completion:(id)completion
{
  v50 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  identityCopy = identity;
  completionCopy = completion;
  v11 = BLHLSKeyFetchingLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_msgSend_title(itemCopy, v12, v13, v14);
    *buf = 138412546;
    v47 = v15;
    v48 = 1024;
    LODWORD(v49) = objc_msgSend_ignoreCache(self, v16, v17, v18);
    _os_log_impl(&dword_241D0D000, v11, OS_LOG_TYPE_DEFAULT, "Fetching offline key for '%@'. Ignore Cache? %{BOOL}d", buf, 0x12u);
  }

  v21 = objc_msgSend_hlsOfflinePlaybackKeysForItem_(BLMediaItemUtils, v19, itemCopy, v20);
  v24 = objc_msgSend_objectForKeyedSubscript_(v21, v22, identityCopy, v23);

  if (v24 && !objc_msgSend_ignoreCache(self, v25, v26, v27))
  {
    v35 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v39 = objc_msgSend_title(itemCopy, v36, v37, v38);
      *buf = 138412290;
      v47 = v39;
      _os_log_impl(&dword_241D0D000, v35, OS_LOG_TYPE_DEFAULT, "Cache hit of offline key for '%@'", buf, 0xCu);
    }

    v40 = MEMORY[0x245CFEDE0](completionCopy);
    v34 = v40;
    if (v40)
    {
      (*(v40 + 16))(v40, v24, 0);
    }

    v30 = 0;
  }

  else
  {
    v28 = [BLOfflineKeyRequest alloc];
    v30 = objc_msgSend_initWithMediaItem_identity_(v28, v29, itemCopy, identityCopy);
    v31 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v47 = v30;
      v48 = 2112;
      v49 = identityCopy;
      _os_log_impl(&dword_241D0D000, v31, OS_LOG_TYPE_DEFAULT, "Created Offline key request (%@) with identity: '%@'", buf, 0x16u);
    }

    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = sub_241D12B50;
    v43[3] = &unk_278D15980;
    v44 = itemCopy;
    v45 = completionCopy;
    objc_msgSend_performRequestWithResponseHandler_(v30, v32, v43, v33);

    v34 = v44;
  }

  v41 = *MEMORY[0x277D85DE8];

  return v30;
}

@end