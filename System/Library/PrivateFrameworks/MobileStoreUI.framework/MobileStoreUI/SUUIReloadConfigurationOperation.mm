@interface SUUIReloadConfigurationOperation
+ (NSString)cachePath;
- (SSURLBag)URLBag;
- (SUUIReloadConfigurationOperation)init;
- (id)outputBlock;
- (void)main;
- (void)setOutputBlock:(id)a3;
- (void)setURLBag:(id)a3;
@end

@implementation SUUIReloadConfigurationOperation

+ (NSString)cachePath
{
  v2 = [MEMORY[0x277D69A80] currentDevice];
  v3 = [v2 storeFrontIdentifier];

  v4 = [SUUIClientContext _cachePathForStoreFrontIdentifier:v3];

  return v4;
}

- (SUUIReloadConfigurationOperation)init
{
  v6.receiver = self;
  v6.super_class = SUUIReloadConfigurationOperation;
  v2 = [(SUUIReloadConfigurationOperation *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.iTunesStoreUI.SUUIReloadConfigurationOperation", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (id)outputBlock
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__71;
  v10 = __Block_byref_object_dispose__71;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__SUUIReloadConfigurationOperation_outputBlock__block_invoke;
  v5[3] = &unk_2798F5B48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = _Block_copy(v7[5]);
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __47__SUUIReloadConfigurationOperation_outputBlock__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 256) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)setOutputBlock:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__SUUIReloadConfigurationOperation_setOutputBlock___block_invoke;
  v7[3] = &unk_2798F6030;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void *__51__SUUIReloadConfigurationOperation_setOutputBlock___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (*(v3 + 256) != result)
  {
    v4 = [result copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 256);
    *(v5 + 256) = v4;

    return MEMORY[0x2821F96F8](v4, v6);
  }

  return result;
}

- (void)setURLBag:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__SUUIReloadConfigurationOperation_setURLBag___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __46__SUUIReloadConfigurationOperation_setURLBag___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (*(v2 + 264) != v1)
  {
    objc_storeStrong((v2 + 264), v1);
  }
}

- (SSURLBag)URLBag
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3_0;
  v10 = __Block_byref_object_dispose__4_0;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__SUUIReloadConfigurationOperation_URLBag__block_invoke;
  v5[3] = &unk_2798F5B48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)main
{
  v50 = *MEMORY[0x277D85DE8];
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__3_0;
  v46 = __Block_byref_object_dispose__4_0;
  v47 = 0;
  v3 = [(SUUIReloadConfigurationOperation *)self URLBag];
  if (!v3)
  {
    v4 = [MEMORY[0x277D69C90] contextWithBagType:0];
    [v4 setIgnoresCaches:1];
    v5 = SSVDefaultUserAgent();
    [v4 setValue:v5 forHTTPHeaderField:*MEMORY[0x277D6A130]];

    v3 = [(SSURLBag *)[SUUIURLBag alloc] initWithURLBagContext:v4];
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__3_0;
  v40 = __Block_byref_object_dispose__4_0;
  v41 = 0;
  v6 = dispatch_semaphore_create(0);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __40__SUUIReloadConfigurationOperation_main__block_invoke;
  v32[3] = &unk_2798FC420;
  v34 = &v36;
  v35 = &v42;
  v7 = v6;
  v33 = v7;
  [(SUUIURLBag *)v3 loadWithCompletionBlock:v32];
  v8 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    v9 = [MEMORY[0x277D69B38] sharedConfig];
    v10 = [v9 shouldLog];
    v11 = [v9 shouldLogToDisk];
    v12 = [v9 OSLogObject];
    v13 = v12;
    if (v11)
    {
      v10 |= 2u;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = v10;
    }

    else
    {
      v14 = v10 & 2;
    }

    if (v14)
    {
      v48 = 138543362;
      v49 = self;
      LODWORD(v30) = 12;
      v29 = &v48;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
LABEL_13:

        v16 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"SUUIErrorDomain" code:6 userInfo:0];
        v17 = v43[5];
        v43[5] = v16;

        goto LABEL_14;
      }

      v13 = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:{4, &v48, v30}];
      free(v15);
      v29 = v13;
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  if ([v37[5] count])
  {
    v18 = [(SUUIURLBag *)v3 storeFrontIdentifier];
    v19 = [MEMORY[0x277D69A20] defaultStore];
    v20 = [v19 activeAccount];

    v21 = SSVStoreFrontIdentifierForAccount();
    if (![v18 length] || v21 && objc_msgSend(v18, "hasPrefix:", v21))
    {
      v22 = v21;

      v18 = v22;
    }

    if (v18)
    {
      v23 = [SUUIClientContext _cachePathForStoreFrontIdentifier:v18];
      v24 = [SUUIClientContext _configurationDictionaryWithBagDictionary:v37[5]];
      if (v24 && v23)
      {
        v25 = [MEMORY[0x277CCAC58] dataWithPropertyList:v24 format:200 options:0 error:0];
        if (v25)
        {
          v31 = objc_alloc_init(MEMORY[0x277CCAA00]);
          v26 = [v23 stringByDeletingLastPathComponent];
          [v31 createDirectoryAtPath:v26 withIntermediateDirectories:1 attributes:0 error:0];

          [v25 writeToFile:v23 options:1 error:0];
        }
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v27 = [(SUUIReloadConfigurationOperation *)self outputBlock];
  v28 = v27;
  if (v27)
  {
    (*(v27 + 16))(v27, v24, v43[5]);
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);
}

intptr_t __40__SUUIReloadConfigurationOperation_main__block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 copy];
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v5 copy];
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = a1[4];

  return dispatch_semaphore_signal(v12);
}

@end