@interface CKDFetchTranscodeServerPublicKeyOperation
+ (id)nameForState:(unint64_t)a3;
- (BOOL)makeStateTransition;
- (CKDFetchTranscodeServerPublicKeyOperation)initWithOperationInfo:(id)a3 container:(id)a4;
- (id)activityCreate;
- (void)determineTranscodeServerPublicKeyURL;
- (void)fetchCachedTranscodePublicKey;
- (void)fetchRemoteTranscodePublicKey;
- (void)main;
@end

@implementation CKDFetchTranscodeServerPublicKeyOperation

- (CKDFetchTranscodeServerPublicKeyOperation)initWithOperationInfo:(id)a3 container:(id)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = CKDFetchTranscodeServerPublicKeyOperation;
  v9 = [(CKDOperation *)&v15 initWithOperationInfo:v6 container:a4];
  if (v9)
  {
    v10 = objc_msgSend_transcodeServerHostname(v6, v7, v8);
    transcodeServerHostname = v9->_transcodeServerHostname;
    v9->_transcodeServerHostname = v10;

    v9->_type = objc_msgSend_type(v6, v12, v13);
  }

  return v9;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/fetch-public-key", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)main
{
  v33 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v12 = v3;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v16 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v15, 1, 0, 0);
    v19 = objc_msgSend_CKPropertiesStyleString(v16, v17, v18);
    v21 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v20, 0, 1, 0);
    v24 = objc_msgSend_CKPropertiesStyleString(v21, v22, v23);
    *buf = 138544130;
    v26 = v14;
    v27 = 2048;
    v28 = self;
    v29 = 2114;
    v30 = v19;
    v31 = 2112;
    v32 = v24;
    _os_log_debug_impl(&dword_22506F000, v12, OS_LOG_TYPE_DEBUG, "Starting  <%{public}@: %p; %{public}@, %@>", buf, 0x2Au);
  }

  if (!objc_msgSend_type(self, v4, v5))
  {
    v8 = objc_msgSend_transcodeServerHostname(self, v6, v7);

    if (!v8)
    {
      v9 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v6, *MEMORY[0x277CBC120], 1017, @"Operation %@ was not provided a transcode server hostname", self);
      objc_msgSend_setError_(self, v10, v9);
    }
  }

  objc_msgSend_makeStateTransition_(self, v6, 0);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)determineTranscodeServerPublicKeyURL
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = MEMORY[0x277CBC830];
  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v20 = v5;
    v23 = objc_msgSend_transcodeServerHostname(self, v21, v22);
    *buf = 138543362;
    v26 = v23;
    _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Determining transcode server public key URL for hostname: %{public}@", buf, 0xCu);
  }

  if (*MEMORY[0x277CBC810] == 1 && (objc_msgSend_unitTestOverrides(self, v6, v7), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v8, v9, @"TranscodeServerPublicKeyURL"), v10 = objc_claimAutoreleasedReturnValue(), v8, v10))
  {
    if (*v3 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = v10;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Overriding transcode server public key URL to %@", buf, 0xCu);
    }

    v13 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v12, v10);
    objc_msgSend_setTranscodeServerPublicKeyURL_(self, v14, v13);
  }

  else
  {
    v15 = objc_msgSend_stateTransitionGroup(self, v6, v7);
    dispatch_group_enter(v15);

    v10 = objc_msgSend_sharedManager(CKDServerConfigurationManager, v16, v17);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_2251A39D0;
    v24[3] = &unk_278548770;
    v24[4] = self;
    objc_msgSend_configurationForOperation_completionHandler_(v10, v18, self, v24);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)fetchCachedTranscodePublicKey
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = MEMORY[0x277CBC830];
  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v37 = v5;
    v40 = objc_msgSend_transcodeServerPublicKeyURL(self, v38, v39);
    v45 = 138543362;
    v46 = v40;
    _os_log_debug_impl(&dword_22506F000, v37, OS_LOG_TYPE_DEBUG, "Checking for cached transcode server public key for public key URL %{public}@", &v45, 0xCu);
  }

  v8 = objc_msgSend_transcodeServerPublicKeyURL(self, v6, v7);
  v11 = objc_msgSend_absoluteString(v8, v9, v10);

  v14 = objc_msgSend_deviceContext(self, v12, v13);
  v17 = objc_msgSend_metadataCache(v14, v15, v16);
  v19 = objc_msgSend_publicKeyOfType_withIdentifier_(v17, v18, @"transcodeServerPublicKey", v11);

  if (v19)
  {
    hasExpired = objc_msgSend_hasExpired(v19, v20, v21);
    v23 = *MEMORY[0x277CBC878];
    v24 = *v3;
    if (hasExpired)
    {
      if (*v3 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v23);
      }

      v25 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
      {
        v41 = v25;
        v44 = objc_msgSend_expiration(v19, v42, v43);
        v45 = 138543362;
        v46 = v44;
        _os_log_debug_impl(&dword_22506F000, v41, OS_LOG_TYPE_DEBUG, "Found a cached transcode key, but it has expired on %{public}@. Clearing cached value and continuing with server fetch.", &v45, 0xCu);
      }

      v28 = objc_msgSend_deviceContext(self, v26, v27);
      v31 = objc_msgSend_metadataCache(v28, v29, v30);
      objc_msgSend_setPublicKey_ofType_withIdentifier_(v31, v32, 0, @"transcodeServerPublicKey", v11);
    }

    else
    {
      if (*v3 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v23);
      }

      v34 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
      {
        v45 = 138412290;
        v46 = v19;
        _os_log_debug_impl(&dword_22506F000, v34, OS_LOG_TYPE_DEBUG, "Found a transcode public key %@", &v45, 0xCu);
      }

      objc_msgSend_setTranscodeServerPublicKey_(self, v35, v19);
    }
  }

  else
  {
    if (*v3 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v33 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v45) = 0;
      _os_log_debug_impl(&dword_22506F000, v33, OS_LOG_TYPE_DEBUG, "Couldn't find cached transcode public key", &v45, 2u);
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)fetchRemoteTranscodePublicKey
{
  location[3] = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v32 = v3;
    v35 = objc_msgSend_transcodeServerPublicKeyURL(self, v33, v34);
    LODWORD(location[0]) = 138543362;
    *(location + 4) = v35;
    _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Fetching transcode server public key from URL %{public}@", location, 0xCu);
  }

  v6 = objc_msgSend_stateTransitionGroup(self, v4, v5);
  dispatch_group_enter(v6);

  v7 = objc_opt_class();
  TranscodeServerTrustPolicy = objc_msgSend_createTranscodeServerTrustPolicy(v7, v8, v9);
  v11 = [CKDSignedServerPublicKeyURLRequest alloc];
  v14 = objc_msgSend_transcodeServerPublicKeyURL(self, v12, v13);
  v16 = objc_msgSend_initWithOperation_plistURL_verifyWithPolicy_(v11, v15, self, v14, TranscodeServerTrustPolicy);

  if (objc_msgSend_type(self, v17, v18) == 1)
  {
    objc_msgSend_setRequiresProtectionSource_(v16, v19, 1);
    objc_msgSend_setVerifyFullIntegers_(v16, v20, 1);
    v23 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x277CBEAA8], v21, v22, 3600.0);
    objc_msgSend_setExpirationDateOverride_(v16, v24, v23);
  }

  if (TranscodeServerTrustPolicy)
  {
    CFRelease(TranscodeServerTrustPolicy);
  }

  objc_initWeak(location, v16);
  v36 = MEMORY[0x277D85DD0];
  v37 = 3221225472;
  v38 = sub_2251A4394;
  v39 = &unk_2785476F0;
  objc_copyWeak(&v41, location);
  v40 = self;
  objc_msgSend_setCompletionBlock_(v16, v25, &v36);
  objc_msgSend_setRequest_(self, v26, v16, v36, v37, v38, v39);
  v29 = objc_msgSend_container(self, v27, v28);
  objc_msgSend_performRequest_(v29, v30, v16);

  objc_destroyWeak(&v41);
  objc_destroyWeak(location);

  v31 = *MEMORY[0x277D85DE8];
}

- (BOOL)makeStateTransition
{
  v4 = objc_msgSend_state(self, a2, v2);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v11 = objc_msgSend_transcodeServerPublicKey(self, v5, v6);

      if (!v11)
      {
        objc_msgSend_setState_(self, v5, 4);
        objc_msgSend_fetchRemoteTranscodePublicKey(self, v17, v18);
        return 1;
      }
    }

    else if (v4 != 4)
    {
      return 1;
    }

    objc_msgSend_setState_(self, v5, 0xFFFFFFFFLL);
    v14 = objc_msgSend_error(self, v12, v13);
    objc_msgSend_finishWithError_(self, v15, v14);
  }

  else if (v4 == 1)
  {
    objc_msgSend_setState_(self, v5, 2);
    objc_msgSend_determineTranscodeServerPublicKeyURL(self, v9, v10);
  }

  else if (v4 == 2)
  {
    objc_msgSend_setState_(self, v5, 3);
    objc_msgSend_fetchCachedTranscodePublicKey(self, v7, v8);
  }

  return 1;
}

+ (id)nameForState:(unint64_t)a3
{
  if (a3 - 2 >= 3)
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CKDFetchTranscodeServerPublicKeyOperation;
    v5 = objc_msgSendSuper2(&v7, sel_nameForState_);
  }

  else
  {
    v5 = off_278548790[a3 - 2];
  }

  return v5;
}

@end