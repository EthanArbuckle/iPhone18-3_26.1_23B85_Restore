@interface DEExtensionProvider
- (DEExtensionProvider)init;
- (id)_getHostname;
- (id)filesInDir:(id)dir matchingPattern:(id)pattern excludingPattern:(id)excludingPattern;
- (void)beginRequestWithExtensionContext:(id)context;
- (void)isExtensionEnhancedLoggingStateOnWithHandler:(id)handler;
- (void)setupWithParameters:(id)parameters;
- (void)teardownWithParameters:(id)parameters;
@end

@implementation DEExtensionProvider

- (DEExtensionProvider)init
{
  v6.receiver = self;
  v6.super_class = DEExtensionProvider;
  v2 = [(DEExtensionProvider *)&v6 init];
  v3 = v2;
  if (v2)
  {
    loggingConsent = v2->_loggingConsent;
    v2->_loggingConsent = 0;

    v3->_isEnhancedLoggingStateOn = 0;
  }

  return v3;
}

- (void)beginRequestWithExtensionContext:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = +[DELogging fwHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v17 = contextCopy;
    _os_log_impl(&dword_248AB3000, v5, OS_LOG_TYPE_INFO, "Started extension with context: %@", buf, 0xCu);
  }

  _auxiliaryConnection = [contextCopy _auxiliaryConnection];
  v7 = [_auxiliaryConnection valueForEntitlement:@"com.apple.DiagnosticExtensions.extensionHost"];

  if (!v7 || ([v7 BOOLValue] & 1) == 0)
  {
    v8 = +[DELogging fwHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(DEExtensionProvider *)self beginRequestWithExtensionContext:v8];
    }

    v9 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA450];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Diagnostic Extension (%@) doesn't have com.apple.DiagnosticExtensions entitlement", self];
    v15 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v12 = [v9 errorWithDomain:@"DEExtensionErrorDomain" code:-1 userInfo:v11];
    [contextCopy cancelRequestWithError:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setupWithParameters:(id)parameters
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = +[DELogging fwHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[DEExtensionProvider setupWithParameters:]";
    _os_log_impl(&dword_248AB3000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  [(DEExtensionProvider *)self setIsEnhancedLoggingStateOn:1];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)teardownWithParameters:(id)parameters
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = +[DELogging fwHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[DEExtensionProvider teardownWithParameters:]";
    _os_log_impl(&dword_248AB3000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  [(DEExtensionProvider *)self setIsEnhancedLoggingStateOn:0];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)isExtensionEnhancedLoggingStateOnWithHandler:(id)handler
{
  v9 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = +[DELogging fwHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[DEExtensionProvider isExtensionEnhancedLoggingStateOnWithHandler:]";
    _os_log_impl(&dword_248AB3000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  handlerCopy[2](handlerCopy, [(DEExtensionProvider *)self isEnhancedLoggingStateOn]);
  v6 = *MEMORY[0x277D85DE8];
}

- (id)filesInDir:(id)dir matchingPattern:(id)pattern excludingPattern:(id)excludingPattern
{
  v60[2] = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  patternCopy = pattern;
  excludingPatternCopy = excludingPattern;
  v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = patternCopy;
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"*" options:1 error:0];
  }

  v54 = 0;
  v12 = [dirCopy checkResourceIsReachableAndReturnError:&v54];
  v13 = v54;
  v14 = v13;
  if (v12)
  {
    v36 = v13;
    v37 = v10;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v16 = *MEMORY[0x277CBE8E8];
    v17 = *MEMORY[0x277CBE868];
    v60[0] = *MEMORY[0x277CBE8E8];
    v60[1] = v17;
    v44 = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
    v38 = dirCopy;
    v19 = [defaultManager enumeratorAtURL:dirCopy includingPropertiesForKeys:v18 options:5 errorHandler:0];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v20 = v19;
    v45 = [v20 countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v45)
    {
      v42 = *MEMORY[0x277CBE838];
      v43 = *v51;
      v39 = *MEMORY[0x277CBE7B0];
      v40 = v16;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v51 != v43)
          {
            objc_enumerationMutation(v20);
          }

          v22 = *(*(&v50 + 1) + 8 * i);
          v49 = 0;
          [v22 getResourceValue:&v49 forKey:v16 error:0];
          v23 = v49;
          v48 = 0;
          [v22 getResourceValue:&v48 forKey:v44 error:0];
          v24 = v48;
          v47 = 0;
          [v22 getResourceValue:&v47 forKey:v42 error:0];
          v25 = v47;
          if (([v24 BOOLValue] & 1) == 0)
          {
            if (!v11 || ([v11 firstMatchInString:v23 options:0 range:{0, objc_msgSend(v23, "length")}], v26 = objc_claimAutoreleasedReturnValue(), v26, v26))
            {
              if (!excludingPatternCopy || ([excludingPatternCopy firstMatchInString:v23 options:0 range:{0, objc_msgSend(v23, "length")}], v27 = objc_claimAutoreleasedReturnValue(), v27, !v27))
              {
                v46 = 0;
                [v22 getResourceValue:&v46 forKey:v39 error:0];
                v28 = v46;
                [v22 lastPathComponent];
                v29 = v20;
                v30 = v11;
                v32 = v31 = excludingPatternCopy;
                v33 = [DEAttachmentItem attachmentWithPath:v22 withDisplayName:v32 modificationDate:v28 andFilesize:v25];

                [v41 addObject:v33];
                excludingPatternCopy = v31;
                v11 = v30;
                v20 = v29;
                v16 = v40;
              }
            }
          }
        }

        v45 = [v20 countByEnumeratingWithState:&v50 objects:v59 count:16];
      }

      while (v45);
    }

    v10 = v37;
    dirCopy = v38;
    v14 = v36;
  }

  else
  {
    v20 = +[DELogging fwHandle];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v56 = dirCopy;
      v57 = 2112;
      v58 = v14;
      _os_log_impl(&dword_248AB3000, v20, OS_LOG_TYPE_DEFAULT, "Unable to reach %@. Reason: %@", buf, 0x16u);
    }
  }

  v34 = *MEMORY[0x277D85DE8];

  return v41;
}

- (id)_getHostname
{
  if (_getHostname_onceToken != -1)
  {
    [DEExtensionProvider _getHostname];
  }

  v3 = _getHostname_hostname;

  return v3;
}

void __35__DEExtensionProvider__getHostname__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  memset(v3, 0, sizeof(v3));
  if (!gethostname(v3, 0x100uLL))
  {
    v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
    v1 = _getHostname_hostname;
    _getHostname_hostname = v0;
  }

  if (!_getHostname_hostname)
  {
    _getHostname_hostname = @"localhost";
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)beginRequestWithExtensionContext:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_248AB3000, a2, OS_LOG_TYPE_ERROR, "Provider has no entitlement: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end