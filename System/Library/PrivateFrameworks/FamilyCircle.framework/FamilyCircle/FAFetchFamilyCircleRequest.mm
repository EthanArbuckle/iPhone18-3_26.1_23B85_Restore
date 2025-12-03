@interface FAFetchFamilyCircleRequest
- (FAFetchFamilyCircleRequest)init;
- (id)fetchCachedFamilyCircle:(id *)circle;
- (id)fetchCachedFamilyCircleWithCache:(id)cache deviceInfo:(id)info error:(id *)error;
- (id)fetchFamilyCircleWithError:(id *)error;
- (id)requestOptions;
- (unint64_t)_cachePolicy;
- (void)startRequestWithCompletionHandler:(id)handler;
@end

@implementation FAFetchFamilyCircleRequest

- (FAFetchFamilyCircleRequest)init
{
  v3.receiver = self;
  v3.super_class = FAFetchFamilyCircleRequest;
  result = [(FAFamilyCircleRequest *)&v3 init];
  if (result)
  {
    result->_cachePolicy = 1;
  }

  return result;
}

- (unint64_t)_cachePolicy
{
  if ([(FAFetchFamilyCircleRequest *)self doNotFetchFromServer])
  {
    v3 = _FALogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(FAFetchFamilyCircleRequest *)v3 _cachePolicy];
    }

    self->_cachePolicy = 0;
  }

  if (![(FAFetchFamilyCircleRequest *)self forceServerFetch])
  {
    return self->_cachePolicy;
  }

  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(FAFetchFamilyCircleRequest *)v4 _cachePolicy];
  }

  result = 2;
  self->_cachePolicy = 2;
  return result;
}

- (id)requestOptions
{
  v15 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = FAFetchFamilyCircleRequest;
  requestOptions = [(FAFamilyCircleRequest *)&v12 requestOptions];
  v4 = [requestOptions mutableCopy];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[FAFetchFamilyCircleRequest promptUserToResolveAuthenticatonFailure](self, "promptUserToResolveAuthenticatonFailure")}];
  [v4 setObject:v5 forKeyedSubscript:@"promptUserToResolveAuthenticatonFailure"];

  if ([(FAFetchFamilyCircleRequest *)self qualityOfService])
  {
    v6 = _FALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = FALogStringForQualityOfService([(FAFetchFamilyCircleRequest *)self qualityOfService]);
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1B70B0000, v6, OS_LOG_TYPE_DEFAULT, "Client set desired QOS - %@", buf, 0xCu);
    }

    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[FAFetchFamilyCircleRequest qualityOfService](self, "qualityOfService")}];
    [v4 setObject:v8 forKeyedSubscript:@"FAQualityOfServiceOptionKey"];
  }

  v9 = [v4 copy];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)startRequestWithCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __64__FAFetchFamilyCircleRequest_startRequestWithCompletionHandler___block_invoke;
  v16[3] = &unk_1E7CA46D8;
  v5 = handlerCopy;
  v17 = v5;
  v6 = [(FAFamilyCircleRequest *)self serviceRemoteObjectWithErrorHandler:v16];
  v7 = _FALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B70B0000, v7, OS_LOG_TYPE_DEFAULT, "Starting family request: %@", buf, 0xCu);
  }

  _cachePolicy = [(FAFetchFamilyCircleRequest *)self _cachePolicy];
  signedInAccountShouldBeApprover = [(FAFetchFamilyCircleRequest *)self signedInAccountShouldBeApprover];
  context = [(FAFetchFamilyCircleRequest *)self context];
  requestOptions = [(FAFetchFamilyCircleRequest *)self requestOptions];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__FAFetchFamilyCircleRequest_startRequestWithCompletionHandler___block_invoke_29;
  v14[3] = &unk_1E7CA58A8;
  v14[4] = self;
  v15 = v5;
  v12 = v5;
  [v6 fetchFamilyCircleWithCachePolicy:_cachePolicy signedInAccountShouldBeApprover:signedInAccountShouldBeApprover context:context options:requestOptions replyBlock:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __64__FAFetchFamilyCircleRequest_startRequestWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1B70B0000, v4, OS_LOG_TYPE_DEFAULT, "FAFetchFamilyCircleRequest: Error from service - %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __64__FAFetchFamilyCircleRequest_startRequestWithCompletionHandler___block_invoke_29(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = _FALogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412802;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_1B70B0000, v11, OS_LOG_TYPE_DEFAULT, "Family request came back with response: %@ - %@ - %@", &v15, 0x20u);
  }

  objc_storeStrong((*(a1 + 32) + 64), a2);
  v12 = *(a1 + 40);
  if (v9 | v10)
  {
    (*(v12 + 16))(v12, v9, v10);
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] fa_familyErrorWithCode:-1015];
    (*(v12 + 16))(v12, 0, v13);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)fetchFamilyCircleWithError:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__9;
  v38 = __Block_byref_object_dispose__9;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__9;
  v32 = __Block_byref_object_dispose__9;
  v33 = 0;
  v5 = _FASignpostLogSystem();
  v6 = _FASignpostCreate(v5);
  v8 = v7;

  v9 = _FASignpostLogSystem();
  v10 = v9;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v6, "FetchFamilyCircleRequestSync", "", buf, 2u);
  }

  v11 = _FASignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(FAFetchFamilyCircleRequest *)v6 fetchFamilyCircleWithError:v11];
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __57__FAFetchFamilyCircleRequest_fetchFamilyCircleWithError___block_invoke;
  v27[3] = &unk_1E7CA5670;
  v27[4] = &v34;
  v12 = [(FAFamilyCircleRequest *)self synchronousRemoteObjectWithErrorHandler:v27];
  _cachePolicy = [(FAFetchFamilyCircleRequest *)self _cachePolicy];
  signedInAccountShouldBeApprover = [(FAFetchFamilyCircleRequest *)self signedInAccountShouldBeApprover];
  context = [(FAFetchFamilyCircleRequest *)self context];
  requestOptions = [(FAFetchFamilyCircleRequest *)self requestOptions];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __57__FAFetchFamilyCircleRequest_fetchFamilyCircleWithError___block_invoke_2;
  v26[3] = &unk_1E7CA58D0;
  v26[4] = &v34;
  v26[5] = &v28;
  [v12 fetchFamilyCircleWithCachePolicy:_cachePolicy signedInAccountShouldBeApprover:signedInAccountShouldBeApprover context:context options:requestOptions replyBlock:v26];

  if (error)
  {
    *error = v35[5];
  }

  Nanoseconds = _FASignpostGetNanoseconds(v6, v8);
  v18 = _FASignpostLogSystem();
  v19 = v18;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    code = [v35[5] code];
    *buf = 67240192;
    LODWORD(v41) = code;
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v19, OS_SIGNPOST_INTERVAL_END, v6, "FetchFamilyCircleRequestSync", " ErrorCode=%{public,signpost.telemetry:number1,name=ErrorCode}d ", buf, 8u);
  }

  v21 = _FASignpostLogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    code2 = [v35[5] code];
    *buf = 134218496;
    v41 = v6;
    v42 = 2048;
    v43 = Nanoseconds / 1000000000.0;
    v44 = 1026;
    v45 = code2;
    _os_log_debug_impl(&dword_1B70B0000, v21, OS_LOG_TYPE_DEBUG, "END [%lld] %fs:FetchFamilyCircleRequestSync  ErrorCode=%{public,signpost.telemetry:number1,name=ErrorCode}d ", buf, 0x1Cu);
  }

  v22 = v29[5];
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);
  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

void __57__FAFetchFamilyCircleRequest_fetchFamilyCircleWithError___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _FALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412802;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_1B70B0000, v10, OS_LOG_TYPE_DEFAULT, "Synchronous family request came back with response: %@ - %@ - %@", &v17, 0x20u);
  }

  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v9;
  v13 = v9;

  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v8;

  v16 = *MEMORY[0x1E69E9840];
}

- (id)fetchCachedFamilyCircle:(id *)circle
{
  v5 = objc_alloc_init(FADeviceInfo);
  defaultStore = [MEMORY[0x1E6959A48] defaultStore];
  v7 = [FAFamilyCircleCache alloc];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  v9 = [(FAFamilyCircleCache *)v7 initWithAccount:aa_primaryAppleAccount];

  v10 = [(FAFetchFamilyCircleRequest *)self fetchCachedFamilyCircleWithCache:v9 deviceInfo:v5 error:circle];

  return v10;
}

- (id)fetchCachedFamilyCircleWithCache:(id)cache deviceInfo:(id)info error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  infoCopy = info;
  v10 = _FALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1B70B0000, v10, OS_LOG_TYPE_DEFAULT, "Starting in process family request: %@", buf, 0xCu);
  }

  unlockedSinceBoot = [infoCopy unlockedSinceBoot];
  if (unlockedSinceBoot)
  {
    v19 = 0;
    v12 = [cacheCopy loadWithError:&v19];
    v13 = v19;
    familyCircleIfFresh = [v12 familyCircleIfFresh];
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] fa_familyErrorWithCode:-1010];
    familyCircleIfFresh = 0;
  }

  v15 = _FALogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = familyCircleIfFresh;
    v22 = 2112;
    v23 = v13;
    _os_log_impl(&dword_1B70B0000, v15, OS_LOG_TYPE_DEFAULT, "Family request came back with response: %@ - %@", buf, 0x16u);
  }

  if (error)
  {
    v16 = v13;
    *error = v13;
  }

  v17 = *MEMORY[0x1E69E9840];

  return familyCircleIfFresh;
}

- (void)fetchFamilyCircleWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_1B70B0000, a2, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: FetchFamilyCircleRequestSync ", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)fetchCachedFamilyCircle:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B70B0000, a2, OS_LOG_TYPE_ERROR, "fetchCachedFamilyCircle exception %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end