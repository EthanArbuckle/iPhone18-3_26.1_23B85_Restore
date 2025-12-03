@interface DIVerifyParams
- (BOOL)shouldValidateShadows;
- (BOOL)verifyWithError:(id *)error;
- (DIVerifyParams)initWithURL:(id)l error:(id *)error;
- (DIVerifyParams)initWithURL:(id)l shadowURLs:(id)ls error:(id *)error;
@end

@implementation DIVerifyParams

- (DIVerifyParams)initWithURL:(id)l error:(id *)error
{
  v6 = MEMORY[0x277CBEA60];
  lCopy = l;
  array = [v6 array];
  v9 = [(DIVerifyParams *)self initWithURL:lCopy shadowURLs:array error:error];

  return v9;
}

- (DIVerifyParams)initWithURL:(id)l shadowURLs:(id)ls error:(id *)error
{
  lsCopy = ls;
  v15.receiver = self;
  v15.super_class = DIVerifyParams;
  v9 = [(DIBaseParams *)&v15 initWithURL:l error:error];
  v10 = v9;
  if (!v9 || -[DIBaseParams openExistingImageWithError:](v9, "openExistingImageWithError:", error) && (-[DIBaseParams shadowChain](v10, "shadowChain"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 addShadowURLs:lsCopy error:error], v11, v12))
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)shouldValidateShadows
{
  shadowChain = [(DIBaseParams *)self shadowChain];
  shouldValidate = [shadowChain shouldValidate];

  return shouldValidate;
}

- (BOOL)verifyWithError:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = objc_alloc_init(DIClient2Controller_XPCHandler);
  v5 = *__error();
  if (DIForwardLogs())
  {
    v13[5] = 0;
    v6 = getDIOSLog();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    *buf = 68158210;
    v21 = 34;
    v22 = 2080;
    v23 = "[DIVerifyParams verifyWithError:]";
    v24 = 2114;
    selfCopy2 = self;
    v7 = _os_log_send_and_compose_impl();

    if (v7)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v7);
      free(v7);
    }
  }

  else
  {
    v8 = getDIOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158210;
      v21 = 34;
      v22 = 2080;
      v23 = "[DIVerifyParams verifyWithError:]";
      v24 = 2114;
      selfCopy2 = self;
      _os_log_impl(&dword_248DE0000, v8, OS_LOG_TYPE_DEFAULT, "%.*s: entry: %{public}@", buf, 0x1Cu);
    }
  }

  *__error() = v5;
  if (([v15[5] connectWithError:error] & 1) != 0 && -[DIBaseParams prepareImageWithXpcHandler:fileMode:error:](self, "prepareImageWithXpcHandler:fileMode:error:", v15[5], 2, error))
  {
    remoteProxy = [v15[5] remoteProxy];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __34__DIVerifyParams_verifyWithError___block_invoke;
    v13[3] = &unk_278F80A28;
    v13[4] = &v14;
    [remoteProxy verifyWithParams:self reply:v13];

    v10 = [v15[5] completeCommandWithError:error];
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v14, 8);

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

@end