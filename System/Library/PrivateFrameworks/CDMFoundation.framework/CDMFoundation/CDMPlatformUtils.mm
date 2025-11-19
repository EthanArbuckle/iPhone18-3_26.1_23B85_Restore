@interface CDMPlatformUtils
+ (BOOL)isInternalInstall;
+ (id)normalizedAssistantLocaleIdentifier;
+ (id)prettyPrintError:(id)a3;
+ (id)prettyPrintJson:(id)a3;
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
  v2 = [MEMORY[0x1E698D1C0] sharedPreferences];
  v3 = [v2 languageCode];

  if (v3)
  {
    v4 = [CDMPlatformUtils normalizeLocaleIdentifier:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)prettyPrintError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v6 = @"(no error)";
    goto LABEL_7;
  }

  v5 = [v3 localizedFailureReason];
  if (v5)
  {

LABEL_6:
    v8 = MEMORY[0x1E696AEC0];
    v9 = [v4 localizedDescription];
    v10 = [v4 localizedFailureReason];
    v11 = [v4 localizedRecoverySuggestion];
    v6 = [v8 stringWithFormat:@"{Description: %@, Failure Reason: %@, Recovery Suggestion: %@}", v9, v10, v11];

    goto LABEL_7;
  }

  v7 = [v4 localizedRecoverySuggestion];

  if (v7)
  {
    goto LABEL_6;
  }

  v6 = [v4 localizedDescription];
LABEL_7:

  return v6;
}

+ (id)prettyPrintJson:(id)a3
{
  v3 = [a3 dataUsingEncoding:4];
  v11 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v3 options:4 error:&v11];
  v5 = v11;
  if (v5)
  {
    v6 = v5;
    v7 = [v5 localizedDescription];
    NSLog(&cfstr_FailedToConver.isa, v7);
    v8 = 0;
  }

  else
  {
    v10 = 0;
    v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v4 options:1 error:&v10];
    v6 = v10;
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v7 encoding:4];
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