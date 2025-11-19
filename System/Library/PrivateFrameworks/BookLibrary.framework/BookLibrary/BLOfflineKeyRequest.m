@interface BLOfflineKeyRequest
- (BLOfflineKeyRequest)initWithMediaItem:(id)a3 identity:(id)a4;
- (void)_performOfflineKeyRequest;
- (void)dealloc;
- (void)execute;
- (void)finishWithError:(id)a3;
- (void)performRequestWithResponseHandler:(id)a3;
@end

@implementation BLOfflineKeyRequest

- (BLOfflineKeyRequest)initWithMediaItem:(id)a3 identity:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v12 = objc_msgSend_init(self, v9, v10, v11);
  v13 = v12;
  if (v12)
  {
    objc_storeStrong((v12 + 336), a3);
    objc_storeStrong(&v13->_identity, a4);
    v14 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_msgSend_title(v13->_mediaItem, v15, v16, v17);
      v21 = 138412290;
      v22 = v18;
      _os_log_impl(&dword_241D0D000, v14, OS_LOG_TYPE_DEFAULT, "Creating Offline key request for '%@'.", &v21, 0xCu);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = BLHLSKeyFetchingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_msgSend_title(self->_mediaItem, v4, v5, v6);
    *buf = 138412290;
    v12 = v7;
    _os_log_impl(&dword_241D0D000, v3, OS_LOG_TYPE_DEFAULT, "Removing Offline key request for '%@'.", buf, 0xCu);
  }

  mediaItem = self->_mediaItem;
  self->_mediaItem = 0;

  v10.receiver = self;
  v10.super_class = BLOfflineKeyRequest;
  [(BLOfflineKeyRequest *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)performRequestWithResponseHandler:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_bl_sharedHLSKeyRequestOperationQueue(MEMORY[0x277CCABD8], v5, v6, v7);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D17228;
  v11[3] = &unk_278D158A0;
  v11[4] = self;
  v12 = v4;
  v9 = v4;
  objc_msgSend_performRequestOnOperationQueue_withCompletionHandler_(self, v10, v8, v11);
}

- (void)finishWithError:(id)a3
{
  v3.receiver = self;
  v3.super_class = BLOfflineKeyRequest;
  [(ICRequestOperation *)&v3 finishWithError:a3];
}

- (void)execute
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D7FC30]);
  active = objc_msgSend_initWithActiveAccountAllowAuthenticationOnceADay_bl(v3, v4, v5, v6);
  requestContext = self->_requestContext;
  self->_requestContext = active;

  v9 = [BLStoreItemMetadataRequest alloc];
  v11 = objc_msgSend_initWithRequestContext_mediaItem_(v9, v10, self->_requestContext, self->_mediaItem);
  metadataRequest = self->_metadataRequest;
  self->_metadataRequest = v11;

  v13 = BLHLSKeyFetchingLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_msgSend_title(self->_mediaItem, v14, v15, v16);
    *buf = 138412290;
    v24 = v17;
    _os_log_impl(&dword_241D0D000, v13, OS_LOG_TYPE_DEFAULT, "Setting up metadata request for '%@'.", buf, 0xCu);
  }

  v18 = self->_metadataRequest;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_241D17498;
  v22[3] = &unk_278D15B00;
  v22[4] = self;
  objc_msgSend_performRequestWithResponseHandler_(v18, v19, v22, v20);
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_performOfflineKeyRequest
{
  v74 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_keyServerURL(self->_assetInfo, a2, v2, v3);
  if (v5)
  {
    v9 = v5;
    v10 = objc_msgSend_keyCertificateURL(self->_assetInfo, v6, v7, v8);
    if (v10)
    {
      v14 = v10;
      v15 = objc_msgSend_length(self->_identity, v11, v12, v13);

      if (v15)
      {
        v16 = [BLSecureOfflineKeyDeliveryRequest alloc];
        v19 = objc_msgSend_initWithRequestContext_(v16, v17, self->_requestContext, v18);
        secureKeyRequest = self->_secureKeyRequest;
        self->_secureKeyRequest = v19;

        v21 = self->_secureKeyRequest;
        v25 = objc_msgSend_keyCertificateURL(self->_assetInfo, v22, v23, v24);
        objc_msgSend_setKeyCertificateURL_(v21, v26, v25, v27);

        v28 = self->_secureKeyRequest;
        v32 = objc_msgSend_keyServerURL(self->_assetInfo, v29, v30, v31);
        objc_msgSend_setKeyServerURL_(v28, v33, v32, v34);

        objc_msgSend_setIdentity_(self->_secureKeyRequest, v35, self->_identity, v36);
        objc_msgSend_setMediaItem_(self->_secureKeyRequest, v37, self->_mediaItem, v38);
        v39 = BLHLSKeyFetchingLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v43 = objc_msgSend_title(self->_mediaItem, v40, v41, v42);
          v47 = objc_msgSend_keyServerURL(self->_assetInfo, v44, v45, v46);
          v51 = objc_msgSend_keyCertificateURL(self->_assetInfo, v48, v49, v50);
          *buf = 138412802;
          v69 = v43;
          v70 = 2112;
          v71 = v47;
          v72 = 2112;
          v73 = v51;
          _os_log_impl(&dword_241D0D000, v39, OS_LOG_TYPE_DEFAULT, "Setting secure offline key request for '%@' (%@, %@).", buf, 0x20u);
        }

        v52 = self->_secureKeyRequest;
        v67[0] = MEMORY[0x277D85DD0];
        v67[1] = 3221225472;
        v67[2] = sub_241D179B0;
        v67[3] = &unk_278D15BC8;
        v67[4] = self;
        objc_msgSend_performRequestWithResponseHandler_(v52, v53, v67, v54);
        v55 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
    }
  }

  if (objc_msgSend_length(self->_identity, v6, v7, v8))
  {
    v59 = objc_msgSend_keyServerURL(self->_assetInfo, v56, v57, v58);

    if (v59)
    {
      objc_msgSend_keyCertificateURL(self->_assetInfo, v60, v61, v62);
    }
  }

  v66 = BLError();
  objc_msgSend_finishWithError_(self, v63, v66, v64);
  v65 = *MEMORY[0x277D85DE8];
}

@end