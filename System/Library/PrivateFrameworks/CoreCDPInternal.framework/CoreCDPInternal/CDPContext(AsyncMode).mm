@interface CDPContext(AsyncMode)
- (uint64_t)disableAsyncModeRequested;
@end

@implementation CDPContext(AsyncMode)

- (uint64_t)disableAsyncModeRequested
{
  v10 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277CFD4A8] isSubsetOfContextTypeRepair:{objc_msgSend(self, "type")}] & 1) == 0 && objc_msgSend(self, "type") != 3 && objc_msgSend(self, "type") != 4 && objc_msgSend(self, "type") != 5 && objc_msgSend(self, "type") != 6 && objc_msgSend(self, "type") != 7 && objc_msgSend(self, "type") != 8)
  {
    if ([self isLocalSecretCached])
    {
      if ([self _disableAsyncSecureBackupEnrollment])
      {
        v2 = _CDPLogSystem();
        if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_11;
        }

        LOWORD(v8) = 0;
        v3 = "Context has disabled async secure backup enrollment";
      }

      else
      {
        result = CFPreferencesGetAppBooleanValue(@"DisableAsyncEnable", @"com.apple.corecdp", 0);
        if (!result)
        {
          goto LABEL_12;
        }

        v2 = _CDPLogSystem();
        if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_11;
        }

        LOWORD(v8) = 0;
        v3 = "Pref to disable async enable was set...";
      }
    }

    else
    {
      v2 = _CDPLogSystem();
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      LOWORD(v8) = 0;
      v3 = "Disabling async secure backup enrollment since context has no cached local secret.";
    }

    v4 = v2;
    v5 = 2;
    goto LABEL_10;
  }

  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    type = [self type];
    v3 = "Disabling async secure backup enrollment for CDPContextType: %ld";
    v4 = v2;
    v5 = 12;
LABEL_10:
    _os_log_impl(&dword_24510B000, v4, OS_LOG_TYPE_DEFAULT, v3, &v8, v5);
  }

LABEL_11:

  result = 1;
LABEL_12:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

@end