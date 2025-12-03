@interface PKProvisioningUtility
- (PKProvisioningUtility)initWithDestinationWebService:(id)service managingWebService:(id)webService;
- (PKProvisioningUtilityDataHelper)dataProvider;
- (void)_downloadAndIngestPassesFoPasses:(id)passes response:(id)response cloudStoreCoordinatorDelegate:(id)delegate ingestionProperties:(id)properties sid:(id)sid completion:(id)completion;
- (void)_requestProvisioning:(id)provisioning externalizedAuth:(id)auth cloudStoreCoordinatorDelegate:(id)delegate downloadPasses:(BOOL)passes resolveEnableRequirements:(BOOL)requirements onStartPassDownload:(id)download sid:(id)sid completion:(id)self0;
- (void)_updateRequirementsRequestForSuperEasyProvisioning:(id)provisioning sid:(id)sid completion:(id)completion;
- (void)downloadAndIngestPassForPassURL:(id)l deviceCredential:(id)credential cloudStoreCoordinatorDelegate:(id)delegate ingestionProperties:(id)properties sid:(id)sid completion:(id)completion;
- (void)downloadAndIngestPassesForResponse:(id)response cloudStoreCoordinatorDelegate:(id)delegate ingestionProperties:(id)properties sid:(id)sid completion:(id)completion;
- (void)downloadMoreInfoItemsFrom:(id)from metadata:(id)metadata sid:(id)sid completion:(id)completion;
- (void)ingestProvisioningPassData:(id)data cloudStoreCoordinatorDelegate:(id)delegate moreInfoURLs:(id)ls ingestionProperties:(id)properties sid:(id)sid completion:(id)completion;
- (void)nonceWithSID:(id)d completion:(id)completion;
- (void)requestEligibility:(id)eligibility sid:(id)sid completion:(id)completion;
- (void)requestProvisioning:(id)provisioning externalizedAuth:(id)auth cloudStoreCoordinatorDelegate:(id)delegate onStartPassDownload:(id)download sid:(id)sid requireZoneCreationSuccess:(BOOL)success completion:(id)completion;
- (void)requestProvisioning:(id)provisioning sid:(id)sid completion:(id)completion;
- (void)requestRequirements:(id)requirements sid:(id)sid completion:(id)completion;
- (void)updateProvisioningRequestForEnableRequirements:(id)requirements externalizedAuth:(id)auth sid:(id)sid completion:(id)completion;
@end

@implementation PKProvisioningUtility

- (PKProvisioningUtility)initWithDestinationWebService:(id)service managingWebService:(id)webService
{
  serviceCopy = service;
  webServiceCopy = webService;
  v12.receiver = self;
  v12.super_class = PKProvisioningUtility;
  v9 = [(PKProvisioningUtility *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_destinationWebService, service);
    objc_storeStrong(&v10->_managingWebService, webService);
  }

  return v10;
}

- (void)requestRequirements:(id)requirements sid:(id)sid completion:(id)completion
{
  requirementsCopy = requirements;
  sidCopy = sid;
  completionCopy = completion;
  if (completionCopy)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __60__PKProvisioningUtility_requestRequirements_sid_completion___block_invoke;
    v16[3] = &unk_1E79CB778;
    v16[4] = &v17;
    v11 = PKBeginBackgroundTask(@"com.apple.passbook.cardRequirements", v16);
    v18[3] = v11;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__PKProvisioningUtility_requestRequirements_sid_completion___block_invoke_2;
    v12[3] = &unk_1E79D8A00;
    v12[4] = self;
    v13 = requirementsCopy;
    v14 = completionCopy;
    v15 = &v17;
    [(PKProvisioningUtility *)self _updateRequirementsRequestForSuperEasyProvisioning:v13 sid:sidCopy completion:v12];

    _Block_object_dispose(&v17, 8);
  }
}

void __60__PKProvisioningUtility_requestRequirements_sid_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2)
  {
    PKEndBackgroundTask(v2);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void __60__PKProvisioningUtility_requestRequirements_sid_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__PKProvisioningUtility_requestRequirements_sid_completion___block_invoke_3;
  v6[3] = &unk_1E79D89D8;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = v4;
  v8 = v5;
  [v3 requirementsForRequest:v2 completion:v6];
}

void __60__PKProvisioningUtility_requestRequirements_sid_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v12 = a3;
  v7 = a4;
  v8 = v7;
  if (a2 == 1 && v12)
  {
    v9 = *(*(a1 + 32) + 16);
LABEL_6:
    v9();
    goto LABEL_7;
  }

  if (v7)
  {
    v9 = *(*(a1 + 32) + 16);
    goto LABEL_6;
  }

  v11 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKWebServiceErrorDomain" code:5 userInfo:0];
  (*(*(a1 + 32) + 16))();

LABEL_7:
  v10 = *(*(*(a1 + 40) + 8) + 24);
  if (v10)
  {
    PKEndBackgroundTask(v10);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (void)_updateRequirementsRequestForSuperEasyProvisioning:(id)provisioning sid:(id)sid completion:(id)completion
{
  sidCopy = sid;
  completionCopy = completion;
  paymentCredential = [provisioning paymentCredential];
  if (![paymentCredential couldSupportSuperEasyProvisioning] || (objc_msgSend(paymentCredential, "supportsFrictionlessProvisioning") & 1) != 0 || (objc_msgSend(paymentCredential, "state"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "hasNonce"), v11, (v12 & 1) != 0))
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __91__PKProvisioningUtility__updateRequirementsRequestForSuperEasyProvisioning_sid_completion___block_invoke;
    v13[3] = &unk_1E79D8A28;
    v14 = paymentCredential;
    v15 = sidCopy;
    v16 = completionCopy;
    [(PKProvisioningUtility *)self nonceWithSID:v15 completion:v13];
  }
}

void __91__PKProvisioningUtility__updateRequirementsRequestForSuperEasyProvisioning_sid_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) state];
    [v7 setNonce:v5];
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject(0x28uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = 138412802;
      v10 = v8;
      v11 = 2080;
      v12 = "[PKProvisioningUtility _updateRequirementsRequestForSuperEasyProvisioning:sid:completion:]_block_invoke";
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "[%@] %s - Failed to get nonce for serial provisioning. Returning with error %@", &v9, 0x20u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)requestEligibility:(id)eligibility sid:(id)sid completion:(id)completion
{
  eligibilityCopy = eligibility;
  sidCopy = sid;
  completionCopy = completion;
  v11 = completionCopy;
  if (completionCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__PKProvisioningUtility_requestEligibility_sid_completion___block_invoke;
    aBlock[3] = &unk_1E79D8A78;
    aBlock[4] = self;
    v12 = completionCopy;
    v20 = v12;
    v13 = _Block_copy(aBlock);
    nonce = [eligibilityCopy nonce];
    if (nonce)
    {
    }

    else if ([eligibilityCopy requiresNonce])
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __59__PKProvisioningUtility_requestEligibility_sid_completion___block_invoke_3;
      v15[3] = &unk_1E79D8AA0;
      v16 = eligibilityCopy;
      v17 = v13;
      v18 = v12;
      [(PKProvisioningUtility *)self nonceWithSID:sidCopy completion:v15];

LABEL_7:
      goto LABEL_8;
    }

    (*(v13 + 2))(v13, eligibilityCopy);
    goto LABEL_7;
  }

LABEL_8:
}

void __59__PKProvisioningUtility_requestEligibility_sid_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__PKProvisioningUtility_requestEligibility_sid_completion___block_invoke_2;
  v4[3] = &unk_1E79D8A50;
  v5 = *(a1 + 40);
  [v3 eligibilityForRequest:a2 completion:v4];
}

void __59__PKProvisioningUtility_requestEligibility_sid_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a3;
  v7 = a4;
  v8 = v7;
  if (a2 == 1 && v11)
  {
    v9 = *(*(a1 + 32) + 16);
LABEL_6:
    v9();
    goto LABEL_7;
  }

  if (v7)
  {
    v9 = *(*(a1 + 32) + 16);
    goto LABEL_6;
  }

  v10 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PKWebServiceErrorDomain" code:5 userInfo:0];
  (*(*(a1 + 32) + 16))();

LABEL_7:
}

uint64_t __59__PKProvisioningUtility_requestEligibility_sid_completion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v6 = *(*(a1 + 48) + 16);

    return v6();
  }

  else
  {
    [*(a1 + 32) setNonce:a2];
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }
}

- (void)requestProvisioning:(id)provisioning externalizedAuth:(id)auth cloudStoreCoordinatorDelegate:(id)delegate onStartPassDownload:(id)download sid:(id)sid requireZoneCreationSuccess:(BOOL)success completion:(id)completion
{
  provisioningCopy = provisioning;
  authCopy = auth;
  delegateCopy = delegate;
  downloadCopy = download;
  sidCopy = sid;
  completionCopy = completion;
  v21 = [[PKPaymentCloudStoreZoneCreationManager alloc] initWithWebService:self->_destinationWebService];
  objc_initWeak(&location, self);
  eligibilityResponse = [provisioningCopy eligibilityResponse];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __154__PKProvisioningUtility_requestProvisioning_externalizedAuth_cloudStoreCoordinatorDelegate_onStartPassDownload_sid_requireZoneCreationSuccess_completion___block_invoke;
  v29[3] = &unk_1E79D8AC8;
  successCopy = success;
  objc_copyWeak(&v36, &location);
  v23 = provisioningCopy;
  v30 = v23;
  v24 = authCopy;
  v31 = v24;
  v25 = delegateCopy;
  v32 = v25;
  v26 = downloadCopy;
  v34 = v26;
  v27 = sidCopy;
  v33 = v27;
  v28 = completionCopy;
  v35 = v28;
  [(PKPaymentCloudStoreZoneCreationManager *)v21 triggerCloudStoreZoneCreationIfNeededForEligibilityResponse:eligibilityResponse completion:v29];

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);
}

void __154__PKProvisioningUtility_requestProvisioning_externalizedAuth_cloudStoreCoordinatorDelegate_onStartPassDownload_sid_requireZoneCreationSuccess_completion___block_invoke(uint64_t a1, int a2)
{
  if (*(a1 + 88) == 1 && a2 == 0)
  {
    v4 = *(a1 + 72);
    if (v4)
    {
      v5 = *(v4 + 16);

      v5();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 80));
    [WeakRetained _requestProvisioning:*(a1 + 32) externalizedAuth:*(a1 + 40) cloudStoreCoordinatorDelegate:*(a1 + 48) downloadPasses:1 resolveEnableRequirements:1 onStartPassDownload:*(a1 + 64) sid:*(a1 + 56) completion:*(a1 + 72)];
  }
}

- (void)requestProvisioning:(id)provisioning sid:(id)sid completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__PKProvisioningUtility_requestProvisioning_sid_completion___block_invoke;
  v10[3] = &unk_1E79D8AF0;
  v11 = completionCopy;
  v9 = completionCopy;
  [(PKProvisioningUtility *)self _requestProvisioning:provisioning externalizedAuth:0 cloudStoreCoordinatorDelegate:0 downloadPasses:0 resolveEnableRequirements:0 onStartPassDownload:0 sid:sid completion:v10];
}

void __60__PKProvisioningUtility_requestProvisioning_sid_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 provisioningResponse];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)_requestProvisioning:(id)provisioning externalizedAuth:(id)auth cloudStoreCoordinatorDelegate:(id)delegate downloadPasses:(BOOL)passes resolveEnableRequirements:(BOOL)requirements onStartPassDownload:(id)download sid:(id)sid completion:(id)self0
{
  provisioningCopy = provisioning;
  authCopy = auth;
  delegateCopy = delegate;
  downloadCopy = download;
  sidCopy = sid;
  completionCopy = completion;
  v21 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  objc_initWeak(location, self);
  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x3032000000;
  v65[3] = __Block_byref_object_copy__41;
  v65[4] = __Block_byref_object_dispose__41;
  v66 = 0;
  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x3032000000;
  v63[3] = __Block_byref_object_copy__41;
  v63[4] = __Block_byref_object_dispose__41;
  _init = [[PKProvisionedPassBundle alloc] _init];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __169__PKProvisioningUtility__requestProvisioning_externalizedAuth_cloudStoreCoordinatorDelegate_downloadPasses_resolveEnableRequirements_onStartPassDownload_sid_completion___block_invoke;
  v56[3] = &unk_1E79D8B40;
  requirementsCopy = requirements;
  objc_copyWeak(&v61, location);
  v22 = provisioningCopy;
  v57 = v22;
  v23 = authCopy;
  v58 = v23;
  v24 = sidCopy;
  v59 = v24;
  v60 = v65;
  [(PKAsyncUnaryOperationComposer *)v21 addOperation:v56];
  v34 = completionCopy;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __169__PKProvisioningUtility__requestProvisioning_externalizedAuth_cloudStoreCoordinatorDelegate_downloadPasses_resolveEnableRequirements_onStartPassDownload_sid_completion___block_invoke_75;
  v51[3] = &unk_1E79D8B90;
  v25 = v22;
  v52 = v25;
  objc_copyWeak(&v55, location);
  v26 = v24;
  v53 = v26;
  v54 = v65;
  [(PKAsyncUnaryOperationComposer *)v21 addOperation:v51];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __169__PKProvisioningUtility__requestProvisioning_externalizedAuth_cloudStoreCoordinatorDelegate_downloadPasses_resolveEnableRequirements_onStartPassDownload_sid_completion___block_invoke_3;
  v47[3] = &unk_1E79D6718;
  v47[4] = self;
  v27 = v25;
  v48 = v27;
  v49 = v65;
  v50 = v63;
  [(PKAsyncUnaryOperationComposer *)v21 addOperation:v47];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __169__PKProvisioningUtility__requestProvisioning_externalizedAuth_cloudStoreCoordinatorDelegate_downloadPasses_resolveEnableRequirements_onStartPassDownload_sid_completion___block_invoke_5;
  v40[3] = &unk_1E79D8C08;
  passesCopy = passes;
  v28 = downloadCopy;
  v43 = v28;
  v44 = v63;
  v40[4] = self;
  v29 = delegateCopy;
  v41 = v29;
  v30 = v26;
  v42 = v30;
  v45 = v65;
  [(PKAsyncUnaryOperationComposer *)v21 addOperation:v40];
  null = [MEMORY[0x1E695DFB0] null];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __169__PKProvisioningUtility__requestProvisioning_externalizedAuth_cloudStoreCoordinatorDelegate_downloadPasses_resolveEnableRequirements_onStartPassDownload_sid_completion___block_invoke_7;
  v36[3] = &unk_1E79CF158;
  v32 = v34;
  v37 = v32;
  v38 = v63;
  v39 = v65;
  v33 = [(PKAsyncUnaryOperationComposer *)v21 evaluateWithInput:null completion:v36];

  objc_destroyWeak(&v55);
  objc_destroyWeak(&v61);
  _Block_object_dispose(v63, 8);

  _Block_object_dispose(v65, 8);
  objc_destroyWeak(location);
}

void __169__PKProvisioningUtility__requestProvisioning_externalizedAuth_cloudStoreCoordinatorDelegate_downloadPasses_resolveEnableRequirements_onStartPassDownload_sid_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (*(a1 + 72))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __169__PKProvisioningUtility__requestProvisioning_externalizedAuth_cloudStoreCoordinatorDelegate_downloadPasses_resolveEnableRequirements_onStartPassDownload_sid_completion___block_invoke_2;
    v15[3] = &unk_1E79D8B18;
    v13 = v12;
    v14 = *(a1 + 56);
    v16 = v13;
    v19 = v14;
    v18 = v8;
    v17 = v6;
    [WeakRetained updateProvisioningRequestForEnableRequirements:v10 externalizedAuth:v11 sid:v13 completion:v15];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void __169__PKProvisioningUtility__requestProvisioning_externalizedAuth_cloudStoreCoordinatorDelegate_downloadPasses_resolveEnableRequirements_onStartPassDownload_sid_completion___block_invoke_2(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject(0x28uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "[%@] Provisioning controller failed to update provisioning request with error %@", &v12, 0x16u);
    }
  }

  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  (*(a1[6] + 16))();
}

void __169__PKProvisioningUtility__requestProvisioning_externalizedAuth_cloudStoreCoordinatorDelegate_downloadPasses_resolveEnableRequirements_onStartPassDownload_sid_completion___block_invoke_75(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) nonce];

  if (v8)
  {
    v7[2](v7, v6, 0);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __169__PKProvisioningUtility__requestProvisioning_externalizedAuth_cloudStoreCoordinatorDelegate_downloadPasses_resolveEnableRequirements_onStartPassDownload_sid_completion___block_invoke_2_76;
    v13[3] = &unk_1E79D8B68;
    v10 = *(a1 + 40);
    v11 = *(a1 + 32);
    v12 = *(a1 + 48);
    v14 = v11;
    v17 = v12;
    v16 = v7;
    v15 = v6;
    [WeakRetained nonceWithSID:v10 completion:v13];
  }
}

void __169__PKProvisioningUtility__requestProvisioning_externalizedAuth_cloudStoreCoordinatorDelegate_downloadPasses_resolveEnableRequirements_onStartPassDownload_sid_completion___block_invoke_2_76(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 && !v5)
  {
    [*(a1 + 32) setNonce:a2];
  }

  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
  v9 = v6;

  (*(*(a1 + 48) + 16))();
}

void __169__PKProvisioningUtility__requestProvisioning_externalizedAuth_cloudStoreCoordinatorDelegate_downloadPasses_resolveEnableRequirements_onStartPassDownload_sid_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 40);
  v9 = *(*(a1 + 32) + 8);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __169__PKProvisioningUtility__requestProvisioning_externalizedAuth_cloudStoreCoordinatorDelegate_downloadPasses_resolveEnableRequirements_onStartPassDownload_sid_completion___block_invoke_4;
  v12[3] = &unk_1E79D8BB8;
  v13 = v6;
  v14 = v7;
  v15 = *(a1 + 48);
  v10 = v6;
  v11 = v7;
  [v9 provisionPassesWithRequest:v8 completion:v12];
}

void __169__PKProvisioningUtility__requestProvisioning_externalizedAuth_cloudStoreCoordinatorDelegate_downloadPasses_resolveEnableRequirements_onStartPassDownload_sid_completion___block_invoke_4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  if (a2 == 1)
  {
    [*(*(a1[7] + 8) + 40) setProvisioningResponse:a3];
  }

  else
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a4);
  }

  (*(a1[5] + 16))();
}

void __169__PKProvisioningUtility__requestProvisioning_externalizedAuth_cloudStoreCoordinatorDelegate_downloadPasses_resolveEnableRequirements_onStartPassDownload_sid_completion___block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (*(a1 + 80))
  {
    v11 = *(a1 + 56);
    if (v11)
    {
      (*(v11 + 16))();
    }

    v12 = *(a1 + 32);
    v13 = [*(*(*(a1 + 64) + 8) + 40) provisioningResponse];
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __169__PKProvisioningUtility__requestProvisioning_externalizedAuth_cloudStoreCoordinatorDelegate_downloadPasses_resolveEnableRequirements_onStartPassDownload_sid_completion___block_invoke_6;
    v16[3] = &unk_1E79D8BE0;
    v19 = *(a1 + 64);
    v18 = v10;
    v17 = v8;
    [v12 downloadAndIngestPassesForResponse:v13 cloudStoreCoordinatorDelegate:v14 ingestionProperties:0 sid:v15 completion:v16];
  }

  else
  {
    (*(v9 + 2))(v9, v8, 0);
  }
}

void __169__PKProvisioningUtility__requestProvisioning_externalizedAuth_cloudStoreCoordinatorDelegate_downloadPasses_resolveEnableRequirements_onStartPassDownload_sid_completion___block_invoke_6(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v13 = v5;

  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  if (*(*(a1[6] + 8) + 40))
  {
    v12 = *(*(a1[7] + 8) + 40) != 0;
  }

  else
  {
    v12 = 1;
  }

  (*(a1[5] + 16))(a1[5], a1[4], v12);
}

void __169__PKProvisioningUtility__requestProvisioning_externalizedAuth_cloudStoreCoordinatorDelegate_downloadPasses_resolveEnableRequirements_onStartPassDownload_sid_completion___block_invoke_7(void *a1)
{
  v2 = a1[4];
  v4 = [*(*(a1[5] + 8) + 40) provisioningResponse];
  if (v4)
  {
    v3 = *(*(a1[5] + 8) + 40);
  }

  else
  {
    v3 = 0;
  }

  (*(v2 + 16))(v2, v3, *(*(a1[6] + 8) + 40));
}

- (void)updateProvisioningRequestForEnableRequirements:(id)requirements externalizedAuth:(id)auth sid:(id)sid completion:(id)completion
{
  v113 = *MEMORY[0x1E69E9840];
  requirementsCopy = requirements;
  authCopy = auth;
  sidCopy = sid;
  completionCopy = completion;
  if (completionCopy)
  {
    eligibilityResponse = [requirementsCopy eligibilityResponse];
    v14 = eligibilityResponse;
    if (requirementsCopy && eligibilityResponse)
    {
      targetDevice = [(PKPaymentWebService *)self->_destinationWebService targetDevice];
      v15 = objc_alloc_init(PKAsyncUnaryOperationComposer);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v109 = 0x3032000000;
      v110 = __Block_byref_object_copy__41;
      v111 = __Block_byref_object_dispose__41;
      v112 = 0;
      shouldGenerateAuxiliaryCapabilities = [v14 shouldGenerateAuxiliaryCapabilities];
      hasEnableRequirements = [v14 hasEnableRequirements];
      v106[0] = 0;
      v106[1] = v106;
      v106[2] = 0x2020000000;
      v107 = 0;
      if (shouldGenerateAuxiliaryCapabilities)
      {
        v97[0] = MEMORY[0x1E69E9820];
        v97[1] = 3221225472;
        v97[2] = __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke;
        v97[3] = &unk_1E79D8C58;
        v98 = sidCopy;
        v99 = targetDevice;
        v100 = requirementsCopy;
        v101 = v14;
        v102 = authCopy;
        p_buf = &buf;
        v104 = v106;
        v105 = hasEnableRequirements;
        [(PKAsyncUnaryOperationComposer *)v15 addOperation:v97];
      }

      if (hasEnableRequirements)
      {
        shouldGenerateFidoKey = [v14 shouldGenerateFidoKey];
        shouldSignFidoChallenge = [v14 shouldSignFidoChallenge];
        targetDevice2 = [(PKPaymentWebService *)self->_destinationWebService targetDevice];
        deviceName = [targetDevice2 deviceName];
        v20 = [deviceName isEqualToString:@"Apple Watch"];

        if (authCopy)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        if ((v21 & 1) == 0 && ((shouldSignFidoChallenge ^ 1) & 1) == 0)
        {
          v93[0] = MEMORY[0x1E69E9820];
          v93[1] = 3221225472;
          v93[2] = __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_2;
          v93[3] = &unk_1E79D68F8;
          v95 = v106;
          v94 = sidCopy;
          v96 = &buf;
          [(PKAsyncUnaryOperationComposer *)v15 addOperation:v93];
        }

        if ([v14 shouldGenerateTransactionKey])
        {
          v85[0] = MEMORY[0x1E69E9820];
          v85[1] = 3221225472;
          v85[2] = __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_89;
          v85[3] = &unk_1E79D8CA8;
          v91 = v106;
          v22 = sidCopy;
          v86 = v22;
          v87 = v14;
          v23 = targetDevice;
          v88 = v23;
          selfCopy = self;
          v24 = requirementsCopy;
          v90 = v24;
          v92 = &buf;
          [(PKAsyncUnaryOperationComposer *)v15 addOperation:v85];
          v79[0] = MEMORY[0x1E69E9820];
          v79[1] = 3221225472;
          v79[2] = __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_2_94;
          v79[3] = &unk_1E79D8CF8;
          v83 = v106;
          v80 = v22;
          v81 = v23;
          v82 = v24;
          v84 = &buf;
          [(PKAsyncUnaryOperationComposer *)v15 addOperation:v79];
        }

        fidoProfile = [v14 fidoProfile];
        v77[0] = 0;
        v77[1] = v77;
        v77[2] = 0x2020000000;
        v78 = 0;
        v72[0] = MEMORY[0x1E69E9820];
        v72[1] = 3221225472;
        v72[2] = __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_2_99;
        v72[3] = &unk_1E79D8D20;
        v75 = v106;
        v26 = targetDevice;
        v73 = v26;
        v27 = fidoProfile;
        v74 = v27;
        v76 = v77;
        [(PKAsyncUnaryOperationComposer *)v15 addOperation:v72];
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_4;
        v60[3] = &unk_1E79D8D98;
        v70 = shouldGenerateFidoKey;
        v67 = v106;
        v68 = v77;
        v28 = sidCopy;
        v61 = v28;
        v29 = v26;
        v62 = v29;
        v37 = v27;
        v63 = v37;
        v30 = v14;
        v64 = v30;
        v65 = authCopy;
        v31 = requirementsCopy;
        v71 = shouldSignFidoChallenge;
        v66 = v31;
        v69 = &buf;
        [(PKAsyncUnaryOperationComposer *)v15 addOperation:v60];
        if ([v30 shouldGenerateISO18013EncryptionKey])
        {
          v54[0] = MEMORY[0x1E69E9820];
          v54[1] = 3221225472;
          v54[2] = __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_109;
          v54[3] = &unk_1E79D8CF8;
          v58 = v106;
          v55 = v28;
          v56 = v29;
          v57 = v31;
          v59 = &buf;
          [(PKAsyncUnaryOperationComposer *)v15 addOperation:v54];
        }

        if ([v30 shouldGenerateLongTermPrivacyKey])
        {
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_2_114;
          v47[3] = &unk_1E79D8F50;
          v52 = v106;
          v48 = v28;
          v49 = v29;
          v50 = v30;
          v51 = v31;
          v53 = &buf;
          [(PKAsyncUnaryOperationComposer *)v15 addOperation:v47];
        }

        _Block_object_dispose(v77, 8);
      }

      null = [MEMORY[0x1E695DFB0] null];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_2_118;
      v41[3] = &unk_1E79D8E60;
      v46 = &buf;
      v42 = sidCopy;
      v43 = requirementsCopy;
      v33 = targetDevice;
      v44 = v33;
      v45 = completionCopy;
      v34 = [(PKAsyncUnaryOperationComposer *)v15 evaluateWithInput:null completion:v41];

      _Block_object_dispose(v106, 8);
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v35 = PKLogFacilityTypeGetObject(0x28uLL);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = sidCopy;
        _os_log_impl(&dword_1AD337000, v35, OS_LOG_TYPE_DEFAULT, "[%@] Update provisioning request missing request or eligibilityResponse", &buf, 0xCu);
      }

      v33 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPaymentErrorDomain" code:0 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, v33);
    }
  }
}

void __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PKLogFacilityTypeGetObject(0x28uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    *buf = 138412290;
    v44 = v11;
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "[%@] Update provisioning request should generate auxiliary capabilities", buf, 0xCu);
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v9[2](v9, v8, 1);
    goto LABEL_22;
  }

  v30 = v9;
  v31 = v7;
  v12 = [*(a1 + 48) subCredentialIdentifier];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v13 = [*(a1 + 56) auxiliaryCapabilitySignatures];
  v14 = [v13 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = v14;
  v16 = *v39;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v39 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v38 + 1) + 8 * i);
      v19 = [v18 type];
      if (v19 != 9 || v12 == 0)
      {
        if (v19 != 3)
        {
          continue;
        }

        v21 = [v18 keyCreationMetadata];
        v23 = [v21 signatureFido];

        [(PKPassAuxiliaryCapabilitySignatureIdentityAccountKeyCreationMetadata *)v23 setExternalizedAuth:*(a1 + 64)];
        if ([*(a1 + 56) shouldGenerateFidoKey])
        {
          v22 = [(PKPassAuxiliaryCapabilitySignatureIdentityAccountKeyCreationMetadata *)v23 fidoProfile];
          [v22 setKeyHash:0];
        }
      }

      else
      {
        v23 = [[PKPassAuxiliaryCapabilitySignatureIdentityAccountKeyCreationMetadata alloc] initWithSubcredentialIdentifier:v12];
        v24 = [*(a1 + 48) identityAccountKeyIdentifier];
        [(PKPassAuxiliaryCapabilitySignatureIdentityAccountKeyCreationMetadata *)v23 setExistingAccountKeyIdentifier:v24];

        [v18 setKeyCreationMetadata:v23];
      }
    }

    v15 = [v13 countByEnumeratingWithState:&v38 objects:v42 count:16];
  }

  while (v15);
LABEL_20:

  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = [*(a1 + 56) auxiliaryCapabilityDecryptions];
  [v25 addObjectsFromArray:v26];

  v27 = [*(a1 + 56) auxiliaryCapabilitySignatures];
  [v25 addObjectsFromArray:v27];

  v28 = *(a1 + 40);
  v29 = [v25 copy];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_84;
  v32[3] = &unk_1E79D8C30;
  v33 = *(a1 + 48);
  v36 = *(a1 + 72);
  v9 = v30;
  v35 = v30;
  v34 = v8;
  v37 = *(a1 + 88);
  [v28 generateAuxiliaryCapabilitiesForRequirements:v29 completion:v32];

  v7 = v31;
LABEL_22:
}

void __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_84(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setAuxiliaryCapabilities:a2];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  if (!v8)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 40), (v8 != 0) & (*(a1 + 72) ^ 1u));
}

void __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    (*(v9 + 2))(v9, v8, 0);
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject(0x28uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[4];
      v16 = 138412290;
      v17 = v12;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "[%@] Update provisioning request missing externalized auth", &v16, 0xCu);
    }

    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKPaymentErrorDomain" code:0 userInfo:0];
    v14 = *(a1[6] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    (v10)[2](v10, v8, 1);
  }
}

void __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_89(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (*(*(*(a1 + 72) + 8) + 24) != 1)
  {
    v11 = PKLogFacilityTypeGetObject(0x28uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138412290;
      v25 = v12;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "[%@] Update provisioning request should generate transaction key", buf, 0xCu);
    }

    v13 = [*(a1 + 40) transactionKeyInformation];
    if (v13)
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = *(a1 + 48);
        v15 = *(*(a1 + 56) + 8);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_92;
        v19[3] = &unk_1E79D8C80;
        v16 = *(a1 + 64);
        v17 = *(a1 + 80);
        v20 = v16;
        v23 = v17;
        v22 = v10;
        v21 = v8;
        [v14 paymentWebService:v15 generateTransactionKeyWithParameters:v13 withCompletion:v19];

LABEL_12:
        goto LABEL_13;
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 32);
        *buf = 138412290;
        v25 = v18;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "[%@] Update provisioning request missing transaction key information", buf, 0xCu);
      }
    }

    (v10)[2](v10, v8, 1);
    goto LABEL_12;
  }

  (*(v9 + 2))(v9, v8, 0);
LABEL_13:
}

void __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_92(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = *(a1 + 32);
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = [v12 lastObject];
  [v10 setTransactionKey:v14];

  [*(a1 + 32) setTransactionKeyCertificateChain:v12];
  [*(a1 + 32) setSubCredentialIdentifier:v13];

  v15 = *(a1 + 32);
  v16 = [v11 hexEncoding];

  v17 = [v16 uppercaseString];
  [v15 setApplicationIdentifier:v17];

  v18 = *(*(a1 + 56) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v9;
  v20 = v9;

  (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 40), v20 != 0);
}

void __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_2_94(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    (*(v9 + 2))(v9, v8, 0);
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject(0x28uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138412290;
      v23 = v12;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "[%@] Update provisioning request should generate SE encryption key", buf, 0xCu);
    }

    if (objc_opt_respondsToSelector())
    {
      v13 = *(a1 + 40);
      v14 = [*(a1 + 48) subCredentialIdentifier];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_97;
      v17[3] = &unk_1E79D8CD0;
      v15 = *(a1 + 48);
      v16 = *(a1 + 64);
      v18 = v15;
      v21 = v16;
      v20 = v10;
      v19 = v8;
      [v13 generateSEEncryptionCertificateForSubCredentialId:v14 completion:v17];
    }

    else
    {
      (v10)[2](v10, v8, 1);
    }
  }
}

void __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_97(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setSeBlobDeviceEncryptionCertificate:a2];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 40), v8 != 0);
}

void __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_2_99(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    (*(v9 + 2))(v9, v8, 0);
  }

  else if (objc_opt_respondsToSelector())
  {
    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) relyingPartyIdentifier];
    v13 = [*(a1 + 40) accountHash];
    v14 = [*(a1 + 40) keyHash];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_3;
    v15[3] = &unk_1E79D74D8;
    v18 = *(a1 + 56);
    v17 = v10;
    v16 = v8;
    [v11 checkFidoKeyPresenceForRelyingParty:v12 relyingPartyAccountHash:v13 fidoKeyHash:v14 completion:v15];
  }

  else
  {
    (v10)[2](v10, v8, 1);
  }
}

void __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    goto LABEL_2;
  }

  if (*(a1 + 104) == 1)
  {
    v10 = *(*(*(a1 + 88) + 8) + 24);
    v11 = PKLogFacilityTypeGetObject(0x28uLL);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10 == 1)
    {
      if (v12)
      {
        v13 = *(a1 + 32);
        *buf = 138412290;
        v44 = v13;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "[%@] Update provisioning request skipping fido key generation because key already exists.", buf, 0xCu);
      }

      goto LABEL_2;
    }

    if (v12)
    {
      v24 = *(a1 + 32);
      *buf = 138412290;
      v44 = v24;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "[%@] Update provisioning request should generate fido key", buf, 0xCu);
    }

    if (objc_opt_respondsToSelector())
    {
      v25 = *(a1 + 40);
      v26 = [*(a1 + 48) relyingPartyIdentifier];
      v27 = [*(a1 + 48) accountHash];
      v28 = [*(a1 + 56) fidoChallenge];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_104;
      v38[3] = &unk_1E79D8D48;
      v29 = *(a1 + 64);
      v39 = *(a1 + 72);
      v40 = *(a1 + 32);
      v42 = v9;
      v41 = v8;
      [v25 createFidoKeyForRelyingParty:v26 relyingPartyAccountHash:v27 challenge:v28 externalizedAuth:v29 completion:v38];

      v23 = v39;
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (*(a1 + 105) == 1)
  {
    v14 = PKLogFacilityTypeGetObject(0x28uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      *buf = 138412290;
      v44 = v15;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "[%@] Update provisioning request should generate fido challenge", buf, 0xCu);
    }

    if (objc_opt_respondsToSelector())
    {
      v31 = *(a1 + 40);
      v30 = [*(a1 + 48) relyingPartyIdentifier];
      v16 = [*(a1 + 48) accountHash];
      v17 = [*(a1 + 48) keyHash];
      v18 = [*(a1 + 56) fidoChallenge];
      v19 = [*(a1 + 72) subCredentialIdentifier];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_108;
      v32[3] = &unk_1E79D8D70;
      v20 = *(a1 + 64);
      v21 = *(a1 + 72);
      v22 = *(a1 + 96);
      v33 = v21;
      v37 = v22;
      v34 = *(a1 + 32);
      v36 = v9;
      v35 = v8;
      [v31 signWithFidoKeyForRelyingParty:v30 relyingPartyAccountHash:v16 fidoKeyHash:v17 challenge:v18 publicKeyIdentifier:v19 externalizedAuth:v20 completion:v32];

      v23 = v33;
LABEL_18:

      goto LABEL_3;
    }

LABEL_19:
    (*(v9 + 2))(v9, v8, 1);
    goto LABEL_3;
  }

LABEL_2:
  (*(v9 + 2))(v9, v8, 0);
LABEL_3:
}

void __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_104(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = *(a1 + 32);
  v10 = a3;
  [v9 setFidoKey:a2];
  [*(a1 + 32) setFidoAttestation:v10];

  v11 = PKLogFacilityTypeGetObject(0x28uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 40);
    v13 = 138412546;
    v14 = v12;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "[%@] Update provisioning request createFidoKeyForRelyingParty returned error %@", &v13, 0x16u);
  }

  (*(*(a1 + 56) + 16))();
}

void __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_108(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [*(a1 + 32) setFidoSignedChallenge:a2];
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  v7 = PKLogFacilityTypeGetObject(0x28uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "[%@] Update provisioning request signWithFidoKeyForRelyingParty returned error %@", &v9, 0x16u);
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), *(a1 + 48), *(*(*(a1 + 64) + 8) + 40) != 0);
}

void __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_109(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    (*(v9 + 2))(v9, v8, 0);
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject(0x28uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138412290;
      v23 = v12;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "[%@] Update provisioning request should generate ISO18013 encryption key", buf, 0xCu);
    }

    if (objc_opt_respondsToSelector())
    {
      v13 = *(a1 + 40);
      v14 = [*(a1 + 48) subCredentialIdentifier];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_112;
      v17[3] = &unk_1E79D8DC0;
      v15 = *(a1 + 48);
      v16 = *(a1 + 64);
      v18 = v15;
      v21 = v16;
      v20 = v10;
      v19 = v8;
      [v13 generateISOEncryptionCertificateForSubCredentialId:v14 completion:v17];
    }

    else
    {
      (v10)[2](v10, v8, 1);
    }
  }
}

void __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_112(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = a3;
  [v8 setIsoDeviceEncryptionAttestation:a2];
  [*(a1 + 32) setIsoDeviceEncryptionAuthorization:v9];

  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v12 = v7;

  (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 40), v12 != 0);
}

void __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_2_114(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    (*(v9 + 2))(v9, v8, 0);
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject(0x28uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138412290;
      v23 = v12;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "[%@] Update provisioning request should generate LTPK", buf, 0xCu);
    }

    if (objc_opt_respondsToSelector())
    {
      v13 = [*(a1 + 48) credentialAuthorityIdentifier];
      v14 = *(a1 + 40);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_117;
      v17[3] = &unk_1E79D8CD0;
      v15 = *(a1 + 56);
      v16 = *(a1 + 72);
      v18 = v15;
      v21 = v16;
      v20 = v10;
      v19 = v8;
      [v14 longTermPrivacyKeyForCredentialGroupIdentifier:v13 reuseExisting:1 completion:v17];
    }

    else
    {
      (v10)[2](v10, v8, 1);
    }
  }
}

void __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_117(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setLongTermPrivacyKey:a2];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 40), v8 != 0);
}

void __104__PKProvisioningUtility_updateProvisioningRequestForEnableRequirements_externalizedAuth_sid_completion___block_invoke_2_118(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = ([a4 isCanceled] & 1) == 0 && *(*(*(a1 + 64) + 8) + 40) == 0;
  v6 = PKLogFacilityTypeGetObject(0x28uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = @"N";
    if (v5)
    {
      v9 = @"Y";
    }

    v13 = 138412803;
    v14 = v7;
    v15 = 2113;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "[%@] Update provisioning request updated request to %{private}@, success: %@", &v13, 0x20u);
  }

  v10 = [*(a1 + 40) subCredentialIdentifier];
  if (v10)
  {
    v11 = v5;
  }

  else
  {
    v11 = 1;
  }

  if (v11 & 1) == 0 && (objc_opt_respondsToSelector())
  {
    [*(a1 + 48) deleteKeyMaterialForSubCredentialId:v10];
  }

  if (v5)
  {
    v12 = *(a1 + 40);
  }

  else
  {
    v12 = 0;
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), v12, *(*(*(a1 + 64) + 8) + 40));
}

- (void)downloadAndIngestPassesForResponse:(id)response cloudStoreCoordinatorDelegate:(id)delegate ingestionProperties:(id)properties sid:(id)sid completion:(id)completion
{
  completionCopy = completion;
  sidCopy = sid;
  propertiesCopy = properties;
  delegateCopy = delegate;
  responseCopy = response;
  downloadablePasses = [responseCopy downloadablePasses];
  [(PKProvisioningUtility *)self _downloadAndIngestPassesFoPasses:downloadablePasses response:responseCopy cloudStoreCoordinatorDelegate:delegateCopy ingestionProperties:propertiesCopy sid:sidCopy completion:completionCopy];
}

- (void)downloadAndIngestPassForPassURL:(id)l deviceCredential:(id)credential cloudStoreCoordinatorDelegate:(id)delegate ingestionProperties:(id)properties sid:(id)sid completion:(id)completion
{
  v22[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  sidCopy = sid;
  propertiesCopy = properties;
  delegateCopy = delegate;
  credentialCopy = credential;
  lCopy = l;
  v20 = [[PKPaymentProvisioningPassData alloc] initWithPassURL:lCopy];

  [(PKPaymentProvisioningPassData *)v20 setDeviceCredential:credentialCopy];
  [(PKPaymentProvisioningPassData *)v20 setWillProvisionWithAuthenticationDisabled:1];
  v22[0] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  [(PKProvisioningUtility *)self _downloadAndIngestPassesFoPasses:v21 response:0 cloudStoreCoordinatorDelegate:delegateCopy ingestionProperties:propertiesCopy sid:sidCopy completion:completionCopy];
}

- (void)_downloadAndIngestPassesFoPasses:(id)passes response:(id)response cloudStoreCoordinatorDelegate:(id)delegate ingestionProperties:(id)properties sid:(id)sid completion:(id)completion
{
  v67 = *MEMORY[0x1E69E9840];
  passesCopy = passes;
  responseCopy = response;
  delegateCopy = delegate;
  propertiesCopy = properties;
  sidCopy = sid;
  completionCopy = completion;
  v15 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  firstObject = [passesCopy firstObject];
  passURL = [firstObject passURL];

  _init = [[PKProvisionedPassBundle alloc] _init];
  [_init setProvisioningResponse:responseCopy];
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x3032000000;
  v64[3] = __Block_byref_object_copy__41;
  v64[4] = __Block_byref_object_dispose__41;
  v65 = 0;
  v17 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  reverseObjectEnumerator = [passesCopy reverseObjectEnumerator];
  v19 = [reverseObjectEnumerator countByEnumeratingWithState:&v60 objects:v66 count:16];
  if (v19)
  {
    v20 = *v61;
    obj = reverseObjectEnumerator;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v61 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v60 + 1) + 8 * i);
        v59[0] = MEMORY[0x1E69E9820];
        v59[1] = 3221225472;
        v59[2] = __132__PKProvisioningUtility__downloadAndIngestPassesFoPasses_response_cloudStoreCoordinatorDelegate_ingestionProperties_sid_completion___block_invoke;
        v59[3] = &unk_1E79CD838;
        v59[4] = self;
        v59[5] = v22;
        v59[6] = v64;
        [(PKAsyncUnaryOperationComposer *)v15 addOperation:v59, completionCopy];
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __132__PKProvisioningUtility__downloadAndIngestPassesFoPasses_response_cloudStoreCoordinatorDelegate_ingestionProperties_sid_completion___block_invoke_3;
        v47[3] = &unk_1E79D8E38;
        v48 = passURL;
        v49 = v22;
        selfCopy = self;
        v51 = delegateCopy;
        v52 = responseCopy;
        v53 = propertiesCopy;
        v54 = sidCopy;
        v55 = _init;
        v56 = v36;
        v57 = v17;
        v58 = v64;
        [(PKAsyncUnaryOperationComposer *)v15 addOperation:v47];
      }

      reverseObjectEnumerator = obj;
      v19 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
    }

    while (v19);
  }

  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __132__PKProvisioningUtility__downloadAndIngestPassesFoPasses_response_cloudStoreCoordinatorDelegate_ingestionProperties_sid_completion___block_invoke_132;
  v45[3] = &unk_1E79D5CF0;
  v23 = responseCopy;
  v46 = v23;
  [(PKAsyncUnaryOperationComposer *)v15 addOperation:v45];
  null = [MEMORY[0x1E695DFB0] null];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __132__PKProvisioningUtility__downloadAndIngestPassesFoPasses_response_cloudStoreCoordinatorDelegate_ingestionProperties_sid_completion___block_invoke_2_134;
  v39[3] = &unk_1E79D8E60;
  v25 = v17;
  v40 = v25;
  v26 = _init;
  v41 = v26;
  v27 = v36;
  v42 = v27;
  v28 = completionCopy;
  v43 = v28;
  v44 = v64;
  v29 = [(PKAsyncUnaryOperationComposer *)v15 evaluateWithInput:null completion:v39];

  _Block_object_dispose(v64, 8);
}

void __132__PKProvisioningUtility__downloadAndIngestPassesFoPasses_response_cloudStoreCoordinatorDelegate_ingestionProperties_sid_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 8);
  v9 = [*(a1 + 40) passURL];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __132__PKProvisioningUtility__downloadAndIngestPassesFoPasses_response_cloudStoreCoordinatorDelegate_ingestionProperties_sid_completion___block_invoke_2;
  v13[3] = &unk_1E79D8DE8;
  v14 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v10 = *(a1 + 48);
  v16 = v7;
  v17 = v10;
  v15 = v6;
  v11 = v6;
  v12 = v7;
  [v8 passAtURL:v9 completionWithError:v13];
}

void __132__PKProvisioningUtility__downloadAndIngestPassesFoPasses_response_cloudStoreCoordinatorDelegate_ingestionProperties_sid_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v6 = a4;
  v7 = v6;
  if (v9)
  {
    [*(a1 + 32) setSecureElementPass:v9];
    v8 = [*(*(a1 + 40) + 8) verificationRecordForPass:v9];
    [*(*(a1 + 40) + 8) removeVerificationRequestRecord:v8];
LABEL_3:

    goto LABEL_7;
  }

  v8 = v6;
  if (!v6)
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKWebServiceErrorDomain" code:0 userInfo:0];
  }

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), v8);
  if (!v7)
  {
    goto LABEL_3;
  }

LABEL_7:
  (*(*(a1 + 56) + 16))(*(a1 + 56), *(a1 + 48), *(*(*(a1 + 64) + 8) + 40) != 0);
}

void __132__PKProvisioningUtility__downloadAndIngestPassesFoPasses_response_cloudStoreCoordinatorDelegate_ingestionProperties_sid_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) passURL];

  v21 = *(a1 + 40);
  v22 = *(a1 + 48);
  v10 = *(a1 + 56);
  if (v8 == v9)
  {
    v11 = [*(a1 + 64) moreInfoURLs];
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __132__PKProvisioningUtility__downloadAndIngestPassesFoPasses_response_cloudStoreCoordinatorDelegate_ingestionProperties_sid_completion___block_invoke_4;
  v23[3] = &unk_1E79D8E10;
  v32 = v8 == v9;
  v14 = *(a1 + 88);
  v15 = *(a1 + 40);
  v24 = v14;
  v25 = v15;
  v26 = *(a1 + 96);
  v16 = *(a1 + 104);
  v17 = *(a1 + 112);
  v27 = v16;
  v31 = v17;
  v18 = *(a1 + 80);
  v29 = v6;
  v30 = v7;
  v28 = v18;
  v19 = v6;
  v20 = v7;
  [v22 ingestProvisioningPassData:v21 cloudStoreCoordinatorDelegate:v10 moreInfoURLs:v11 ingestionProperties:v12 sid:v13 completion:v23];
  if (v8 == v9)
  {
  }
}

void __132__PKProvisioningUtility__downloadAndIngestPassesFoPasses_response_cloudStoreCoordinatorDelegate_ingestionProperties_sid_completion___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a6;
  if (*(a1 + 96) == 1)
  {
    [*(a1 + 32) setExpressModeSetupOptional:a3];
    [*(a1 + 32) setExpressEnabled:a4];
    [*(a1 + 32) setAmpEnrollmentAvailable:a5];
  }

  v13 = [*(a1 + 40) secureElementPass];

  if (v13)
  {
    [*(a1 + 48) pk_safelyAddObjectsFromArray:v11];
    [*(a1 + 56) addObject:*(a1 + 40)];
LABEL_6:
    objc_storeStrong((*(*(a1 + 88) + 8) + 40), a6);
    goto LABEL_7;
  }

  if (v12)
  {
    goto LABEL_6;
  }

  v14 = PKLogFacilityTypeGetObject(0x28uLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 64);
    v16 = [*(a1 + 40) passURL];
    v20 = 138412546;
    v21 = v15;
    v22 = 2112;
    v23 = v16;
    _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "[%@] Error: No secure element pass found for %@", &v20, 0x16u);
  }

  v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PKWebServiceErrorDomain" code:0 userInfo:0];
  v18 = *(*(a1 + 88) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

LABEL_7:
  (*(*(a1 + 80) + 16))(*(a1 + 80), *(a1 + 72), *(*(*(a1 + 88) + 8) + 40) != 0);
}

void __132__PKProvisioningUtility__downloadAndIngestPassesFoPasses_response_cloudStoreCoordinatorDelegate_ingestionProperties_sid_completion___block_invoke_132(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v6 = a4;
  v7 = [*(a1 + 32) idmsContactInformation];
  if (v7)
  {
    v8 = +[PKPaymentOptionsRecents defaultInstance];
    [v8 updateRecentsAndKeychainWithContactInformation:v7];
  }

  v6[2](v6, v9, 0);
}

uint64_t __132__PKProvisioningUtility__downloadAndIngestPassesFoPasses_response_cloudStoreCoordinatorDelegate_ingestionProperties_sid_completion___block_invoke_2_134(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) copy];
    [v2 setProvisionedPasses:v3];
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) copy];
  [v4 setMoreInfoItems:v5];

  v6 = *(*(a1 + 56) + 16);

  return v6();
}

- (void)ingestProvisioningPassData:(id)data cloudStoreCoordinatorDelegate:(id)delegate moreInfoURLs:(id)ls ingestionProperties:(id)properties sid:(id)sid completion:(id)completion
{
  v138 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  delegateCopy = delegate;
  lsCopy = ls;
  propertiesCopy = properties;
  sidCopy = sid;
  completionCopy = completion;
  v17 = PKLogFacilityTypeGetObject(0x28uLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [dataCopy description];
    *buf = 138412546;
    *&buf[4] = sidCopy;
    *&buf[12] = 2112;
    *&buf[14] = v18;
    _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "[%@] Adding pass data (%@)...", buf, 0x16u);
  }

  secureElementPass = [dataCopy secureElementPass];
  v20 = self->_destinationWebService;
  targetDevice = [(PKPaymentWebService *)v20 targetDevice];
  secureElementIdentifiers = [targetDevice secureElementIdentifiers];
  v23 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v52 = completionCopy;
  selfCopy = self;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v135 = __Block_byref_object_copy__41;
  v136 = __Block_byref_object_dispose__41;
  v137 = 0;
  v132[0] = 0;
  v132[1] = v132;
  v132[2] = 0x3032000000;
  v132[3] = __Block_byref_object_copy__41;
  v132[4] = __Block_byref_object_dispose__41;
  v133 = 0;
  v130[0] = 0;
  v130[1] = v130;
  v130[2] = 0x3032000000;
  v130[3] = __Block_byref_object_copy__41;
  v130[4] = __Block_byref_object_dispose__41;
  v131 = 0;
  v128[0] = 0;
  v128[1] = v128;
  v128[2] = 0x3032000000;
  v128[3] = __Block_byref_object_copy__41;
  v128[4] = __Block_byref_object_dispose__41;
  v129 = 0;
  v126[0] = 0;
  v126[1] = v126;
  v126[2] = 0x3032000000;
  v126[3] = __Block_byref_object_copy__41;
  v126[4] = __Block_byref_object_dispose__41;
  v127 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v124[0] = 0;
  v124[1] = v124;
  v124[2] = 0x2020000000;
  v125 = 0;
  v122[0] = 0;
  v122[1] = v122;
  v122[2] = 0x2020000000;
  v123 = 0;
  v116[0] = MEMORY[0x1E69E9820];
  v116[1] = 3221225472;
  v116[2] = __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke;
  v116[3] = &unk_1E79D5F60;
  v49 = delegateCopy;
  v117 = v49;
  v24 = secureElementIdentifiers;
  v118 = v24;
  v25 = secureElementPass;
  v119 = v25;
  v26 = sidCopy;
  v120 = v26;
  v121 = buf;
  [(PKAsyncUnaryOperationComposer *)v23 addOperation:v116];
  v110[0] = MEMORY[0x1E69E9820];
  v110[1] = 3221225472;
  v110[2] = __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_137;
  v110[3] = &unk_1E79D5F60;
  v27 = targetDevice;
  v111 = v27;
  v28 = v25;
  v112 = v28;
  v50 = v24;
  v113 = v50;
  v29 = v26;
  v114 = v29;
  v115 = buf;
  [(PKAsyncUnaryOperationComposer *)v23 addOperation:v110];
  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3221225472;
  v103[2] = __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_2_145;
  v103[3] = &unk_1E79D8F50;
  v108 = v130;
  v51 = v28;
  v104 = v51;
  v30 = v27;
  v105 = v30;
  v31 = v20;
  v106 = v31;
  v56 = propertiesCopy;
  v107 = v56;
  v109 = v132;
  [(PKAsyncUnaryOperationComposer *)v23 addOperation:v103];
  v99[0] = MEMORY[0x1E69E9820];
  v99[1] = 3221225472;
  v99[2] = __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_6;
  v99[3] = &unk_1E79D68F8;
  v101 = v132;
  v32 = v29;
  v100 = v32;
  v102 = v130;
  [(PKAsyncUnaryOperationComposer *)v23 addOperation:v99];
  v97[0] = 0;
  v97[1] = v97;
  v97[2] = 0x2020000000;
  v98 = 0;
  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_151;
  v90[3] = &unk_1E79D8F50;
  v95 = v132;
  v96 = v97;
  v33 = dataCopy;
  v91 = v33;
  v34 = v32;
  v92 = v34;
  v35 = v30;
  v93 = v35;
  v36 = v31;
  v94 = v36;
  [(PKAsyncUnaryOperationComposer *)v23 addOperation:v90];
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_155;
  v78[3] = &unk_1E79D8FF0;
  v84 = v97;
  v37 = v34;
  v79 = v37;
  v85 = v130;
  v38 = v35;
  v80 = v38;
  v86 = v132;
  v39 = v33;
  v81 = v39;
  v87 = v124;
  v40 = v36;
  v82 = v40;
  v83 = selfCopy;
  v88 = v128;
  v89 = v126;
  [(PKAsyncUnaryOperationComposer *)v23 addOperation:v78];
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_167;
  v72[3] = &unk_1E79D9018;
  v76 = v128;
  v77 = v126;
  v75 = v132;
  v72[4] = selfCopy;
  v41 = lsCopy;
  v73 = v41;
  v42 = v37;
  v74 = v42;
  [(PKAsyncUnaryOperationComposer *)v23 addOperation:v72];
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_3_179;
  v68[3] = &unk_1E79D9068;
  v70 = v132;
  v71 = v122;
  v43 = v42;
  v69 = v43;
  [(PKAsyncUnaryOperationComposer *)v23 addOperation:v68];
  null = [MEMORY[0x1E695DFB0] null];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_183;
  v58[3] = &unk_1E79D9090;
  v62 = buf;
  v45 = v52;
  v61 = v45;
  v46 = v39;
  v59 = v46;
  v63 = v132;
  v47 = v51;
  v60 = v47;
  v64 = v126;
  v65 = v124;
  v66 = v128;
  v67 = v122;
  v48 = [(PKAsyncUnaryOperationComposer *)v23 evaluateWithInput:null completion:v58];

  _Block_object_dispose(v97, 8);
  _Block_object_dispose(v122, 8);
  _Block_object_dispose(v124, 8);
  _Block_object_dispose(v126, 8);

  _Block_object_dispose(v128, 8);
  _Block_object_dispose(v130, 8);

  _Block_object_dispose(v132, 8);
  _Block_object_dispose(buf, 8);
}

void __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [PKDownloadRemoteAssetConfiguration configurationWithCloudStoreDelegate:*(a1 + 32) seids:*(a1 + 40)];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_2;
  v14[3] = &unk_1E79D8E88;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v17 = v7;
  v18 = v11;
  v15 = v10;
  v16 = v6;
  v12 = v6;
  v13 = v7;
  [v9 downloadRemoteAssetsWithConfiguration:v8 completion:v14];
}

void __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_2(void *a1, int a2, void *a3, float a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (a2)
  {
    v9 = PKLogFacilityTypeGetObject(0x28uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      v11 = 138413058;
      v12 = v10;
      v13 = 1024;
      v14 = 1;
      v15 = 2048;
      v16 = a4;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "[%@] Download of remote assets after /enable called completion handler with finished=%i progress=%f error=%@", &v11, 0x26u);
    }

    if (v8)
    {
      objc_storeStrong((*(a1[7] + 8) + 40), a3);
    }

    (*(a1[6] + 16))();
  }
}

void __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_137(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v7[2](v7, v6, 0);
      goto LABEL_15;
    }

    v8 = [*(a1 + 40) iso18013BlobsForSecureElementIdentifiers:*(a1 + 48)];
    if ([v8 count])
    {
      v14 = PKLogFacilityTypeGetObject(0x28uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 56);
        *buf = 138412290;
        v27 = v15;
        _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "[%@] Attempting to save iso blobs before saving pass", buf, 0xCu);
      }

      v16 = *(a1 + 32);
      v17 = [*(a1 + 40) cardType];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_144;
      v18[3] = &unk_1E79D8EB0;
      v21 = *(a1 + 64);
      v20 = v7;
      v19 = v6;
      [v16 addISO18013Blobs:v8 cardType:v17 completion:v18];

      v13 = v20;
      goto LABEL_11;
    }

LABEL_12:
    v7[2](v7, v6, 0);
    goto LABEL_13;
  }

  v8 = [*(a1 + 40) credentialsAndISO18013BlobsForSecureElementIdentifiers:*(a1 + 48)];
  if (![v8 count])
  {
    goto LABEL_12;
  }

  v9 = PKLogFacilityTypeGetObject(0x28uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 56);
    *buf = 138412290;
    v27 = v10;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "[%@] Attempting to save iso blobs from credentials before saving pass", buf, 0xCu);
  }

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) cardType];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_140;
  v22[3] = &unk_1E79D8EB0;
  v25 = *(a1 + 64);
  v24 = v7;
  v23 = v6;
  [v11 addISO18013BlobsFromCredentials:v8 cardType:v12 completion:v22];

  v13 = v24;
LABEL_11:

LABEL_13:
LABEL_15:
}

void __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_140(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696AA08];
    v11[0] = v3;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [v5 errorWithDomain:@"PKAddSecureElementPassErrorDomain" code:3 userInfo:v6];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  (*(*(a1 + 40) + 16))();
}

void __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_144(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696AA08];
    v11[0] = v3;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [v5 errorWithDomain:@"PKAddSecureElementPassErrorDomain" code:3 userInfo:v6];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  (*(*(a1 + 40) + 16))();
}

void __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_2_145(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) uniqueID];
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = objc_opt_respondsToSelector();
  v12 = *(a1 + 40);
  if (v11)
  {
    v13 = *(a1 + 48);
    v14 = [*(a1 + 32) paymentPass];
    v15 = *(a1 + 56);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_3;
    v28[3] = &unk_1E79D8ED8;
    v30[1] = *(a1 + 72);
    v16 = v30;
    v30[0] = v7;
    v17 = &v29;
    v29 = v6;
    [v12 paymentWebService:v13 addSecureElementPass:v14 properties:v15 completion:v28];
  }

  else
  {
    v18 = objc_opt_respondsToSelector();
    v20 = *(a1 + 40);
    v19 = *(a1 + 48);
    v14 = [*(a1 + 32) paymentPass];
    if (v18)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_4;
      v25[3] = &unk_1E79D8ED8;
      v27[1] = *(a1 + 72);
      v16 = v27;
      v27[0] = v7;
      v17 = &v26;
      v26 = v6;
      [v20 paymentWebService:v19 addPaymentPass:v14 withCompletionHandlerV2:v25];
    }

    else
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_5;
      v21[3] = &unk_1E79D8F00;
      v24[1] = *(a1 + 72);
      v16 = &v22;
      v22 = *(a1 + 32);
      v17 = v24;
      v24[0] = v7;
      v23 = v6;
      [v20 paymentWebService:v19 addPaymentPass:v14 withCompletionHandler:v21];

      v14 = v23;
    }
  }
}

void __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

void __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

uint64_t __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_5(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_6(void *a1, uint64_t a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [*(*(a1[5] + 8) + 40) devicePrimaryPaymentApplication];

  if (!v8)
  {
    v9 = PKLogFacilityTypeGetObject(0x28uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      v11 = *(*(a1[6] + 8) + 40);
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "[%@] Warning: Newly added pass with identifier: %@ has no devicePrimaryPaymentApplication. Here be dragons!", &v12, 0x16u);
    }
  }

  v7[2](v7, v6, 0);
}

void __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_151(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([*(*(*(a1 + 64) + 8) + 40) isCarKeyPass])
  {
    v8 = [*(a1 + 32) deviceCredential];
    if (!v8)
    {
      v7[2](v7, v6, 0);
LABEL_28:

      goto LABEL_29;
    }

    v9 = [*(*(*(a1 + 64) + 8) + 40) devicePrimaryPaymentApplication];
    v10 = [v9 subcredentials];

    v11 = [v10 count];
    if (v11 != 1)
    {
      v19 = v11;
      v20 = PKLogFacilityTypeGetObject(0x28uLL);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 40);
        *buf = 138412546;
        v38 = v21;
        v39 = 2048;
        v40 = v19;
        _os_log_impl(&dword_1AD337000, v20, OS_LOG_TYPE_DEFAULT, "[%@] Skipping device credential merge due to constraint failure (serverCredentials count: %lu)", buf, 0x16u);
      }

      v7[2](v7, v6, 0);
      goto LABEL_27;
    }

    v12 = [v10 anyObject];
    v13 = [v8 identifier];
    v14 = [v12 identifier];
    v15 = v13;
    v16 = v14;
    v17 = v16;
    if (v15 == v16)
    {
    }

    else
    {
      if (!v15 || !v16)
      {

        goto LABEL_20;
      }

      v18 = [v15 isEqualToString:v16];

      if ((v18 & 1) == 0)
      {
LABEL_20:
        v27 = PKLogFacilityTypeGetObject(0x28uLL);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = *(a1 + 40);
          v29 = [v8 identifier];
          v30 = [v12 identifier];
          *buf = 138412802;
          v38 = v28;
          v39 = 2112;
          v40 = v29;
          v41 = 2112;
          v42 = v30;
          _os_log_impl(&dword_1AD337000, v27, OS_LOG_TYPE_DEFAULT, "[%@] Skipping device credential merge due to constraint failure (device credential identifier %@ does not match with identifier on pass %@)", buf, 0x20u);

LABEL_24:
          goto LABEL_25;
        }

        goto LABEL_25;
      }
    }

    if (objc_opt_respondsToSelector())
    {
      PKAppletSubcredentialMergeDeviceCredential(v12, v8);
      v22 = PKLogFacilityTypeGetObject(0x28uLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 40);
        *buf = 138412802;
        v38 = v23;
        v39 = 2112;
        v40 = v12;
        v41 = 2112;
        v42 = v8;
        _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "[%@] Inflated credential %@ from %@", buf, 0x20u);
      }

      v24 = *(a1 + 48);
      v25 = *(a1 + 56);
      v26 = *(*(*(a1 + 64) + 8) + 40);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_154;
      v32[3] = &unk_1E79D8F28;
      v33 = *(a1 + 40);
      v36 = *(a1 + 64);
      v35 = v7;
      v34 = v6;
      [v24 paymentWebService:v25 updateMetadataOnPass:v26 withCredential:v12 completion:v32];

      goto LABEL_26;
    }

    v27 = PKLogFacilityTypeGetObject(0x28uLL);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(a1 + 40);
      v29 = [*(*(*(a1 + 64) + 8) + 40) uniqueID];
      *buf = 138412546;
      v38 = v31;
      v39 = 2112;
      v40 = v29;
      _os_log_impl(&dword_1AD337000, v27, OS_LOG_TYPE_DEFAULT, "[%@] Unable to update credential metadata on pass: %@", buf, 0x16u);
      goto LABEL_24;
    }

LABEL_25:

    v7[2](v7, v6, 0);
LABEL_26:

LABEL_27:
    goto LABEL_28;
  }

  *(*(*(a1 + 72) + 8) + 24) = 1;
  v7[2](v7, v6, 0);
LABEL_29:
}

void __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_154(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = PKLogFacilityTypeGetObject(0x28uLL);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = a1[4];
      v8 = [v4 uniqueID];
      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "[%@] Updated credential metadata on pass: %@", &v11, 0x16u);
    }

    objc_storeStrong((*(a1[7] + 8) + 40), a2);
    *(*(a1[8] + 8) + 24) = 1;
  }

  else
  {
    if (v6)
    {
      v9 = a1[4];
      v10 = [*(*(a1[7] + 8) + 40) uniqueID];
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "[%@] Failed to update credential metadata on pass: %@", &v11, 0x16u);
    }
  }

  (*(a1[6] + 16))();
}

void __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_155(uint64_t a1, void *a2, void *a3, void *a4)
{
  v74 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*(*(*(a1 + 72) + 8) + 24))
  {
    if (PKTargetDeviceSupportsExpress(*(a1 + 40)))
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_156;
      aBlock[3] = &unk_1E79D8FA0;
      v63 = *(a1 + 88);
      v10 = *(a1 + 40);
      v11 = *(a1 + 32);
      v12 = *(a1 + 48);
      v64 = *(a1 + 96);
      v13 = *(a1 + 56);
      *&v14 = v12;
      *(&v14 + 1) = v13;
      *&v15 = v10;
      *(&v15 + 1) = v11;
      v59 = v15;
      v60 = v14;
      v65 = *(a1 + 104);
      v16 = v9;
      v62 = v16;
      v49 = v8;
      v61 = v49;
      v50 = _Block_copy(aBlock);
      v17 = [*(a1 + 48) willProvisionWithAuthenticationDisabled];
      v18 = [*(*(*(a1 + 88) + 8) + 40) devicePrimaryContactlessPaymentApplication];
      v19 = [v18 paymentNetworkIdentifier];

      v20 = [*(*(*(a1 + 88) + 8) + 40) hasAssociatedPeerPaymentAccount];
      v21 = [*(*(*(a1 + 88) + 8) + 40) devicePaymentApplications];
      v22 = [v21 pk_hasObjectPassingTest:&__block_literal_global_131];

      v23 = PKLogFacilityTypeGetObject(0x28uLL);
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      if (v17 && v22)
      {
        if (v24)
        {
          v25 = *(a1 + 32);
          v26 = *(*(*(a1 + 80) + 8) + 40);
          *buf = 138412546;
          v67 = v25;
          v68 = 2112;
          v69 = v26;
          _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "[%@] Attempting to set pass %@ as express", buf, 0x16u);
        }

        v27 = v50;
        v50[2](v50);
        goto LABEL_29;
      }

      if ((v19 - 1) > 0x62)
      {
        if (v24)
        {
          v38 = *(a1 + 32);
          v39 = *(*(*(a1 + 80) + 8) + 40);
          *buf = 138413058;
          v67 = v38;
          v68 = 2112;
          v69 = v39;
          v70 = 2048;
          v71 = v17;
          v72 = 2048;
          v73 = v22;
          v37 = "[%@] Unable to attempt to set pass %@ as express (applet provisioned as express: %ld, pass supports express %ld)";
          v40 = v23;
          v41 = 42;
LABEL_27:
          _os_log_impl(&dword_1AD337000, v40, OS_LOG_TYPE_DEFAULT, v37, buf, v41);
        }
      }

      else
      {
        if (v24)
        {
          v34 = *(a1 + 32);
          v35 = *(*(*(a1 + 80) + 8) + 40);
          *buf = 138412546;
          v67 = v34;
          v68 = 2112;
          v69 = v35;
          _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "[%@] Checking if open loop pass %@ is in supported market", buf, 0x16u);
        }

        if (v20)
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v36 = *(a1 + 32);
            *buf = 138412290;
            v67 = v36;
            v37 = "[%@] PKPaymentProvisioningController: Peer payment pass does not support automatic express enablement";
LABEL_26:
            v40 = v23;
            v41 = 12;
            goto LABEL_27;
          }
        }

        else
        {
          WeakRetained = objc_loadWeakRetained((*(a1 + 64) + 24));

          if (WeakRetained)
          {
            v43 = objc_loadWeakRetained((*(a1 + 64) + 24));
            v44 = *(*(*(a1 + 88) + 8) + 40);
            v51[0] = MEMORY[0x1E69E9820];
            v51[1] = 3221225472;
            v51[2] = __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_165;
            v51[3] = &unk_1E79D8FC8;
            v45 = *(a1 + 32);
            v46 = *(a1 + 80);
            v52 = v45;
            v47 = *(a1 + 112);
            v56 = v46;
            v57 = v47;
            v27 = v50;
            v54 = v50;
            v55 = v16;
            v53 = v49;
            [v43 verifyPassIsSupportedForExpressInLocalMarket:v44 completion:v51];

LABEL_29:
            goto LABEL_30;
          }

          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v48 = *(a1 + 32);
            *buf = 138412290;
            v67 = v48;
            v37 = "[%@] PKPaymentProvisioningController: nil dataProvider, cannot verify support for automatic express enablement";
            goto LABEL_26;
          }
        }
      }

      (*(v16 + 2))(v16, v49, 0);
      v27 = v50;
      goto LABEL_29;
    }

    v28 = PKLogFacilityTypeGetObject(0x28uLL);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(a1 + 32);
      v33 = *(a1 + 40);
      *buf = 138412546;
      v67 = v32;
      v68 = 2112;
      v69 = v33;
      v31 = "[%@] Skipping express ingestion logic. Target device (%@) does not support express";
      goto LABEL_12;
    }
  }

  else
  {
    v28 = PKLogFacilityTypeGetObject(0x28uLL);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a1 + 32);
      v30 = *(*(*(a1 + 80) + 8) + 40);
      *buf = 138412546;
      v67 = v29;
      v68 = 2112;
      v69 = v30;
      v31 = "[%@] Unable to attempt to set pass %@ as express (precondition not satisfied)";
LABEL_12:
      _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, v31, buf, 0x16u);
    }
  }

  (*(v9 + 2))(v9, v8, 0);
LABEL_30:
}

void __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_156(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = PKGymKitConflictsWithPass(*(*(*(a1 + 80) + 8) + 40), *(a1 + 32));
  v3 = PKLogFacilityTypeGetObject(0x28uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) description];
    v6 = *(*(*(a1 + 88) + 8) + 24);
    *buf = 138412802;
    v25 = v4;
    v26 = 2112;
    v27 = v5;
    v28 = 1024;
    v29 = v6;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "[%@] Pass data:%@ has optional express mode:%d", buf, 0x1Cu);
  }

  v7 = *(a1 + 32);
  if ((v2 & 1) == 0)
  {
    v12 = *(a1 + 56);
    v13 = [*(*(*(a1 + 80) + 8) + 40) paymentPass];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_157;
    v20[3] = &unk_1E79D5F38;
    v23 = *(a1 + 96);
    v22 = *(a1 + 72);
    v21 = *(a1 + 64);
    [v7 paymentWebService:v12 handlePotentialExpressPass:v13 withCompletionHandler:v20];

    v11 = v22;
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 56);
    v10 = [*(*(*(a1 + 80) + 8) + 40) paymentPass];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_2_161;
    v16[3] = &unk_1E79D8F78;
    v19 = *(a1 + 88);
    v18 = *(a1 + 72);
    v17 = *(a1 + 64);
    [v8 paymentWebService:v9 canHandlePotentialExpressPass:v10 withCompletionHandler:v16];

    v11 = v18;
LABEL_7:

    return;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    v14 = *(a1 + 40);
    *buf = 138412546;
    v25 = v14;
    v26 = 2112;
    v27 = v15;
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "[%@] Ignoring express setup - Missing paymentWebService:canHandlePotentialExpressPass:withCompletionHandler: from target device:%@", buf, 0x16u);
  }

  (*(*(a1 + 72) + 16))();
}

uint64_t __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_157(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

void __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_165(void *a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject(0x28uLL);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      v8 = a1[4];
      v9 = *(*(a1[8] + 8) + 40);
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "[%@] Attempting to set open loop pass %@ as express", &v12, 0x16u);
    }

    [*(*(a1[9] + 8) + 40) safelyAddObject:v5];
    (*(a1[6] + 16))();
  }

  else
  {
    if (v7)
    {
      v10 = a1[4];
      v11 = *(*(a1[8] + 8) + 40);
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "[%@] Open loop pass %@ is not in supported market, skipping attempt to set pass as express", &v12, 0x16u);
    }

    (*(a1[7] + 16))();
  }
}

void __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_167(void *a1, uint64_t a2, void *a3, void *a4)
{
  v31[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [*(*(a1[7] + 8) + 40) serialNumber];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1F227FD28;
  }

  v11 = v10;

  if ((*(*(a1[8] + 8) + 40) || ([*(*(a1[9] + 8) + 40) removeAllObjects], *(*(a1[8] + 8) + 40))) && !objc_msgSend(*(*(a1[9] + 8) + 40), "count"))
  {
    v13 = [*(*(a1[8] + 8) + 40) allObjects];
    v14 = [v13 componentsJoinedByString:{@", "}];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &stru_1F227FD28;
    }

    v17 = v16;

    v30[0] = @"automaticExpressModes";
    v30[1] = @"passSerialNumber";
    v31[0] = v17;
    v31[1] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
  }

  else
  {
    v28 = @"passSerialNumber";
    v29 = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  }

  v18 = a1[4];
  v19 = a1[5];
  v20 = a1[6];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_2_177;
  v24[3] = &unk_1E79D66C8;
  v21 = a1[9];
  v26 = v7;
  v27 = v21;
  v25 = v6;
  v22 = v6;
  v23 = v7;
  [v18 downloadMoreInfoItemsFrom:v19 metadata:v12 sid:v20 completion:v24];
}

uint64_t __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_2_177(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 48) + 8) + 40) addObjectsFromArray:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_3_179(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = +[PKAMPEnrollmentManager sharedManager];
  v9 = [*(*(*(a1 + 40) + 8) + 40) paymentPass];
  v10 = [v8 shouldOfferAMPEnrollmentForPaymentPass:v9];

  if (v10)
  {
    v11 = [*(*(*(a1 + 40) + 8) + 40) paymentPass];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_4_181;
    v12[3] = &unk_1E79D9040;
    v16 = *(a1 + 40);
    v13 = *(a1 + 32);
    v15 = v7;
    v14 = v6;
    [v8 enrollmentStatusForPaymentPass:v11 completion:v12 progress:0];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_4_181(void *a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [*(*(a1[7] + 8) + 40) devicePrimaryBarcodePaymentApplication];
  v7 = [v6 paymentNetworkIdentifier];
  v10 = a2 == 1 && v7 == 123 && v5 == 0;
  *(*(a1[8] + 8) + 24) = v10;
  v11 = PKLogFacilityTypeGetObject(0x28uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = a1[4];
    v13 = *(*(a1[8] + 8) + 24);
    v14 = 138412802;
    v15 = v12;
    v16 = 1024;
    v17 = v13;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "[%@] AMP offer should be presented:%d (%@)", &v14, 0x1Cu);
  }

  (*(a1[6] + 16))();
}

void __130__PKProvisioningUtility_ingestProvisioningPassData_cloudStoreCoordinatorDelegate_moreInfoURLs_ingestionProperties_sid_completion___block_invoke_183(void *a1)
{
  if (*(*(a1[7] + 8) + 40))
  {
    v2 = *(a1[6] + 16);

    v2();
  }

  else
  {
    v3 = a1[4];
    v4 = *(*(a1[8] + 8) + 40);
    if (!v4)
    {
      v4 = a1[5];
    }

    [v3 setSecureElementPass:v4];
    v5 = a1[6];
    v6 = [*(*(a1[9] + 8) + 40) count];
    if (v6)
    {
      v7 = [*(*(a1[9] + 8) + 40) copy];
    }

    else
    {
      v7 = 0;
    }

    (*(v5 + 16))(v5, v7, *(*(a1[10] + 8) + 24), [*(*(a1[11] + 8) + 40) count] != 0, *(*(a1[12] + 8) + 24), 0);
    if (v6)
    {
    }
  }
}

- (void)downloadMoreInfoItemsFrom:(id)from metadata:(id)metadata sid:(id)sid completion:(id)completion
{
  v59[4] = *MEMORY[0x1E69E9840];
  fromCopy = from;
  metadataCopy = metadata;
  sidCopy = sid;
  completionCopy = completion;
  queue = dispatch_queue_create("itemsQueue", 0);
  v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (PKShowFakeMoreInfo())
  {
    v11 = [PKPaymentSetupMoreInfoItem alloc];
    v58[0] = @"title";
    v58[1] = @"body";
    v59[0] = @"Fake Title 1";
    v59[1] = @"Fake Body";
    v58[2] = @"linkURL";
    v58[3] = @"linkText";
    v59[2] = @"wallet.apple.com";
    v59[3] = @"Fake Link 1";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:4];
    v13 = [(PKPaymentSetupMoreInfoItem *)v11 initWithMoreInfoDictionary:v12];

    [v42 addObject:v13];
    v14 = [PKPaymentSetupMoreInfoItem alloc];
    v56[0] = @"title";
    v56[1] = @"body";
    v57[0] = @"Fake Title 2";
    v57[1] = @"Fake Body";
    v56[2] = @"linkURL";
    v56[3] = @"linkText";
    v57[2] = @"wallet.apple.com";
    v57[3] = @"Fake Link 2";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:4];
    v16 = [(PKPaymentSetupMoreInfoItem *)v14 initWithMoreInfoDictionary:v15];

    [v42 addObject:v16];
  }

  if (metadataCopy)
  {
    v17 = metadataCopy;
  }

  else
  {
    v17 = MEMORY[0x1E695E0F8];
  }

  v18 = [v17 mutableCopy];
  IsAvailable = PKPearlIsAvailable();
  v20 = 2;
  if (IsAvailable)
  {
    v20 = 3;
  }

  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", v20];
  [v18 setObject:v21 forKeyedSubscript:@"authType"];

  v22 = [MEMORY[0x1E696AD98] numberWithDouble:PKScreenScale()];
  v23 = [v22 description];
  [v18 setObject:v23 forKeyedSubscript:@"screenScale"];

  v24 = PKOSVersion();
  [v18 setObject:v24 forKeyedSubscript:@"osVersion"];

  v25 = PKDeviceClass();
  [v18 setObject:v25 forKeyedSubscript:@"deviceClass"];

  v36 = v18;
  v26 = [v18 copy];

  v27 = dispatch_group_create();
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = fromCopy;
  v28 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v52;
    do
    {
      v31 = 0;
      do
      {
        if (*v52 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v51 + 1) + 8 * v31);
        dispatch_group_enter(v27);
        destinationWebService = self->_destinationWebService;
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __75__PKProvisioningUtility_downloadMoreInfoItemsFrom_metadata_sid_completion___block_invoke;
        v46[3] = &unk_1E79D90B8;
        v47 = queue;
        v48 = v42;
        v49 = v27;
        v50 = sidCopy;
        [(PKPaymentWebService *)destinationWebService moreInfoItemAtURL:v32 withMetadata:v26 completion:v46];

        ++v31;
      }

      while (v29 != v31);
      v29 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v29);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PKProvisioningUtility_downloadMoreInfoItemsFrom_metadata_sid_completion___block_invoke_227;
  block[3] = &unk_1E79C44A0;
  v44 = v42;
  v45 = completionCopy;
  v34 = v42;
  v35 = completionCopy;
  dispatch_group_notify(v27, queue, block);
}

void __75__PKProvisioningUtility_downloadMoreInfoItemsFrom_metadata_sid_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__PKProvisioningUtility_downloadMoreInfoItemsFrom_metadata_sid_completion___block_invoke_2;
    v11[3] = &unk_1E79C4E00;
    v7 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = v5;
    v14 = *(a1 + 48);
    v8 = v11;
    *block = MEMORY[0x1E69E9820];
    *&block[8] = 3221225472;
    *&block[16] = __dispatch_async_ar_block_invoke_11;
    v16 = &unk_1E79C4428;
    v17 = v8;
    dispatch_async(v7, block);
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(0x28uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 56);
      *block = 138412546;
      *&block[4] = v10;
      *&block[12] = 2112;
      *&block[14] = v6;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "[%@] Failed to download more info url with error: %@", block, 0x16u);
    }

    dispatch_group_leave(*(a1 + 48));
  }
}

void __75__PKProvisioningUtility_downloadMoreInfoItemsFrom_metadata_sid_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) addObject:*(a1 + 40)];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

- (void)nonceWithSID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    destinationWebService = self->_destinationWebService;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49__PKProvisioningUtility_nonceWithSID_completion___block_invoke;
    v10[3] = &unk_1E79D90E0;
    v12 = completionCopy;
    v11 = dCopy;
    [(PKPaymentWebService *)destinationWebService paymentProvisioningNonceOfType:0 completion:v10];
  }
}

void __49__PKProvisioningUtility_nonceWithSID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 nonce];
  v7 = v6;
  if (v5 || !v6)
  {
    v9 = PKLogFacilityTypeGetObject(0x28uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = 138412546;
      v12 = v10;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "[%@] [PKProvisioningUtility nonceWithCompletion]: failed with error: %@.", &v11, 0x16u);
    }

    v8 = *(*(a1 + 40) + 16);
  }

  else
  {
    v8 = *(*(a1 + 40) + 16);
  }

  v8();
}

- (PKProvisioningUtilityDataHelper)dataProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_dataProvider);

  return WeakRetained;
}

@end