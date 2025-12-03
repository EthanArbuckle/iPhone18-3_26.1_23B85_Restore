@interface FMDEmergencyCallInfoPublisher
- (FMDEmergencyCallInfoPublisher)initWithConfiguration:(id)configuration;
- (void)publishInfo:(id)info completion:(id)completion;
@end

@implementation FMDEmergencyCallInfoPublisher

- (FMDEmergencyCallInfoPublisher)initWithConfiguration:(id)configuration
{
  v14 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = FMDEmergencyCallInfoPublisher;
  v6 = [(FMDEmergencyCallInfoPublisher *)&v11 init];
  if (v6)
  {
    v7 = LogCategory_Unspecified();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[FMDEmergencyCallInfoPublisher initWithConfiguration:]";
      _os_log_impl(&dword_1DF650000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    v8 = LogCategory_Unspecified();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = configurationCopy;
      _os_log_impl(&dword_1DF650000, v8, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    objc_storeStrong(&v6->_publisherConfig, configuration);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)publishInfo:(id)info completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  infoCopy = info;
  v8 = LogCategory_Unspecified();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[FMDEmergencyCallInfoPublisher publishInfo:completion:]";
    _os_log_impl(&dword_1DF650000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v24[0] = @"kFMDEmergencyCallInfoPublisherConfigKey";
  publisherConfig = [(FMDEmergencyCallInfoPublisher *)self publisherConfig];
  v24[1] = @"kFMDEmergencyCallInfoPublisherInfoKey";
  v25[0] = publisherConfig;
  v25[1] = infoCopy;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];

  v11 = +[FMNSXPCConnectionCache sharedCache];
  v12 = +[FMNSXPCConnectionConfiguration emergencyCallInfoPublisherConfiguration];
  v13 = [v11 resumeConnectionWithConfiguration:v12];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __56__FMDEmergencyCallInfoPublisher_publishInfo_completion___block_invoke;
  v22[3] = &unk_1E86BD0E0;
  v14 = completionCopy;
  v23 = v14;
  [v13 addFailureBlock:v22];
  remoteObjectProxy = [v13 remoteObjectProxy];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __56__FMDEmergencyCallInfoPublisher_publishInfo_completion___block_invoke_4;
  v19[3] = &unk_1E86BD320;
  v20 = v13;
  v21 = v14;
  v16 = v13;
  v17 = v14;
  [remoteObjectProxy publishInfo:v10 completion:v19];

  v18 = *MEMORY[0x1E69E9840];
}

void __56__FMDEmergencyCallInfoPublisher_publishInfo_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = LogCategory_Unspecified();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__FMDEmergencyCallInfoPublisher_publishInfo_completion___block_invoke_cold_1(a2, v4);
  }

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }
}

uint64_t __56__FMDEmergencyCallInfoPublisher_publishInfo_completion___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

void __56__FMDEmergencyCallInfoPublisher_publishInfo_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_1DF650000, a2, OS_LOG_TYPE_ERROR, "XPC error for publishInfo:completion: %li", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end