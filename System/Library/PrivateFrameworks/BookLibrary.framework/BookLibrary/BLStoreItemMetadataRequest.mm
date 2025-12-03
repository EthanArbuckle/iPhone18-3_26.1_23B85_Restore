@interface BLStoreItemMetadataRequest
- (BLStoreItemMetadataRequest)initWithRequestContext:(id)context mediaItem:(id)item;
- (BOOL)_isHLSPlaylistURLStringValid:(id)valid;
- (id)_responseDictionaryForKeyCertificateURL:(id)l keyServerURL:(id)rL;
- (void)_performBuyProductRequest;
- (void)finishWithError:(id)error;
- (void)performRequestWithResponseHandler:(id)handler;
@end

@implementation BLStoreItemMetadataRequest

- (BLStoreItemMetadataRequest)initWithRequestContext:(id)context mediaItem:(id)item
{
  contextCopy = context;
  itemCopy = item;
  v12 = objc_msgSend_init(self, v9, v10, v11);
  v13 = v12;
  if (v12)
  {
    objc_storeStrong((v12 + 304), context);
    objc_storeStrong(&v13->_mediaItem, item);
  }

  return v13;
}

- (void)performRequestWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v8 = objc_msgSend_bl_sharedHLSKeyRequestOperationQueue(MEMORY[0x277CCABD8], v5, v6, v7);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D16338;
  v11[3] = &unk_278D15B50;
  v11[4] = self;
  v12 = handlerCopy;
  v9 = handlerCopy;
  objc_msgSend_performRequestOnOperationQueue_withCompletionHandler_(self, v10, v8, v11);
}

- (void)finishWithError:(id)error
{
  v3.receiver = self;
  v3.super_class = BLStoreItemMetadataRequest;
  [(ICRequestOperation *)&v3 finishWithError:error];
}

- (void)_performBuyProductRequest
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D7FC30]);
  active = objc_msgSend_initWithActiveAccountAllowAuthenticationOnceADay_bl(v3, v4, v5, v6);
  v8 = BLHLSKeyFetchingLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = objc_msgSend_title(self->_mediaItem, v9, v10, v11);
    *buf = 138412290;
    v23 = v12;
    _os_log_impl(&dword_241D0D000, v8, OS_LOG_TYPE_INFO, "Starting metadata request for '%@'", buf, 0xCu);
  }

  v16 = objc_msgSend_sharedBagProvider(MEMORY[0x277D7FC68], v13, v14, v15);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_241D165DC;
  v20[3] = &unk_278D15BA0;
  v20[4] = self;
  v21 = active;
  v17 = active;
  objc_msgSend_getBagForRequestContext_withCompletionHandler_(v16, v18, v17, v20);

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_responseDictionaryForKeyCertificateURL:(id)l keyServerURL:(id)rL
{
  v24[3] = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  mediaItem = self->_mediaItem;
  v9 = sub_241D12124();
  v12 = objc_msgSend_valueForProperty_(mediaItem, v10, v9, v11);

  if (objc_msgSend__isHLSPlaylistURLStringValid_(self, v13, v12, v14))
  {
    v23[0] = @"hls-playlist-url";
    v23[1] = @"hls-key-cert-url";
    v24[0] = v12;
    v24[1] = lCopy;
    v23[2] = @"hls-key-server-url";
    v24[2] = rLCopy;
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v24, v23, 3);
  }

  else
  {
    v17 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = self->_mediaItem;
      v21 = 138412290;
      v22 = v18;
      _os_log_impl(&dword_241D0D000, v17, OS_LOG_TYPE_ERROR, "No stream URL available for media item %@.", &v21, 0xCu);
    }

    v16 = MEMORY[0x277CBEC10];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)_isHLSPlaylistURLStringValid:(id)valid
{
  v17 = *MEMORY[0x277D85DE8];
  validCopy = valid;
  if (!validCopy)
  {
    v9 = BLHLSKeyFetchingLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    LOWORD(v15) = 0;
    v12 = "playlistURLString is nil";
LABEL_14:
    _os_log_impl(&dword_241D0D000, v9, OS_LOG_TYPE_ERROR, v12, &v15, 2u);
    goto LABEL_15;
  }

  if ((_NSIsNSString() & 1) == 0)
  {
    v9 = BLHLSKeyFetchingLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    LOWORD(v15) = 0;
    v12 = "playlistURLString is not a string";
    goto LABEL_14;
  }

  if (!objc_msgSend_length(validCopy, v4, v5, v6))
  {
    v9 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      v12 = "playlistURLString is empty";
      goto LABEL_14;
    }

LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  v9 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v7, validCopy, v8);
  v10 = v9 != 0;
  if (!v9)
  {
    v11 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = 0;
      _os_log_impl(&dword_241D0D000, v11, OS_LOG_TYPE_ERROR, "playlistURLString is not a valid url: %@", &v15, 0xCu);
    }

    goto LABEL_15;
  }

LABEL_16:

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

@end