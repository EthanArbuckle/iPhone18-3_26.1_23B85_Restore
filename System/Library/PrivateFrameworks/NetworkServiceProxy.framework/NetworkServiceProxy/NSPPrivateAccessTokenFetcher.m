@interface NSPPrivateAccessTokenFetcher
+ (BOOL)checkOriginAllowedAsThirdParty:(id)a3;
+ (void)fetchAuxiliaryAuthenticationDataFromCacheForType:(unint64_t)a3 label:(id)a4 cacheKey:(id)a5 completionHandler:(id)a6;
+ (void)saveAuxiliaryAuthenticationDataToCache:(id)a3 type:(unint64_t)a4 forLabel:(id)a5 cacheKey:(id)a6;
- (NSPPrivateAccessTokenFetcher)initWithChallenge:(id)a3 tokenKey:(id)a4 auxiliaryAuthenticationChallenge:(id)a5 auxiliaryAuthenticationKey:(id)a6 auxiliaryAuthenticationLabel:(id)a7;
- (NSPPrivateAccessTokenFetcher)initWithChallenge:(id)a3 tokenKey:(id)a4 originNameKey:(id)a5;
- (id)initForKnownIssuerWithChallenge:(id)a3;
- (id)initForKnownIssuerWithLongLivedTokenChallenge:(id)a3 oneTimeTokenChallenge:(id)a4;
- (void)addSecondaryChallenge:(id)a3 tokenKey:(id)a4 originNameKey:(id)a5;
- (void)checkRemainingCostQuotaWithQueue:(id)a3 completionHandler:(id)a4;
- (void)fetchLinkedTokenPairWithQueue:(id)a3 completionHandler:(id)a4;
- (void)fetchTokenAndAuxiliaryAuthenticationWithQueue:(id)a3 completionHandler:(id)a4;
- (void)fetchTokenPairWithQueue:(id)a3 completionHandler:(id)a4;
- (void)fetchTokenWithQueue:(id)a3 completionHandler:(id)a4;
- (void)generateTokenRequestForKey:(void *)a3 withQueue:(void *)a4 completionHandler:;
- (void)generateTokenRequestWithQueue:(id)a3 completionHandler:(id)a4;
- (void)handleTokenResponse:(id)a3 withQueue:(id)a4 completionHandler:(id)a5;
- (void)saveOneTimeTokenToCache:(id)a3 oneTimeTokenSalt:(id)a4 longLivedToken:(id)a5;
- (void)saveTokenToCache:(id)a3;
- (void)setCustomAttester:(id)a3 headers:(id)a4;
@end

@implementation NSPPrivateAccessTokenFetcher

- (NSPPrivateAccessTokenFetcher)initWithChallenge:(id)a3 tokenKey:(id)a4 originNameKey:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v18 = nplog_obj();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
LABEL_9:

LABEL_12:
      v13 = 0;
      goto LABEL_5;
    }

    *buf = 136315138;
    v22 = "[NSPPrivateAccessTokenFetcher initWithChallenge:tokenKey:originNameKey:]";
    v19 = "%s called with null challenge";
LABEL_14:
    _os_log_fault_impl(&dword_1AE7E2000, v18, OS_LOG_TYPE_FAULT, v19, buf, 0xCu);
    goto LABEL_9;
  }

  if (!v9)
  {
    v18 = nplog_obj();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_9;
    }

    *buf = 136315138;
    v22 = "[NSPPrivateAccessTokenFetcher initWithChallenge:tokenKey:originNameKey:]";
    v19 = "%s called with null tokenKey";
    goto LABEL_14;
  }

  v20.receiver = self;
  v20.super_class = NSPPrivateAccessTokenFetcher;
  v11 = [(NSPPrivateAccessTokenFetcher *)&v20 init];
  if (!v11)
  {
    self = nplog_obj();
    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1AE7E2000, &self->super, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
    }

    goto LABEL_12;
  }

  v13 = v11;
  objc_setProperty_atomic(v11, v12, v8, 64);
  objc_setProperty_atomic(v13, v14, v9, 80);
  objc_setProperty_atomic(v13, v15, v10, 88);
LABEL_5:

  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)initForKnownIssuerWithChallenge:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v10 = nplog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v13 = "[NSPPrivateAccessTokenFetcher initForKnownIssuerWithChallenge:]";
      _os_log_fault_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_FAULT, "%s called with null challenge", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v11.receiver = self;
  v11.super_class = NSPPrivateAccessTokenFetcher;
  v5 = [(NSPPrivateAccessTokenFetcher *)&v11 init];
  if (!v5)
  {
    self = nplog_obj();
    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1AE7E2000, &self->super, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
    }

LABEL_10:

    v7 = 0;
    goto LABEL_4;
  }

  v7 = v5;
  objc_setProperty_atomic(v5, v6, v4, 64);
LABEL_4:

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)initForKnownIssuerWithLongLivedTokenChallenge:(id)a3 oneTimeTokenChallenge:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v15 = nplog_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
LABEL_9:

LABEL_12:
      v11 = 0;
      goto LABEL_5;
    }

    *buf = 136315138;
    v19 = "[NSPPrivateAccessTokenFetcher initForKnownIssuerWithLongLivedTokenChallenge:oneTimeTokenChallenge:]";
    v16 = "%s called with null longLivedTokenChallenge";
LABEL_14:
    _os_log_fault_impl(&dword_1AE7E2000, v15, OS_LOG_TYPE_FAULT, v16, buf, 0xCu);
    goto LABEL_9;
  }

  if (!v7)
  {
    v15 = nplog_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_9;
    }

    *buf = 136315138;
    v19 = "[NSPPrivateAccessTokenFetcher initForKnownIssuerWithLongLivedTokenChallenge:oneTimeTokenChallenge:]";
    v16 = "%s called with null oneTimeTokenChallenge";
    goto LABEL_14;
  }

  v17.receiver = self;
  v17.super_class = NSPPrivateAccessTokenFetcher;
  v9 = [(NSPPrivateAccessTokenFetcher *)&v17 init];
  if (!v9)
  {
    self = nplog_obj();
    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1AE7E2000, &self->super, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
    }

    goto LABEL_12;
  }

  v11 = v9;
  objc_setProperty_atomic(v9, v10, v6, 64);
  objc_setProperty_atomic(v11, v12, v8, 72);
LABEL_5:

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

- (NSPPrivateAccessTokenFetcher)initWithChallenge:(id)a3 tokenKey:(id)a4 auxiliaryAuthenticationChallenge:(id)a5 auxiliaryAuthenticationKey:(id)a6 auxiliaryAuthenticationLabel:(id)a7
{
  v31 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v12)
  {
    v26 = nplog_obj();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
LABEL_9:

LABEL_12:
      v19 = 0;
      goto LABEL_5;
    }

    *buf = 136315138;
    v30 = "[NSPPrivateAccessTokenFetcher initWithChallenge:tokenKey:auxiliaryAuthenticationChallenge:auxiliaryAuthenticationKey:auxiliaryAuthenticationLabel:]";
    v27 = "%s called with null challenge";
LABEL_14:
    _os_log_fault_impl(&dword_1AE7E2000, v26, OS_LOG_TYPE_FAULT, v27, buf, 0xCu);
    goto LABEL_9;
  }

  if (!v14)
  {
    v26 = nplog_obj();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_9;
    }

    *buf = 136315138;
    v30 = "[NSPPrivateAccessTokenFetcher initWithChallenge:tokenKey:auxiliaryAuthenticationChallenge:auxiliaryAuthenticationKey:auxiliaryAuthenticationLabel:]";
    v27 = "%s called with null auxiliaryAuthenticationChallenge";
    goto LABEL_14;
  }

  v28.receiver = self;
  v28.super_class = NSPPrivateAccessTokenFetcher;
  v17 = [(NSPPrivateAccessTokenFetcher *)&v28 init];
  if (!v17)
  {
    self = nplog_obj();
    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1AE7E2000, &self->super, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
    }

    goto LABEL_12;
  }

  v19 = v17;
  objc_setProperty_atomic(v17, v18, v12, 64);
  objc_setProperty_atomic(v19, v20, v13, 80);
  objc_setProperty_atomic(v19, v21, v14, 96);
  objc_setProperty_atomic(v19, v22, v15, 104);
  objc_setProperty_atomic(v19, v23, v16, 112);
LABEL_5:

  v24 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)addSecondaryChallenge:(id)a3 tokenKey:(id)a4 originNameKey:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v17 = [[NSPPrivateAccessTokenFetcher alloc] initWithChallenge:v10 tokenKey:v9 originNameKey:v8];

  v12 = v17;
  if (v17)
  {
    if (self)
    {
      if (!objc_getProperty(self, v11, 120, 1))
      {
        v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
        objc_setProperty_atomic(self, v15, v14, 120);
      }

      Property = objc_getProperty(self, v13, 120, 1);
    }

    else
    {

      Property = 0;
    }

    [Property addObject:v17];
    v12 = v17;
  }
}

- (void)setCustomAttester:(id)a3 headers:(id)a4
{
  if (self)
  {
    newValue = a4;
    objc_setProperty_atomic(self, v6, a3, 48);
    objc_setProperty_atomic(self, v7, newValue, 56);
  }
}

- (void)fetchTokenWithQueue:(id)a3 completionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v10 = nplog_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v17 = "[NSPPrivateAccessTokenFetcher fetchTokenWithQueue:completionHandler:]";
    v12 = "%s called with null queue";
LABEL_9:
    _os_log_fault_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_FAULT, v12, buf, 0xCu);
    goto LABEL_4;
  }

  if (!v7)
  {
    v10 = nplog_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v17 = "[NSPPrivateAccessTokenFetcher fetchTokenWithQueue:completionHandler:]";
    v12 = "%s called with null completionHandler";
    goto LABEL_9;
  }

  v9 = getServerConnection();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__NSPPrivateAccessTokenFetcher_fetchTokenWithQueue_completionHandler___block_invoke;
  v13[3] = &unk_1E7A30DB8;
  v14 = v6;
  v15 = v8;
  [v9 fetchPrivateAccessTokenWithFetcher:self allowRetry:1 completionHandler:v13];

  v10 = v14;
LABEL_4:

  v11 = *MEMORY[0x1E69E9840];
}

void __70__NSPPrivateAccessTokenFetcher_fetchTokenWithQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_error_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch private access token: %@", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__NSPPrivateAccessTokenFetcher_fetchTokenWithQueue_completionHandler___block_invoke_171;
  block[3] = &unk_1E7A30AB8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v15 = v6;
  v16 = v9;
  v14 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)fetchTokenPairWithQueue:(id)a3 completionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v10 = nplog_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v17 = "[NSPPrivateAccessTokenFetcher fetchTokenPairWithQueue:completionHandler:]";
    v12 = "%s called with null queue";
LABEL_9:
    _os_log_fault_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_FAULT, v12, buf, 0xCu);
    goto LABEL_4;
  }

  if (!v7)
  {
    v10 = nplog_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v17 = "[NSPPrivateAccessTokenFetcher fetchTokenPairWithQueue:completionHandler:]";
    v12 = "%s called with null completionHandler";
    goto LABEL_9;
  }

  v9 = getServerConnection();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__NSPPrivateAccessTokenFetcher_fetchTokenPairWithQueue_completionHandler___block_invoke;
  v13[3] = &unk_1E7A30DE0;
  v14 = v6;
  v15 = v8;
  [v9 fetchPrivateAccessTokenPairWithFetcher:self allowRetry:1 completionHandler:v13];

  v10 = v14;
LABEL_4:

  v11 = *MEMORY[0x1E69E9840];
}

void __74__NSPPrivateAccessTokenFetcher_fetchTokenPairWithQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a5;
  if (v10)
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v10;
      _os_log_error_impl(&dword_1AE7E2000, v11, OS_LOG_TYPE_ERROR, "Failed to fetch private access token pair: %@", buf, 0xCu);
    }
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __74__NSPPrivateAccessTokenFetcher_fetchTokenPairWithQueue_completionHandler___block_invoke_173;
  v18[3] = &unk_1E7A30C20;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v13;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  dispatch_async(v12, v18);

  v17 = *MEMORY[0x1E69E9840];
}

- (void)fetchLinkedTokenPairWithQueue:(id)a3 completionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v10 = nplog_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v17 = "[NSPPrivateAccessTokenFetcher fetchLinkedTokenPairWithQueue:completionHandler:]";
    v12 = "%s called with null queue";
LABEL_9:
    _os_log_fault_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_FAULT, v12, buf, 0xCu);
    goto LABEL_4;
  }

  if (!v7)
  {
    v10 = nplog_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v17 = "[NSPPrivateAccessTokenFetcher fetchLinkedTokenPairWithQueue:completionHandler:]";
    v12 = "%s called with null completionHandler";
    goto LABEL_9;
  }

  v9 = getServerConnection();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__NSPPrivateAccessTokenFetcher_fetchLinkedTokenPairWithQueue_completionHandler___block_invoke;
  v13[3] = &unk_1E7A30DE0;
  v14 = v6;
  v15 = v8;
  [v9 fetchPrivateAccessTokenPairWithFetcher:self allowRetry:1 completionHandler:v13];

  v10 = v14;
LABEL_4:

  v11 = *MEMORY[0x1E69E9840];
}

void __80__NSPPrivateAccessTokenFetcher_fetchLinkedTokenPairWithQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    v13 = nplog_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v12;
      _os_log_error_impl(&dword_1AE7E2000, v13, OS_LOG_TYPE_ERROR, "Failed to fetch linked private access token pair: %@", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__NSPPrivateAccessTokenFetcher_fetchLinkedTokenPairWithQueue_completionHandler___block_invoke_175;
  block[3] = &unk_1E7A30C70;
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v25 = v12;
  v26 = v15;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  v19 = v9;
  dispatch_async(v14, block);

  v20 = *MEMORY[0x1E69E9840];
}

- (void)fetchTokenAndAuxiliaryAuthenticationWithQueue:(id)a3 completionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v10 = nplog_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v17 = "[NSPPrivateAccessTokenFetcher fetchTokenAndAuxiliaryAuthenticationWithQueue:completionHandler:]";
    v12 = "%s called with null queue";
LABEL_9:
    _os_log_fault_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_FAULT, v12, buf, 0xCu);
    goto LABEL_4;
  }

  if (!v7)
  {
    v10 = nplog_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v17 = "[NSPPrivateAccessTokenFetcher fetchTokenAndAuxiliaryAuthenticationWithQueue:completionHandler:]";
    v12 = "%s called with null completionHandler";
    goto LABEL_9;
  }

  v9 = getServerConnection();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __96__NSPPrivateAccessTokenFetcher_fetchTokenAndAuxiliaryAuthenticationWithQueue_completionHandler___block_invoke;
  v13[3] = &unk_1E7A30E08;
  v14 = v6;
  v15 = v8;
  [v9 fetchPrivateAccessTokenAndAuxAuthWithFetcher:self allowRetry:1 completionHandler:v13];

  v10 = v14;
LABEL_4:

  v11 = *MEMORY[0x1E69E9840];
}

void __96__NSPPrivateAccessTokenFetcher_fetchTokenAndAuxiliaryAuthenticationWithQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = nplog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v9;
      _os_log_error_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_ERROR, "Failed to fetch private access token and auxiliary authentication: %@", buf, 0xCu);
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __96__NSPPrivateAccessTokenFetcher_fetchTokenAndAuxiliaryAuthenticationWithQueue_completionHandler___block_invoke_176;
  v17[3] = &unk_1E7A30C20;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v18 = v7;
  v19 = v8;
  v20 = v9;
  v21 = v12;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  dispatch_async(v11, v17);

  v16 = *MEMORY[0x1E69E9840];
}

+ (BOOL)checkOriginAllowedAsThirdParty:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = getServerConnection();
    v5 = [v4 checkOriginAllowedAsThirdParty:v3];
  }

  else
  {
    v8 = nplog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315138;
      v10 = "+[NSPPrivateAccessTokenFetcher checkOriginAllowedAsThirdParty:]";
      _os_log_fault_impl(&dword_1AE7E2000, v8, OS_LOG_TYPE_FAULT, "%s called with null origin", &v9, 0xCu);
    }

    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)generateTokenRequestForKey:(void *)a3 withQueue:(void *)a4 completionHandler:
{
  v175 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v9 = a2;
    v10 = objc_alloc_init(NSPPrivacyProxyTokenKey);
    [(NSPPrivacyProxyTokenKey *)v10 setKey:v9];

    -[NSPPrivacyProxyTokenKey setMetadataSize:](v10, "setMetadataSize:", [a1 metadataSize]);
    v11 = [NSPPrivateAccessTokenChallenge alloc];
    v13 = [(NSPPrivateAccessTokenChallenge *)v11 initWithData:objc_getProperty(a1, v12, 64, 1)];
    if (![(NSPPrivateAccessTokenChallenge *)v13 isSupportedTokenType])
    {
      v33 = nplog_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1AE7E2000, v33, OS_LOG_TYPE_ERROR, "Unsupported token type, cannot generate token request", buf, 2u);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __87__NSPPrivateAccessTokenFetcher_generateTokenRequestForKey_withQueue_completionHandler___block_invoke;
      block[3] = &unk_1E7A30E30;
      v166 = v8;
      dispatch_async(v7, block);
      v24 = v166;
      goto LABEL_78;
    }

    v14 = v10;
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18 = v13;
    v19 = objc_getProperty(a1, v17, 88, 1);
    self = a1;
    v20 = [a1 selectedOrigin];
    v152 = v18;
    v21 = v18;
    v150 = v14;
    v154 = v14;
    v22 = v19;
    v153 = v20;
    v23 = v16;
    v24 = v15;
    v25 = v21;
    objc_opt_self();
    v149 = v22;
    if (!v21)
    {
      goto LABEL_63;
    }

    v148 = v21;
    if ([(NSPPrivateAccessTokenChallenge *)v21 tokenType]== 2 || [(NSPPrivateAccessTokenChallenge *)v21 tokenType]== 3)
    {
      v147 = v21;
      v26 = v154;
      v156 = v22;
      v155 = v153;
      v146 = v23;
      v145 = v24;
      v27 = objc_opt_self();
      v28 = objc_alloc(MEMORY[0x1E69996D8]);
      v157 = v26;
      v29 = [(NSPPrivacyProxyTokenKey *)v26 key];
      v167 = 0;
      v30 = [v28 initWithPublicKey:v29 error:&v167];
      v31 = v167;

      v144 = v30;
      v142 = v31;
      if (v31)
      {
        log = nplog_obj();
        v13 = v152;
        if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
LABEL_42:
          v68 = 0;
LABEL_69:
          v100 = v154;
          v25 = v148;

          goto LABEL_70;
        }

        v32 = [(NSPPrivateAccessTokenChallenge *)v147 issuerName];
        *buf = 138412546;
        *&buf[4] = v31;
        *&buf[12] = 2112;
        *&buf[14] = v32;
        _os_log_error_impl(&dword_1AE7E2000, log, OS_LOG_TYPE_ERROR, "RSABSSATokenBlinder initWithPublicKey failed with error %@ for %@", buf, 0x16u);
LABEL_41:

        goto LABEL_42;
      }

      v133 = v27;
      v13 = v152;
      if (!v30)
      {
        log = nplog_obj();
        if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          *&buf[4] = "+[NSPPrivateAccessTokenFetcher createBlindRSATokenRequestsWithChallenge:tokenKey:tokenCount:originNameKey:selectedOrigin:waitingTokenList:clientNonceArray:clientSaltArray:longLivedToken:]";
          _os_log_fault_impl(&dword_1AE7E2000, log, OS_LOG_TYPE_FAULT, "%s called with null tokenBlinder", buf, 0xCu);
        }

        goto LABEL_42;
      }

      log = objc_alloc_init(MEMORY[0x1E695DF70]);
      objc_opt_self();
      memset(buf, 0, 32);
      if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x20uLL, buf) < 0)
      {
        v85 = nplog_obj();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          LOWORD(md) = 0;
          _os_log_error_impl(&dword_1AE7E2000, v85, OS_LOG_TYPE_ERROR, "generate tokens: SecRandomCopyBytes failed", &md, 2u);
        }
      }

      else
      {
        v34 = [MEMORY[0x1E695DEF0] dataWithBytes:buf length:32];
        if (v34)
        {
          v35 = v34;
          v138 = v24;
          v36 = [(NSPPrivacyProxyTokenKey *)v157 key];
          v37 = v147;
          v38 = v35;
          v39 = v36;
          objc_opt_self();
          v140 = v7;
          if (v39)
          {
            if ([(NSPPrivateAccessTokenChallenge *)v37 tokenType]== 2 || [(NSPPrivateAccessTokenChallenge *)v37 tokenType]== 3)
            {
              v40 = objc_alloc_init(MEMORY[0x1E695DF88]);
              *v168 = __rev16([(NSPPrivateAccessTokenChallenge *)v37 tokenType]);
              [v40 appendBytes:v168 length:2];
              if ([v38 length] == 32)
              {
                v41 = v38;
                [v40 appendData:v38];
                memset(buf, 0, 32);
                v42 = [(NSPPrivateAccessTokenChallenge *)v37 challengeData];
                CC_SHA256([v42 bytes], objc_msgSend(v42, "length"), buf);
                [v40 appendBytes:buf length:32];
                md = 0u;
                v172 = 0u;
                CC_SHA256([v39 bytes], objc_msgSend(v39, "length"), &md);
                [v40 appendBytes:&md length:32];
                v43 = v40;

                goto LABEL_20;
              }

              v41 = v38;
              v130 = nplog_obj();
              if (os_log_type_enabled(v130, OS_LOG_TYPE_FAULT))
              {
                *buf = 136315138;
                *&buf[4] = "+[NSPPrivateAccessTokenRequest messageToBlindForChallenge:clientNonce:tokenKey:]";
                _os_log_fault_impl(&dword_1AE7E2000, v130, OS_LOG_TYPE_FAULT, "%s called with null (clientNonce.length == 32)", buf, 0xCu);
              }

LABEL_107:
              v43 = 0;
LABEL_20:

              if (!v43)
              {
                v127 = nplog_obj();
                if (os_log_type_enabled(v127, OS_LOG_TYPE_FAULT))
                {
                  *buf = 136315138;
                  *&buf[4] = "+[NSPPrivateAccessTokenFetcher createBlindRSATokenRequestsWithChallenge:tokenKey:tokenCount:originNameKey:selectedOrigin:waitingTokenList:clientNonceArray:clientSaltArray:longLivedToken:]";
                  _os_log_fault_impl(&dword_1AE7E2000, v127, OS_LOG_TYPE_FAULT, "%s called with null messageToBlind", buf, 0xCu);
                }

                v68 = 0;
                v7 = v140;
LABEL_68:
                v13 = v152;
                v24 = v138;
                goto LABEL_69;
              }

              [log addObject:v43];
              [v145 addObject:v41];

              v44 = v144;
              v45 = log;
              v46 = v146;
              objc_opt_self();
              log = v45;
              if (v46)
              {
                if (!v45)
                {
                  v47 = 0;
LABEL_44:
                  *&md = 0;
                  v86 = [v44 tokenWaitingActivationWithContent:v45 error:{&md, v133}];
                  v87 = md;
                  if (v47)
                  {
                  }

                  if (v87)
                  {
                    v88 = nplog_obj();
                    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      *&buf[4] = v87;
                      _os_log_error_impl(&dword_1AE7E2000, v88, OS_LOG_TYPE_ERROR, "tokenWaitingActivationWithContent failed with error %@", buf, 0xCu);
                    }
                  }

                  else
                  {
                    if (v86)
                    {
                      [v46 addObject:v86];
                      v87 = v86;
                      goto LABEL_53;
                    }

                    v86 = nplog_obj();
                    if (os_log_type_enabled(v86, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 136315138;
                      *&buf[4] = "+[NSPPrivateAccessTokenFetcher generateTokensUsingTokenBlinder:contentArray:waitingTokenList:tokenCount:]";
                      _os_log_fault_impl(&dword_1AE7E2000, v86, OS_LOG_TYPE_FAULT, "%s called with null waitingActivation", buf, 0xCu);
                    }
                  }

LABEL_53:
                  v135 = v23;
                  v137 = v8;

                  if (![v46 count])
                  {
                    v129 = nplog_obj();
                    if (os_log_type_enabled(v129, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 136315138;
                      *&buf[4] = "+[NSPPrivateAccessTokenFetcher createBlindRSATokenRequestsWithChallenge:tokenKey:tokenCount:originNameKey:selectedOrigin:waitingTokenList:clientNonceArray:clientSaltArray:longLivedToken:]";
                      _os_log_fault_impl(&dword_1AE7E2000, v129, OS_LOG_TYPE_FAULT, "%s called with null (waitingTokenList.count > 0)", buf, 0xCu);
                    }

                    v68 = 0;
                    v24 = v138;
                    v7 = v140;
                    v13 = v152;
                    goto LABEL_69;
                  }

                  v89 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  md = 0u;
                  v172 = 0u;
                  v173 = 0u;
                  v174 = 0u;
                  v90 = v46;
                  v91 = [v90 countByEnumeratingWithState:&md objects:buf count:16];
                  if (v91)
                  {
                    v92 = v91;
                    v93 = *v172;
                    while (2)
                    {
                      for (i = 0; i != v92; ++i)
                      {
                        if (*v172 != v93)
                        {
                          objc_enumerationMutation(v90);
                        }

                        v95 = *(*(&md + 1) + 8 * i);
                        v96 = [NSPPrivateAccessTokenRequest alloc];
                        v97 = [(NSPPrivacyProxyTokenKey *)v157 key];
                        v98 = [v95 blindedMessage];
                        v99 = [(NSPPrivateAccessTokenRequest *)&v96->super initWithChallenge:v37 tokenKey:v97 tokenKeyID:0 originNameKey:v156 selectedOrigin:v155 blindedMessage:v98];

                        if (!v99)
                        {
                          v101 = nplog_obj();
                          if (os_log_type_enabled(v101, OS_LOG_TYPE_FAULT))
                          {
                            *v168 = 136315138;
                            v169 = "+[NSPPrivateAccessTokenFetcher createBlindRSATokenRequestsWithChallenge:tokenKey:tokenCount:originNameKey:selectedOrigin:waitingTokenList:clientNonceArray:clientSaltArray:longLivedToken:]";
                            _os_log_fault_impl(&dword_1AE7E2000, v101, OS_LOG_TYPE_FAULT, "%s called with null tokenRequest", v168, 0xCu);
                          }

                          v68 = 0;
                          goto LABEL_67;
                        }

                        [v89 addObject:v99];
                      }

                      v92 = [v90 countByEnumeratingWithState:&md objects:buf count:16];
                      if (v92)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v68 = v89;
LABEL_67:
                  v7 = v140;
                  v23 = v135;
                  v8 = v137;

                  goto LABEL_68;
                }

                if ([v45 count]== 1)
                {
                  [v45 objectAtIndexedSubscript:0];
                  v45 = v47 = v45;
                  goto LABEL_44;
                }

                v87 = nplog_obj();
                if (!os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
                {
                  goto LABEL_53;
                }

                *buf = 136315138;
                *&buf[4] = "+[NSPPrivateAccessTokenFetcher generateTokensUsingTokenBlinder:contentArray:waitingTokenList:tokenCount:]";
                v128 = "%s called with null (contentArray.count == tokenCount)";
              }

              else
              {
                v87 = nplog_obj();
                if (!os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
                {
                  goto LABEL_53;
                }

                *buf = 136315138;
                *&buf[4] = "+[NSPPrivateAccessTokenFetcher generateTokensUsingTokenBlinder:contentArray:waitingTokenList:tokenCount:]";
                v128 = "%s called with null waitingTokenList";
              }

              _os_log_fault_impl(&dword_1AE7E2000, v87, OS_LOG_TYPE_FAULT, v128, buf, 0xCu);
              goto LABEL_53;
            }

            v41 = v38;
            v40 = nplog_obj();
            if (!os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_107;
            }

            *buf = 136315138;
            *&buf[4] = "+[NSPPrivateAccessTokenRequest messageToBlindForChallenge:clientNonce:tokenKey:]";
            v126 = "%s called with null challenge.isBlindRSA";
          }

          else
          {
            v41 = v38;
            v40 = nplog_obj();
            if (!os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_107;
            }

            *buf = 136315138;
            *&buf[4] = "+[NSPPrivateAccessTokenRequest messageToBlindForChallenge:clientNonce:tokenKey:]";
            v126 = "%s called with null tokenKey";
          }

          _os_log_fault_impl(&dword_1AE7E2000, v40, OS_LOG_TYPE_FAULT, v126, buf, 0xCu);
          goto LABEL_107;
        }
      }

      v32 = nplog_obj();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        *&buf[4] = "+[NSPPrivateAccessTokenFetcher createBlindRSATokenRequestsWithChallenge:tokenKey:tokenCount:originNameKey:selectedOrigin:waitingTokenList:clientNonceArray:clientSaltArray:longLivedToken:]";
        _os_log_fault_impl(&dword_1AE7E2000, v32, OS_LOG_TYPE_FAULT, "%s called with null clientNonce", buf, 0xCu);
      }

      goto LABEL_41;
    }

    if ([(NSPPrivateAccessTokenChallenge *)v21 tokenType]== 49278)
    {
      v139 = v24;
      v141 = v7;
      v48 = v21;
      v49 = v154;
      v50 = v23;
      v51 = v49;
      v134 = v50;
      v158 = v50;
      objc_opt_self();
      v52 = MEMORY[0x1E69996C8];
      v53 = [(NSPPrivacyProxyTokenKey *)v51 key];
      v54 = [(NSPPrivacyProxyTokenKey *)v51 metadataSize];
      v55 = [(NSPPrivateAccessTokenChallenge *)v48 issuerName];
      v56 = [v52 verifyAndGetKeyIDFromKeyCommitmentsData:v53 numBuckets:v54 deploymentID:v55];

      v136 = v8;
      if (!v56)
      {
        v62 = nplog_obj();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          *&buf[4] = "+[NSPPrivateAccessTokenFetcher createATHMTokenRequestsWithChallenge:tokenKey:tokenCount:waitingTokenList:]";
          _os_log_fault_impl(&dword_1AE7E2000, v62, OS_LOG_TYPE_FAULT, "%s called with null keyIDData", buf, 0xCu);
        }

        v68 = 0;
        v67 = v158;
        goto LABEL_31;
      }

      v57 = objc_alloc(MEMORY[0x1E69996C8]);
      v58 = [(NSPPrivacyProxyTokenKey *)v51 key];
      v59 = [(NSPPrivacyProxyTokenKey *)v51 metadataSize];
      v60 = [(NSPPrivateAccessTokenChallenge *)v48 issuerName];
      *&md = 0;
      v61 = [v57 initWithKeyCommitmentsData:v58 nbuckets:v59 deploymentID:v60 error:&md];
      v62 = md;

      if (v61)
      {
        v63 = [NSPPrivateAccessTokenRequest alloc];
        v64 = [(NSPPrivacyProxyTokenKey *)v51 key];
        v65 = [v61 requestData];
        v66 = [(NSPPrivateAccessTokenRequest *)&v63->super initWithChallenge:v48 tokenKey:v64 tokenKeyID:v56 originNameKey:0 selectedOrigin:0 blindedMessage:v65];

        if (v66)
        {
          v67 = v158;
          [v158 addObject:v61];
          *buf = v66;
          v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
LABEL_30:

LABEL_31:
LABEL_88:

          v24 = v139;
          v7 = v141;
          v23 = v134;
          v8 = v136;
          v13 = v152;
          v100 = v154;
          v25 = v148;
          goto LABEL_70;
        }

        v131 = nplog_obj();
        if (os_log_type_enabled(v131, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          *&buf[4] = "+[NSPPrivateAccessTokenFetcher createATHMTokenRequestsWithChallenge:tokenKey:tokenCount:waitingTokenList:]";
          _os_log_fault_impl(&dword_1AE7E2000, v131, OS_LOG_TYPE_FAULT, "%s called with null tokenRequest", buf, 0xCu);
        }

        v66 = 0;
      }

      else
      {
        v66 = nplog_obj();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          *&buf[4] = "+[NSPPrivateAccessTokenFetcher createATHMTokenRequestsWithChallenge:tokenKey:tokenCount:waitingTokenList:]";
          _os_log_fault_impl(&dword_1AE7E2000, v66, OS_LOG_TYPE_FAULT, "%s called with null activation", buf, 0xCu);
        }
      }

      v68 = 0;
      v67 = v158;
      goto LABEL_30;
    }

    if ([(NSPPrivateAccessTokenChallenge *)v21 tokenType]!= 58796)
    {
LABEL_63:
      v68 = 0;
      v13 = v152;
      v100 = v154;
LABEL_70:

      if ([v68 count])
      {
        v102 = [v23 firstObject];
        objc_setProperty_atomic(self, v103, v102, 128);

        v104 = [v68 firstObject];
        objc_setProperty_atomic(self, v105, v104, 136);

        v106 = [v24 firstObject];
        objc_setProperty_atomic(self, v107, v106, 144);

        objc_setProperty_atomic(self, v108, v100, 152);
        v109 = nplog_obj();
        if (os_log_type_enabled(v109, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1AE7E2000, v109, OS_LOG_TYPE_INFO, "Generated token request", buf, 2u);
        }

        v160[0] = MEMORY[0x1E69E9820];
        v160[1] = 3221225472;
        v160[2] = __87__NSPPrivateAccessTokenFetcher_generateTokenRequestForKey_withQueue_completionHandler___block_invoke_198;
        v160[3] = &unk_1E7A30A18;
        v110 = &v162;
        v162 = v8;
        v161 = v68;
        dispatch_async(v7, v160);
      }

      else
      {
        v111 = nplog_obj();
        if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1AE7E2000, v111, OS_LOG_TYPE_ERROR, "Failed to generate token request", buf, 2u);
        }

        v163[0] = MEMORY[0x1E69E9820];
        v163[1] = 3221225472;
        v163[2] = __87__NSPPrivateAccessTokenFetcher_generateTokenRequestForKey_withQueue_completionHandler___block_invoke_194;
        v163[3] = &unk_1E7A30E30;
        v110 = &v164;
        v164 = v8;
        dispatch_async(v7, v163);
      }

      v10 = v150;
LABEL_78:

      goto LABEL_79;
    }

    v136 = v8;
    v139 = v24;
    v48 = v21;
    v69 = v154;
    v134 = v23;
    v159 = v23;
    objc_opt_self();
    v70 = [(NSPPrivacyProxyTokenKey *)v69 key];
    objc_opt_self();
    memset(buf, 0, 32);
    v71 = [v70 bytes];
    v72 = [v70 length];

    CC_SHA256(v71, v72, buf);
    v73 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:buf length:32];

    v74 = v73;
    if ([(NSPPrivateAccessTokenChallenge *)v48 tokenType]== 58796)
    {
      v75 = objc_alloc_init(MEMORY[0x1E695DF88]);
      v76 = [(NSPPrivateAccessTokenChallenge *)v48 issuerName];
      v77 = [v76 UTF8String];
      *buf = bswap32(strlen(v77)) >> 16;
      [v75 appendBytes:buf length:2];
      [v75 appendBytes:v77 length:strlen(v77)];
      v79 = objc_getProperty(v48, v78, 64, 1);
      v80 = v79;
      if (v79)
      {
        v81 = [v79 UTF8String];
        LOWORD(md) = bswap32(strlen(v81)) >> 16;
        [v75 appendBytes:&md length:2];
        v82 = strlen(v81);
        v83 = v75;
        p_md = v81;
      }

      else
      {
        LOWORD(md) = 0;
        p_md = &md;
        v83 = v75;
        v82 = 2;
      }

      [v83 appendBytes:p_md length:v82];
      v113 = [(NSPPrivateAccessTokenChallenge *)v48 credentialContext];
      v114 = 32 * (v113 != 0);

      LOBYTE(md) = v114;
      [v75 appendBytes:&md length:1];
      v115 = [(NSPPrivateAccessTokenChallenge *)v48 credentialContext];

      if (v115)
      {
        v116 = [(NSPPrivateAccessTokenChallenge *)v48 credentialContext];
        [v75 appendData:v116];
      }

      [v75 appendData:v74];
    }

    else
    {
      v76 = nplog_obj();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[NSPPrivateAccessTokenChallenge credentialRequestContextForKeyID:]";
        _os_log_fault_impl(&dword_1AE7E2000, v76, OS_LOG_TYPE_FAULT, "%s called with null self.isARC", buf, 0xCu);
      }

      v75 = 0;
    }

    v141 = v7;

    v117 = objc_alloc(MEMORY[0x1E69996C0]);
    v118 = [(NSPPrivacyProxyTokenKey *)v69 key];
    *&md = 0;
    v119 = [v117 initWithRequestContext:v75 serverPublicKey:v118 error:&md];
    v120 = md;

    if (v119)
    {
      v121 = [NSPPrivateAccessTokenRequest alloc];
      v122 = [(NSPPrivacyProxyTokenKey *)v69 key];
      v123 = [v119 requestData];
      v124 = [(NSPPrivateAccessTokenRequest *)&v121->super initWithChallenge:v48 tokenKey:v122 tokenKeyID:0 originNameKey:0 selectedOrigin:0 blindedMessage:v123];

      if (v124)
      {
        v125 = v159;
        [v159 addObject:v119];
        *buf = v124;
        v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
LABEL_87:

        goto LABEL_88;
      }

      v132 = nplog_obj();
      if (os_log_type_enabled(v132, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        *&buf[4] = "+[NSPPrivateAccessTokenFetcher createARCTokenRequestsWithChallenge:tokenKey:waitingTokenList:]";
        _os_log_fault_impl(&dword_1AE7E2000, v132, OS_LOG_TYPE_FAULT, "%s called with null tokenRequest", buf, 0xCu);
      }

      v124 = 0;
    }

    else
    {
      v124 = nplog_obj();
      if (os_log_type_enabled(v124, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        *&buf[4] = "+[NSPPrivateAccessTokenFetcher createARCTokenRequestsWithChallenge:tokenKey:waitingTokenList:]";
        _os_log_fault_impl(&dword_1AE7E2000, v124, OS_LOG_TYPE_FAULT, "%s called with null activation", buf, 0xCu);
      }
    }

    v68 = 0;
    v125 = v159;
    goto LABEL_87;
  }

LABEL_79:

  v112 = *MEMORY[0x1E69E9840];
}

void __87__NSPPrivateAccessTokenFetcher_generateTokenRequestForKey_withQueue_completionHandler___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696ABC0]);
  v6 = *MEMORY[0x1E696A588];
  v7[0] = @"Unsupported token type";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 initWithDomain:@"privacyProxyErrorDomain" code:1008 userInfo:v3];

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __87__NSPPrivateAccessTokenFetcher_generateTokenRequestForKey_withQueue_completionHandler___block_invoke_194(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696ABC0]);
  v6 = *MEMORY[0x1E696A588];
  v7[0] = @"Could not create token requests";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 initWithDomain:@"privacyProxyErrorDomain" code:1004 userInfo:v3];

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __87__NSPPrivateAccessTokenFetcher_generateTokenRequestForKey_withQueue_completionHandler___block_invoke_198(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) firstObject];
  v5 = v2;
  if (v2)
  {
    Property = objc_getProperty(v2, v3, 24, 1);
  }

  else
  {
    Property = 0;
  }

  (*(v1 + 16))(v1, Property, 0);
}

- (void)generateTokenRequestWithQueue:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v8 = a4;
  if (self)
  {
    if (objc_getProperty(self, v7, 128, 1))
    {
      v10 = nplog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_ERROR, "Cannot fetch multiple local tokens with a single token fetcher", buf, 2u);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __80__NSPPrivateAccessTokenFetcher_generateTokenRequestWithQueue_completionHandler___block_invoke;
      block[3] = &unk_1E7A30E30;
      v20 = v8;
      dispatch_async(v6, block);
      v11 = v20;
      goto LABEL_6;
    }

    if (objc_getProperty(self, v9, 80, 1))
    {
      Property = objc_getProperty(self, v12, 80, 1);
      [(NSPPrivateAccessTokenFetcher *)self generateTokenRequestForKey:v6 withQueue:v8 completionHandler:?];
      goto LABEL_9;
    }
  }

  v14 = getServerConnection();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__NSPPrivateAccessTokenFetcher_generateTokenRequestWithQueue_completionHandler___block_invoke_2;
  v15[3] = &unk_1E7A30E58;
  v16 = v6;
  v17 = self;
  v18 = v8;
  [v14 fetchKnownPrivateAccessTokenKeyWithFetcher:self allowRetry:1 completionHandler:v15];

  v11 = v16;
LABEL_6:

LABEL_9:
}

void __80__NSPPrivateAccessTokenFetcher_generateTokenRequestWithQueue_completionHandler___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696ABC0]);
  v6 = *MEMORY[0x1E696A588];
  v7[0] = @"Cannot fetch multiple local tokens with a single token fetcher";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 initWithDomain:@"privacyProxyErrorDomain" code:1004 userInfo:v3];

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __80__NSPPrivateAccessTokenFetcher_generateTokenRequestWithQueue_completionHandler___block_invoke_2(void **a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = a1[4];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __80__NSPPrivateAccessTokenFetcher_generateTokenRequestWithQueue_completionHandler___block_invoke_3;
    v7[3] = &unk_1E7A30A18;
    v9 = a1[6];
    v8 = v5;
    dispatch_async(v6, v7);
  }

  else
  {
    [(NSPPrivateAccessTokenFetcher *)a1[5] generateTokenRequestForKey:a2 withQueue:a1[4] completionHandler:a1[6]];
  }
}

- (void)handleTokenResponse:(id)a3 withQueue:(id)a4 completionHandler:(id)a5
{
  v114 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v93 = a5;
  if (!v8 || !self || (v11 = objc_getProperty(self, v10, 128, 1)) == 0 || (v13 = v11, Property = objc_getProperty(self, v12, 136, 1), v13, !Property))
  {
    v25 = nplog_obj();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AE7E2000, v25, OS_LOG_TYPE_ERROR, "Invalid state, cannot handle token response", buf, 2u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__NSPPrivateAccessTokenFetcher_handleTokenResponse_withQueue_completionHandler___block_invoke;
    block[3] = &unk_1E7A30E30;
    v104 = v93;
    v26 = v93;
    dispatch_async(v9, block);
    v27 = v104;
    goto LABEL_10;
  }

  v88 = v8;
  v16 = objc_getProperty(self, v15, 152, 1);
  v17 = [NSPPrivateAccessTokenChallenge alloc];
  v19 = [(NSPPrivateAccessTokenChallenge *)v17 initWithData:objc_getProperty(self, v18, 64, 1)];
  v87 = objc_getProperty(self, v20, 128, 1);
  v109 = v87;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v109 count:1];
  v86 = objc_getProperty(self, v22, 144, 1);
  if (v86)
  {
    v84 = objc_getProperty(self, v23, 144, 1);
    v108 = v84;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:1];
  }

  else
  {
    v24 = 0;
  }

  v107 = v88;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v107 count:1];
  v30 = v21;
  v26 = v19;
  v97 = v16;
  v31 = v24;
  v32 = v29;
  v33 = v30;
  v34 = v32;
  objc_opt_self();
  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v89 = v9;
  v90 = self;
  v95 = v26;
  v92 = v30;
  v96 = v31;
  v85 = v24;
  if (!v26 || [(NSPPrivateAccessTokenChallenge *)v26 tokenType]!= 2 && [(NSPPrivateAccessTokenChallenge *)v26 tokenType]!= 3)
  {
    goto LABEL_17;
  }

  v36 = [v31 count];
  if (v36 != [v30 count])
  {
    v81 = nplog_obj();
    if (!os_log_type_enabled(v81, OS_LOG_TYPE_FAULT))
    {
LABEL_74:

      v27 = 0;
      v33 = v30;
      goto LABEL_66;
    }

    *buf = 136315138;
    v111 = "+[NSPPrivateAccessTokenFetcher activateTokens:challenge:tokenKey:clientNonceArray:unactivatedListFromServer:]";
    v82 = "%s called with null (clientNonceArray.count == tokenWaitingActivationList.count)";
LABEL_76:
    _os_log_fault_impl(&dword_1AE7E2000, v81, OS_LOG_TYPE_FAULT, v82, buf, 0xCu);
    goto LABEL_74;
  }

  v37 = [v31 count];
  if (v37 < [v34 count])
  {
    v81 = nplog_obj();
    if (!os_log_type_enabled(v81, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_74;
    }

    *buf = 136315138;
    v111 = "+[NSPPrivateAccessTokenFetcher activateTokens:challenge:tokenKey:clientNonceArray:unactivatedListFromServer:]";
    v82 = "%s called with null (clientNonceArray.count >= unactivatedListFromServer.count)";
    goto LABEL_76;
  }

LABEL_17:
  v91 = v35;
  if (![v34 count])
  {
    goto LABEL_65;
  }

  v39 = 0;
  *&v38 = 138412290;
  v83 = v38;
  v94 = v34;
  while (v39 < [v33 count])
  {
    v40 = [v34 objectAtIndexedSubscript:v39];
    v41 = [v33 objectAtIndex:v39];
    if (v39 >= [v31 count])
    {
      v42 = 0;
    }

    else
    {
      v42 = [v31 objectAtIndexedSubscript:v39];
    }

    v43 = v41;
    v99 = v26;
    v98 = v97;
    v44 = v42;
    v45 = v40;
    objc_opt_self();
    v106 = 1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v105 = 0;
      v46 = [v43 activateTokenWithServerResponse:v45 error:&v105];
      v47 = v105;
      if (v47)
      {
        v48 = nplog_obj();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = v83;
          v111 = v47;
          _os_log_error_impl(&dword_1AE7E2000, v48, OS_LOG_TYPE_ERROR, "activateToken failed with error %@", buf, 0xCu);
        }

        v49 = 0;
      }

      else
      {
        if (!v46)
        {
          v49 = 0;
          goto LABEL_49;
        }

        if (v95)
        {
          v62 = [NSPPrivateAccessTokenResponse alloc];
          v63 = [v98 key];
          v64 = [v46 signature];
          v48 = [(NSPPrivateAccessTokenResponse *)&v62->super initWithChallenge:v99 nonce:v44 tokenKey:v63 keyID:0 authenticator:v64];

          if (v48)
          {
            v66 = objc_getProperty(v48, v65, 8, 1);
          }

          else
          {
            v66 = 0;
          }

          v49 = v66;
          v9 = v89;
        }

        else
        {
          v49 = [MEMORY[0x1E695DF88] data];
          [v49 appendBytes:&v106 length:1];
          v68 = [v46 keyId];
          [v49 appendData:v68];

          v69 = [v46 tokenContent];
          [v49 appendData:v69];

          v48 = [v46 signature];
          [v49 appendData:v48];
        }
      }

      self = v90;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v50 = MEMORY[0x1E69996C8];
        v51 = [v98 key];
        v52 = [v98 metadataSize];
        v53 = [(NSPPrivateAccessTokenChallenge *)v99 issuerName];
        v46 = [v50 verifyAndGetKeyIDFromKeyCommitmentsData:v51 numBuckets:v52 deploymentID:v53];

        v105 = 0;
        v54 = [v43 activateWithResponseData:v45 error:&v105];
        v47 = v105;
        v55 = [v54 presentationData];
        v56 = v55;
        if (v47 || !v55)
        {
          v59 = nplog_obj();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            *buf = v83;
            v111 = v47;
            _os_log_error_impl(&dword_1AE7E2000, v59, OS_LOG_TYPE_ERROR, "activateWithResponseData failed with error %@", buf, 0xCu);
          }

          v49 = 0;
        }

        else
        {
          v57 = [NSPPrivateAccessTokenResponse alloc];
          v58 = [v98 key];
          v59 = [(NSPPrivateAccessTokenResponse *)&v57->super initWithChallenge:v99 nonce:0 tokenKey:v58 keyID:v46 authenticator:v56];

          if (v59)
          {
            v61 = objc_getProperty(v59, v60, 8, 1);
          }

          else
          {
            v61 = 0;
          }

          v49 = v61;
        }

        v9 = v89;
        self = v90;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v49 = 0;
          goto LABEL_50;
        }

        v105 = 0;
        v46 = [v43 activateWithResponseData:v45 error:&v105];
        v47 = v105;
        if (v47 || !v46)
        {
          v67 = nplog_obj();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            *buf = v83;
            v111 = v47;
            _os_log_error_impl(&dword_1AE7E2000, v67, OS_LOG_TYPE_ERROR, "activateWithResponseData failed with error %@", buf, 0xCu);
          }

          v49 = 0;
        }

        else
        {
          v49 = [v46 getCredentialDataError:0];
          v47 = 0;
        }
      }
    }

LABEL_49:
    v26 = v95;
    v33 = v92;
LABEL_50:

    if (v49)
    {
      [v91 addObject:v49];
    }

    ++v39;
    v34 = v94;
    v31 = v96;
    if (v39 >= [v94 count])
    {
      goto LABEL_65;
    }
  }

  v70 = nplog_obj();
  if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
  {
    v71 = [v34 count];
    v72 = [v33 count];
    *buf = 134218240;
    v111 = v71;
    v112 = 2048;
    v113 = v72;
    _os_log_impl(&dword_1AE7E2000, v70, OS_LOG_TYPE_INFO, "More unactivated tokens than waiting tokens (%lu != %lu)", buf, 0x16u);
  }

LABEL_65:
  v35 = v91;
  v27 = v91;
LABEL_66:

  if (v86)
  {
  }

  [v27 count];
  v73 = nplog_obj();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE7E2000, v73, OS_LOG_TYPE_INFO, "Generated token from response", buf, 2u);
  }

  v74 = [v27 firstObject];
  v100[0] = MEMORY[0x1E69E9820];
  v100[1] = 3221225472;
  v100[2] = __80__NSPPrivateAccessTokenFetcher_handleTokenResponse_withQueue_completionHandler___block_invoke_209;
  v100[3] = &unk_1E7A30A18;
  v101 = v74;
  v102 = v93;
  v75 = v74;
  v76 = v93;
  dispatch_async(v9, v100);
  objc_setProperty_atomic(self, v77, 0, 128);
  objc_setProperty_atomic(self, v78, 0, 136);
  objc_setProperty_atomic(self, v79, 0, 144);
  objc_setProperty_atomic(self, v80, 0, 152);

  v8 = v88;
LABEL_10:

  v28 = *MEMORY[0x1E69E9840];
}

void __80__NSPPrivateAccessTokenFetcher_handleTokenResponse_withQueue_completionHandler___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696ABC0]);
  v6 = *MEMORY[0x1E696A588];
  v7[0] = @"Invalid parameters";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 initWithDomain:@"privacyProxyErrorDomain" code:1004 userInfo:v3];

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

- (void)saveTokenToCache:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = getServerConnection();
    [v5 addToken:v4 toCacheForFetcher:self];
  }

  else
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315138;
      v9 = "[NSPPrivateAccessTokenFetcher saveTokenToCache:]";
      _os_log_fault_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_FAULT, "%s called with null token", &v8, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)saveOneTimeTokenToCache:(id)a3 oneTimeTokenSalt:(id)a4 longLivedToken:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8)
  {
    v14 = nplog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v16 = 136315138;
      v17 = "[NSPPrivateAccessTokenFetcher saveOneTimeTokenToCache:oneTimeTokenSalt:longLivedToken:]";
      v15 = "%s called with null oneTimeToken";
      goto LABEL_13;
    }

LABEL_11:

    goto LABEL_5;
  }

  if (!v9)
  {
    v14 = nplog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v16 = 136315138;
      v17 = "[NSPPrivateAccessTokenFetcher saveOneTimeTokenToCache:oneTimeTokenSalt:longLivedToken:]";
      v15 = "%s called with null oneTimeTokenSalt";
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (!v10)
  {
    v14 = nplog_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    v16 = 136315138;
    v17 = "[NSPPrivateAccessTokenFetcher saveOneTimeTokenToCache:oneTimeTokenSalt:longLivedToken:]";
    v15 = "%s called with null longLivedToken";
LABEL_13:
    _os_log_fault_impl(&dword_1AE7E2000, v14, OS_LOG_TYPE_FAULT, v15, &v16, 0xCu);
    goto LABEL_11;
  }

  v12 = getServerConnection();
  [v12 addOneTimeToken:v8 oneTimeTokenSalt:v9 longLivedToken:v11 toCacheForFetcher:self];

LABEL_5:
  v13 = *MEMORY[0x1E69E9840];
}

+ (void)saveAuxiliaryAuthenticationDataToCache:(id)a3 type:(unint64_t)a4 forLabel:(id)a5 cacheKey:(id)a6
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = v11;
  if (!v9)
  {
    v15 = nplog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v17 = 136315138;
      v18 = "+[NSPPrivateAccessTokenFetcher saveAuxiliaryAuthenticationDataToCache:type:forLabel:cacheKey:]";
      v16 = "%s called with null auxiliaryData";
      goto LABEL_13;
    }

LABEL_11:

    goto LABEL_5;
  }

  if (!v10)
  {
    v15 = nplog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v17 = 136315138;
      v18 = "+[NSPPrivateAccessTokenFetcher saveAuxiliaryAuthenticationDataToCache:type:forLabel:cacheKey:]";
      v16 = "%s called with null label";
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (!v11)
  {
    v15 = nplog_obj();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    v17 = 136315138;
    v18 = "+[NSPPrivateAccessTokenFetcher saveAuxiliaryAuthenticationDataToCache:type:forLabel:cacheKey:]";
    v16 = "%s called with null cacheKey";
LABEL_13:
    _os_log_fault_impl(&dword_1AE7E2000, v15, OS_LOG_TYPE_FAULT, v16, &v17, 0xCu);
    goto LABEL_11;
  }

  v13 = getServerConnection();
  [v13 addAuxiliaryAuthenticationData:v9 type:a4 label:v10 cacheKey:v12];

LABEL_5:
  v14 = *MEMORY[0x1E69E9840];
}

+ (void)fetchAuxiliaryAuthenticationDataFromCacheForType:(unint64_t)a3 label:(id)a4 cacheKey:(id)a5 completionHandler:(id)a6
{
  v18 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (!v9)
  {
    v14 = nplog_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
LABEL_8:

      goto LABEL_4;
    }

    v16 = 136315138;
    v17 = "+[NSPPrivateAccessTokenFetcher fetchAuxiliaryAuthenticationDataFromCacheForType:label:cacheKey:completionHandler:]";
    v15 = "%s called with null label";
LABEL_10:
    _os_log_fault_impl(&dword_1AE7E2000, v14, OS_LOG_TYPE_FAULT, v15, &v16, 0xCu);
    goto LABEL_8;
  }

  if (!v10)
  {
    v14 = nplog_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    v16 = 136315138;
    v17 = "+[NSPPrivateAccessTokenFetcher fetchAuxiliaryAuthenticationDataFromCacheForType:label:cacheKey:completionHandler:]";
    v15 = "%s called with null cacheKey";
    goto LABEL_10;
  }

  v12 = getServerConnection();
  [v12 fetchAuxiliaryAuthenticationDataFromCacheForType:a3 label:v9 cacheKey:v10 completionHandler:v11];

LABEL_4:
  v13 = *MEMORY[0x1E69E9840];
}

- (void)checkRemainingCostQuotaWithQueue:(id)a3 completionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v10 = nplog_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v17 = "[NSPPrivateAccessTokenFetcher checkRemainingCostQuotaWithQueue:completionHandler:]";
    v12 = "%s called with null queue";
LABEL_9:
    _os_log_fault_impl(&dword_1AE7E2000, v10, OS_LOG_TYPE_FAULT, v12, buf, 0xCu);
    goto LABEL_4;
  }

  if (!v7)
  {
    v10 = nplog_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 136315138;
    v17 = "[NSPPrivateAccessTokenFetcher checkRemainingCostQuotaWithQueue:completionHandler:]";
    v12 = "%s called with null completionHandler";
    goto LABEL_9;
  }

  v9 = getServerConnection();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__NSPPrivateAccessTokenFetcher_checkRemainingCostQuotaWithQueue_completionHandler___block_invoke;
  v13[3] = &unk_1E7A30EA8;
  v14 = v6;
  v15 = v8;
  [v9 checkRemainingCostQuotaWithFetcher:self allowRetry:1 completionHandler:v13];

  v10 = v14;
LABEL_4:

  v11 = *MEMORY[0x1E69E9840];
}

void __83__NSPPrivateAccessTokenFetcher_checkRemainingCostQuotaWithQueue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, double a4, double a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  if (v10)
  {
    v11 = nplog_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v10;
      _os_log_error_impl(&dword_1AE7E2000, v11, OS_LOG_TYPE_ERROR, "Failed to check remaining cost quota: %@", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__NSPPrivateAccessTokenFetcher_checkRemainingCostQuotaWithQueue_completionHandler___block_invoke_210;
  block[3] = &unk_1E7A30E80;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v19 = v10;
  v20 = v13;
  v21 = a4;
  v22 = a5;
  v18 = v9;
  v14 = v10;
  v15 = v9;
  dispatch_async(v12, block);

  v16 = *MEMORY[0x1E69E9840];
}

@end