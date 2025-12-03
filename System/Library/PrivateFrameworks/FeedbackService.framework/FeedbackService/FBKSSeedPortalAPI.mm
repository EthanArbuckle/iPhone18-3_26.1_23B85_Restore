@interface FBKSSeedPortalAPI
- (NSHTTPCookie)seedPortalSession;
- (id)_filterForValue;
- (id)formItemsURLFormTat:(id)tat;
- (id)initClient:(id)client;
- (id)loginWithTokenURL;
- (id)signOutURL;
- (id)unauthenticatedLoginURL;
- (void)loadFormItemWithFormTat:(id)tat withCompletion:(id)completion;
- (void)logOutServerSideWithCompletion:(id)completion;
- (void)seedPortalLoginAsUnauthenticatedUserWithSuccessHandler:(id)handler error:(id)error;
- (void)seedPortalLoginWithDeviceToken:(id)token success:(id)success error:(id)error;
@end

@implementation FBKSSeedPortalAPI

- (id)initClient:(id)client
{
  v20 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  v17.receiver = self;
  v17.super_class = FBKSSeedPortalAPI;
  v6 = [(FBKSSeedPortalAPI *)&v17 init];
  if (v6)
  {
    [(FBKSSeedPortalAPI *)v6 setEnvironment:+[FBKSSharedConstants environment]];
    v7 = +[FBKSSharedConstants appleSeedURL];
    if ([(FBKSSeedPortalAPI *)v6 environment]!= 3)
    {
      v8 = [v7 URLByAppendingPathComponent:@"sp"];

      v7 = v8;
    }

    objc_storeStrong(&v6->_seedPortalURL, v7);
    seedPortalURL = [(FBKSSeedPortalAPI *)v6 seedPortalURL];
    v10 = [seedPortalURL URLByAppendingPathComponent:@"feedback"];
    feedbackURL = v6->_feedbackURL;
    v6->_feedbackURL = v10;

    v12 = FBKSLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v6->_feedbackURL;
      *buf = 138543362;
      v19 = *&v13;
      _os_log_impl(&dword_1B00C4000, v12, OS_LOG_TYPE_DEFAULT, "Feedback URL [%{public}@]", buf, 0xCu);
    }

    v14 = FBKSLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = 4.3;
      _os_log_impl(&dword_1B00C4000, v14, OS_LOG_TYPE_DEFAULT, "SP2 API Version [%.1f]", buf, 0xCu);
    }

    objc_storeStrong(&v6->_coreHTTPClient, client);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v6;
}

- (NSHTTPCookie)seedPortalSession
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  coreHTTPClient = [(FBKSSeedPortalAPI *)selfCopy coreHTTPClient];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    coreHTTPClient2 = [(FBKSSeedPortalAPI *)selfCopy coreHTTPClient];
    seedPortalSession = [coreHTTPClient2 seedPortalSession];
  }

  else
  {
    seedPortalSession = 0;
  }

  objc_sync_exit(selfCopy);

  return seedPortalSession;
}

- (id)loginWithTokenURL
{
  seedPortalURL = [(FBKSSeedPortalAPI *)self seedPortalURL];
  v3 = [seedPortalURL URLByAppendingPathComponent:@"login/with_token"];

  return v3;
}

- (id)unauthenticatedLoginURL
{
  seedPortalURL = [(FBKSSeedPortalAPI *)self seedPortalURL];
  v3 = [seedPortalURL URLByAppendingPathComponent:@"login/with_anon"];

  return v3;
}

- (id)signOutURL
{
  seedPortalURL = [(FBKSSeedPortalAPI *)self seedPortalURL];
  v3 = [seedPortalURL URLByAppendingPathComponent:@"signout"];

  return v3;
}

- (id)formItemsURLFormTat:(id)tat
{
  v17[1] = *MEMORY[0x1E69E9840];
  tatCopy = tat;
  feedbackURL = [(FBKSSeedPortalAPI *)self feedbackURL];
  v6 = feedbackURL;
  if (tatCopy)
  {
    tatCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"form_items/%@", tatCopy];
    v8 = [v6 URLByAppendingPathComponent:tatCopy];
  }

  else
  {
    v8 = [feedbackURL URLByAppendingPathComponent:@"form_items.json"];
  }

  v9 = [MEMORY[0x1E696AF20] componentsWithURL:v8 resolvingAgainstBaseURL:0];
  v10 = MEMORY[0x1E696AF60];
  _filterForValue = [(FBKSSeedPortalAPI *)self _filterForValue];
  v12 = [v10 queryItemWithName:@"filter_for" value:_filterForValue];
  v17[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  [v9 setQueryItems:v13];

  v14 = [v9 URL];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_filterForValue
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"OSXProjects"];

  v4 = @"macos";
  if ((v3 & 1) == 0)
  {
    v5 = +[FBKSSharedConstants platform];
    v6 = @"ios";
    if (v5 != 1)
    {
      v6 = @"macos";
    }

    if (v5 == 2)
    {
      return @"visionos";
    }

    else
    {
      return v6;
    }
  }

  return v4;
}

- (void)seedPortalLoginWithDeviceToken:(id)token success:(id)success error:(id)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  successCopy = success;
  v10 = MEMORY[0x1E695AC18];
  errorCopy = error;
  loginWithTokenURL = [(FBKSSeedPortalAPI *)self loginWithTokenURL];
  v13 = [v10 requestWithURL:loginWithTokenURL];

  [v13 setHTTPMethod:@"POST"];
  v23 = @"device_token";
  v24[0] = tokenCopy;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v22 = 0;
  v15 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v14 options:0 error:&v22];
  v16 = v22;
  if (v16)
  {
    v17 = FBKSSP2Log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [FBKSSeedPortalAPI seedPortalLoginWithDeviceToken:v16 success:v17 error:?];
    }

    errorCopy[2](errorCopy, v16);
  }

  else
  {
    [v13 setHTTPBody:v15];
    [v13 setHTTPContentType:@"application/json; charset=utf-8"];
    coreHTTPClient = [(FBKSSeedPortalAPI *)self coreHTTPClient];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __66__FBKSSeedPortalAPI_seedPortalLoginWithDeviceToken_success_error___block_invoke;
    v20[3] = &unk_1E7A900D8;
    v21 = successCopy;
    [coreHTTPClient jsonForURLRequest:v13 success:v20 error:errorCopy];

    errorCopy = v21;
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __66__FBKSSeedPortalAPI_seedPortalLoginWithDeviceToken_success_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[FBKSUserLoginInfo alloc] initWithDictionary:v3];

  (*(*(a1 + 32) + 16))();
}

- (void)seedPortalLoginAsUnauthenticatedUserWithSuccessHandler:(id)handler error:(id)error
{
  handlerCopy = handler;
  v7 = MEMORY[0x1E695AC18];
  errorCopy = error;
  unauthenticatedLoginURL = [(FBKSSeedPortalAPI *)self unauthenticatedLoginURL];
  v10 = [v7 requestWithURL:unauthenticatedLoginURL];

  [v10 setHTTPMethod:@"POST"];
  [v10 setHTTPContentType:@"application/json; charset=utf-8"];
  coreHTTPClient = [(FBKSSeedPortalAPI *)self coreHTTPClient];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__FBKSSeedPortalAPI_seedPortalLoginAsUnauthenticatedUserWithSuccessHandler_error___block_invoke;
  v13[3] = &unk_1E7A900D8;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [coreHTTPClient jsonForURLRequest:v10 success:v13 error:errorCopy];
}

void __82__FBKSSeedPortalAPI_seedPortalLoginAsUnauthenticatedUserWithSuccessHandler_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[FBKSUserLoginInfo alloc] initWithDictionary:v3];

  (*(*(a1 + 32) + 16))();
}

- (void)logOutServerSideWithCompletion:(id)completion
{
  completionCopy = completion;
  signOutURL = [(FBKSSeedPortalAPI *)self signOutURL];
  coreHTTPClient = [(FBKSSeedPortalAPI *)self coreHTTPClient];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__FBKSSeedPortalAPI_logOutServerSideWithCompletion___block_invoke;
  v12[3] = &unk_1E7A90100;
  v13 = completionCopy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__FBKSSeedPortalAPI_logOutServerSideWithCompletion___block_invoke_2;
  v9[3] = &unk_1E7A90128;
  v10 = signOutURL;
  v11 = v13;
  v7 = v13;
  v8 = signOutURL;
  [coreHTTPClient dataForURL:v8 success:v12 error:v9];
}

uint64_t __52__FBKSSeedPortalAPI_logOutServerSideWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __52__FBKSSeedPortalAPI_logOutServerSideWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = FBKSSP2Log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __52__FBKSSeedPortalAPI_logOutServerSideWithCompletion___block_invoke_2_cold_1(a1, v3, v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

- (void)loadFormItemWithFormTat:(id)tat withCompletion:(id)completion
{
  tatCopy = tat;
  completionCopy = completion;
  uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  v9 = [tatCopy stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

  v10 = [(FBKSSeedPortalAPI *)self formItemsURLFormTat:v9];
  v11 = [MEMORY[0x1E695AC68] requestWithURL:v10];
  coreHTTPClient = [(FBKSSeedPortalAPI *)self coreHTTPClient];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__FBKSSeedPortalAPI_loadFormItemWithFormTat_withCompletion___block_invoke;
  v17[3] = &unk_1E7A90150;
  v18 = tatCopy;
  v19 = completionCopy;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__FBKSSeedPortalAPI_loadFormItemWithFormTat_withCompletion___block_invoke_57;
  v15[3] = &unk_1E7A8FFF8;
  v16 = v19;
  v13 = v19;
  v14 = tatCopy;
  [coreHTTPClient jsonForURLRequest:v11 success:v17 error:v15];
}

void __60__FBKSSeedPortalAPI_loadFormItemWithFormTat_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.FeedbackService" code:-1001 userInfo:0];
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, 0, v4);
    }

    v6 = FBKSSP2Log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __60__FBKSSeedPortalAPI_loadFormItemWithFormTat_withCompletion___block_invoke_cold_1(v6);
    }
  }
}

uint64_t __60__FBKSSeedPortalAPI_loadFormItemWithFormTat_withCompletion___block_invoke_57(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)seedPortalLoginWithDeviceToken:(uint64_t)a1 success:(NSObject *)a2 error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B00C4000, a2, OS_LOG_TYPE_ERROR, "Encountered an error serializing JSON: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __52__FBKSSeedPortalAPI_logOutServerSideWithCompletion___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) path];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_1B00C4000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] Failed with error [%{public}@]", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end