@interface DIDocUploadSession
- (DIDocUploadSession)init;
- (void)cancelUploads;
- (void)uploadDocData:(id)a3 uploadSettings:(id)a4 completion:(id)a5;
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

- (void)uploadDocData:(id)a3 uploadSettings:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = DIV_LOG_CLIENT();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(DIDocUploadSession *)v11 uploadDocData:v12 uploadSettings:v13 completion:v14, v15, v16, v17, v18];
  }

  v19 = [(DIDocUploadSession *)self client];
  [v19 uploadDocData:v10 uploadSettings:v9 completion:v8];
}

- (void)cancelUploads
{
  v3 = DIV_LOG_CLIENT();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(DIDocUploadSession *)v3 cancelUploads:v4];
  }

  v11 = [(DIDocUploadSession *)self client];
  [v11 cancelUploads];
}

@end