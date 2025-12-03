@interface HKOrganDonationConnectionManager
+ (BOOL)_organDonationDisabled;
+ (BOOL)hasStoredRegistrant;
+ (BOOL)isOrganDonationRegistrationAvailable;
+ (BOOL)shouldShowStoreDemoOrganDonation;
+ (id)_gatewayHost;
+ (id)_host;
+ (id)_keychainQueryDictionaryForIdentifier:(id)identifier;
+ (id)_tokenWithIdentifier:(id)identifier shouldReturnData:(BOOL)data;
+ (id)storeDemoModeModifiedDate;
+ (int64_t)_hostConfiguration;
+ (int64_t)registrationSubmissionHostConfiguration;
+ (void)openDonateLifeMicroSiteInSafari;
+ (void)organDonationSignificantDate:(id)date;
+ (void)refreshOrganDonationFeatureAvailability;
- (HKOrganDonationConnectionManager)initWithHealthStore:(id)store;
- (HKOrganDonationConnectionManagerDelegate)delegate;
- (NSTimer)accessTokenInvalidationTimer;
- (id)_base64URLEncoding:(id)encoding;
- (id)_genericJSONDataTaskWithRequest:(id)request completionHandler:(id)handler;
- (id)_getRequestWithURL:(id)l bearerToken:(id)token;
- (id)_jsonBodyPostRequestWithURL:(id)l method:(id)method postData:(id)data bearerToken:(id)token;
- (id)_jsonObjectWithData:(id)data response:(id)response;
- (id)_jwtWithPayload:(id)payload grantType:(id)type;
- (id)_refreshBearerTokenJWTWithRefreshToken:(id)token;
- (id)_registrationJWTWithRegistrant:(id)registrant;
- (id)_urlWithPath:(id)path;
- (id)jwtHeader;
- (id)jwtPayloadWithRegistrant:(id)registrant;
- (id)payload;
- (void)_deleteTokenWithIdentifier:(id)identifier;
- (void)_flushTokenDependentRequestsWithStatus:(int64_t)status;
- (void)_handleServerErrorWithResponse:(id)response originRequest:(id)request payload:(id)payload completion:(id)completion;
- (void)_handleURLTaskError:(id)error withCompletion:(id)completion;
- (void)_invalidateAccessToken:(id)token;
- (void)_refreshAccessTokenIfNeeded;
- (void)_scheduleAccessTokenDependentRequest:(id)request withCompletion:(id)completion;
- (void)_sendQueuedTokenDependentRequests;
- (void)_transitionToState:(int64_t)state;
- (void)_updateAccessTokenAndScheduleInvalidationTimer:(id)timer expiresIn:(double)in;
- (void)_upsertTokenInKeychain:(id)keychain identifier:(id)identifier;
- (void)cleanUp;
- (void)deleteRegistrantWithCompletion:(id)completion;
- (void)openRegisterMeSiteInSafariIfAuthenticated;
- (void)refreshBearerTokenWithRefreshToken:(id)token completion:(id)completion;
- (void)reloadRegistrantWithCompletion:(id)completion;
- (void)setRefreshToken:(id)token;
- (void)submitOrganDonationEventWithErrorType:(int)type;
- (void)submitRegistrant:(id)registrant completion:(id)completion;
- (void)updateRegistrantWithParams:(id)params completion:(id)completion;
@end

@implementation HKOrganDonationConnectionManager

- (HKOrganDonationConnectionManager)initWithHealthStore:(id)store
{
  storeCopy = store;
  v18.receiver = self;
  v18.super_class = HKOrganDonationConnectionManager;
  v6 = [(HKOrganDonationConnectionManager *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
    [(HKOrganDonationConnectionManager *)v7 _transitionToState:0];
    v8 = MEMORY[0x1E696AF78];
    defaultSessionConfiguration = [MEMORY[0x1E696AF80] defaultSessionConfiguration];
    v10 = [v8 sessionWithConfiguration:defaultSessionConfiguration];

    [(HKOrganDonationConnectionManager *)v7 setDefaultSession:v10];
    v11 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:0x10000];
    taskQueue = v7->_taskQueue;
    v7->_taskQueue = v11;

    [(HKOrganDonationConnectionManager *)v7 _refreshAccessTokenIfNeeded];
    v13 = objc_alloc(MEMORY[0x1E696BF00]);
    v14 = HKLogWellnessDashboard();
    v15 = [v13 initWithLoggingCategory:v14 healthDataSource:storeCopy];
    analyticsEventSubmissionManager = v7->_analyticsEventSubmissionManager;
    v7->_analyticsEventSubmissionManager = v15;
  }

  return v7;
}

+ (id)_host
{
  _hostConfiguration = [self _hostConfiguration];
  if (_hostConfiguration > 3)
  {
    return @"dlaapibeta.lifelogics.org";
  }

  else
  {
    return off_1E81B5BB0[_hostConfiguration];
  }
}

+ (id)_gatewayHost
{
  _hostConfiguration = [self _hostConfiguration];
  if (_hostConfiguration > 3)
  {
    return @"dlabeta.lifelogics.org";
  }

  else
  {
    return off_1E81B5BD0[_hostConfiguration];
  }
}

+ (int64_t)_hostConfiguration
{
  if (![MEMORY[0x1E696C608] isAppleInternalInstall])
  {
    return 2;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"donateLifeHost"];

  return v3;
}

+ (BOOL)_organDonationDisabled
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"donateLifeDisabled"];

  return v3;
}

- (void)cleanUp
{
  defaultSession = [(HKOrganDonationConnectionManager *)self defaultSession];
  [defaultSession invalidateAndCancel];

  WeakRetained = objc_loadWeakRetained(&self->_accessTokenInvalidationTimer);
  [WeakRetained invalidate];

  taskQueue = self->_taskQueue;

  [(NSMapTable *)taskQueue removeAllObjects];
}

- (void)_transitionToState:(int64_t)state
{
  if (self->_managerState != state)
  {
    self->_managerState = state;
    if (state > 2)
    {
      if (state != 3 && state != 4)
      {
        if (state != 5)
        {
          return;
        }

        state = 4;
      }

      [(HKOrganDonationConnectionManager *)self _flushTokenDependentRequestsWithStatus:state];
      return;
    }

    if (state)
    {
      if (state == 2)
      {
        [(HKOrganDonationConnectionManager *)self _sendQueuedTokenDependentRequests];
      }
    }

    else
    {
      [(HKOrganDonationConnectionManager *)self _refreshAccessTokenIfNeeded];
    }
  }
}

- (void)submitRegistrant:(id)registrant completion:(id)completion
{
  completionCopy = completion;
  registrantCopy = registrant;
  v8 = [(HKOrganDonationConnectionManager *)self _urlWithPath:@"/v1/oauth/token"];
  jsonDictionaryRepresentation = [registrantCopy jsonDictionaryRepresentation];

  v10 = [(HKOrganDonationConnectionManager *)self _registrationJWTWithRegistrant:jsonDictionaryRepresentation];
  if (v10)
  {
    v17 = 0;
    v11 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v10 options:0 error:&v17];
    v12 = v17;
    v13 = [(HKOrganDonationConnectionManager *)self _jsonBodyPostRequestWithURL:v8 method:@"POST" postData:v11 bearerToken:0];
    [(HKOrganDonationConnectionManager *)self _transitionToState:1];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __64__HKOrganDonationConnectionManager_submitRegistrant_completion___block_invoke;
    v15[3] = &unk_1E81B5AF8;
    v15[4] = self;
    v16 = completionCopy;
    v14 = [(HKOrganDonationConnectionManager *)self _genericJSONDataTaskWithRequest:v13 completionHandler:v15];
    [v14 resume];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 4);
  }
}

void __64__HKOrganDonationConnectionManager_submitRegistrant_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    [*(a1 + 32) submitOrganDonationEventWithErrorType:0];
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__HKOrganDonationConnectionManager_submitRegistrant_completion___block_invoke_2;
    v10[3] = &unk_1E81B5AD0;
    v8 = v5;
    v9 = *(a1 + 32);
    v11 = v8;
    v12 = v9;
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v6, a3, v7);
}

void __64__HKOrganDonationConnectionManager_submitRegistrant_completion___block_invoke_2(uint64_t a1)
{
  v6 = [*(a1 + 32) objectForKeyedSubscript:@"access_token"];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"refresh_token"];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"expires_in"];
  [v3 doubleValue];
  v5 = v4;

  [*(a1 + 40) setRefreshToken:v2];
  [*(a1 + 40) _updateAccessTokenAndScheduleInvalidationTimer:v6 expiresIn:v5];
  [*(a1 + 40) _transitionToState:2];
}

- (void)_refreshAccessTokenIfNeeded
{
  v3 = [objc_opt_class() _tokenWithIdentifier:@"refresh_token" shouldReturnData:1];
  refreshToken = self->_refreshToken;
  self->_refreshToken = v3;

  if ([(NSString *)self->_refreshToken length])
  {
    if ((self->_managerState - 1) >= 2)
    {
      [(HKOrganDonationConnectionManager *)self _transitionToState:1];
      v5 = self->_refreshToken;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __63__HKOrganDonationConnectionManager__refreshAccessTokenIfNeeded__block_invoke;
      v6[3] = &unk_1E81B5B20;
      v6[4] = self;
      [(HKOrganDonationConnectionManager *)self refreshBearerTokenWithRefreshToken:v5 completion:v6];
    }
  }
}

void __63__HKOrganDonationConnectionManager__refreshAccessTokenIfNeeded__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3)
  {
    v10 = v5;
    v6 = [v5 objectForKeyedSubscript:@"access_token"];
    if ([v6 length])
    {
      v7 = [v10 objectForKeyedSubscript:@"expires_in"];
      [v7 doubleValue];
      v9 = v8;

      [*(a1 + 32) _updateAccessTokenAndScheduleInvalidationTimer:v6 expiresIn:v9];
      [*(a1 + 32) _transitionToState:2];
    }

    v5 = v10;
  }
}

- (void)refreshBearerTokenWithRefreshToken:(id)token completion:(id)completion
{
  completionCopy = completion;
  tokenCopy = token;
  v8 = [(HKOrganDonationConnectionManager *)self _urlWithPath:@"/v1/oauth/token"];
  v9 = [(HKOrganDonationConnectionManager *)self _refreshBearerTokenJWTWithRefreshToken:tokenCopy];

  if (v9)
  {
    v16 = 0;
    v10 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v9 options:0 error:&v16];
    v11 = v16;
    v12 = [(HKOrganDonationConnectionManager *)self _jsonBodyPostRequestWithURL:v8 method:@"POST" postData:v10 bearerToken:0];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __82__HKOrganDonationConnectionManager_refreshBearerTokenWithRefreshToken_completion___block_invoke;
    v14[3] = &unk_1E81B5AF8;
    v14[4] = self;
    v15 = completionCopy;
    v13 = [(HKOrganDonationConnectionManager *)self _genericJSONDataTaskWithRequest:v12 completionHandler:v14];
    [v13 resume];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 4);
  }
}

void __82__HKOrganDonationConnectionManager_refreshBearerTokenWithRefreshToken_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) submitOrganDonationEventWithErrorType:4];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)reloadRegistrantWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(HKOrganDonationConnectionManager *)self _urlWithPath:@"/v1/registrants/me"];
  v6 = [(HKOrganDonationConnectionManager *)self _getRequestWithURL:v5 bearerToken:self->_accessToken];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__HKOrganDonationConnectionManager_reloadRegistrantWithCompletion___block_invoke;
  v8[3] = &unk_1E81B5AF8;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [(HKOrganDonationConnectionManager *)self _scheduleAccessTokenDependentRequest:v6 withCompletion:v8];
}

void __67__HKOrganDonationConnectionManager_reloadRegistrantWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = v5;
  if (a3)
  {
    [*(a1 + 32) submitOrganDonationEventWithErrorType:1];
    v5 = v8;
  }

  v6 = [v5 objectForKeyedSubscript:@"inactive"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    [*(a1 + 32) setRefreshToken:0];
    [*(a1 + 32) setAccessToken:0];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)updateRegistrantWithParams:(id)params completion:(id)completion
{
  v20[1] = *MEMORY[0x1E69E9840];
  paramsCopy = params;
  completionCopy = completion;
  v8 = [(HKOrganDonationConnectionManager *)self _urlWithPath:@"/v1/registrants/me"];
  v9 = MEMORY[0x1E696ACB0];
  v19 = @"registrant";
  v20[0] = paramsCopy;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v18 = 0;
  v11 = [v9 dataWithJSONObject:v10 options:0 error:&v18];
  v12 = v18;

  if (v12)
  {
    _HKInitializeLogging();
    v13 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [HKOrganDonationConnectionManager updateRegistrantWithParams:paramsCopy completion:v13];
    }
  }

  v14 = [(HKOrganDonationConnectionManager *)self _jsonBodyPostRequestWithURL:v8 method:@"PATCH" postData:v11 bearerToken:self->_accessToken];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__HKOrganDonationConnectionManager_updateRegistrantWithParams_completion___block_invoke;
  v16[3] = &unk_1E81B5AF8;
  v16[4] = self;
  v17 = completionCopy;
  v15 = completionCopy;
  [(HKOrganDonationConnectionManager *)self _scheduleAccessTokenDependentRequest:v14 withCompletion:v16];
}

void __74__HKOrganDonationConnectionManager_updateRegistrantWithParams_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v7 = a2;
  if (a3)
  {
    [v5 submitOrganDonationEventWithErrorType:2];
  }

  else
  {
    v6 = [objc_opt_class() _tokenWithIdentifier:@"refresh_token" shouldReturnData:1];
    [*(a1 + 32) setRefreshToken:v6];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)deleteRegistrantWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(HKOrganDonationConnectionManager *)self _urlWithPath:@"/v1/registrants/me"];
  v6 = [(HKOrganDonationConnectionManager *)self _jsonBodyPostRequestWithURL:v5 method:@"DELETE" postData:0 bearerToken:self->_accessToken];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__HKOrganDonationConnectionManager_deleteRegistrantWithCompletion___block_invoke;
  v8[3] = &unk_1E81B5AF8;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [(HKOrganDonationConnectionManager *)self _scheduleAccessTokenDependentRequest:v6 withCompletion:v8];
}

void __67__HKOrganDonationConnectionManager_deleteRegistrantWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  if (a3)
  {
    [v5 submitOrganDonationEventWithErrorType:3];
  }

  else
  {
    [v5 setRefreshToken:0];
    [*(a1 + 32) setAccessToken:0];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)openRegisterMeSiteInSafariIfAuthenticated
{
  v14[1] = *MEMORY[0x1E69E9840];
  accessToken = [(HKOrganDonationConnectionManager *)self accessToken];
  v4 = [accessToken length];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AF20]);
    _scheme = [objc_opt_class() _scheme];
    [v5 setScheme:_scheme];

    _gatewayHost = [objc_opt_class() _gatewayHost];
    [v5 setHost:_gatewayHost];

    [v5 setPath:@"/ios_gateway"];
    v8 = MEMORY[0x1E696AF60];
    accessToken2 = [(HKOrganDonationConnectionManager *)self accessToken];
    v10 = [v8 queryItemWithName:@"at" value:accessToken2];

    v14[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [v5 setQueryItems:v11];

    v12 = [v5 URL];
    if (v12)
    {
      defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
      [defaultWorkspace openURL:v12 withOptions:0];
    }
  }
}

- (void)_scheduleAccessTokenDependentRequest:(id)request withCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  managerState = self->_managerState;
  if (managerState != 1)
  {
    if (managerState == 2)
    {
      v8 = [(HKOrganDonationConnectionManager *)self _genericJSONDataTaskWithRequest:requestCopy completionHandler:completionCopy];
      [v8 resume];
      goto LABEL_6;
    }

    [(HKOrganDonationConnectionManager *)self _refreshAccessTokenIfNeeded];
  }

  taskQueue = self->_taskQueue;
  v8 = _Block_copy(completionCopy);
  [(NSMapTable *)taskQueue setObject:v8 forKey:requestCopy];
LABEL_6:
}

- (id)_urlWithPath:(id)path
{
  v3 = MEMORY[0x1E696AF20];
  pathCopy = path;
  v5 = objc_alloc_init(v3);
  _scheme = [objc_opt_class() _scheme];
  [v5 setScheme:_scheme];

  _host = [objc_opt_class() _host];
  [v5 setHost:_host];

  [v5 setPath:pathCopy];
  v8 = [v5 URL];

  return v8;
}

- (void)submitOrganDonationEventWithErrorType:(int)type
{
  v4 = [[HKOrganDonationFlowErrorAnalyticEvent alloc] initWithErrorType:*&type];
  analyticsEventSubmissionManager = self->_analyticsEventSubmissionManager;
  v6 = 0;
  [(HKAnalyticsEventSubmissionManager *)analyticsEventSubmissionManager submitEvent:v4 error:&v6];
}

+ (BOOL)hasStoredRegistrant
{
  v2 = [self _tokenWithIdentifier:@"refresh_token" shouldReturnData:0];
  v3 = v2 != 0;

  return v3;
}

+ (BOOL)isOrganDonationRegistrationAvailable
{
  hasTelephonyCapability = [MEMORY[0x1E696C608] hasTelephonyCapability];
  if (hasTelephonyCapability)
  {
    hasTelephonyCapability = [MEMORY[0x1E695DF58] hk_isUSLocale];
    if (hasTelephonyCapability)
    {
      if ([self _hostConfiguration] == 3)
      {
        LOBYTE(hasTelephonyCapability) = 0;
      }

      else
      {
        LOBYTE(hasTelephonyCapability) = [self _organDonationDisabled] ^ 1;
      }
    }
  }

  return hasTelephonyCapability;
}

+ (void)openDonateLifeMicroSiteInSafari
{
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v2 = [MEMORY[0x1E695DFF8] URLWithString:@"https://registerme.org/ios"];
  [defaultWorkspace openURL:v2 withOptions:0];
}

+ (int64_t)registrationSubmissionHostConfiguration
{
  if (![MEMORY[0x1E696C608] isAppleInternalInstall])
  {
    return 2;
  }

  _hostConfiguration = [self _hostConfiguration];
  if (_hostConfiguration > 3)
  {
    return 1;
  }

  else
  {
    return qword_1C3D5CEC8[_hostConfiguration];
  }
}

+ (void)refreshOrganDonationFeatureAvailability
{
  v5 = [MEMORY[0x1E695DFF8] URLWithString:@"https://health-assets.cdn-apple.com/hippocrates/manifest.json"];
  v2 = [MEMORY[0x1E696AF68] requestWithURL:v5];
  mEMORY[0x1E696AF78] = [MEMORY[0x1E696AF78] sharedSession];
  v4 = [mEMORY[0x1E696AF78] dataTaskWithRequest:v2 completionHandler:&__block_literal_global_3];

  [v4 resume];
}

void __75__HKOrganDonationConnectionManager_refreshOrganDonationFeatureAvailability__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (a2)
  {
    v13 = 0;
    v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a2 options:0 error:&v13];
    v9 = v13;
    if (v8)
    {
      v10 = [v8 objectForKeyedSubscript:@"status"];
      v11 = [v10 isEqualToString:@"disabled"];
      v12 = [MEMORY[0x1E695E000] standardUserDefaults];
      [v12 setBool:v11 forKey:@"donateLifeDisabled"];
    }

    else
    {
      _HKInitializeLogging();
      v10 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __75__HKOrganDonationConnectionManager_refreshOrganDonationFeatureAvailability__block_invoke_cold_1();
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __75__HKOrganDonationConnectionManager_refreshOrganDonationFeatureAvailability__block_invoke_cold_2();
    }
  }
}

- (id)_jsonObjectWithData:(id)data response:(id)response
{
  v30 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  responseCopy = response;
  if ([dataCopy length])
  {
    v28 = 0;
    v7 = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:4 error:&v28];
    v8 = v28;
    if (v8)
    {
      _HKInitializeLogging();
      v9 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __75__HKOrganDonationConnectionManager_refreshOrganDonationFeatureAvailability__block_invoke_cold_1();
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v8;
      v21 = responseCopy;
      v22 = dataCopy;
      v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      allKeys = [v7 allKeys];
      v11 = [allKeys countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v25;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(allKeys);
            }

            v15 = *(*(&v24 + 1) + 8 * i);
            v16 = [v7 objectForKey:{v15, v20, v21, v22}];
            null = [MEMORY[0x1E695DFB0] null];
            v18 = [v16 isEqual:null];

            if ((v18 & 1) == 0)
            {
              [v23 setObject:v16 forKey:v15];
            }
          }

          v12 = [allKeys countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v12);
      }

      responseCopy = v21;
      dataCopy = v22;
      v8 = v20;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)_genericJSONDataTaskWithRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  defaultSession = [(HKOrganDonationConnectionManager *)self defaultSession];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__HKOrganDonationConnectionManager__genericJSONDataTaskWithRequest_completionHandler___block_invoke;
  v13[3] = &unk_1E81B5B90;
  v14 = requestCopy;
  selfCopy = self;
  v16 = handlerCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  v11 = [defaultSession dataTaskWithRequest:v10 completionHandler:v13];

  return v11;
}

void __86__HKOrganDonationConnectionManager__genericJSONDataTaskWithRequest_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    _HKInitializeLogging();
    v9 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __86__HKOrganDonationConnectionManager__genericJSONDataTaskWithRequest_completionHandler___block_invoke_cold_1();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__HKOrganDonationConnectionManager__genericJSONDataTaskWithRequest_completionHandler___block_invoke_446;
    block[3] = &unk_1E81B5A60;
    block[4] = *(a1 + 40);
    v22 = v8;
    v23 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v10 = v7;
    v11 = [*(a1 + 40) _jsonObjectWithData:a2 response:v10];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __86__HKOrganDonationConnectionManager__genericJSONDataTaskWithRequest_completionHandler___block_invoke_2;
    v16[3] = &unk_1E81B5B68;
    v17 = v10;
    v15 = *(a1 + 32);
    v12 = v15.i64[0];
    v18 = vextq_s8(v15, v15, 8uLL);
    v19 = v11;
    v20 = *(a1 + 48);
    v13 = v11;
    v14 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], v16);
  }
}

uint64_t __86__HKOrganDonationConnectionManager__genericJSONDataTaskWithRequest_completionHandler___block_invoke_2(uint64_t *a1)
{
  if (([a1[4] statusCode] - 200) >= 0x64)
  {
    v5 = a1[4];
    v4 = a1[5];
    v6 = a1[6];
    v7 = a1[7];
    v8 = a1[8];

    return [v4 _handleServerErrorWithResponse:v5 originRequest:v6 payload:v7 completion:v8];
  }

  else
  {
    v2 = *(a1[8] + 16);

    return v2();
  }
}

- (id)_jsonBodyPostRequestWithURL:(id)l method:(id)method postData:(id)data bearerToken:(id)token
{
  dataCopy = data;
  tokenCopy = token;
  v11 = MEMORY[0x1E696AD68];
  methodCopy = method;
  v13 = [v11 requestWithURL:l];
  [v13 setHTTPMethod:methodCopy];

  [v13 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  if (tokenCopy)
  {
    tokenCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bearer %@", tokenCopy];
    [v13 setValue:tokenCopy forHTTPHeaderField:@"Authorization"];
  }

  if (dataCopy)
  {
    [v13 setHTTPBody:dataCopy];
  }

  return v13;
}

- (id)_getRequestWithURL:(id)l bearerToken:(id)token
{
  v5 = MEMORY[0x1E696AD68];
  tokenCopy = token;
  v7 = [v5 requestWithURL:l];
  [v7 setHTTPMethod:@"GET"];
  tokenCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bearer %@", tokenCopy];

  [v7 setValue:tokenCopy forHTTPHeaderField:@"Authorization"];

  return v7;
}

- (void)_sendQueuedTokenDependentRequests
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  keyEnumerator = [(NSMapTable *)self->_taskQueue keyEnumerator];
  v4 = [keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bearer %@", self->_accessToken];
        [v8 setValue:v9 forHTTPHeaderField:@"Authorization"];

        v10 = [(NSMapTable *)self->_taskQueue objectForKey:v8];
        v11 = [(HKOrganDonationConnectionManager *)self _genericJSONDataTaskWithRequest:v8 completionHandler:v10];
        [v11 resume];

        ++v7;
      }

      while (v5 != v7);
      v5 = [keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  [(NSMapTable *)self->_taskQueue removeAllObjects];
}

- (void)_flushTokenDependentRequestsWithStatus:(int64_t)status
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = [(NSMapTable *)self->_taskQueue keyEnumerator];
  v5 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bearer %@", self->_accessToken];
        [v9 setValue:v10 forHTTPHeaderField:@"Authorization"];

        v11 = [(NSMapTable *)self->_taskQueue objectForKey:v9];
        v11[2](v11, 0, status);

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [(NSMapTable *)self->_taskQueue removeAllObjects];
}

- (void)_updateAccessTokenAndScheduleInvalidationTimer:(id)timer expiresIn:(double)in
{
  self->_accessTokenStatus = 0;
  objc_storeStrong(&self->_accessToken, timer);
  timerCopy = timer;
  obj = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__invalidateAccessToken_ selector:0 userInfo:0 repeats:in];

  objc_storeWeak(&self->_accessTokenInvalidationTimer, obj);
}

- (void)_invalidateAccessToken:(id)token
{
  accessToken = self->_accessToken;
  self->_accessToken = 0;

  [(HKOrganDonationConnectionManager *)self _refreshAccessTokenIfNeeded];
}

- (void)_handleURLTaskError:(id)error withCompletion:(id)completion
{
  completionCopy = completion;
  if ([error code] == -1009)
  {
    v6 = 3;
  }

  else
  {
    v6 = 4;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, v6);
  }

  [(HKOrganDonationConnectionManager *)self _transitionToState:v6];
}

- (void)_handleServerErrorWithResponse:(id)response originRequest:(id)request payload:(id)payload completion:(id)completion
{
  responseCopy = response;
  requestCopy = request;
  payloadCopy = payload;
  completionCopy = completion;
  if (([responseCopy statusCode] - 400) > 0x63)
  {
    v18 = 4;
    v17 = 4;
    if (!completionCopy)
    {
      goto LABEL_11;
    }

LABEL_10:
    completionCopy[2](completionCopy, payloadCopy, v18);
    goto LABEL_11;
  }

  [(HKOrganDonationConnectionManager *)self setAccessToken:0];
  v14 = [requestCopy URL];
  path = [v14 path];
  v16 = [path hasSuffix:@"/v1/oauth/token"];

  if (v16)
  {
    [(HKOrganDonationConnectionManager *)self setRefreshToken:0];
    v17 = 0;
  }

  else
  {
    v17 = 5;
  }

  if ([responseCopy statusCode] == 404 || objc_msgSend(responseCopy, "statusCode") == 410)
  {
    [(HKOrganDonationConnectionManager *)self setRefreshToken:0];
    v18 = 2;
    if (!completionCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v18 = 1;
  if (completionCopy)
  {
    goto LABEL_10;
  }

LABEL_11:
  [(HKOrganDonationConnectionManager *)self _transitionToState:v17];
  _HKInitializeLogging();
  v19 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [HKOrganDonationConnectionManager _handleServerErrorWithResponse:responseCopy originRequest:? payload:? completion:?];
  }
}

- (void)setRefreshToken:(id)token
{
  tokenCopy = token;
  objc_storeStrong(&self->_refreshToken, token);
  v5 = _TokenRefreshDate;
  _TokenRefreshDate = 0;

  if ([tokenCopy length])
  {
    [(HKOrganDonationConnectionManager *)self _upsertTokenInKeychain:tokenCopy identifier:@"refresh_token"];
  }

  else
  {
    [(HKOrganDonationConnectionManager *)self _deleteTokenWithIdentifier:@"refresh_token"];
  }
}

- (void)_upsertTokenInKeychain:(id)keychain identifier:(id)identifier
{
  identifierCopy = identifier;
  keychainCopy = keychain;
  v8 = [objc_opt_class() _keychainQueryDictionaryForIdentifier:identifierCopy];
  v9 = [keychainCopy dataUsingEncoding:4];

  v10 = [objc_opt_class() _tokenWithIdentifier:identifierCopy shouldReturnData:0];

  if (!v10)
  {
    [v8 setObject:v9 forKey:*MEMORY[0x1E697B3C0]];
    if (SecItemAdd(v8, 0))
    {
      goto LABEL_3;
    }

LABEL_7:
    delegate = [(HKOrganDonationConnectionManager *)self delegate];
    [delegate organDonationConnectionManagerDidStoreCredential:self];

    notify_post("HKOrganDonationRegistrationDidUpdate");
    goto LABEL_8;
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v11 setObject:v9 forKey:*MEMORY[0x1E697B3C0]];
  v12 = SecItemUpdate(v8, v11);

  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_3:
  _HKInitializeLogging();
  v13 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [HKOrganDonationConnectionManager _upsertTokenInKeychain:identifier:];
  }

LABEL_8:
}

- (void)_deleteTokenWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_opt_class() _keychainQueryDictionaryForIdentifier:identifierCopy];
  v6 = [objc_opt_class() _tokenWithIdentifier:identifierCopy shouldReturnData:0];

  if (v6)
  {
    if (SecItemDelete(v5))
    {
      _HKInitializeLogging();
      v7 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [HKOrganDonationConnectionManager _deleteTokenWithIdentifier:];
      }
    }

    else
    {
      delegate = [(HKOrganDonationConnectionManager *)self delegate];
      [delegate organDonationConnectionManagerDidRemoveCredential:self];

      notify_post("HKOrganDonationRegistrationDidUpdate");
    }
  }
}

+ (id)_tokenWithIdentifier:(id)identifier shouldReturnData:(BOOL)data
{
  dataCopy = data;
  identifierCopy = identifier;
  v7 = [self _keychainQueryDictionaryForIdentifier:identifierCopy];
  v8 = v7;
  if (dataCopy)
  {
    [(__CFDictionary *)v7 setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697B318]];
  }

  result = 0;
  v9 = SecItemCopyMatching(v8, &result);
  if (v9 == -25300)
  {
    v11 = 0;
  }

  else
  {
    if (v9)
    {
      _HKInitializeLogging();
      v10 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[HKOrganDonationConnectionManager _tokenWithIdentifier:shouldReturnData:];
      }

      v11 = 0;
    }

    else
    {
      v10 = result;
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:result encoding:4];
    }
  }

  return v11;
}

+ (id)_keychainQueryDictionaryForIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E695DF90];
  identifierCopy = identifier;
  v6 = objc_alloc_init(v4);
  [v6 setObject:*MEMORY[0x1E697B018] forKey:*MEMORY[0x1E697AFF8]];
  [v6 setObject:@"com.apple.HealthUI.OrganDonation" forKey:*MEMORY[0x1E697AC30]];
  v7 = [identifierCopy dataUsingEncoding:4];

  [v6 setObject:v7 forKey:*MEMORY[0x1E697ADF0]];
  _host = [self _host];
  v9 = [_host dataUsingEncoding:4];

  [v6 setObject:v9 forKey:*MEMORY[0x1E697AE80]];
  [v6 setObject:*MEMORY[0x1E697AE30] forKey:*MEMORY[0x1E697AE00]];
  _port = [self _port];
  [v6 setObject:_port forKey:*MEMORY[0x1E697ADF8]];

  [v6 setObject:*MEMORY[0x1E697AC58] forKey:*MEMORY[0x1E697AC50]];
  [v6 setObject:*MEMORY[0x1E697AC20] forKey:*MEMORY[0x1E697ABD8]];
  [v6 setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697AEB0]];
  [v6 setObject:@"com.apple.Health" forKey:*MEMORY[0x1E697ABD0]];

  return v6;
}

+ (void)organDonationSignificantDate:(id)date
{
  dateCopy = date;
  v5 = _TokenCreationDate;
  if (_TokenRefreshDate)
  {
    v6 = _TokenCreationDate == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = [self _keychainQueryDictionaryForIdentifier:@"refresh_token"];
    [v7 setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697B310]];
    result = 0;
    v8 = SecItemCopyMatching(v7, &result);
    if (v8)
    {
      v9 = v8;
      _HKInitializeLogging();
      v10 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(HKOrganDonationConnectionManager *)v9 organDonationSignificantDate:v10, v11, v12, v13, v14, v15, v16];
      }
    }

    else
    {
      v10 = result;
      v17 = [result objectForKey:*MEMORY[0x1E697ADD0]];
      v18 = _TokenRefreshDate;
      _TokenRefreshDate = v17;

      v19 = [v10 objectForKey:*MEMORY[0x1E697ACD0]];
      v20 = _TokenCreationDate;
      _TokenCreationDate = v19;
    }

    v5 = _TokenCreationDate;
  }

  v21 = [v5 compare:?];
  v22 = &_TokenCreationDate;
  if (v21 == -1)
  {
    v22 = &_TokenRefreshDate;
  }

  dateCopy[2](dateCopy, *v22, v21 != -1);
}

+ (id)storeDemoModeModifiedDate
{
  v2 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  date = [MEMORY[0x1E695DF00] date];
  v4 = [v2 components:30 fromDate:date];
  [v4 setHour:9];
  [v4 setMinute:41];
  v5 = [v2 dateFromComponents:v4];
  v6 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v6 setDay:-1];
  v7 = [v2 dateByAddingComponents:v6 toDate:v5 options:0];

  return v7;
}

+ (BOOL)shouldShowStoreDemoOrganDonation
{
  isRunningStoreDemoMode = [MEMORY[0x1E696C608] isRunningStoreDemoMode];
  if (isRunningStoreDemoMode)
  {

    LOBYTE(isRunningStoreDemoMode) = [self isOrganDonationRegistrationAvailable];
  }

  return isRunningStoreDemoMode;
}

- (id)_registrationJWTWithRegistrant:(id)registrant
{
  v4 = [(HKOrganDonationConnectionManager *)self jwtPayloadWithRegistrant:registrant];
  v5 = [(HKOrganDonationConnectionManager *)self _jwtWithPayload:v4 grantType:@"urn:dla:oauth:grant-type:jwt-bearer-registrant-info"];

  return v5;
}

- (id)_refreshBearerTokenJWTWithRefreshToken:(id)token
{
  tokenCopy = token;
  payload = [(HKOrganDonationConnectionManager *)self payload];
  v6 = [(HKOrganDonationConnectionManager *)self _jwtWithPayload:payload grantType:@"urn:dla:oauth:grant-type:jwt-bearer-refresh"];

  if (v6)
  {
    v7 = [v6 mutableCopy];
    [v7 setObject:tokenCopy forKey:@"refresh_token"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_jwtWithPayload:(id)payload grantType:(id)type
{
  v36[2] = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  typeCopy = type;
  v8 = _DecodedString(&_ConsumerSecret);
  PrivateSecKeyRefFromP12 = _createPrivateSecKeyRefFromP12(v8);

  if (PrivateSecKeyRefFromP12)
  {
    v10 = MEMORY[0x1E696ACB0];
    jwtHeader = [(HKOrganDonationConnectionManager *)self jwtHeader];
    v34 = 0;
    v31 = [v10 dataWithJSONObject:jwtHeader options:0 error:&v34];
    v12 = v34;

    v13 = [v31 base64EncodedStringWithOptions:0];
    v27 = [(HKOrganDonationConnectionManager *)self _base64URLEncoding:v13];

    v33 = v12;
    v14 = [MEMORY[0x1E696ACB0] dataWithJSONObject:payloadCopy options:0 error:&v33];
    v30 = v33;

    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v14 encoding:4];
    v29 = [v15 stringByReplacingOccurrencesOfString:@"\\/" withString:@"/"];

    v28 = [v29 dataUsingEncoding:4];

    v16 = [v28 base64EncodedStringWithOptions:0];
    v17 = [(HKOrganDonationConnectionManager *)self _base64URLEncoding:v16];

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v27, v17];
    v19 = [v18 dataUsingEncoding:4];
    _SignStringWithSHA256RSA(v19, PrivateSecKeyRefFromP12);
    v20 = v32 = payloadCopy;
    [v20 base64EncodedStringWithOptions:0];
    v22 = v21 = typeCopy;
    v23 = [(HKOrganDonationConnectionManager *)self _base64URLEncoding:v22];

    typeCopy = v21;
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v18, v23];
    CFRelease(PrivateSecKeyRefFromP12);
    v35[0] = @"grant_type";
    v35[1] = @"assertion";
    v36[0] = v21;
    v36[1] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];

    payloadCopy = v32;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)_base64URLEncoding:(id)encoding
{
  v3 = [encoding mutableCopy];
  [v3 replaceOccurrencesOfString:@"=" withString:&stru_1F42FFBE0 options:0 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"+" withString:@"-" options:0 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"/" withString:@"_" options:0 range:{0, objc_msgSend(v3, "length")}];

  return v3;
}

- (id)jwtHeader
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"alg";
  v4[1] = @"typ";
  v5[0] = @"RS256";
  v5[1] = @"JWT";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (id)payload
{
  v10[3] = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v4 = v3;

  v9[0] = @"iss";
  v5 = _DecodedString(&_ConsumerId);
  v10[0] = v5;
  v10[1] = @"https://donatelifeamerica.com/api/";
  v9[1] = @"aud";
  v9[2] = @"iat";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  v10[2] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

- (id)jwtPayloadWithRegistrant:(id)registrant
{
  v13[4] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF00];
  registrantCopy = registrant;
  date = [v3 date];
  [date timeIntervalSince1970];
  v7 = v6;

  v12[0] = @"iss";
  v8 = _DecodedString(&_ConsumerId);
  v13[0] = v8;
  v13[1] = @"https://donatelifeamerica.com/api/";
  v12[1] = @"aud";
  v12[2] = @"iat";
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
  v12[3] = @"registrant";
  v13[2] = v9;
  v13[3] = registrantCopy;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];

  return v10;
}

- (HKOrganDonationConnectionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSTimer)accessTokenInvalidationTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_accessTokenInvalidationTimer);

  return WeakRetained;
}

- (void)updateRegistrantWithParams:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "Error serializing json object for updating registrant: %@", &v2, 0xCu);
}

void __75__HKOrganDonationConnectionManager_refreshOrganDonationFeatureAvailability__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  [v1 URL];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_5_0() description];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(&dword_1C3942000, v3, v4, "Error deserializing json data for response at URL: %{public}@, error: %{public}@", v5, v6, v7, v8, v9);
}

void __75__HKOrganDonationConnectionManager_refreshOrganDonationFeatureAvailability__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_6();
  v1 = [v0 description];
  OUTLINED_FUNCTION_2_0(&dword_1C3942000, v2, v3, "Error downloading the od availability manifest from cdn: %{public}@, response: %{public}@", v4, v5, v6, v7, 2u);
}

void __86__HKOrganDonationConnectionManager__genericJSONDataTaskWithRequest_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  [*(v1 + 32) URL];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_5_0() description];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(&dword_1C3942000, v3, v4, "Error finishing data task with URL: %{public}@, error: %{public}@", v5, v6, v7, v8, v9);
}

- (void)_handleServerErrorWithResponse:(void *)a1 originRequest:payload:completion:.cold.1(void *a1)
{
  [a1 URL];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5_0() statusCode];
  OUTLINED_FUNCTION_2_0(&dword_1C3942000, v2, v3, "Http error with URL: %{public}@, status code: %li", v4, v5, v6, v7, 2u);
}

@end