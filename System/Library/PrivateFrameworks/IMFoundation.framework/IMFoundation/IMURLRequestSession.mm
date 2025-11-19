@interface IMURLRequestSession
+ (IMURLRequestSession)sharedSession;
+ (IMURLRequestSession)sharedSessionRequiringIDSHost;
- (IMURLRequestSession)initWithConfiguration:(id)a3 queue:(id)a4 requiresIDSHost:(BOOL)a5;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)performRequest:(id)a3 completionBlock:(id)a4;
- (void)performRequest:(id)a3 completionBlockWithTimingData:(id)a4;
@end

@implementation IMURLRequestSession

+ (IMURLRequestSession)sharedSession
{
  if (qword_1EAED9308 != -1)
  {
    sub_1959D6088();
  }

  v3 = qword_1EAED9300;

  return v3;
}

+ (IMURLRequestSession)sharedSessionRequiringIDSHost
{
  if (qword_1EAED9318 != -1)
  {
    sub_1959D60B0();
  }

  v3 = qword_1EAED9310;

  return v3;
}

- (IMURLRequestSession)initWithConfiguration:(id)a3 queue:(id)a4 requiresIDSHost:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = IMURLRequestSession;
  v10 = [(IMURLRequestSession *)&v18 init];
  v11 = v10;
  if (v10)
  {
    v10->_requireIDSHost = a5;
    objc_storeStrong(&v10->_sessionQueue, a4);
    v12 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    objc_msgSend_setUnderlyingQueue_(v12, v13, v11->_sessionQueue);
    v15 = objc_msgSend_sessionWithConfiguration_delegate_delegateQueue_(MEMORY[0x1E696AF78], v14, v8, v11, v12);
    session = v11->_session;
    v11->_session = v15;
  }

  return v11;
}

- (void)performRequest:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1959C1F5C;
  v9[3] = &unk_1E74398E0;
  v10 = v6;
  v7 = v6;
  objc_msgSend_performRequest_completionBlockWithTimingData_(self, v8, a3, v9);
}

- (void)performRequest:(id)a3 completionBlockWithTimingData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1959968F0;
  v25 = sub_195996EDC;
  v26 = 0;
  session = self->_session;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = sub_1959C20AC;
  v18 = &unk_1E7439908;
  v20 = &v21;
  v9 = v7;
  v19 = v9;
  v11 = objc_msgSend_dataTaskWithRequest_completionHandler_(session, v10, v6, &v15);
  v12 = v22[5];
  v22[5] = v11;

  objc_msgSend_resume(v22[5], v13, v14, v15, v16, v17, v18);
  _Block_object_dispose(&v21, 8);
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (v7)
  {
    v8 = objc_msgSend_URLLoading(IMIDSLog, v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = self;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_195988000, v8, OS_LOG_TYPE_DEFAULT, "URLSession:didBecomeInvalidWithError: called with error {self: %@, error: %@}", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v122 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v11 = objc_msgSend_URLLoading(IMIDSLog, v9, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v106 = objc_msgSend_protectionSpace(v7, v12, v13);
    v107 = self;
    v16 = objc_msgSend_realm(v106, v14, v15);
    objc_msgSend_protectionSpace(v7, v17, v18);
    v19 = v108 = v8;
    v22 = objc_msgSend_host(v19, v20, v21);
    v25 = objc_msgSend_protectionSpace(v7, v23, v24);
    v28 = objc_msgSend_protocol(v25, v26, v27);
    v31 = objc_msgSend_protectionSpace(v7, v29, v30);
    v34 = objc_msgSend_authenticationMethod(v31, v32, v33);
    v37 = objc_msgSend_proposedCredential(v7, v35, v36);
    *buf = 138413314;
    *v115 = v16;
    *&v115[8] = 2112;
    *&v115[10] = v22;
    v116 = 2112;
    v117 = v28;
    v118 = 2112;
    v119 = v34;
    v120 = 2112;
    v121 = v37;
    _os_log_impl(&dword_195988000, v11, OS_LOG_TYPE_DEFAULT, "Received authentication challenge:\n  ---->Protection Space: <Realm: %@, Host: %@, Protocol: %@, Method: %@>\n  ---->Proposed Credential: %@\n  Performing default handling.", buf, 0x34u);

    v8 = v108;
    self = v107;
  }

  if (qword_1ED517658 != -1)
  {
    sub_1959D60C4();
  }

  if (byte_1ED517660 != 1 || !IMGetDomainBoolForKey(@"com.apple.ids", @"disableCertPinning"))
  {
    if (!self->_requireIDSHost)
    {
      goto LABEL_19;
    }

    v41 = objc_msgSend_protectionSpace(v7, v38, v39);
    v44 = objc_msgSend_authenticationMethod(v41, v42, v43);
    isEqualToString = objc_msgSend_isEqualToString_(v44, v45, *MEMORY[0x1E696A968]);

    if ((isEqualToString & 1) == 0)
    {
LABEL_24:
      v8[2](v8, 1, 0);
      goto LABEL_39;
    }

    v49 = objc_msgSend_protectionSpace(v7, v47, v48);
    v52 = objc_msgSend_host(v49, v50, v51);

    if (!v52)
    {
      v94 = objc_msgSend_URLLoading(IMIDSLog, v53, v54);
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195988000, v94, OS_LOG_TYPE_DEFAULT, "No hostname override - perform default handling", buf, 2u);
      }

      v8[2](v8, 1, 0);
      goto LABEL_38;
    }

    __buf = 0xAAAAAAAAAAAAAAAALL;
    arc4random_buf(&__buf, 8uLL);
    v57 = objc_msgSend_URLLoading(IMIDSLog, v55, v56);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v115 = v52;
      *&v115[8] = 2048;
      *&v115[10] = __buf;
      _os_log_impl(&dword_195988000, v57, OS_LOG_TYPE_DEFAULT, "Validating server trust using designated hostname: %@ {identifier: %llu}", buf, 0x16u);
    }

    v58 = objc_alloc(MEMORY[0x1E695DF70]);
    v60 = objc_msgSend_initWithCapacity_(v58, v59, 1);
    v63 = objc_msgSend_sharedInstance(IMLockdownManager, v61, v62);
    objc_msgSend_isInternalInstall(v63, v64, v65);
    AppleIDSServiceContext = SecPolicyCreateAppleIDSServiceContext();

    if (AppleIDSServiceContext)
    {
      objc_msgSend_addObject_(v60, v67, AppleIDSServiceContext);
      v71 = objc_msgSend_protectionSpace(v7, v69, v70);
      v74 = objc_msgSend_serverTrust(v71, v72, v73);
      v75 = SecTrustSetPolicies(v74, v60);

      if (!v75)
      {
        v95 = objc_msgSend_protectionSpace(v7, v76, v77);
        v98 = objc_msgSend_serverTrust(v95, v96, v97);
        sessionQueue = self->_sessionQueue;
        result[0] = MEMORY[0x1E69E9820];
        result[1] = 3221225472;
        result[2] = sub_1959C297C;
        result[3] = &unk_1E7439930;
        v112 = __buf;
        v100 = v8;
        v111 = v100;
        v110 = v7;
        v101 = SecTrustEvaluateAsyncWithError(v98, sessionQueue, result);

        CFRelease(AppleIDSServiceContext);
        if (v101)
        {
          v104 = objc_msgSend_URLLoading(IMIDSLog, v102, v103);
          if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            *v115 = v101;
            *&v115[4] = 2048;
            *&v115[6] = __buf;
            _os_log_impl(&dword_195988000, v104, OS_LOG_TYPE_DEFAULT, "SecTrustEvaluateAsyncWithError() failed to start status=%d {identifier: %llu}", buf, 0x12u);
          }

          v100[2](v100, 2, 0);
        }

        goto LABEL_37;
      }

      v78 = objc_msgSend_URLLoading(IMIDSLog, v76, v77);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v115 = v75;
        *&v115[4] = 2048;
        *&v115[6] = __buf;
        v79 = "Unable to set policies %d {identifier: %llu}";
        v80 = v78;
        v81 = 18;
LABEL_30:
        _os_log_impl(&dword_195988000, v80, OS_LOG_TYPE_DEFAULT, v79, buf, v81);
      }
    }

    else
    {
      v78 = objc_msgSend_URLLoading(IMIDSLog, v67, v68);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v115 = __buf;
        v79 = "Unable to create SecPolicyRef {identifier: %llu}";
        v80 = v78;
        v81 = 12;
        goto LABEL_30;
      }
    }

    v8[2](v8, 2, 0);
LABEL_37:

LABEL_38:
    goto LABEL_39;
  }

  v40 = objc_msgSend_URLLoading(IMIDSLog, v38, v39);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195988000, v40, OS_LOG_TYPE_DEFAULT, "*********** Disable certificate pinning switch is ON !! ***********", buf, 2u);
  }

LABEL_19:
  v82 = objc_msgSend_URLLoading(IMIDSLog, v38, v39);
  if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195988000, v82, OS_LOG_TYPE_DEFAULT, "We do not require IDS host, allowing through", buf, 2u);
  }

  if (byte_1ED517660 != 1 || !objc_msgSend_trustAnyCredential(IMUserDefaults, v83, v84))
  {
    goto LABEL_24;
  }

  v87 = MEMORY[0x1E696AF30];
  v88 = objc_msgSend_protectionSpace(v7, v85, v86);
  v91 = objc_msgSend_serverTrust(v88, v89, v90);
  v93 = objc_msgSend_credentialForTrust_(v87, v92, v91);
  (v8)[2](v8, 0, v93);

LABEL_39:
  v105 = *MEMORY[0x1E69E9840];
}

@end