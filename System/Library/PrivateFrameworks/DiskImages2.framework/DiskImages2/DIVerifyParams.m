@interface DIVerifyParams
- (BOOL)shouldValidateShadows;
- (BOOL)verifyWithError:(id *)a3;
- (DIVerifyParams)initWithURL:(id)a3 error:(id *)a4;
- (DIVerifyParams)initWithURL:(id)a3 shadowURLs:(id)a4 error:(id *)a5;
@end

@implementation DIVerifyParams

- (DIVerifyParams)initWithURL:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CBEA60];
  v7 = a3;
  v8 = [v6 array];
  v9 = [(DIVerifyParams *)self initWithURL:v7 shadowURLs:v8 error:a4];

  return v9;
}

- (DIVerifyParams)initWithURL:(id)a3 shadowURLs:(id)a4 error:(id *)a5
{
  v8 = a4;
  v15.receiver = self;
  v15.super_class = DIVerifyParams;
  v9 = [(DIBaseParams *)&v15 initWithURL:a3 error:a5];
  v10 = v9;
  if (!v9 || -[DIBaseParams openExistingImageWithError:](v9, "openExistingImageWithError:", a5) && (-[DIBaseParams shadowChain](v10, "shadowChain"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 addShadowURLs:v8 error:a5], v11, v12))
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
  v2 = [(DIBaseParams *)self shadowChain];
  v3 = [v2 shouldValidate];

  return v3;
}

- (BOOL)verifyWithError:(id *)a3
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
    v25 = self;
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
      v25 = self;
      _os_log_impl(&dword_248DE0000, v8, OS_LOG_TYPE_DEFAULT, "%.*s: entry: %{public}@", buf, 0x1Cu);
    }
  }

  *__error() = v5;
  if (([v15[5] connectWithError:a3] & 1) != 0 && -[DIBaseParams prepareImageWithXpcHandler:fileMode:error:](self, "prepareImageWithXpcHandler:fileMode:error:", v15[5], 2, a3))
  {
    v9 = [v15[5] remoteProxy];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __34__DIVerifyParams_verifyWithError___block_invoke;
    v13[3] = &unk_278F80A28;
    v13[4] = &v14;
    [v9 verifyWithParams:self reply:v13];

    v10 = [v15[5] completeCommandWithError:a3];
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