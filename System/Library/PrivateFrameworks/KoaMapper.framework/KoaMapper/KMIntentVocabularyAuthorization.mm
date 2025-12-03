@interface KMIntentVocabularyAuthorization
- (BOOL)isAuthorizedApp:(id)app;
@end

@implementation KMIntentVocabularyAuthorization

- (BOOL)isAuthorizedApp:(id)app
{
  v17 = *MEMORY[0x277D85DE8];
  appCopy = app;
  v4 = [MEMORY[0x277CD43D0] _siriAuthorizationStatusForAppID:appCopy];
  if (v4 != 3)
  {
    v5 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_INFO))
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = v5;
      v8 = [v6 numberWithInteger:v4];
      v11 = 136315650;
      v12 = "[KMIntentVocabularyAuthorization isAuthorizedApp:]";
      v13 = 2112;
      v14 = appCopy;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_2559DF000, v7, OS_LOG_TYPE_INFO, "%s App is not authorized to share vocabulary with Siri. appId=%@ authStatus=%@", &v11, 0x20u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4 == 3;
}

@end