@interface BLSecureOfflineKeyDeliveryRequest
- (BLSecureOfflineKeyDeliveryRequest)init;
- (BLSecureOfflineKeyDeliveryRequest)initWithRequestContext:(id)context;
- (id)_deviceGUID;
- (void)_createSPCData;
- (void)_ksq_fetchCKCDataUsingSPC:(id)c forKeyRequest:(id)request;
- (void)contentKeySession:(id)session contentKeyRequest:(id)request didFailWithError:(id)error;
- (void)contentKeySession:(id)session didProvideContentKeyRequest:(id)request;
- (void)contentKeySession:(id)session didProvidePersistableContentKeyRequest:(id)request;
- (void)execute;
- (void)performRequestWithResponseHandler:(id)handler;
@end

@implementation BLSecureOfflineKeyDeliveryRequest

- (BLSecureOfflineKeyDeliveryRequest)initWithRequestContext:(id)context
{
  contextCopy = context;
  v9 = objc_msgSend_init(self, v6, v7, v8);
  v10 = v9;
  if (v9)
  {
    objc_storeStrong((v9 + 320), context);
  }

  return v10;
}

- (BLSecureOfflineKeyDeliveryRequest)init
{
  v12.receiver = self;
  v12.super_class = BLSecureOfflineKeyDeliveryRequest;
  v2 = [(ICRequestOperation *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.iBooks.HLSKeySession", v3);
    v5 = *(v2 + 39);
    *(v2 + 39) = v4;

    v8 = objc_msgSend_contentKeySessionWithKeySystem_(MEMORY[0x277CE64D8], v6, *MEMORY[0x277CE5D20], v7);
    v9 = *(v2 + 38);
    *(v2 + 38) = v8;

    objc_msgSend_setDelegate_queue_(*(v2 + 38), v10, v2, *(v2 + 39));
  }

  return v2;
}

- (void)performRequestWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v8 = objc_msgSend_bl_sharedHLSKeyRequestOperationQueue(MEMORY[0x277CCABD8], v5, v6, v7);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_241D13498;
  v11[3] = &unk_278D158A0;
  v11[4] = self;
  v12 = handlerCopy;
  v9 = handlerCopy;
  objc_msgSend_performRequestOnOperationQueue_withCompletionHandler_(self, v10, v8, v11);
}

- (void)execute
{
  v36 = *MEMORY[0x277D85DE8];
  if (self->_keyCertificateURL && self->_keyServerURL)
  {
    v3 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_msgSend_title(self->_mediaItem, v4, v5, v6);
      *buf = 138412290;
      selfCopy = v7;
      _os_log_impl(&dword_241D0D000, v3, OS_LOG_TYPE_DEFAULT, "Fetching key request certificate for '%@'", buf, 0xCu);
    }

    v11 = objc_msgSend_highPrioritySession(MEMORY[0x277D7FC90], v8, v9, v10);
    v12 = objc_alloc(MEMORY[0x277CCAB70]);
    v15 = objc_msgSend_initWithURL_(v12, v13, self->_keyCertificateURL, v14);
    objc_msgSend_setHTTPMethod_(v15, v16, @"GET", v17);
    v18 = objc_alloc(MEMORY[0x277D7FC38]);
    v20 = objc_msgSend_initWithURLRequest_requestContext_(v18, v19, v15, self->_requestContext);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_241D137E0;
    v29[3] = &unk_278D15A38;
    v29[4] = self;
    objc_msgSend_enqueueDataRequest_withCompletionHandler_(v11, v21, v20, v29);
  }

  else
  {
    v22 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      keyCertificateURL = self->_keyCertificateURL;
      keyServerURL = self->_keyServerURL;
      *buf = 138543874;
      selfCopy = self;
      v32 = 2114;
      v33 = keyCertificateURL;
      v34 = 2114;
      v35 = keyServerURL;
      _os_log_impl(&dword_241D0D000, v22, OS_LOG_TYPE_ERROR, "[%{public}@]: Missing certificate URL: %{public}@, key server URL: %{public}@", buf, 0x20u);
    }

    v11 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v25, *MEMORY[0x277D7F900], -7101, 0);
    objc_msgSend_finishWithError_(self, v26, v11, v27);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)_deviceGUID
{
  if (qword_27EC71338 != -1)
  {
    sub_241D182B4();
  }

  v3 = qword_27EC71330;

  return v3;
}

- (void)_createSPCData
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = BLHLSKeyFetchingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_msgSend_title(self->_mediaItem, v4, v5, v6);
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_241D0D000, v3, OS_LOG_TYPE_DEFAULT, "Creating SPC data for '%@'", &v10, 0xCu);
  }

  objc_msgSend_processContentKeyRequestWithIdentifier_initializationData_options_(self->_keySession, v8, self->_identity, 0, 0);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_ksq_fetchCKCDataUsingSPC:(id)c forKeyRequest:(id)request
{
  v109[1] = *MEMORY[0x277D85DE8];
  cCopy = c;
  requestCopy = request;
  dispatch_assert_queue_V2(self->_keySessionQueue);
  if (cCopy)
  {
    v8 = objc_alloc(MEMORY[0x277CBEB38]);
    v11 = objc_msgSend_initWithObjectsAndKeys_(v8, v9, &unk_2853E1F60, v10, @"id", 0);
    v18 = objc_msgSend_identity(self, v12, v13, v14);
    if (v18)
    {
      objc_msgSend_setObject_forKey_(v11, v15, v18, @"uri");
    }

    v95 = v18;
    if (objc_msgSend_length(cCopy, v15, v16, v17))
    {
      v21 = objc_msgSend_base64EncodedStringWithOptions_(cCopy, v19, 0, v20);
      if (objc_msgSend_length(v21, v22, v23, v24))
      {
        objc_msgSend_setObject_forKey_(v11, v25, v21, @"spc");
      }
    }

    objc_msgSend_setObject_forKey_(v11, v19, MEMORY[0x277CBEC38], @"offline");
    v32 = objc_msgSend__deviceGUID(self, v26, v27, v28);
    if (v32)
    {
      objc_msgSend_setObject_forKey_(v11, v29, v32, @"guid");
    }

    v94 = v32;
    v33 = objc_msgSend_deviceInfo(self->_requestContext, v29, v30, v31);
    isWatch = objc_msgSend_isWatch(v33, v34, v35, v36);

    if (isWatch)
    {
      v41 = objc_msgSend_sharedMonitor(MEMORY[0x277D7FBA8], v38, v39, v40);
      v45 = objc_msgSend_pairedDeviceMediaGUID(v41, v42, v43, v44);

      if (objc_msgSend_length(v45, v46, v47, v48))
      {
        objc_msgSend_setObject_forKey_(v11, v49, v45, @"companion-guid");
      }

      else
      {
        v54 = BLHLSKeyFetchingLog();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          selfCopy3 = self;
          _os_log_impl(&dword_241D0D000, v54, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to obtain companion guid.", buf, 0xCu);
        }
      }
    }

    v108 = @"fairplay-streaming-request";
    v107[0] = &unk_2853E1F78;
    v106[0] = @"version";
    v106[1] = @"streaming-keys";
    v105 = v11;
    v55 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v38, &v105, 1);
    v107[1] = v55;
    v57 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v56, v107, v106, 2);
    v109[0] = v57;
    v59 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v58, v109, &v108, 1);

    v98 = 0;
    v61 = objc_msgSend_dataWithJSONObject_options_error_(MEMORY[0x277CCAAA0], v60, v59, 0, &v98);
    v62 = v98;
    v63 = BLHLSKeyFetchingLog();
    v64 = v63;
    if (!v61 || v62)
    {
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy3 = self;
        v103 = 2112;
        v104 = v62;
        _os_log_impl(&dword_241D0D000, v64, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to serialize key server request data with error:  %@", buf, 0x16u);
      }

      v87 = MEMORY[0x277CCA9B8];
      v88 = *MEMORY[0x277CF32E0];
      if (v62)
      {
        v99 = *MEMORY[0x277CCA7E8];
        v100 = v62;
        v89 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v86, &v100, &v99, 1);
        v72 = objc_msgSend_errorWithDomain_code_userInfo_(v87, v90, v88, 2, v89);
      }

      else
      {
        v72 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v86, *MEMORY[0x277CF32E0], 2, 0);
      }

      objc_msgSend_finishWithError_(self, v91, v72, v92);
    }

    else
    {
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v68 = objc_msgSend_title(self->_mediaItem, v65, v66, v67);
        *buf = 138412290;
        selfCopy3 = v68;
        _os_log_impl(&dword_241D0D000, v64, OS_LOG_TYPE_DEFAULT, "Performing offline key request for '%@'", buf, 0xCu);
      }

      v69 = objc_alloc(MEMORY[0x277CCAB70]);
      v72 = objc_msgSend_initWithURL_(v69, v70, self->_keyServerURL, v71);
      objc_msgSend_setHTTPBody_(v72, v73, v61, v74);
      objc_msgSend_setHTTPMethod_(v72, v75, @"POST", v76);
      objc_msgSend_setValue_forHTTPHeaderField_(v72, v77, *MEMORY[0x277D7F908], *MEMORY[0x277D7F918]);
      v78 = objc_alloc(MEMORY[0x277D7FC38]);
      v80 = objc_msgSend_initWithURLRequest_requestContext_(v78, v79, v72, self->_requestContext);
      v84 = objc_msgSend_highPrioritySession(MEMORY[0x277D7FC90], v81, v82, v83);
      v96[0] = MEMORY[0x277D85DD0];
      v96[1] = 3221225472;
      v96[2] = sub_241D14114;
      v96[3] = &unk_278D15A88;
      v96[4] = self;
      v97 = requestCopy;
      objc_msgSend_enqueueDataRequest_withCompletionHandler_(v84, v85, v80, v96);
    }
  }

  else
  {
    v50 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_241D0D000, v50, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to generate server playback context data", buf, 0xCu);
    }

    v11 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v51, *MEMORY[0x277CF32E0], 2, 0);
    objc_msgSend_finishWithError_(self, v52, v11, v53);
  }

  v93 = *MEMORY[0x277D85DE8];
}

- (void)contentKeySession:(id)session didProvideContentKeyRequest:(id)request
{
  v19 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  dispatch_assert_queue_V2(self->_keySessionQueue);
  v7 = BLHLSKeyFetchingLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241D0D000, v7, OS_LOG_TYPE_INFO, "Content key request provided", buf, 2u);
  }

  if (self->_activeKeyRequest)
  {
    v8 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241D0D000, v8, OS_LOG_TYPE_DEFAULT, "Skipping provided content key request", buf, 2u);
    }
  }

  else
  {
    objc_storeStrong(&self->_activeKeyRequest, request);
    v16 = 0;
    v11 = objc_msgSend_respondByRequestingPersistableContentKeyRequestAndReturnError_(requestCopy, v9, &v16, v10);
    v8 = v16;
    if ((v11 & 1) == 0)
    {
      v12 = BLHLSKeyFetchingLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v8;
        _os_log_impl(&dword_241D0D000, v12, OS_LOG_TYPE_ERROR, "Request for persistable content key request failed with error:  %@", buf, 0xCu);
      }

      objc_msgSend_finishWithError_(self, v13, v8, v14);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)contentKeySession:(id)session didProvidePersistableContentKeyRequest:(id)request
{
  requestCopy = request;
  dispatch_assert_queue_V2(self->_keySessionQueue);
  v7 = BLHLSKeyFetchingLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241D0D000, v7, OS_LOG_TYPE_DEFAULT, "Persistable content key request provided", buf, 2u);
  }

  if (self->_activePersistableKeyRequest)
  {
    v8 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241D0D000, v8, OS_LOG_TYPE_DEFAULT, "Skipping provided persistable content key request", buf, 2u);
    }
  }

  else
  {
    objc_storeStrong(&self->_activePersistableKeyRequest, request);
    v8 = objc_msgSend_dataUsingEncoding_(self->_identity, v9, 4, v10);
    certificateData = self->_certificateData;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_241D14C7C;
    v13[3] = &unk_278D15AB0;
    v13[4] = self;
    v14 = requestCopy;
    objc_msgSend_makeStreamingContentKeyRequestDataForApp_contentIdentifier_options_completionHandler_(v14, v12, certificateData, v8, 0, v13);
  }
}

- (void)contentKeySession:(id)session contentKeyRequest:(id)request didFailWithError:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_keySessionQueue);
  if (self->_activeKeyRequest == requestCopy || self->_activePersistableKeyRequest == requestCopy)
  {
    v9 = BLHLSKeyFetchingLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_msgSend_title(self->_mediaItem, v10, v11, v12);
      v17 = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = errorCopy;
      _os_log_impl(&dword_241D0D000, v9, OS_LOG_TYPE_ERROR, "Content key request failed for '%@' with error:  %@", &v17, 0x16u);
    }

    objc_msgSend_finishWithError_(self, v14, errorCopy, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end