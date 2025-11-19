@interface PKPaymentRemoteCredentialsRequest
- (void)_deviceScoreUsingWebService:(id)a3 withCompletion:(id)a4;
- (void)_updateRequestForRedirect:(id)a3 overrides:(id)a4 webService:(id)a5 withCompletion:(id)a6;
- (void)_updateRequestForRetry:(id)a3 retryFields:(id)a4 webService:(id)a5 withCompletion:(id)a6;
- (void)_urlRequestWithBuilder:(id)a3 webService:(id)a4 completion:(id)a5;
@end

@implementation PKPaymentRemoteCredentialsRequest

- (void)_urlRequestWithBuilder:(id)a3 webService:(id)a4 completion:(id)a5
{
  v33[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (self->_fetchExtendedAuthorizationActions)
    {
      v11 = [v8 brokerURL];
      v32[0] = @"devices";
      v12 = [v8 deviceID];
      v32[1] = v12;
      v32[2] = @"availableCards";
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
      v14 = [v8 appleAccountInformation];
      v15 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v11 version:@"4" endpointComponents:v13 queryParameters:0 appleAccountInformation:v14];

      [v15 setHTTPMethod:@"POST"];
      [v15 setValue:@"application/binary" forHTTPHeaderField:@"Content-Type"];
      v16 = objc_autoreleasePoolPush();
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __82__PKPaymentRemoteCredentialsRequest__urlRequestWithBuilder_webService_completion___block_invoke;
      v27[3] = &unk_1E79DAF78;
      v27[4] = self;
      v28 = v8;
      v17 = v15;
      v29 = v17;
      v30 = v9;
      v31 = v10;
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

      v21 = [v8 brokerURL];
      v33[0] = @"devices";
      v22 = [v8 deviceID];
      v33[1] = v22;
      v33[2] = @"cards";
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
      v24 = [v8 appleAccountInformation];
      v25 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v21 endpointComponents:v23 queryParameters:v17 appleAccountInformation:v24];

      [v25 setHTTPMethod:@"GET"];
      v26 = [v25 copy];
      (*(v10 + 2))(v10, v26);
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

- (void)_deviceScoreUsingWebService:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
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
      v13 = v7;
      [(PKODIAssessment *)v11 waitForAssessmentWithTimeout:3 startTimeoutFromAssessmentStart:0 continueBlock:v12];
    }

    else
    {
      (*(v7 + 2))(v7, 0, 0);
    }
  }
}

- (void)_updateRequestForRetry:(id)a3 retryFields:(id)a4 webService:(id)a5 withCompletion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = objc_opt_class();
  v13 = [(PKOverlayableWebServiceRequest *)self overlayParameters];
  v14 = [v12 _HTTPBodyWithDictionary:v13];
  [v11 setHTTPBody:v14];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __98__PKPaymentRemoteCredentialsRequest__updateRequestForRetry_retryFields_webService_withCompletion___block_invoke;
  v16[3] = &unk_1E79DAF50;
  v17 = v9;
  v15 = v9;
  [(PKPaymentWebServiceRequest *)self _signRequest:v11 webService:v10 completion:v16];
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

- (void)_updateRequestForRedirect:(id)a3 overrides:(id)a4 webService:(id)a5 withCompletion:(id)a6
{
  v10 = a5;
  v11 = a6;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __99__PKPaymentRemoteCredentialsRequest__updateRequestForRedirect_overrides_webService_withCompletion___block_invoke;
  v15[3] = &unk_1E79DAFC8;
  v15[4] = self;
  v16 = v10;
  v17 = v11;
  v14.receiver = self;
  v14.super_class = PKPaymentRemoteCredentialsRequest;
  v12 = v11;
  v13 = v10;
  [(PKOverlayableWebServiceRequest *)&v14 _updateRequestForRedirect:a3 overrides:a4 webService:v13 withCompletion:v15];
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