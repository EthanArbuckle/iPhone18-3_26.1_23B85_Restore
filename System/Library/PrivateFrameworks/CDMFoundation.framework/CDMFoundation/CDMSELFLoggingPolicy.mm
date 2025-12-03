@interface CDMSELFLoggingPolicy
+ (BOOL)isDiagnosticsSubmissionAllowed;
+ (BOOL)isSELFLoggingAllowed:(int)allowed;
+ (int)getSELFCDMLoggingPolicyType:(id)type;
@end

@implementation CDMSELFLoggingPolicy

+ (BOOL)isSELFLoggingAllowed:(int)allowed
{
  if (allowed == 2)
  {
    return +[CDMSELFLoggingPolicy isDiagnosticsSubmissionAllowed];
  }

  else
  {
    return allowed == 1;
  }
}

+ (int)getSELFCDMLoggingPolicyType:(id)type
{
  v16 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if (!typeCopy)
  {
    v4 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "+[CDMSELFLoggingPolicy getSELFCDMLoggingPolicyType:]";
      _os_log_impl(&dword_1DC287000, v4, OS_LOG_TYPE_INFO, "%s [WARN]: Calling bundle id is nil, setting logging policy to NO_LOGGING", &v10, 0xCu);
    }

    goto LABEL_13;
  }

  if (getSELFCDMLoggingPolicyType__onceToken != -1)
  {
    dispatch_once(&getSELFCDMLoggingPolicyType__onceToken, &__block_literal_global_10674);
  }

  v4 = [getSELFCDMLoggingPolicyType__bundleIdStringToCDMPolicyTypeDict objectForKey:typeCopy];
  v5 = CDMOSLoggerForCategory(0);
  v6 = v5;
  if (!v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "+[CDMSELFLoggingPolicy getSELFCDMLoggingPolicyType:]";
      v12 = 2112;
      v13 = typeCopy;
      _os_log_impl(&dword_1DC287000, v6, OS_LOG_TYPE_INFO, "%s [WARN]: Unknown calling bundle id, setting logging policy to NO_LOGGING: %@", &v10, 0x16u);
    }

    v4 = 0;
LABEL_13:
    intValue = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315650;
    v11 = "+[CDMSELFLoggingPolicy getSELFCDMLoggingPolicyType:]";
    v12 = 2112;
    v13 = typeCopy;
    v14 = 2112;
    v15 = v4;
    _os_log_debug_impl(&dword_1DC287000, v6, OS_LOG_TYPE_DEBUG, "%s Calling bundle id - %@, Logging Policy - %@", &v10, 0x20u);
  }

  intValue = [v4 intValue];
LABEL_14:

  v8 = *MEMORY[0x1E69E9840];
  return intValue;
}

void __52__CDMSELFLoggingPolicy_getSELFCDMLoggingPolicyType___block_invoke()
{
  v21[17] = *MEMORY[0x1E69E9840];
  v20[0] = @"com.apple.assistant.assistantd";
  v19 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:1];
  v21[0] = v19;
  v20[1] = @"com.apple.searchd";
  v18 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:2];
  v21[1] = v18;
  v20[2] = @"com.apple.spotlight";
  v17 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:2];
  v21[2] = v17;
  v20[3] = @"com.apple.Spotlight";
  v16 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:2];
  v21[3] = v16;
  v20[4] = @"com.apple.assistant.cdmtool";
  v15 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:1];
  v21[4] = v15;
  v20[5] = @"com.apple.AssistantServices";
  v14 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:1];
  v21[5] = v14;
  v20[6] = @"com.apple.siri.nlteam.SiriSSUCLINLU";
  v13 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:1];
  v21[6] = v13;
  v20[7] = @"com.apple.assistantd";
  v0 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:1];
  v21[7] = v0;
  v20[8] = @"com.apple.mobileslideshow";
  v1 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:2];
  v21[8] = v1;
  v20[9] = @"com.apple.Photos";
  v2 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:2];
  v21[9] = v2;
  v20[10] = @"com.apple.mobilemail";
  v3 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:2];
  v21[10] = v3;
  v20[11] = @"com.apple.mail";
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:2];
  v21[11] = v4;
  v20[12] = @"com.apple.mobilenotes";
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:2];
  v21[12] = v5;
  v20[13] = @"com.apple.Notes";
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:2];
  v21[13] = v6;
  v20[14] = @"com.apple.StickerKit.StickerPickerService";
  v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:2];
  v21[14] = v7;
  v20[15] = @"com.apple.GenerativePlaygroundApp";
  v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:2];
  v21[15] = v8;
  v20[16] = @"com.apple.omniSearch.SearchToolExtension";
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:2];
  v21[16] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:17];
  v11 = getSELFCDMLoggingPolicyType__bundleIdStringToCDMPolicyTypeDict;
  getSELFCDMLoggingPolicyType__bundleIdStringToCDMPolicyTypeDict = v10;

  v12 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isDiagnosticsSubmissionAllowed
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [mEMORY[0x1E69ADFB8] effectiveBoolValueForSetting:*MEMORY[0x1E69ADE40]] == 1;

  return v3;
}

@end