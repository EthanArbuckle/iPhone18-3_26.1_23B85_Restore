@interface IMCommSafetyRequestsManager
+ (id)sharedManager;
- (BOOL)_shouldForceSensitivityResult;
- (IMCommSafetyRequestsManager)init;
- (MADService)service;
- (id)_identifierForURL:(id)a3 withChatID:(id)a4;
- (id)cachedResultForContentAttachment:(id)a3 withChatID:(id)a4;
- (void)_setSensitiveValue:(BOOL)a3 forIdentifier:(id)a4;
- (void)dealloc;
- (void)isSensitiveCGImage:(CGImage *)a3 withOrientation:(unsigned int)a4 completionHandler:(id)a5;
- (void)isSensitiveContent:(id)a3 contentAttachmentType:(int64_t)a4 useBlastDoor:(BOOL)a5 withChatID:(id)a6 completionHandler:(id)a7;
@end

@implementation IMCommSafetyRequestsManager

+ (id)sharedManager
{
  if (qword_1ED8CA108 != -1)
  {
    sub_1A88C2110();
  }

  v3 = qword_1ED8C98F8;

  return v3;
}

- (IMCommSafetyRequestsManager)init
{
  v16 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = IMCommSafetyRequestsManager;
  v2 = [(IMCommSafetyRequestsManager *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = v2->operationQueue;
    v2->operationQueue = v3;

    v5 = dispatch_get_global_queue(2, 0);
    [(NSOperationQueue *)v2->operationQueue setUnderlyingQueue:v5];

    [(NSOperationQueue *)v2->operationQueue setMaxConcurrentOperationCount:5];
    v6 = objc_alloc_init(MEMORY[0x1AC570AA0](@"USSensitivityAnalyzer", @"UserSafety"));
    userSafetyClient = v2->_userSafetyClient;
    v2->_userSafetyClient = v6;

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = v2->_userSafetyClient;
        *buf = 138412290;
        v15 = v9;
        _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Initialized USSensitivityAnalyzer %@", buf, 0xCu);
      }
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cachedResults = v2->_cachedResults;
    v2->_cachedResults = v10;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_service)
  {
    v3 = [(IMCommSafetyRequestsManager *)self service];
    [v3 cancelAllRequests];
  }

  v4.receiver = self;
  v4.super_class = IMCommSafetyRequestsManager;
  [(IMCommSafetyRequestsManager *)&v4 dealloc];
}

- (MADService)service
{
  service = self->_service;
  if (!service)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = qword_1EB30AED8;
    v13 = qword_1EB30AED8;
    if (!qword_1EB30AED8)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = sub_1A86754B0;
      v9[3] = &unk_1E78261C8;
      v9[4] = &v10;
      sub_1A86754B0(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = [v4 service];
    v7 = self->_service;
    self->_service = v6;

    service = self->_service;
  }

  return service;
}

- (id)_identifierForURL:(id)a3 withChatID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 path];
  v8 = IMSharedHelperMD5HashOfFileAtPath(v7);

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = [v5 path];
    v9 = [v10 lastPathComponent];
  }

  if (v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = @"<unknown>";
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v11, v9];

  return v12;
}

- (void)_setSensitiveValue:(BOOL)a3 forIdentifier:(id)a4
{
  v4 = a3;
  v6 = a4;
  v8 = [(IMCommSafetyRequestsManager *)self cachedResults];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  [v8 setValue:v7 forKey:v6];
}

- (void)isSensitiveContent:(id)a3 contentAttachmentType:(int64_t)a4 useBlastDoor:(BOOL)a5 withChatID:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  operationQueue = self->operationQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1A86745B4;
  v19[3] = &unk_1E7828570;
  v20 = v12;
  v21 = self;
  v22 = v13;
  v23 = v14;
  v24 = a4;
  v25 = a5;
  v16 = v13;
  v17 = v14;
  v18 = v12;
  [(NSOperationQueue *)operationQueue addOperationWithBlock:v19];
}

- (id)cachedResultForContentAttachment:(id)a3 withChatID:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(IMCommSafetyRequestsManager *)self _identifierForURL:v6 withChatID:v7];
    v9 = [(IMCommSafetyRequestsManager *)self cachedResults];
    v10 = [v9 objectForKey:v8];

    if (v7 && !v10)
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [v6 absoluteString];
          v16 = 138412546;
          v17 = v12;
          v18 = 2112;
          v19 = v7;
          _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Failed to retrieve cached result for fileURL '%@' and chatID '%@", &v16, 0x16u);
        }
      }

      v13 = [(IMCommSafetyRequestsManager *)self cachedResults];
      v14 = [(IMCommSafetyRequestsManager *)self _identifierForURL:v6 withChatID:0];
      v10 = [v13 objectForKey:v14];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)isSensitiveCGImage:(CGImage *)a3 withOrientation:(unsigned int)a4 completionHandler:(id)a5
{
  v5 = *&a4;
  v8 = a5;
  v9 = [(IMCommSafetyRequestsManager *)self userSafetyClient];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A867535C;
  v11[3] = &unk_1E7828598;
  v12 = v8;
  v10 = v8;
  [v9 analyzeCGImage:a3 withOrientation:v5 completionHandler:v11];
}

- (BOOL)_shouldForceSensitivityResult
{
  v2 = +[IMDefaults sharedInstance];
  v3 = [v2 getValueFromDomain:@"com.apple.messages" forKey:@"kMarkSensitiveKey"];

  v4 = [v3 integerValue];
  if (v4 == 1)
  {
    v5 = +[IMDefaults sharedInstance];
    [v5 setValue:&unk_1F1BFA670 forDomain:@"com.apple.messages" forKey:@"kMarkSensitiveKey"];
  }

  return v4 != 0;
}

@end