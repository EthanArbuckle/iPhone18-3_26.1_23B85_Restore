@interface IMCommSafetyRequestsManager
+ (id)sharedManager;
- (BOOL)_shouldForceSensitivityResult;
- (IMCommSafetyRequestsManager)init;
- (MADService)service;
- (id)_identifierForURL:(id)l withChatID:(id)d;
- (id)cachedResultForContentAttachment:(id)attachment withChatID:(id)d;
- (void)_setSensitiveValue:(BOOL)value forIdentifier:(id)identifier;
- (void)dealloc;
- (void)isSensitiveCGImage:(CGImage *)image withOrientation:(unsigned int)orientation completionHandler:(id)handler;
- (void)isSensitiveContent:(id)content contentAttachmentType:(int64_t)type useBlastDoor:(BOOL)door withChatID:(id)d completionHandler:(id)handler;
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
    service = [(IMCommSafetyRequestsManager *)self service];
    [service cancelAllRequests];
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
    service = [v4 service];
    v7 = self->_service;
    self->_service = service;

    service = self->_service;
  }

  return service;
}

- (id)_identifierForURL:(id)l withChatID:(id)d
{
  lCopy = l;
  dCopy = d;
  path = [lCopy path];
  v8 = IMSharedHelperMD5HashOfFileAtPath(path);

  if (v8)
  {
    lastPathComponent = v8;
  }

  else
  {
    path2 = [lCopy path];
    lastPathComponent = [path2 lastPathComponent];
  }

  if (dCopy)
  {
    v11 = dCopy;
  }

  else
  {
    v11 = @"<unknown>";
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v11, lastPathComponent];

  return v12;
}

- (void)_setSensitiveValue:(BOOL)value forIdentifier:(id)identifier
{
  valueCopy = value;
  identifierCopy = identifier;
  cachedResults = [(IMCommSafetyRequestsManager *)self cachedResults];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:valueCopy];
  [cachedResults setValue:v7 forKey:identifierCopy];
}

- (void)isSensitiveContent:(id)content contentAttachmentType:(int64_t)type useBlastDoor:(BOOL)door withChatID:(id)d completionHandler:(id)handler
{
  contentCopy = content;
  dCopy = d;
  handlerCopy = handler;
  operationQueue = self->operationQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1A86745B4;
  v19[3] = &unk_1E7828570;
  v20 = contentCopy;
  selfCopy = self;
  v22 = dCopy;
  v23 = handlerCopy;
  typeCopy = type;
  doorCopy = door;
  v16 = dCopy;
  v17 = handlerCopy;
  v18 = contentCopy;
  [(NSOperationQueue *)operationQueue addOperationWithBlock:v19];
}

- (id)cachedResultForContentAttachment:(id)attachment withChatID:(id)d
{
  v20 = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  dCopy = d;
  if (attachmentCopy)
  {
    v8 = [(IMCommSafetyRequestsManager *)self _identifierForURL:attachmentCopy withChatID:dCopy];
    cachedResults = [(IMCommSafetyRequestsManager *)self cachedResults];
    v10 = [cachedResults objectForKey:v8];

    if (dCopy && !v10)
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          absoluteString = [attachmentCopy absoluteString];
          v16 = 138412546;
          v17 = absoluteString;
          v18 = 2112;
          v19 = dCopy;
          _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Failed to retrieve cached result for fileURL '%@' and chatID '%@", &v16, 0x16u);
        }
      }

      cachedResults2 = [(IMCommSafetyRequestsManager *)self cachedResults];
      v14 = [(IMCommSafetyRequestsManager *)self _identifierForURL:attachmentCopy withChatID:0];
      v10 = [cachedResults2 objectForKey:v14];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)isSensitiveCGImage:(CGImage *)image withOrientation:(unsigned int)orientation completionHandler:(id)handler
{
  v5 = *&orientation;
  handlerCopy = handler;
  userSafetyClient = [(IMCommSafetyRequestsManager *)self userSafetyClient];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A867535C;
  v11[3] = &unk_1E7828598;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [userSafetyClient analyzeCGImage:image withOrientation:v5 completionHandler:v11];
}

- (BOOL)_shouldForceSensitivityResult
{
  v2 = +[IMDefaults sharedInstance];
  v3 = [v2 getValueFromDomain:@"com.apple.messages" forKey:@"kMarkSensitiveKey"];

  integerValue = [v3 integerValue];
  if (integerValue == 1)
  {
    v5 = +[IMDefaults sharedInstance];
    [v5 setValue:&unk_1F1BFA670 forDomain:@"com.apple.messages" forKey:@"kMarkSensitiveKey"];
  }

  return integerValue != 0;
}

@end