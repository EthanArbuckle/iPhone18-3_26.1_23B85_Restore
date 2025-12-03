@interface CDMPlatformUtils
+ (BOOL)isInternalInstall;
+ (id)normalizedAssistantLocaleIdentifier;
+ (id)prettyPrintError:(id)error;
+ (id)prettyPrintJson:(id)json;
@end

@implementation CDMPlatformUtils

+ (BOOL)isInternalInstall
{
  if (isInternalInstall_onceToken != -1)
  {
    dispatch_once(&isInternalInstall_onceToken, &__block_literal_global_10942);
  }

  return isInternalInstall_isInternalBuild;
}

+ (id)normalizedAssistantLocaleIdentifier
{
  mEMORY[0x1E698D1C0] = [MEMORY[0x1E698D1C0] sharedPreferences];
  languageCode = [mEMORY[0x1E698D1C0] languageCode];

  if (languageCode)
  {
    v4 = [CDMPlatformUtils normalizeLocaleIdentifier:languageCode];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)prettyPrintError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (!errorCopy)
  {
    localizedDescription2 = @"(no error)";
    goto LABEL_7;
  }

  localizedFailureReason = [errorCopy localizedFailureReason];
  if (localizedFailureReason)
  {

LABEL_6:
    v8 = MEMORY[0x1E696AEC0];
    localizedDescription = [v4 localizedDescription];
    localizedFailureReason2 = [v4 localizedFailureReason];
    localizedRecoverySuggestion = [v4 localizedRecoverySuggestion];
    localizedDescription2 = [v8 stringWithFormat:@"{Description: %@, Failure Reason: %@, Recovery Suggestion: %@}", localizedDescription, localizedFailureReason2, localizedRecoverySuggestion];

    goto LABEL_7;
  }

  localizedRecoverySuggestion2 = [v4 localizedRecoverySuggestion];

  if (localizedRecoverySuggestion2)
  {
    goto LABEL_6;
  }

  localizedDescription2 = [v4 localizedDescription];
LABEL_7:

  return localizedDescription2;
}

+ (id)prettyPrintJson:(id)json
{
  v3 = [json dataUsingEncoding:4];
  v11 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v3 options:4 error:&v11];
  v5 = v11;
  if (v5)
  {
    v6 = v5;
    localizedDescription = [v5 localizedDescription];
    NSLog(&cfstr_FailedToConver.isa, localizedDescription);
    v8 = 0;
  }

  else
  {
    v10 = 0;
    localizedDescription = [MEMORY[0x1E696ACB0] dataWithJSONObject:v4 options:1 error:&v10];
    v6 = v10;
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:localizedDescription encoding:4];
  }

  return v8;
}

uint64_t __37__CDMPlatformUtils_isInternalInstall__block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  isInternalInstall_isInternalBuild = result;
  return result;
}

@end