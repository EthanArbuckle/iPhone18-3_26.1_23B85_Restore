@interface HMDAuthServer
+ (id)logCategory;
- (BOOL)resumeRetryIfPending;
- (HMDAuthServer)initWithDelegate:(id)a3;
- (HMDAuthServerDelegate)delegate;
- (void)_handleResponseMetadata:(id)a3 ppid:(id)a4 locale:(id)a5 context:(id)a6 error:(id)a7;
- (void)_reportFailureWithContext:(id)a3 error:(id)a4;
- (void)getPPIDInfo:(id)a3 model:(id)a4 cert:(id)a5 context:(id)a6;
- (void)resetRetryOperation;
- (void)retryOrReportFailure:(id)a3 context:(id)a4;
- (void)saveRetryOperation:(unint64_t)a3 token:(id)a4 authFeatures:(unint64_t)a5 uuid:(id)a6 context:(id)a7 locale:(id)a8 model:(id)a9;
- (void)sendActivationConfirmation:(id)a3 uuid:(id)a4 context:(id)a5;
- (void)sendActivationRequest:(id)a3 uuid:(id)a4 context:(id)a5;
- (void)sendPPIDInfoRequest:(id)a3 model:(id)a4 token:(id)a5 authFeatures:(unint64_t)a6 uuid:(id)a7 context:(id)a8;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDAuthServer

- (HMDAuthServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)sendActivationConfirmation:(id)a3 uuid:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAuthServer *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__HMDAuthServer_sendActivationConfirmation_uuid_context___block_invoke;
  v15[3] = &unk_2786891E0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
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

- (void)sendActivationRequest:(id)a3 uuid:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAuthServer *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__HMDAuthServer_sendActivationRequest_uuid_context___block_invoke;
  v15[3] = &unk_2786891E0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
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

- (void)sendPPIDInfoRequest:(id)a3 model:(id)a4 token:(id)a5 authFeatures:(unint64_t)a6 uuid:(id)a7 context:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = [(HMDAuthServer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HMDAuthServer_sendPPIDInfoRequest_model_token_authFeatures_uuid_context___block_invoke;
  block[3] = &unk_278678238;
  block[4] = self;
  v26 = v16;
  v30 = v15;
  v31 = a6;
  v27 = v17;
  v28 = v18;
  v29 = v14;
  v20 = v15;
  v21 = v14;
  v22 = v18;
  v23 = v17;
  v24 = v16;
  dispatch_async(v19, block);
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

- (void)getPPIDInfo:(id)a3 model:(id)a4 cert:(id)a5 context:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDAuthServer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMDAuthServer_getPPIDInfo_model_cert_context___block_invoke;
  block[3] = &unk_278689550;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
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

- (void)timerDidFire:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMDAuthServer *)v6 currentOperation];
    if (v9 > 3)
    {
      v10 = @"HMDAuthServerOperationPPIDInfo";
    }

    else
    {
      v10 = off_278678280[v9];
    }

    v29 = 138543618;
    v30 = v8;
    v31 = 2112;
    v32 = v10;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Retry timer expired for operation: %@", &v29, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v11 = [(HMDAuthServer *)v6 retryTimer];

  if (v11 == v4)
  {
    v12 = [(HMDAuthServer *)v6 currentOperation];
    if (v12 != 3)
    {
      if (v12 != 2)
      {
        if (v12 != 1)
        {
          v22 = objc_autoreleasePoolPush();
          v23 = v6;
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = HMFGetLogIdentifier();
            v26 = [(HMDAuthServer *)v23 currentOperation];
            if (v26 > 3)
            {
              v27 = @"HMDAuthServerOperationPPIDInfo";
            }

            else
            {
              v27 = off_278678280[v26];
            }

            v29 = 138543618;
            v30 = v25;
            v31 = 2112;
            v32 = v27;
            _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Invalid retry operation: %@", &v29, 0x16u);
          }

          objc_autoreleasePoolPop(v22);
          [(HMDAuthServer *)v23 resetRetryOperation];
          v13 = [(HMDAuthServer *)v23 context];
          v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:-1 userInfo:0];
          [(HMDAuthServer *)v23 _reportFailureWithContext:v13 error:v14];
          goto LABEL_20;
        }

        v13 = [(HMDAuthServer *)v6 locale];
        v14 = [(HMDAuthServer *)v6 model];
        v15 = [(HMDAuthServer *)v6 token];
        v16 = [(HMDAuthServer *)v6 authFeatures];
        v17 = [(HMDAuthServer *)v6 uuid];
        v18 = [(HMDAuthServer *)v6 context];
        [(HMDAuthServer *)v6 sendPPIDInfoRequest:v13 model:v14 token:v15 authFeatures:v16 uuid:v17 context:v18];

LABEL_13:
LABEL_20:

        goto LABEL_21;
      }

      v19 = [(HMDAuthServer *)v6 token];
      v20 = [(HMDAuthServer *)v6 uuid];
      v21 = [(HMDAuthServer *)v6 context];
      [(HMDAuthServer *)v6 sendActivationRequest:v19 uuid:v20 context:v21];
    }

    v13 = [(HMDAuthServer *)v6 token];
    v14 = [(HMDAuthServer *)v6 uuid];
    v15 = [(HMDAuthServer *)v6 context];
    [(HMDAuthServer *)v6 sendActivationConfirmation:v13 uuid:v14 context:v15];
    goto LABEL_13;
  }

LABEL_21:

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)resumeRetryIfPending
{
  v3 = [(HMDAuthServer *)self retryTimer];

  if (v3)
  {
    v4 = [(HMDAuthServer *)self retryTimer];
    [v4 resume];
  }

  return v3 != 0;
}

- (void)resetRetryOperation
{
  [(HMDAuthServer *)self setRetryCount:0];
  v3 = [(HMDAuthServer *)self retryTimer];
  [v3 cancel];

  [(HMDAuthServer *)self setRetryTimer:0];
  [(HMDAuthServer *)self setCurrentOperation:0];
  [(HMDAuthServer *)self setLocale:0];
  [(HMDAuthServer *)self setModel:0];
  [(HMDAuthServer *)self setToken:0];
  [(HMDAuthServer *)self setUuid:0];

  [(HMDAuthServer *)self setContext:0];
}

- (void)saveRetryOperation:(unint64_t)a3 token:(id)a4 authFeatures:(unint64_t)a5 uuid:(id)a6 context:(id)a7 locale:(id)a8 model:(id)a9
{
  v23 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = [(HMDAuthServer *)self retryTimer];

  if (v19)
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

    v22 = [(HMDAuthServer *)self retryTimer];
    [v22 setDelegate:self];

    [(HMDAuthServer *)self setLocale:v17];
    [(HMDAuthServer *)self setModel:v18];
    [(HMDAuthServer *)self setToken:v23];
    [(HMDAuthServer *)self setAuthFeatures:a5];
    [(HMDAuthServer *)self setUuid:v15];
    [(HMDAuthServer *)self setContext:v16];
    [(HMDAuthServer *)self setRetryCount:authServerRetryCount];
    [(HMDAuthServer *)self setCurrentOperation:a3];
  }
}

- (void)_handleResponseMetadata:(id)a3 ppid:(id)a4 locale:(id)a5 context:(id)a6 error:(id)a7
{
  v60 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v34 = a6;
  v39 = a7;
  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138544130;
    v53 = v18;
    v54 = 2112;
    v55 = v12;
    v56 = 2112;
    v57 = v13;
    v58 = 2112;
    v59 = v14;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Received metadata: %@ for PPID: %@, locale: %@", buf, 0x2Au);
  }

  v37 = v13;
  v40 = v14;

  objc_autoreleasePoolPop(v15);
  if (v12)
  {
    v19 = [v12 hmf_stringForKey:@"accessory_name"];
    v20 = [v12 hmf_stringForKey:@"brand"];
    v21 = [v12 hmf_stringForKey:@"model"];
    v22 = [v12 hmf_numberForKey:@"category"];
    v23 = [v12 hmf_stringForKey:@"certification_status"];
    v24 = [v12 hmf_stringForKey:@"blacklisted_status"];
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

  v25 = [(HMDAuthServer *)v16 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HMDAuthServer__handleResponseMetadata_ppid_locale_context_error___block_invoke;
  block[3] = &unk_2786781E8;
  v42 = v39;
  v43 = v16;
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
  v32 = v39;
  dispatch_async(v25, block);

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

- (void)retryOrReportFailure:(id)a3 context:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 domain];
  if (![v8 isEqual:*MEMORY[0x277D24E18]])
  {

    goto LABEL_10;
  }

  v9 = [v6 code];

  if (v9 != -5)
  {
LABEL_10:
    v18 = 55;
LABEL_11:
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:v18 userInfo:0];
    [(HMDAuthServer *)self _reportFailureWithContext:v7 error:v19];

    goto LABEL_12;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    v21 = 138543362;
    v22 = v13;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Network unavailable", &v21, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  if (![(HMDAuthServer *)v11 resumeRetryIfPending])
  {
    v18 = 78;
    goto LABEL_11;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = v11;
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

- (void)_reportFailureWithContext:(id)a3 error:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v11;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failing activation", &v18, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDAuthServer *)v9 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v12 didFinishActivation:v7 context:v6];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v9;
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

- (HMDAuthServer)initWithDelegate:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v14 = objc_autoreleasePoolPush();
    v12 = self;
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

  if (([v4 conformsToProtocol:&unk_283F81530] & 1) == 0)
  {
    v14 = objc_autoreleasePoolPush();
    v12 = self;
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
    v10 = [MEMORY[0x277D24E30] sharedManager];
    tokenManager = v6->_tokenManager;
    v6->_tokenManager = v10;
  }

  v12 = v6;
  v13 = v12;
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