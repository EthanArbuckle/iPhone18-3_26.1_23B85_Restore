@interface BLStreamingKeyRequest
- (BLStreamingKeyRequest)initWithMediaItem:(id)a3 loadingRequest:(id)a4;
- (void)_performStreamingKeyRequestForHLSAsset:(id)a3;
- (void)execute;
- (void)performRequestWithResponseHandler:(id)a3;
@end

@implementation BLStreamingKeyRequest

- (BLStreamingKeyRequest)initWithMediaItem:(id)a3 loadingRequest:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12 = objc_msgSend_init(self, v9, v10, v11);
  v13 = v12;
  if (v12)
  {
    objc_storeStrong((v12 + 320), a3);
    objc_storeStrong(&v13->_loadingRequest, a4);
  }

  return v13;
}

- (void)performRequestWithResponseHandler:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_241D15D34;
  v8[3] = &unk_278D158A0;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  objc_msgSend_performRequestWithCompletionHandler_(self, v6, v8, v7);
}

- (void)execute
{
  v3 = objc_alloc(MEMORY[0x277D7FC30]);
  active = objc_msgSend_initWithActiveAccountAllowAuthenticationOnceADay_bl(v3, v4, v5, v6);
  v8 = [BLStoreItemMetadataRequest alloc];
  v10 = objc_msgSend_initWithRequestContext_mediaItem_(v8, v9, active, self->_mediaItem);
  metadataRequest = self->_metadataRequest;
  self->_metadataRequest = v10;

  v12 = self->_metadataRequest;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_241D15EA0;
  v15[3] = &unk_278D15B00;
  v15[4] = self;
  objc_msgSend_performRequestWithResponseHandler_(v12, v13, v15, v14);
}

- (void)_performStreamingKeyRequestForHLSAsset:(id)a3
{
  v4 = MEMORY[0x277D7FC30];
  v5 = a3;
  v6 = [v4 alloc];
  active = objc_msgSend_initWithActiveAccountAllowAuthenticationOnceADay_bl(v6, v7, v8, v9);
  v11 = objc_alloc(MEMORY[0x277D7FBE0]);
  v13 = objc_msgSend_initWithRequestContext_resourceLoadingRequest_(v11, v12, active, self->_loadingRequest);
  secureKeyRequest = self->_secureKeyRequest;
  self->_secureKeyRequest = v13;

  objc_msgSend_setShouldIncludeDeviceGUID_(self->_secureKeyRequest, v15, 1, v16);
  v17 = self->_secureKeyRequest;
  v21 = objc_msgSend_keyCertificateURL(v5, v18, v19, v20);
  objc_msgSend_setCertificateURL_(v17, v22, v21, v23);

  v24 = self->_secureKeyRequest;
  v28 = objc_msgSend_keyServerURL(v5, v25, v26, v27);

  objc_msgSend_setKeyServerURL_(v24, v29, v28, v30);
  objc_msgSend_setITunesStoreRequest_(self->_secureKeyRequest, v31, 1, v32);
  v33 = self->_secureKeyRequest;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_241D160F8;
  v36[3] = &unk_278D15B28;
  v36[4] = self;
  objc_msgSend_performWithResponseHandler_(v33, v34, v36, v35);
}

@end