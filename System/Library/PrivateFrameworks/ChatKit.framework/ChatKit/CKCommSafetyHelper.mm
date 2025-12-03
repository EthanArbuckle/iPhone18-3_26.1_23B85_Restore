@interface CKCommSafetyHelper
+ (BOOL)shouldDisableTranscriptCapabilitiesForCKFileTransfer:(id)transfer;
+ (BOOL)shouldDisableTranscriptCapabilitiesForFileTransfer:(id)transfer;
+ (BOOL)shouldDisableTranscriptCapabilitiesForTransferWithCommSafetyState:(int64_t)state;
+ (id)defaultLanguageForCountryPairings;
+ (id)validLanguageCountryPairings;
+ (id)waysToGetHelpURL;
@end

@implementation CKCommSafetyHelper

+ (id)waysToGetHelpURL
{
  v2 = +[CKCommSafetyHelper validLanguageCountryPairings];
  v3 = +[CKCommSafetyHelper defaultLanguageForCountryPairings];
  mEMORY[0x1E69A7FC8] = [MEMORY[0x1E69A7FC8] sharedManager];
  enablementGroup = [mEMORY[0x1E69A7FC8] enablementGroup];

  if (enablementGroup == 2)
  {
    v6 = @"https://apple.com/go/child-safety/re/";
  }

  else
  {
    mEMORY[0x1E69A7FC8]2 = [MEMORY[0x1E69A7FC8] sharedManager];
    childIsYoungAgeGroup = [mEMORY[0x1E69A7FC8]2 childIsYoungAgeGroup];

    if (childIsYoungAgeGroup)
    {
      v6 = @"https://www.apple.com/go/child-safety/rc-u13/";
    }

    else
    {
      v6 = @"https://www.apple.com/go/child-safety/rc/";
    }
  }

  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  primaryAuthKitAccount = [mEMORY[0x1E698DC80] primaryAuthKitAccount];
  if (primaryAuthKitAccount)
  {
    v11 = [mEMORY[0x1E698DC80] appleIDCountryCodeForAccount:primaryAuthKitAccount];
    lowercaseString = [v11 lowercaseString];
  }

  else
  {
    lowercaseString = 0;
  }

  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  languageCode = [currentLocale languageCode];
  lowercaseString2 = [languageCode lowercaseString];

  if (lowercaseString && lowercaseString2)
  {
    v16 = [v2 objectForKey:lowercaseString];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 containsObject:lowercaseString2];
      v19 = MEMORY[0x1E696AEC0];
      if (v18)
      {
        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", lowercaseString2, lowercaseString];
      }

      else
      {
        v21 = [v3 objectForKey:lowercaseString];
        v20 = [v19 stringWithFormat:@"%@-%@", v21, lowercaseString];
      }

      v6 = [(__CFString *)v6 stringByAppendingString:v20];
    }
  }

  return v6;
}

+ (id)validLanguageCountryPairings
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"br", 0}];
  [v2 setValue:v3 forKey:@"br"];

  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"en", @"fr", 0}];
  [v2 setValue:v4 forKey:@"ca"];

  v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"en", @"es", 0}];
  [v2 setValue:v5 forKey:@"us"];

  v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"jp", 0}];
  [v2 setValue:v6 forKey:@"jp"];

  v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"ko", 0}];
  [v2 setValue:v7 forKey:@"kr"];

  v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"fr", @"nl", 0}];
  [v2 setValue:v8 forKey:@"be"];

  v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"en", @"fr", 0}];
  [v2 setValue:v9 forKey:@"fr"];

  v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"en", @"de", 0}];
  [v2 setValue:v10 forKey:@"de"];

  v11 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"en", 0}];
  [v2 setValue:v11 forKey:@"gb"];

  v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"it", 0}];
  [v2 setValue:v12 forKey:@"it"];

  v13 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"nl", 0}];
  [v2 setValue:v13 forKey:@"nl"];

  v14 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"es", 0}];
  [v2 setValue:v14 forKey:@"es"];

  v15 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"sv", 0}];
  [v2 setValue:v15 forKey:@"se"];

  v16 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"en", 0}];
  [v2 setValue:v16 forKey:@"au"];

  v17 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"en", 0}];
  [v2 setValue:v17 forKey:@"nz"];

  return v2;
}

+ (id)defaultLanguageForCountryPairings
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v2 setValue:@"br" forKey:@"br"];
  [v2 setValue:@"en" forKey:@"ca"];
  [v2 setValue:@"en" forKey:@"us"];
  [v2 setValue:@"jp" forKey:@"jp"];
  [v2 setValue:@"ko" forKey:@"kr"];
  [v2 setValue:@"fr" forKey:@"be"];
  [v2 setValue:@"fr" forKey:@"fr"];
  [v2 setValue:@"de" forKey:@"de"];
  [v2 setValue:@"en" forKey:@"gb"];
  [v2 setValue:@"it" forKey:@"it"];
  [v2 setValue:@"nl" forKey:@"nl"];
  [v2 setValue:@"es" forKey:@"es"];
  [v2 setValue:@"sv" forKey:@"se"];
  [v2 setValue:@"en" forKey:@"au"];
  [v2 setValue:@"en" forKey:@"nz"];

  return v2;
}

+ (BOOL)shouldDisableTranscriptCapabilitiesForFileTransfer:(id)transfer
{
  transferCopy = transfer;
  v5 = transferCopy;
  if (transferCopy)
  {
    v6 = [self shouldDisableTranscriptCapabilitiesForTransferWithCommSafetyState:{objc_msgSend(transferCopy, "commSafetySensitive")}];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Tried to check shouldDisableTranscriptCapabilitiesForFileTransfer for a nil fileTransfer. Programming error.", v9, 2u);
      }
    }

    v6 = 0;
  }

  return v6;
}

+ (BOOL)shouldDisableTranscriptCapabilitiesForCKFileTransfer:(id)transfer
{
  transferCopy = transfer;
  v5 = transferCopy;
  if (transferCopy)
  {
    v6 = [self shouldDisableTranscriptCapabilitiesForTransferWithCommSafetyState:{objc_msgSend(transferCopy, "commSafetySensitive")}];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Tried to check shouldDisableTranscriptCapabilitiesForCKFileTransfer for a nil ckFileTransfer. Programming error.", v9, 2u);
      }
    }

    v6 = 0;
  }

  return v6;
}

+ (BOOL)shouldDisableTranscriptCapabilitiesForTransferWithCommSafetyState:(int64_t)state
{
  mEMORY[0x1E69A7FC8] = [MEMORY[0x1E69A7FC8] sharedManager];
  enablementGroup = [mEMORY[0x1E69A7FC8] enablementGroup];

  if (enablementGroup == 2)
  {
    return state == 1;
  }

  if (enablementGroup == 1)
  {
    return (state - 1) < 2;
  }

  return 0;
}

@end