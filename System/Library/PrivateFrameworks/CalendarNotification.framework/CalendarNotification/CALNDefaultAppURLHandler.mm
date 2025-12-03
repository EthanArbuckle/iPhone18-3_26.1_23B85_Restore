@interface CALNDefaultAppURLHandler
- (CALNDefaultAppURLHandler)initWithFallbackHandler:(id)handler;
- (void)openURL:(id)l response:(id)response;
@end

@implementation CALNDefaultAppURLHandler

- (CALNDefaultAppURLHandler)initWithFallbackHandler:(id)handler
{
  handlerCopy = handler;
  v8.receiver = self;
  v8.super_class = CALNDefaultAppURLHandler;
  v5 = [(CALNDefaultAppURLHandler *)&v8 init];
  fallbackHandler = v5->_fallbackHandler;
  v5->_fallbackHandler = handlerCopy;

  return v5;
}

- (void)openURL:(id)l response:(id)response
{
  v18 = *MEMORY[0x277D85DE8];
  lCopy = l;
  responseCopy = response;
  v8 = responseCopy;
  if (!responseCopy)
  {
    goto LABEL_8;
  }

  actionIdentifier = [responseCopy actionIdentifier];
  if (([actionIdentifier isEqualToString:@"CALNNotificationDirectionsAction"] & 1) == 0)
  {

    goto LABEL_8;
  }

  v10 = [MEMORY[0x277CD4FB0] canHandleURL:lCopy];

  if (!v10)
  {
LABEL_8:
    [(CALNURLHandler *)self->_fallbackHandler openURL:lCopy response:v8];
    goto LABEL_9;
  }

  v11 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = lCopy;
    _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, "Attempting to open url: %@ with default app", buf, 0xCu);
  }

  v12 = MEMORY[0x277CD4E80];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __45__CALNDefaultAppURLHandler_openURL_response___block_invoke;
  v14[3] = &unk_278D6F9F0;
  v15 = lCopy;
  [v12 _openDefaultNavigationWithURL:v15 fromScene:0 completionHandler:v14];

LABEL_9:
  v13 = *MEMORY[0x277D85DE8];
}

void __45__CALNDefaultAppURLHandler_openURL_response___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __45__CALNDefaultAppURLHandler_openURL_response___block_invoke_cold_1(a1, v3);
    }
  }
}

void __45__CALNDefaultAppURLHandler_openURL_response___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_242909000, a2, OS_LOG_TYPE_ERROR, "Failed to open url: %@ with default app", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end