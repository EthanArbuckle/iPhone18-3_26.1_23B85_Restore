@interface HMDAuthServer
+ (id)logCategory;
- (BOOL)resumeRetryIfPending;
- (HMDAuthServer)initWithDelegate:(id)delegate;
- (HMDAuthServerDelegate)delegate;
- (void)_handleResponseMetadata:(id)metadata ppid:(id)ppid locale:(id)locale context:(id)context error:(id)error;
- (void)_reportFailureWithContext:(id)context error:(id)error;
- (void)getPPIDInfo:(id)info model:(id)model cert:(id)cert context:(id)context;
- (void)resetRetryOperation;
- (void)retryOrReportFailure:(id)failure context:(id)context;
- (void)saveRetryOperation:(unint64_t)operation token:(id)token authFeatures:(unint64_t)features uuid:(id)uuid context:(id)context locale:(id)locale model:(id)model;
- (void)sendActivationConfirmation:(id)confirmation uuid:(id)uuid context:(id)context;
- (void)sendActivationRequest:(id)request uuid:(id)uuid context:(id)context;
- (void)sendPPIDInfoRequest:(id)request model:(id)model token:(id)token authFeatures:(unint64_t)features uuid:(id)uuid context:(id)context;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDAuthServer

- (HMDAuthServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)sendActivationConfirmation:(id)confirmation uuid:(id)uuid context:(id)context
{
  confirmationCopy = confirmation;
  uuidCopy = uuid;
  contextCopy = context;
  workQueue = [(HMDAuthServer *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__HMDAuthServer_sendActivationConfirmation_uuid_context___block_invoke;
  v15[3] = &unk_2786891E0;
  v15[4] = self;
  v16 = confirmationCopy;
  v17 = uuidCopy;
  v18 = contextCopy;
  v12 = contextCopy;
  v13 = uuidCopy;
  v14 = confirmationCopy;
  dispatch_async(workQueue, v15);
}

void __57__HMDAuthServer_sendActivationConfirmation_uuid_context___block_invoke(uint64_t a1)
{
  [*(a1 + 32) saveRetryOperation:3 token:*(a1 + 40) authFeatures:0 uuid:*(a1 + 48) context:*(a1 + 56) locale:0 model:0];
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) tokenManager];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) UUIDString];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__HMDAuthServer_sendActivationConfirmation_uuid_context___block_invoke_2;
  v5[3] = &unk_278687540;
  objc_copyWeak(&v7, &location);
  v6 = *(a1 + 56);
  [v2 confirmActivationForAuthToken:v3 withUUID:v4 completionHandler:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __57__HMDAuthServer_sendActivationConfirmation_uuid_context___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__HMDAuthServer_sendActivationConfirmation_uuid_context___block_invoke_3;
    block[3] = &unk_27868A010;
    v8 = v3;
    v9 = v5;
    v10 = *(a1 + 32);
    dispatch_async(v6, block);
  }
}

void __57__HMDAuthServer_sendActivationConfirmation_uuid_context___block_invoke_3(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 32);
      v16 = 138543618;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_ERROR, "%{public}@Activation confirmation with server failed with error: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 40) retryOrReportFailure:*(a1 + 32) context:*(a1 + 48)];
  }

  else
  {
    [*(a1 + 40) resetRetryOperation];
    v7 = [*(a1 + 40) delegate];
    if (objc_opt_respondsToSelector())
    {
      [v7 didFinishActivation:0 context:*(a1 + 48)];
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 40);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v11;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement didFinishActivation:context:", &v16, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      v13 = *(a1 + 40);
      v12 = *(a1 + 48);
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:-1 userInfo:0];
      [v13 _reportFailureWithContext:v12 error:v14];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)sendActivationRequest:(id)request uuid:(id)uuid context:(id)context
{
  requestCopy = request;
  uuidCopy = uuid;
  contextCopy = context;
  workQueue = [(HMDAuthServer *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__HMDAuthServer_sendActivationRequest_uuid_context___block_invoke;
  v15[3] = &unk_2786891E0;
  v15[4] = self;
  v16 = requestCopy;
  v17 = uuidCopy;
  v18 = contextCopy;
  v12 = contextCopy;
  v13 = uuidCopy;
  v14 = requestCopy;
  dispatch_async(workQueue, v15);
}

void __52__HMDAuthServer_sendActivationRequest_uuid_context___block_invoke(uint64_t a1)
{
  [*(a1 + 32) saveRetryOperation:2 token:*(a1 + 40) authFeatures:0 uuid:*(a1 + 48) context:*(a1 + 56) locale:0 model:0];
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) tokenManager];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) UUIDString];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__HMDAuthServer_sendActivationRequest_uuid_context___block_invoke_2;
  v5[3] = &unk_278678260;
  objc_copyWeak(&v7, &location);
  v6 = *(a1 + 56);
  [v2 requestActivationForAuthToken:v3 withUUID:v4 completionHandler:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __52__HMDAuthServer_sendActivationRequest_uuid_context___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained workQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__HMDAuthServer_sendActivationRequest_uuid_context___block_invoke_3;
    v10[3] = &unk_2786891E0;
    v11 = v6;
    v12 = v8;
    v13 = v5;
    v14 = *(a1 + 32);
    dispatch_async(v9, v10);
  }
}

void __52__HMDAuthServer_sendActivationRequest_uuid_context___block_invoke_3(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    [*(a1 + 40) resetRetryOperation];
    v7 = [*(a1 + 40) delegate];
    if (objc_opt_respondsToSelector())
    {
      if ([*(a1 + 48) length])
      {
        [v7 handleActivationResponse:*(a1 + 48) context:*(a1 + 56)];
LABEL_14:

        goto LABEL_15;
      }

      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 40);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v15 = *(a1 + 48);
        v20 = 138543618;
        v21 = v11;
        v22 = 2112;
        v23 = v15;
        v12 = "%{public}@Invalid tokens in activation response: %@";
        v13 = v10;
        v14 = 22;
        goto LABEL_12;
      }
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 40);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v11;
        v12 = "%{public}@Delegate does not implement handleActivationResponse:context:";
        v13 = v10;
        v14 = 12;
LABEL_12:
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, v12, &v20, v14);
      }
    }

    objc_autoreleasePoolPop(v8);
    v16 = *(a1 + 40);
    v17 = *(a1 + 56);
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:-1 userInfo:0];
    [v16 _reportFailureWithContext:v17 error:v18];

    goto LABEL_14;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 32);
    v20 = 138543618;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_ERROR, "%{public}@Activation with server failed with error: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 40) retryOrReportFailure:*(a1 + 32) context:*(a1 + 56)];
LABEL_15:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)sendPPIDInfoRequest:(id)request model:(id)model token:(id)token authFeatures:(unint64_t)features uuid:(id)uuid context:(id)context
{
  requestCopy = request;
  modelCopy = model;
  tokenCopy = token;
  uuidCopy = uuid;
  contextCopy = context;
  workQueue = [(HMDAuthServer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HMDAuthServer_sendPPIDInfoRequest_model_token_authFeatures_uuid_context___block_invoke;
  block[3] = &unk_278678238;
  block[4] = self;
  v26 = tokenCopy;
  v30 = modelCopy;
  featuresCopy = features;
  v27 = uuidCopy;
  v28 = contextCopy;
  v29 = requestCopy;
  v20 = modelCopy;
  v21 = requestCopy;
  v22 = contextCopy;
  v23 = uuidCopy;
  v24 = tokenCopy;
  dispatch_async(workQueue, block);
}

void __75__HMDAuthServer_sendPPIDInfoRequest_model_token_authFeatures_uuid_context___block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  [*(a1 + 32) saveRetryOperation:1 token:*(a1 + 40) authFeatures:*(a1 + 80) uuid:*(a1 + 48) context:*(a1 + 56) locale:*(a1 + 64) model:*(a1 + 72)];
  objc_initWeak(&location, *v2);
  v3 = objc_autoreleasePoolPush();
  v4 = *v2;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v38 = v3;
    v6 = HMFGetLogIdentifier();
    v8 = *(a1 + 64);
    v7 = *(a1 + 72);
    v9 = [v8 languageCode];
    v10 = [*(a1 + 64) countryCode];
    v11 = [*(a1 + 64) localeIdentifier];
    v12 = HMDSWAuthFeaturesToString(*(a1 + 80));
    *buf = 138544898;
    v46 = v6;
    v47 = 2112;
    v48 = v8;
    v49 = 2112;
    v50 = v7;
    v51 = 2112;
    v52 = v9;
    v53 = 2112;
    v54 = v10;
    v55 = 2112;
    v56 = v11;
    v57 = 2112;
    v58 = v12;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Requesting metadata for locale: %@, Model: %@, Language Code: %@, Country Code: %@ Identifier: %@, swAuthFeatures: %@", buf, 0x48u);

    v3 = v38;
  }

  objc_autoreleasePoolPop(v3);
  v13 = *(a1 + 72);
  if (v13)
  {
    v43 = @"model";
    v44 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 80);
  if ((v15 & 1) == 0)
  {
    v16 = 0;
    if ((v15 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = *(a1 + 32);
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543362;
    v46 = v20;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Checking token for HomeKit", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v17);
  v16 = 1;
  if ((*(a1 + 80) & 2) != 0)
  {
LABEL_12:
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 32);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v46 = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Checking token for AirPlayAudio", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v16 |= 2uLL;
  }

LABEL_15:
  if ([MEMORY[0x277D24E30] isTokenValidForFeatures:v16 token:*(a1 + 40)])
  {
    v25 = [*(a1 + 32) tokenManager];
    v26 = *(a1 + 40);
    v27 = [*(a1 + 48) UUIDString];
    v28 = *(a1 + 64);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __75__HMDAuthServer_sendPPIDInfoRequest_model_token_authFeatures_uuid_context___block_invoke_76;
    v39[3] = &unk_278678210;
    objc_copyWeak(&v41, &location);
    v40 = *(a1 + 56);
    [v25 requestMetadataForAuthToken:v26 withUUID:v27 requestedLocale:v28 requestInfo:v14 completionHandler:v39];

    objc_destroyWeak(&v41);
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = *(a1 + 32);
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      v33 = HMDSWAuthFeaturesToString(*(a1 + 80));
      *buf = 138543618;
      v46 = v32;
      v47 = 2112;
      v48 = v33;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Token validation failed for auth features: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    v34 = *(a1 + 32);
    v35 = *(a1 + 56);
    v36 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:-1 userInfo:0];
    [v34 _handleResponseMetadata:0 ppid:0 locale:0 context:v35 error:v36];
  }

  objc_destroyWeak(&location);
  v37 = *MEMORY[0x277D85DE8];
}

void __75__HMDAuthServer_sendPPIDInfoRequest_model_token_authFeatures_uuid_context___block_invoke_76(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v14 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleResponseMetadata:v10 ppid:v14 locale:v9 context:*(a1 + 32) error:v11];
  }
}

- (void)getPPIDInfo:(id)info model:(id)model cert:(id)cert context:(id)context
{
  infoCopy = info;
  modelCopy = model;
  certCopy = cert;
  contextCopy = context;
  workQueue = [(HMDAuthServer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMDAuthServer_getPPIDInfo_model_cert_context___block_invoke;
  block[3] = &unk_278689550;
  block[4] = self;
  v20 = infoCopy;
  v21 = modelCopy;
  v22 = certCopy;
  v23 = contextCopy;
  v15 = contextCopy;
  v16 = certCopy;
  v17 = modelCopy;
  v18 = infoCopy;
  dispatch_async(workQueue, block);
}

void __48__HMDAuthServer_getPPIDInfo_model_cert_context___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  objc_initWeak(&location, *(a1 + 32));
  v3 = objc_autoreleasePoolPush();
  v4 = *v2;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = [v7 languageCode];
    v10 = [*(a1 + 40) countryCode];
    v11 = [*(a1 + 40) localeIdentifier];
    *buf = 138544642;
    v25 = v6;
    v26 = 2112;
    v27 = v7;
    v28 = 2112;
    v29 = v8;
    v30 = 2112;
    v31 = v9;
    v32 = 2112;
    v33 = v10;
    v34 = 2112;
    v35 = v11;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Requesting Cert metadata for locale: %@, Model: %@, Language Code: %@, Country Code: %@ Identifier: %@", buf, 0x3Eu);
  }

  objc_autoreleasePoolPop(v3);
  v12 = *(a1 + 48);
  if (v12)
  {
    v22 = @"model";
    v23 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  }

  else
  {
    v13 = 0;
  }

  v14 = [MEMORY[0x277D24E20] sharedManager];
  v15 = *(a1 + 56);
  v16 = *(a1 + 40);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48__HMDAuthServer_getPPIDInfo_model_cert_context___block_invoke_74;
  v18[3] = &unk_278678210;
  objc_copyWeak(&v20, &location);
  v19 = *(a1 + 64);
  [v14 requestMetadataForCertificate:v15 requestedLocale:v16 requestInfo:v13 completionHandler:v18];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
  v17 = *MEMORY[0x277D85DE8];
}

void __48__HMDAuthServer_getPPIDInfo_model_cert_context___block_invoke_74(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v14 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleResponseMetadata:v10 ppid:v14 locale:v9 context:*(a1 + 32) error:v11];
  }
}

- (void)timerDidFire:(id)fire
{
  v33 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    currentOperation = [(HMDAuthServer *)selfCopy currentOperation];
    if (currentOperation > 3)
    {
      v10 = @"HMDAuthServerOperationPPIDInfo";
    }

    else
    {
      v10 = off_278678280[currentOperation];
    }

    v29 = 138543618;
    v30 = v8;
    v31 = 2112;
    v32 = v10;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Retry timer expired for operation: %@", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  retryTimer = [(HMDAuthServer *)selfCopy retryTimer];

  if (retryTimer == fireCopy)
  {
    currentOperation2 = [(HMDAuthServer *)selfCopy currentOperation];
    if (currentOperation2 != 3)
    {
      if (currentOperation2 != 2)
      {
        if (currentOperation2 != 1)
        {
          v22 = objc_autoreleasePoolPush();
          v23 = selfCopy;
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = HMFGetLogIdentifier();
            currentOperation3 = [(HMDAuthServer *)v23 currentOperation];
            if (currentOperation3 > 3)
            {
              v27 = @"HMDAuthServerOperationPPIDInfo";
            }

            else
            {
              v27 = off_278678280[currentOperation3];
            }

            v29 = 138543618;
            v30 = v25;
            v31 = 2112;
            v32 = v27;
            _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Invalid retry operation: %@", &v29, 0x16u);
          }

          objc_autoreleasePoolPop(v22);
          [(HMDAuthServer *)v23 resetRetryOperation];
          context = [(HMDAuthServer *)v23 context];
          model = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:-1 userInfo:0];
          [(HMDAuthServer *)v23 _reportFailureWithContext:context error:model];
          goto LABEL_20;
        }

        context = [(HMDAuthServer *)selfCopy locale];
        model = [(HMDAuthServer *)selfCopy model];
        token = [(HMDAuthServer *)selfCopy token];
        authFeatures = [(HMDAuthServer *)selfCopy authFeatures];
        uuid = [(HMDAuthServer *)selfCopy uuid];
        context2 = [(HMDAuthServer *)selfCopy context];
        [(HMDAuthServer *)selfCopy sendPPIDInfoRequest:context model:model token:token authFeatures:authFeatures uuid:uuid context:context2];

LABEL_13:
LABEL_20:

        goto LABEL_21;
      }

      token2 = [(HMDAuthServer *)selfCopy token];
      uuid2 = [(HMDAuthServer *)selfCopy uuid];
      context3 = [(HMDAuthServer *)selfCopy context];
      [(HMDAuthServer *)selfCopy sendActivationRequest:token2 uuid:uuid2 context:context3];
    }

    context = [(HMDAuthServer *)selfCopy token];
    model = [(HMDAuthServer *)selfCopy uuid];
    token = [(HMDAuthServer *)selfCopy context];
    [(HMDAuthServer *)selfCopy sendActivationConfirmation:context uuid:model context:token];
    goto LABEL_13;
  }

LABEL_21:

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)resumeRetryIfPending
{
  retryTimer = [(HMDAuthServer *)self retryTimer];

  if (retryTimer)
  {
    retryTimer2 = [(HMDAuthServer *)self retryTimer];
    [retryTimer2 resume];
  }

  return retryTimer != 0;
}

- (void)resetRetryOperation
{
  [(HMDAuthServer *)self setRetryCount:0];
  retryTimer = [(HMDAuthServer *)self retryTimer];
  [retryTimer cancel];

  [(HMDAuthServer *)self setRetryTimer:0];
  [(HMDAuthServer *)self setCurrentOperation:0];
  [(HMDAuthServer *)self setLocale:0];
  [(HMDAuthServer *)self setModel:0];
  [(HMDAuthServer *)self setToken:0];
  [(HMDAuthServer *)self setUuid:0];

  [(HMDAuthServer *)self setContext:0];
}

- (void)saveRetryOperation:(unint64_t)operation token:(id)token authFeatures:(unint64_t)features uuid:(id)uuid context:(id)context locale:(id)locale model:(id)model
{
  tokenCopy = token;
  uuidCopy = uuid;
  contextCopy = context;
  localeCopy = locale;
  modelCopy = model;
  retryTimer = [(HMDAuthServer *)self retryTimer];

  if (retryTimer)
  {
    if ([(HMDAuthServer *)self retryCount]< 1)
    {
      [(HMDAuthServer *)self resetRetryOperation];
    }

    else
    {
      [(HMDAuthServer *)self setRetryCount:[(HMDAuthServer *)self retryCount]- 1];
    }
  }

  else
  {
    v20 = objc_alloc(MEMORY[0x277D0F920]);
    v21 = [v20 initWithTimeInterval:1 options:*&authServerRetryTimeIntervalInSeconds];
    [(HMDAuthServer *)self setRetryTimer:v21];

    retryTimer2 = [(HMDAuthServer *)self retryTimer];
    [retryTimer2 setDelegate:self];

    [(HMDAuthServer *)self setLocale:localeCopy];
    [(HMDAuthServer *)self setModel:modelCopy];
    [(HMDAuthServer *)self setToken:tokenCopy];
    [(HMDAuthServer *)self setAuthFeatures:features];
    [(HMDAuthServer *)self setUuid:uuidCopy];
    [(HMDAuthServer *)self setContext:contextCopy];
    [(HMDAuthServer *)self setRetryCount:authServerRetryCount];
    [(HMDAuthServer *)self setCurrentOperation:operation];
  }
}

- (void)_handleResponseMetadata:(id)metadata ppid:(id)ppid locale:(id)locale context:(id)context error:(id)error
{
  v60 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  ppidCopy = ppid;
  localeCopy = locale;
  contextCopy = context;
  errorCopy = error;
  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138544130;
    v53 = v18;
    v54 = 2112;
    v55 = metadataCopy;
    v56 = 2112;
    v57 = ppidCopy;
    v58 = 2112;
    v59 = localeCopy;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Received metadata: %@ for PPID: %@, locale: %@", buf, 0x2Au);
  }

  v37 = ppidCopy;
  v40 = localeCopy;

  objc_autoreleasePoolPop(v15);
  if (metadataCopy)
  {
    v19 = [metadataCopy hmf_stringForKey:@"accessory_name"];
    v20 = [metadataCopy hmf_stringForKey:@"brand"];
    v21 = [metadataCopy hmf_stringForKey:@"model"];
    v22 = [metadataCopy hmf_numberForKey:@"category"];
    v23 = [metadataCopy hmf_stringForKey:@"certification_status"];
    v24 = [metadataCopy hmf_stringForKey:@"blacklisted_status"];
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
  }

  workQueue = [(HMDAuthServer *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HMDAuthServer__handleResponseMetadata_ppid_locale_context_error___block_invoke;
  block[3] = &unk_2786781E8;
  v42 = errorCopy;
  v43 = selfCopy;
  v44 = v19;
  v45 = v20;
  v46 = v21;
  v47 = v22;
  v48 = v23;
  v49 = v24;
  v50 = v37;
  v51 = v35;
  v36 = v35;
  v26 = v37;
  v27 = v24;
  v38 = v23;
  v28 = v22;
  v29 = v21;
  v30 = v20;
  v31 = v19;
  v32 = errorCopy;
  dispatch_async(workQueue, block);

  v33 = *MEMORY[0x277D85DE8];
}

void __67__HMDAuthServer__handleResponseMetadata_ppid_locale_context_error___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 32);
      *buf = 138543618;
      v18 = v5;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_ERROR, "%{public}@Failed to get PPID Info from server with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 40) retryOrReportFailure:*(a1 + 32) context:*(a1 + 104)];
  }

  else
  {
    [*(a1 + 40) resetRetryOperation];
    v7 = [objc_alloc(MEMORY[0x277CFEA00]) initWithName:*(a1 + 48) manufacturer:*(a1 + 56) modelName:*(a1 + 64) category:*(a1 + 72) certificationStatus:*(a1 + 80) denylisted:*(a1 + 88) ppid:*(a1 + 96)];
    v8 = [*(a1 + 40) delegate];
    if (objc_opt_respondsToSelector())
    {
      [v8 handlePPIDInfoResponse:v7 context:*(a1 + 104) error:*(a1 + 32)];
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      v10 = *(a1 + 40);
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543362;
        v18 = v12;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement handlePPIDInfoResponse:context:", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      v13 = *(a1 + 40);
      v14 = *(a1 + 104);
      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:-1 userInfo:0];
      [v13 _reportFailureWithContext:v14 error:v15];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)retryOrReportFailure:(id)failure context:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  failureCopy = failure;
  contextCopy = context;
  domain = [failureCopy domain];
  if (![domain isEqual:*MEMORY[0x277D24E18]])
  {

    goto LABEL_10;
  }

  code = [failureCopy code];

  if (code != -5)
  {
LABEL_10:
    v18 = 55;
LABEL_11:
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:v18 userInfo:0];
    [(HMDAuthServer *)self _reportFailureWithContext:contextCopy error:v19];

    goto LABEL_12;
  }

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    v21 = 138543362;
    v22 = v13;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Network unavailable", &v21, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  if (![(HMDAuthServer *)selfCopy resumeRetryIfPending])
  {
    v18 = 78;
    goto LABEL_11;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = selfCopy;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = HMFGetLogIdentifier();
    v21 = 138543362;
    v22 = v17;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Waiting to retry", &v21, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
LABEL_12:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_reportFailureWithContext:(id)context error:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failing activation", &v18, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  delegate = [(HMDAuthServer *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didFinishActivation:errorCopy context:contextCopy];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement didFinishActivation:context:", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (HMDAuthServer)initWithDelegate:(id)delegate
{
  v23 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v5 = delegateCopy;
  if (!delegateCopy)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v16;
      v17 = "%{public}@A valid delegate is required.";
LABEL_10:
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, v17, buf, 0xCu);
    }

LABEL_11:

    objc_autoreleasePoolPop(v14);
    v13 = 0;
    goto LABEL_12;
  }

  if (([delegateCopy conformsToProtocol:&unk_283F81530] & 1) == 0)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v16;
      v17 = "%{public}@Delegate must confirm to the HMDAuthServerDelegate protocol";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v20.receiver = self;
  v20.super_class = HMDAuthServer;
  v6 = [(HMDAuthServer *)&v20 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("HMDAuthServer", v7);
    workQueue = v6->_workQueue;
    v6->_workQueue = v8;

    objc_storeWeak(&v6->_delegate, v5);
    mEMORY[0x277D24E30] = [MEMORY[0x277D24E30] sharedManager];
    tokenManager = v6->_tokenManager;
    v6->_tokenManager = mEMORY[0x277D24E30];
  }

  selfCopy2 = v6;
  v13 = selfCopy2;
LABEL_12:

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t21 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t21, &__block_literal_global_108658);
  }

  v3 = logCategory__hmf_once_v22;

  return v3;
}

void __28__HMDAuthServer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v22;
  logCategory__hmf_once_v22 = v1;
}

@end