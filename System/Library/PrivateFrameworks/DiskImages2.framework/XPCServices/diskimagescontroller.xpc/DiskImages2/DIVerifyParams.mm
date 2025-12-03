@interface DIVerifyParams
- (BOOL)shouldValidateShadows;
- (BOOL)verifyWithError:(id *)error;
- (DIVerifyParams)initWithURL:(id)l error:(id *)error;
- (DIVerifyParams)initWithURL:(id)l shadowURLs:(id)ls error:(id *)error;
@end

@implementation DIVerifyParams

- (DIVerifyParams)initWithURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = +[NSArray array];
  v8 = [(DIVerifyParams *)self initWithURL:lCopy shadowURLs:v7 error:error];

  return v8;
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
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000A2404;
  v17 = sub_1000A2414;
  v18 = objc_alloc_init(DIClient2Controller_XPCHandler);
  v5 = *__error();
  if (sub_1000E044C())
  {
    v12[5] = 0;
    v6 = sub_1000E03D8();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    *buf = 68158210;
    v20 = 34;
    v21 = 2080;
    v22 = "[DIVerifyParams verifyWithError:]";
    v23 = 2114;
    selfCopy2 = self;
    v7 = _os_log_send_and_compose_impl();

    if (v7)
    {
      fprintf(__stderrp, "%s\n", v7);
      free(v7);
    }
  }

  else
  {
    v8 = sub_1000E03D8();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158210;
      v20 = 34;
      v21 = 2080;
      v22 = "[DIVerifyParams verifyWithError:]";
      v23 = 2114;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%.*s: entry: %{public}@", buf, 0x1Cu);
    }
  }

  *__error() = v5;
  if (([v14[5] connectWithError:error] & 1) != 0 && -[DIBaseParams prepareImageWithXpcHandler:fileMode:error:](self, "prepareImageWithXpcHandler:fileMode:error:", v14[5], 2, error))
  {
    remoteProxy = [v14[5] remoteProxy];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000A241C;
    v12[3] = &unk_100202A18;
    v12[4] = &v13;
    [remoteProxy verifyWithParams:self reply:v12];

    v10 = [v14[5] completeCommandWithError:error];
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v13, 8);

  return v10;
}

@end