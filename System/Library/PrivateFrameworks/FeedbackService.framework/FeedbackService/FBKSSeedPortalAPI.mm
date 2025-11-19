@interface FBKSSeedPortalAPI
- (NSHTTPCookie)seedPortalSession;
- (id)_filterForValue;
- (id)formItemsURLFormTat:(id)a3;
- (id)initClient:(id)a3;
- (id)loginWithTokenURL;
- (id)signOutURL;
- (id)unauthenticatedLoginURL;
- (void)loadFormItemWithFormTat:(id)a3 withCompletion:(id)a4;
- (void)logOutServerSideWithCompletion:(id)a3;
- (void)seedPortalLoginAsUnauthenticatedUserWithSuccessHandler:(id)a3 error:(id)a4;
- (void)seedPortalLoginWithDeviceToken:(id)a3 success:(id)a4 error:(id)a5;
@end

@implementation FBKSSeedPortalAPI

- (id)initClient:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
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
    v9 = [(FBKSSeedPortalAPI *)v6 seedPortalURL];
    v10 = [v9 URLByAppendingPathComponent:@"feedback"];
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

    objc_storeStrong(&v6->_coreHTTPClient, a3);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v6;
}

- (NSHTTPCookie)seedPortalSession
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(FBKSSeedPortalAPI *)v2 coreHTTPClient];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(FBKSSeedPortalAPI *)v2 coreHTTPClient];
    v6 = [v5 seedPortalSession];
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(v2);

  return v6;
}

- (id)loginWithTokenURL
{
  v2 = [(FBKSSeedPortalAPI *)self seedPortalURL];
  v3 = [v2 URLByAppendingPathComponent:@"login/with_token"];

  return v3;
}

- (id)unauthenticatedLoginURL
{
  v2 = [(FBKSSeedPortalAPI *)self seedPortalURL];
  v3 = [v2 URLByAppendingPathComponent:@"login/with_anon"];

  return v3;
}

- (id)signOutURL
{
  v2 = [(FBKSSeedPortalAPI *)self seedPortalURL];
  v3 = [v2 URLByAppendingPathComponent:@"signout"];

  return v3;
}

- (id)formItemsURLFormTat:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FBKSSeedPortalAPI *)self feedbackURL];
  v6 = v5;
  if (v4)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"form_items/%@", v4];
    v8 = [v6 URLByAppendingPathComponent:v7];
  }

  else
  {
    v8 = [v5 URLByAppendingPathComponent:@"form_items.json"];
  }

  v9 = [MEMORY[0x1E696AF20] componentsWithURL:v8 resolvingAgainstBaseURL:0];
  v10 = MEMORY[0x1E696AF60];
  v11 = [(FBKSSeedPortalAPI *)self _filterForValue];
  v12 = [v10 queryItemWithName:@"filter_for" value:v11];
  v17[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  [v9 setQueryItems:v13];

  v14 = [v9 URL];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_filterForValue
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"OSXProjects"];

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

- (void)seedPortalLoginWithDeviceToken:(id)a3 success:(id)a4 error:(id)a5
{
  v24[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x1E695AC18];
  v11 = a5;
  v12 = [(FBKSSeedPortalAPI *)self loginWithTokenURL];
  v13 = [v10 requestWithURL:v12];

  [v13 setHTTPMethod:@"POST"];
  v23 = @"device_token";
  v24[0] = v8;
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

    v11[2](v11, v16);
  }

  else
  {
    [v13 setHTTPBody:v15];
    [v13 setHTTPContentType:@"application/json; charset=utf-8"];
    v18 = [(FBKSSeedPortalAPI *)self coreHTTPClient];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __66__FBKSSeedPortalAPI_seedPortalLoginWithDeviceToken_success_error___block_invoke;
    v20[3] = &unk_1E7A900D8;
    v21 = v9;
    [v18 jsonForURLRequest:v13 success:v20 error:v11];

    v11 = v21;
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __66__FBKSSeedPortalAPI_seedPortalLoginWithDeviceToken_success_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[FBKSUserLoginInfo alloc] initWithDictionary:v3];

  (*(*(a1 + 32) + 16))();
}

- (void)seedPortalLoginAsUnauthenticatedUserWithSuccessHandler:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E695AC18];
  v8 = a4;
  v9 = [(FBKSSeedPortalAPI *)self unauthenticatedLoginURL];
  v10 = [v7 requestWithURL:v9];

  [v10 setHTTPMethod:@"POST"];
  [v10 setHTTPContentType:@"application/json; charset=utf-8"];
  v11 = [(FBKSSeedPortalAPI *)self coreHTTPClient];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__FBKSSeedPortalAPI_seedPortalLoginAsUnauthenticatedUserWithSuccessHandler_error___block_invoke;
  v13[3] = &unk_1E7A900D8;
  v14 = v6;
  v12 = v6;
  [v11 jsonForURLRequest:v10 success:v13 error:v8];
}

void __82__FBKSSeedPortalAPI_seedPortalLoginAsUnauthenticatedUserWithSuccessHandler_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[FBKSUserLoginInfo alloc] initWithDictionary:v3];

  (*(*(a1 + 32) + 16))();
}

- (void)logOutServerSideWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FBKSSeedPortalAPI *)self signOutURL];
  v6 = [(FBKSSeedPortalAPI *)self coreHTTPClient];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__FBKSSeedPortalAPI_logOutServerSideWithCompletion___block_invoke;
  v12[3] = &unk_1E7A90100;
  v13 = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__FBKSSeedPortalAPI_logOutServerSideWithCompletion___block_invoke_2;
  v9[3] = &unk_1E7A90128;
  v10 = v5;
  v11 = v13;
  v7 = v13;
  v8 = v5;
  [v6 dataForURL:v8 success:v12 error:v9];
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

- (void)loadFormItemWithFormTat:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  v9 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:v8];

  v10 = [(FBKSSeedPortalAPI *)self formItemsURLFormTat:v9];
  v11 = [MEMORY[0x1E695AC68] requestWithURL:v10];
  v12 = [(FBKSSeedPortalAPI *)self coreHTTPClient];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__FBKSSeedPortalAPI_loadFormItemWithFormTat_withCompletion___block_invoke;
  v17[3] = &unk_1E7A90150;
  v18 = v6;
  v19 = v7;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__FBKSSeedPortalAPI_loadFormItemWithFormTat_withCompletion___block_invoke_57;
  v15[3] = &unk_1E7A8FFF8;
  v16 = v19;
  v13 = v19;
  v14 = v6;
  [v12 jsonForURLRequest:v11 success:v17 error:v15];
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