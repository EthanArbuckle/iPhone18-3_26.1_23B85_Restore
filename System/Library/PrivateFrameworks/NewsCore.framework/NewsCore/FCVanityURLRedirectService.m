@interface FCVanityURLRedirectService
- (BOOL)hasRedirectForURL:(id)a3;
- (FCFetchedValueManager)vanityURLMappingManager;
- (FCVanityURLRedirectService)init;
- (FCVanityURLRedirectService)initWithContentContext:(id)a3;
- (id)_destinationURLForURL:(id)a3;
- (void)acquireHoldTokenOnUnderlyingAssets;
- (void)resolveURL:(id)a3 withQualityOfService:(int64_t)a4 completion:(id)a5;
- (void)updateUnderlyingMappingWithQualityOfService:(int64_t)a3 completion:(id)a4;
@end

@implementation FCVanityURLRedirectService

- (FCFetchedValueManager)vanityURLMappingManager
{
  [MEMORY[0x1E696AF00] isMainThread];
  vanityURLMappingManager = self->_vanityURLMappingManager;
  if (!vanityURLMappingManager)
  {
    v4 = [FCCoreConfigurationFetchedValueDescriptor alloc];
    v5 = [(FCVanityURLRedirectService *)self contentContext];
    v6 = [v5 configurationManager];
    v7 = [(FCCoreConfigurationFetchedValueDescriptor *)v4 initWithConfigurationManager:v6];

    v8 = [[FCFetchedValueManager alloc] initWithDescriptor:v7];
    v9 = [[FCVanityURLConfigurationFetchedValueDescriptor alloc] initWithConfigurationManager:v8];
    v10 = [[FCFetchedValueManager alloc] initWithDescriptor:v9];
    v11 = [FCHeldPBCodableFetchedValueDescriptor alloc];
    v12 = objc_opt_class();
    v13 = [(FCVanityURLRedirectService *)self contentContext];
    v14 = [(FCHeldPBCodableFetchedValueDescriptor *)v11 initWithCodableClass:v12 contentContext:v13 resourceConfigurationManager:v10];

    v15 = [[FCFetchedValueManager alloc] initWithDescriptor:v14];
    v16 = self->_vanityURLMappingManager;
    self->_vanityURLMappingManager = v15;

    vanityURLMappingManager = self->_vanityURLMappingManager;
  }

  return vanityURLMappingManager;
}

- (FCVanityURLRedirectService)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCVanityURLRedirectService init]";
    v10 = 2080;
    v11 = "FCVanityURLRedirectService.m";
    v12 = 1024;
    v13 = 37;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCVanityURLRedirectService init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCVanityURLRedirectService)initWithContentContext:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "contentContext"];
    *buf = 136315906;
    v13 = "[FCVanityURLRedirectService initWithContentContext:]";
    v14 = 2080;
    v15 = "FCVanityURLRedirectService.m";
    v16 = 1024;
    v17 = 42;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v11.receiver = self;
  v11.super_class = FCVanityURLRedirectService;
  v6 = [(FCVanityURLRedirectService *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentContext, a3);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)hasRedirectForURL:(id)a3
{
  v3 = [(FCVanityURLRedirectService *)self destinationURLForURL:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)resolveURL:(id)a3 withQualityOfService:(int64_t)a4 completion:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (!v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "URL"];
    *buf = 136315906;
    v20 = "[FCVanityURLRedirectService resolveURL:withQualityOfService:completion:]";
    v21 = 2080;
    v22 = "FCVanityURLRedirectService.m";
    v23 = 1024;
    v24 = 85;
    v25 = 2114;
    v26 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v9)
    {
      goto LABEL_6;
    }
  }

  else if (v9)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completion"];
    *buf = 136315906;
    v20 = "[FCVanityURLRedirectService resolveURL:withQualityOfService:completion:]";
    v21 = 2080;
    v22 = "FCVanityURLRedirectService.m";
    v23 = 1024;
    v24 = 86;
    v25 = 2114;
    v26 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v10 = [(FCVanityURLRedirectService *)self vanityURLMappingManager];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__FCVanityURLRedirectService_resolveURL_withQualityOfService_completion___block_invoke;
  v16[3] = &unk_1E7C444E0;
  v17 = v8;
  v18 = v9;
  v16[4] = self;
  v11 = v8;
  v12 = v9;
  [v10 fetchValueWithCachePolicy:1 qualityOfService:a4 completion:v16];

  v13 = *MEMORY[0x1E69E9840];
}

void __73__FCVanityURLRedirectService_resolveURL_withQualityOfService_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = FCVanityURLLog;
  if (os_log_type_enabled(FCVanityURLLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [a2 first];
    *buf = 138543362;
    v20 = v8;
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "fetched vanity URL mapping %{public}@", buf, 0xCu);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__FCVanityURLRedirectService_resolveURL_withQualityOfService_completion___block_invoke_18;
  v14[3] = &unk_1E7C444B8;
  v15 = v5;
  v9 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v18 = v9;
  v16 = v10;
  v17 = v11;
  v12 = v5;
  FCPerformBlockOnMainThread(v14);

  v13 = *MEMORY[0x1E69E9840];
}

void __73__FCVanityURLRedirectService_resolveURL_withQualityOfService_completion___block_invoke_18(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (*(a1 + 32))
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 56);

    v2(v3, 0);
  }

  else
  {
    v4 = [*(a1 + 40) _destinationURLForURL:*(a1 + 48)];
    (*(v1 + 16))(v1, v4, 0);
  }
}

- (void)acquireHoldTokenOnUnderlyingAssets
{
  v2 = [(FCVanityURLRedirectService *)self vanityURLMappingManager];
}

- (void)updateUnderlyingMappingWithQualityOfService:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(FCVanityURLRedirectService *)self vanityURLMappingManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__FCVanityURLRedirectService_updateUnderlyingMappingWithQualityOfService_completion___block_invoke;
  v9[3] = &unk_1E7C44508;
  v10 = v6;
  v8 = v6;
  [v7 fetchValueWithQualityOfService:a3 completion:v9];
}

uint64_t __85__FCVanityURLRedirectService_updateUnderlyingMappingWithQualityOfService_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_destinationURLForURL:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "URL"];
    *buf = 136315906;
    v14 = "[FCVanityURLRedirectService _destinationURLForURL:]";
    v15 = 2080;
    v16 = "FCVanityURLRedirectService.m";
    v17 = 1024;
    v18 = 127;
    v19 = 2114;
    v20 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCVanityURLRedirectService *)self vanityURLMappingManager];
  v6 = [v5 value];

  v7 = [v6 first];
  if (v7)
  {
    v8 = [[FCVanityURLMapper alloc] initWithVanityURLMapping:v7];
    v9 = [(FCVanityURLMapper *)v8 URLForVanityURL:v4];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end