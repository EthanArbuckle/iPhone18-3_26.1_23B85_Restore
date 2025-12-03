@interface DIDocUploadSession
- (DIDocUploadSession)init;
- (void)cancelUploads;
- (void)uploadDocData:(id)data uploadSettings:(id)settings completion:(id)completion;
@end

@implementation DIDocUploadSession

- (DIDocUploadSession)init
{
  v3 = DIV_LOG_CLIENT();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(DIDocUploadSession *)v3 init:v4];
  }

  v14.receiver = self;
  v14.super_class = DIDocUploadSession;
  v11 = [(DIDocUploadSession *)&v14 init];
  v12 = objc_alloc_init(DIDocUploadSessionClient);
  [(DIDocUploadSession *)v11 setClient:v12];

  return v11;
}

- (void)uploadDocData:(id)data uploadSettings:(id)settings completion:(id)completion
{
  completionCopy = completion;
  settingsCopy = settings;
  dataCopy = data;
  v11 = DIV_LOG_CLIENT();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(DIDocUploadSession *)v11 uploadDocData:v12 uploadSettings:v13 completion:v14, v15, v16, v17, v18];
  }

  client = [(DIDocUploadSession *)self client];
  [client uploadDocData:dataCopy uploadSettings:settingsCopy completion:completionCopy];
}

- (void)cancelUploads
{
  v3 = DIV_LOG_CLIENT();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(DIDocUploadSession *)v3 cancelUploads:v4];
  }

  client = [(DIDocUploadSession *)self client];
  [client cancelUploads];
}

@end