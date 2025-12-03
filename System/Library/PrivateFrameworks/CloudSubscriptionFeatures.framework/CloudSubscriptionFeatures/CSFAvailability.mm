@interface CSFAvailability
+ (id)_availabilityGivenUnavailabilityReasons:(int64_t)reasons;
+ (id)_descriptionForUnavailabilityReasons:(int64_t)reasons;
+ (id)currentAvailability;
+ (id)dispatchQueue;
+ (id)generateRequestID;
+ (int64_t)_syncUnavailabilityReasonsWithRequestID:(id)d;
+ (void)_currentAvailabilityWithFeatureObject:(id)object completionHandler:(id)handler;
+ (void)_handleFeatureResponseWithFeatureObject:(id)object error:(id)error reasons:(int64_t)reasons shouldBypassEligibility:(BOOL)eligibility requestID:(id)d completionHandler:(id)handler;
+ (void)currentAvailability;
+ (void)currentAvailabilityWithCompletionHandler:(id)handler;
- (CSFAvailability)initWithCoder:(id)coder;
- (CSFAvailability)initWithStatus:(int64_t)status withUnavailabilityReasons:(int64_t)reasons;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CSFAvailability

+ (id)dispatchQueue
{
  if (dispatchQueue_onceToken != -1)
  {
    +[CSFAvailability dispatchQueue];
  }

  v3 = dispatchQueue_queue;

  return v3;
}

uint64_t __32__CSFAvailability_dispatchQueue__block_invoke()
{
  dispatchQueue_queue = dispatch_queue_create("com.apple.csf.availability", 0);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)generateRequestID
{
  v2 = objc_opt_new();
  uUIDString = [v2 UUIDString];
  v4 = [uUIDString substringToIndex:8];

  return v4;
}

+ (id)currentAvailability
{
  v27 = *MEMORY[0x1E69E9840];
  generateRequestID = [self generateRequestID];
  v4 = [self _syncUnavailabilityReasonsWithRequestID:generateRequestID];
  v5 = dispatch_group_create();
  v6 = +[_TtC25CloudSubscriptionFeatures8GMBypass gmEligibilityBypass];
  v7 = _CSFGetLogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v21 = 138412546;
      v22 = generateRequestID;
      v23 = 2080;
      v24 = "+[CSFAvailability currentAvailability]";
      _os_log_impl(&dword_1DF47C000, v7, OS_LOG_TYPE_DEFAULT, "[%@] %s Eligibility bypass is set to YES. Skipping ramp eligibility checks.", &v21, 0x16u);
    }
  }

  else
  {
    if (v8)
    {
      v21 = 138412546;
      v22 = generateRequestID;
      v23 = 2080;
      v24 = "+[CSFAvailability currentAvailability]";
      _os_log_impl(&dword_1DF47C000, v7, OS_LOG_TYPE_DEFAULT, "[%@] %s Checking for device eligibility from feature cache.", &v21, 0x16u);
    }

    v7 = [CSFFeatureManager cachedFeatureObjectWithId:@"cloud.llm"];
    v9 = _CSFGetLogSystem();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v10)
      {
        v21 = 138412546;
        v22 = generateRequestID;
        v23 = 2080;
        v24 = "+[CSFAvailability currentAvailability]";
        _os_log_impl(&dword_1DF47C000, v9, OS_LOG_TYPE_DEFAULT, "[%@] %s Found feature in cache. Checking if user has been granted access.", &v21, 0x16u);
      }

      canUse = [v7 canUse];
      v12 = _CSFGetLogSystem();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (canUse)
      {
        if (v13)
        {
          v21 = 138412546;
          v22 = generateRequestID;
          v23 = 2080;
          v24 = "+[CSFAvailability currentAvailability]";
          _os_log_impl(&dword_1DF47C000, v12, OS_LOG_TYPE_DEFAULT, "[%@] %s User has been granted access.", &v21, 0x16u);
        }
      }

      else
      {
        if (v13)
        {
          v21 = 138412546;
          v22 = generateRequestID;
          v23 = 2080;
          v24 = "+[CSFAvailability currentAvailability]";
          _os_log_impl(&dword_1DF47C000, v12, OS_LOG_TYPE_DEFAULT, "[%@] %s User has not been granted access.", &v21, 0x16u);
        }

        v4 |= 0x10uLL;
      }
    }

    else
    {
      if (v10)
      {
        v21 = 138412546;
        v22 = generateRequestID;
        v23 = 2080;
        v24 = "+[CSFAvailability currentAvailability]";
        _os_log_impl(&dword_1DF47C000, v9, OS_LOG_TYPE_DEFAULT, "[%@] %s Unable to fetch device availability as no cached feature object was found.", &v21, 0x16u);
      }

      v4 |= 0x100uLL;
      [CSFFeatureManager requestFeatureWithId:@"cloud.llm" allowStale:1 completion:&__block_literal_global_7];
    }

    v14 = _CSFGetLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412546;
      v22 = generateRequestID;
      v23 = 2080;
      v24 = "+[CSFAvailability currentAvailability]";
      _os_log_impl(&dword_1DF47C000, v14, OS_LOG_TYPE_DEFAULT, "[%@] %s Skipping getting device asset status.", &v21, 0x16u);
    }
  }

  v15 = dispatch_time(0, 30000000000);
  if (dispatch_group_wait(v5, v15))
  {
    v16 = _CSFGetLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[CSFAvailability currentAvailability];
    }

    v4 |= 0x20uLL;
  }

  v17 = [self _availabilityGivenUnavailabilityReasons:v4];
  v18 = _CSFGetLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412802;
    v22 = generateRequestID;
    v23 = 2080;
    v24 = "+[CSFAvailability currentAvailability]";
    v25 = 2114;
    v26 = v17;
    _os_log_impl(&dword_1DF47C000, v18, OS_LOG_TYPE_DEFAULT, "[%@] %s Returning result: %{public}@", &v21, 0x20u);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (void)_currentAvailabilityWithFeatureObject:(id)object completionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  handlerCopy = handler;
  generateRequestID = [self generateRequestID];
  v9 = _CSFGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = generateRequestID;
    v22 = 2080;
    v23 = "+[CSFAvailability _currentAvailabilityWithFeatureObject:completionHandler:]";
    _os_log_impl(&dword_1DF47C000, v9, OS_LOG_TYPE_DEFAULT, "[%@] %s request received.", buf, 0x16u);
  }

  v10 = +[CSFAvailability dispatchQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__CSFAvailability__currentAvailabilityWithFeatureObject_completionHandler___block_invoke;
  v15[3] = &unk_1E86BB240;
  v16 = generateRequestID;
  v17 = objectCopy;
  v18 = handlerCopy;
  selfCopy = self;
  v11 = handlerCopy;
  v12 = objectCopy;
  v13 = generateRequestID;
  dispatch_async(v10, v15);

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __75__CSFAvailability__currentAvailabilityWithFeatureObject_completionHandler___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 56) _syncUnavailabilityReasonsWithRequestID:*(a1 + 32)];
  v3 = _CSFGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v7 = 138412546;
    v8 = v4;
    v9 = 2080;
    v10 = "+[CSFAvailability _currentAvailabilityWithFeatureObject:completionHandler:]_block_invoke";
    _os_log_impl(&dword_1DF47C000, v3, OS_LOG_TYPE_DEFAULT, "[%@] %s Skipping device asset status checks.", &v7, 0x16u);
  }

  result = [*(a1 + 56) _handleFeatureResponseWithFeatureObject:*(a1 + 40) error:0 reasons:v2 shouldBypassEligibility:+[GMBypass gmEligibilityBypass](_TtC25CloudSubscriptionFeatures8GMBypass requestID:"gmEligibilityBypass") completionHandler:{*(a1 + 32), *(a1 + 48)}];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)currentAvailabilityWithCompletionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  generateRequestID = [self generateRequestID];
  v6 = _CSFGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = generateRequestID;
    v17 = 2080;
    v18 = "+[CSFAvailability currentAvailabilityWithCompletionHandler:]";
    _os_log_impl(&dword_1DF47C000, v6, OS_LOG_TYPE_DEFAULT, "[%@] %s request received.", buf, 0x16u);
  }

  v7 = +[CSFAvailability dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__CSFAvailability_currentAvailabilityWithCompletionHandler___block_invoke;
  block[3] = &unk_1E86BB290;
  v13 = handlerCopy;
  selfCopy = self;
  v12 = generateRequestID;
  v8 = handlerCopy;
  v9 = generateRequestID;
  dispatch_async(v7, block);

  v10 = *MEMORY[0x1E69E9840];
}

void __60__CSFAvailability_currentAvailabilityWithCompletionHandler___block_invoke(id *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = [a1[6] _syncUnavailabilityReasonsWithRequestID:a1[4]];
  v2 = _CSFGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138412546;
    v20 = v3;
    v21 = 2080;
    v22 = "+[CSFAvailability currentAvailabilityWithCompletionHandler:]_block_invoke";
    _os_log_impl(&dword_1DF47C000, v2, OS_LOG_TYPE_DEFAULT, "[%@] %s Skipping device asset status checks.", buf, 0x16u);
  }

  if (+[_TtC25CloudSubscriptionFeatures8GMBypass gmEligibilityBypass])
  {
    v4 = _CSFGetLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[4];
      *buf = 138412546;
      v20 = v5;
      v21 = 2080;
      v22 = "+[CSFAvailability currentAvailabilityWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_1DF47C000, v4, OS_LOG_TYPE_DEFAULT, "[%@] %s bypass is enabled, skipping server checks.", buf, 0x16u);
    }

    [a1[6] _handleFeatureResponseWithFeatureObject:0 error:0 reasons:v16[3] shouldBypassEligibility:1 requestID:a1[4] completionHandler:a1[5]];
  }

  else
  {
    v6 = _CSFGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      *buf = 138412546;
      v20 = v7;
      v21 = 2080;
      v22 = "+[CSFAvailability currentAvailabilityWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_1DF47C000, v6, OS_LOG_TYPE_DEFAULT, "[%@] %s Making server availability check.", buf, 0x16u);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__CSFAvailability_currentAvailabilityWithCompletionHandler___block_invoke_9;
    v10[3] = &unk_1E86BB268;
    v8 = a1[6];
    v13 = &v15;
    v14 = v8;
    v11 = a1[4];
    v12 = a1[5];
    [CSFFeatureManager requestFeatureWithId:@"cloud.llm" allowStale:1 completion:v10];
  }

  _Block_object_dispose(&v15, 8);
  v9 = *MEMORY[0x1E69E9840];
}

+ (void)_handleFeatureResponseWithFeatureObject:(id)object error:(id)error reasons:(int64_t)reasons shouldBypassEligibility:(BOOL)eligibility requestID:(id)d completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  errorCopy = error;
  dCopy = d;
  handlerCopy = handler;
  if (!eligibility)
  {
    if (errorCopy)
    {
      v18 = _CSFGetLogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CSFAvailability _handleFeatureResponseWithFeatureObject:dCopy error:errorCopy reasons:v18 shouldBypassEligibility:? requestID:? completionHandler:?];
      }

LABEL_5:
      v19 = 256;
LABEL_6:

      reasons |= v19;
      goto LABEL_7;
    }

    if (!objectCopy)
    {
      v18 = _CSFGetLogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        +[CSFAvailability _handleFeatureResponseWithFeatureObject:error:reasons:shouldBypassEligibility:requestID:completionHandler:];
      }

      goto LABEL_5;
    }

    if (([objectCopy canUse] & 1) == 0)
    {
      v18 = _CSFGetLogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        +[CSFAvailability _handleFeatureResponseWithFeatureObject:error:reasons:shouldBypassEligibility:requestID:completionHandler:];
      }

      v19 = 16;
      goto LABEL_6;
    }
  }

LABEL_7:
  v20 = [self _availabilityGivenUnavailabilityReasons:reasons];
  v21 = _CSFGetLogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138412802;
    v24 = dCopy;
    v25 = 2080;
    v26 = "+[CSFAvailability _handleFeatureResponseWithFeatureObject:error:reasons:shouldBypassEligibility:requestID:completionHandler:]";
    v27 = 2114;
    v28 = v20;
    _os_log_impl(&dword_1DF47C000, v21, OS_LOG_TYPE_DEFAULT, "[%@] %s Returning result: %{public}@", &v23, 0x20u);
  }

  handlerCopy[2](handlerCopy, v20);
  v22 = *MEMORY[0x1E69E9840];
}

+ (int64_t)_syncUnavailabilityReasonsWithRequestID:(id)d
{
  dCopy = d;
  v4 = +[CSFEligibilityFetcher current];
  if ([v4 deviceEligibile])
  {
    v5 = 0;
  }

  else
  {
    v6 = _CSFGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      +[CSFAvailability _syncUnavailabilityReasonsWithRequestID:];
    }

    v5 = 1;
  }

  if (([v4 languageEligible] & 1) == 0)
  {
    v7 = _CSFGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      +[CSFAvailability _syncUnavailabilityReasonsWithRequestID:];
    }

    v5 |= 2uLL;
  }

  if (([v4 regionEligible] & 1) == 0)
  {
    v8 = _CSFGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      +[CSFAvailability _syncUnavailabilityReasonsWithRequestID:];
    }

    v5 |= 4uLL;
  }

  v9 = +[_TtC25CloudSubscriptionFeatures7GMOptIn shared];
  isOptedIn = [v9 isOptedIn];

  if ((isOptedIn & 1) == 0)
  {
    v11 = _CSFGetLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      +[CSFAvailability _syncUnavailabilityReasonsWithRequestID:];
    }

    v5 |= 0x80uLL;
  }

  return v5;
}

+ (id)_availabilityGivenUnavailabilityReasons:(int64_t)reasons
{
  v4 = [CSFAvailability alloc];
  if (reasons)
  {
    v5 = 2;
    reasonsCopy = reasons;
  }

  else
  {
    v5 = 0;
    reasonsCopy = 0;
  }

  v7 = [(CSFAvailability *)v4 initWithStatus:v5 withUnavailabilityReasons:reasonsCopy];

  return v7;
}

+ (id)_descriptionForUnavailabilityReasons:(int64_t)reasons
{
  reasonsCopy = reasons;
  v4 = [MEMORY[0x1E695E0F0] mutableCopy];
  v5 = v4;
  if (reasonsCopy)
  {
    [v4 addObject:@"deviceNotCapable"];
    if ((reasonsCopy & 2) == 0)
    {
LABEL_3:
      if ((reasonsCopy & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((reasonsCopy & 2) == 0)
  {
    goto LABEL_3;
  }

  [v5 addObject:@"selectedLanguageIneligible"];
  if ((reasonsCopy & 4) == 0)
  {
LABEL_4:
    if ((reasonsCopy & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v5 addObject:@"regionIneligible"];
  if ((reasonsCopy & 0x10) == 0)
  {
LABEL_5:
    if ((reasonsCopy & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  [v5 addObject:@"accessNotGranted"];
  if ((reasonsCopy & 0x20) == 0)
  {
LABEL_6:
    if ((reasonsCopy & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v5 addObject:@"assetIsNotReady"];
  if ((reasonsCopy & 0x40) == 0)
  {
LABEL_7:
    if ((reasonsCopy & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v5 addObject:@"shortOfStorage"];
  if ((reasonsCopy & 0x80) == 0)
  {
LABEL_8:
    if ((reasonsCopy & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v5 addObject:@"notOptedIn"];
  if ((reasonsCopy & 0x100) == 0)
  {
LABEL_9:
    if ((reasonsCopy & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  [v5 addObject:@"unableToFetchAvailability"];
  if ((reasonsCopy & 0x200) != 0)
  {
LABEL_10:
    [v5 addObject:@"unknown"];
  }

LABEL_11:
  v6 = MEMORY[0x1E696AEC0];
  v7 = [v5 componentsJoinedByString:{@", "}];
  v8 = [v6 stringWithFormat:@"[%@]", v7];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  coderCopy = coder;
  v6 = [v4 numberWithInteger:{-[CSFAvailability status](self, "status")}];
  [coderCopy encodeObject:v6 forKey:@"status"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CSFAvailability unavailabiltyReasons](self, "unavailabiltyReasons")}];
  [coderCopy encodeObject:v7 forKey:@"unavailabilityReasons"];
}

- (CSFAvailability)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CSFAvailability;
  v5 = [(CSFAvailability *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    -[CSFAvailability setStatus:](v5, "setStatus:", [v6 integerValue]);
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unavailabilityReasons"];
    -[CSFAvailability setUnavailabiltyReasons:](v5, "setUnavailabiltyReasons:", [v7 integerValue]);
  }

  return v5;
}

- (CSFAvailability)initWithStatus:(int64_t)status withUnavailabilityReasons:(int64_t)reasons
{
  v7.receiver = self;
  v7.super_class = CSFAvailability;
  result = [(CSFAvailability *)&v7 init];
  if (result)
  {
    result->_status = status;
    result->_unavailabiltyReasons = reasons;
  }

  return result;
}

- (id)description
{
  if ([(CSFAvailability *)self status])
  {
    if ([(CSFAvailability *)self status]== 1)
    {
      v3 = @"CSFAvailability: limited";
    }

    else
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = [CSFAvailability _descriptionForUnavailabilityReasons:[(CSFAvailability *)self unavailabiltyReasons]];
      v3 = [v4 stringWithFormat:@"<CSFAvailability: unavailable - %@>", v5];
    }
  }

  else
  {
    v3 = @"CSFAvailability: available";
  }

  return v3;
}

+ (void)currentAvailability
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2080;
  v4 = "+[CSFAvailability currentAvailability]";
  _os_log_error_impl(&dword_1DF47C000, v0, OS_LOG_TYPE_ERROR, "[%@] %s Asset status request timed out! Assuming assets not yet ready", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)_handleFeatureResponseWithFeatureObject:(NSObject *)a3 error:reasons:shouldBypassEligibility:requestID:completionHandler:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = [a2 localizedDescription];
  v7 = 138412802;
  v8 = a1;
  v9 = 2080;
  v10 = "+[CSFAvailability _handleFeatureResponseWithFeatureObject:error:reasons:shouldBypassEligibility:requestID:completionHandler:]";
  v11 = 2112;
  v12 = v5;
  _os_log_error_impl(&dword_1DF47C000, a3, OS_LOG_TYPE_ERROR, "[%@] %s Error requesting features: %@", &v7, 0x20u);

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_handleFeatureResponseWithFeatureObject:error:reasons:shouldBypassEligibility:requestID:completionHandler:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1DF47C000, v0, v1, "[%@] Server has not granted access.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_handleFeatureResponseWithFeatureObject:error:reasons:shouldBypassEligibility:requestID:completionHandler:.cold.3()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2080;
  v4 = "+[CSFAvailability _handleFeatureResponseWithFeatureObject:error:reasons:shouldBypassEligibility:requestID:completionHandler:]";
  _os_log_error_impl(&dword_1DF47C000, v0, OS_LOG_TYPE_ERROR, "[%@] %s Requested features but none were returned.", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)_syncUnavailabilityReasonsWithRequestID:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1DF47C000, v0, v1, "[%@] Hardware is ineligible.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_syncUnavailabilityReasonsWithRequestID:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1DF47C000, v0, v1, "[%@] Language is ineligible.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_syncUnavailabilityReasonsWithRequestID:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1DF47C000, v0, v1, "[%@] Region is ineligible.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_syncUnavailabilityReasonsWithRequestID:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1DF47C000, v0, v1, "[%@] User is not opted-in.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end