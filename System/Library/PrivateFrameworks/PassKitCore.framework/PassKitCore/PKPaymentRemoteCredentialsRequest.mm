@interface PKPaymentRemoteCredentialsRequest
- (void)_deviceScoreUsingWebService:(id)service withCompletion:(id)completion;
- (void)_updateRequestForRedirect:(id)redirect overrides:(id)overrides webService:(id)service withCompletion:(id)completion;
- (void)_updateRequestForRetry:(id)retry retryFields:(id)fields webService:(id)service withCompletion:(id)completion;
- (void)_urlRequestWithBuilder:(id)builder webService:(id)service completion:(id)completion;
@end

@implementation PKPaymentRemoteCredentialsRequest

- (void)_urlRequestWithBuilder:(id)builder webService:(id)service completion:(id)completion
{
  v33[3] = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  serviceCopy = service;
  completionCopy = completion;
  if (completionCopy)
  {
    if (self->_fetchExtendedAuthorizationActions)
    {
      brokerURL = [builderCopy brokerURL];
      v32[0] = @"devices";
      deviceID = [builderCopy deviceID];
      v32[1] = deviceID;
      v32[2] = @"availableCards";
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
      appleAccountInformation = [builderCopy appleAccountInformation];
      v15 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:brokerURL version:@"4" endpointComponents:v13 queryParameters:0 appleAccountInformation:appleAccountInformation];

      [v15 setHTTPMethod:@"POST"];
      [v15 setValue:@"application/binary" forHTTPHeaderField:@"Content-Type"];
      v16 = objc_autoreleasePoolPush();
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __82__PKPaymentRemoteCredentialsRequest__urlRequestWithBuilder_webService_completion___block_invoke;
      v27[3] = &unk_1E79DAF78;
      v27[4] = self;
      v28 = builderCopy;
      v17 = v15;
      v29 = v17;
      v30 = serviceCopy;
      v31 = completionCopy;
      [(PKPaymentRemoteCredentialsRequest *)self _deviceScoreUsingWebService:v30 withCompletion:v27];

      objc_autoreleasePoolPop(v16);
    }

    else
    {
      v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v17 = v18;
      if (self->_includeMetadata)
      {
        [v18 setObject:@"true" forKey:@"includeMetadata"];
      }

      if (self->_excludeCredentialTransferDeviceInfo)
      {
        [v17 setObject:@"true" forKey:@"excludeDeviceInfo"];
      }

      productIdentifier = self->_productIdentifier;
      if (productIdentifier)
      {
        [v17 setObject:productIdentifier forKey:@"productIdentifier"];
      }

      if (self->_credentialType)
      {
        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", self->_credentialType];
        [v17 setObject:v20 forKey:@"cardType"];
      }

      brokerURL2 = [builderCopy brokerURL];
      v33[0] = @"devices";
      deviceID2 = [builderCopy deviceID];
      v33[1] = deviceID2;
      v33[2] = @"cards";
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
      appleAccountInformation2 = [builderCopy appleAccountInformation];
      v25 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:brokerURL2 endpointComponents:v23 queryParameters:v17 appleAccountInformation:appleAccountInformation2];

      [v25 setHTTPMethod:@"GET"];
      v26 = [v25 copy];
      (*(completionCopy + 2))(completionCopy, v26);
    }
  }
}

void __82__PKPaymentRemoteCredentialsRequest__urlRequestWithBuilder_webService_completion___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v5)
  {
    [v6 setObject:v5 forKeyedSubscript:@"deviceScore"];
    if (a3)
    {
      v8 = @"2";
    }

    else
    {
      v8 = @"1";
    }

    [v6 setObject:v8 forKeyedSubscript:@"deviceScoreVersion"];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 88)];
  [v7 setObject:v9 forKeyedSubscript:@"includeMetadata"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 89)];
  [v7 setObject:v10 forKeyedSubscript:@"excludeDeviceInfo"];

  [v7 setObject:*(*(a1 + 32) + 96) forKeyedSubscript:@"productIdentifier"];
  v11 = *(a1 + 32);
  if (*(v11 + 104))
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", *(v11 + 104)];
    [v7 setObject:v12 forKeyedSubscript:@"cardType"];

    v11 = *(a1 + 32);
  }

  if (*(v11 + 90) == 1)
  {
    [*(a1 + 40) insertFraudDeviceForField:240 dictionary:v7];
    v11 = *(a1 + 32);
  }

  [*(a1 + 40) configureOverlayRequest:v11 urlRequest:*(a1 + 48) secureDictionary:v6 dictionary:v7];
  v13 = *(a1 + 32);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __82__PKPaymentRemoteCredentialsRequest__urlRequestWithBuilder_webService_completion___block_invoke_2;
  v16[3] = &unk_1E79DAF50;
  v17 = *(a1 + 64);
  [v13 _signRequest:v14 webService:v15 completion:v16];
}

- (void)_deviceScoreUsingWebService:(id)service withCompletion:(id)completion
{
  serviceCopy = service;
  completionCopy = completion;
  if (completionCopy)
  {
    if (+[PKDeviceScorer deviceScoringSupported]&& self->_deviceProvisioningDataExpected)
    {
      v8 = [PKODIServiceProviderAssessment alloc];
      v9 = *MEMORY[0x1E69985E8];
      v10 = PKPassKitCoreBundle();
      v11 = [(PKODIServiceProviderAssessment *)v8 initWithServiceProviderIdentifier:v9 locationBundle:v10];

      [(PKODIAssessment *)v11 startAssessment];
      [(PKODIAssessment *)v11 computeAssessment];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __80__PKPaymentRemoteCredentialsRequest__deviceScoreUsingWebService_withCompletion___block_invoke;
      v12[3] = &unk_1E79DAFA0;
      v13 = completionCopy;
      [(PKODIAssessment *)v11 waitForAssessmentWithTimeout:3 startTimeoutFromAssessmentStart:0 continueBlock:v12];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

- (void)_updateRequestForRetry:(id)retry retryFields:(id)fields webService:(id)service withCompletion:(id)completion
{
  completionCopy = completion;
  serviceCopy = service;
  retryCopy = retry;
  v12 = objc_opt_class();
  overlayParameters = [(PKOverlayableWebServiceRequest *)self overlayParameters];
  v14 = [v12 _HTTPBodyWithDictionary:overlayParameters];
  [retryCopy setHTTPBody:v14];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __98__PKPaymentRemoteCredentialsRequest__updateRequestForRetry_retryFields_webService_withCompletion___block_invoke;
  v16[3] = &unk_1E79DAF50;
  v17 = completionCopy;
  v15 = completionCopy;
  [(PKPaymentWebServiceRequest *)self _signRequest:retryCopy webService:serviceCopy completion:v16];
}

uint64_t __98__PKPaymentRemoteCredentialsRequest__updateRequestForRetry_retryFields_webService_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_updateRequestForRedirect:(id)redirect overrides:(id)overrides webService:(id)service withCompletion:(id)completion
{
  serviceCopy = service;
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __99__PKPaymentRemoteCredentialsRequest__updateRequestForRedirect_overrides_webService_withCompletion___block_invoke;
  v15[3] = &unk_1E79DAFC8;
  v15[4] = self;
  v16 = serviceCopy;
  v17 = completionCopy;
  v14.receiver = self;
  v14.super_class = PKPaymentRemoteCredentialsRequest;
  v12 = completionCopy;
  v13 = serviceCopy;
  [(PKOverlayableWebServiceRequest *)&v14 _updateRequestForRedirect:redirect overrides:overrides webService:v13 withCompletion:v15];
}

void __99__PKPaymentRemoteCredentialsRequest__updateRequestForRedirect_overrides_webService_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __99__PKPaymentRemoteCredentialsRequest__updateRequestForRedirect_overrides_webService_withCompletion___block_invoke_2;
  v5[3] = &unk_1E79DAF50;
  v6 = *(a1 + 48);
  [v3 _signRequest:a2 webService:v4 completion:v5];
}

uint64_t __99__PKPaymentRemoteCredentialsRequest__updateRequestForRedirect_overrides_webService_withCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end