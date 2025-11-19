@interface DMCAMSUtilities
+ (id)appstoredUserAgent;
@end

@implementation DMCAMSUtilities

+ (id)appstoredUserAgent
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v2 = getAMSProcessInfoClass_softClass;
  v17 = getAMSProcessInfoClass_softClass;
  if (!getAMSProcessInfoClass_softClass)
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __getAMSProcessInfoClass_block_invoke;
    v12 = &unk_1E7ADC1F0;
    v13 = &v14;
    __getAMSProcessInfoClass_block_invoke(&v9);
    v2 = v15[3];
  }

  v3 = v2;
  _Block_object_dispose(&v14, 8);
  v4 = [[v2 alloc] initWithBundleIdentifier:@"com.apple.appstored"];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v5 = getAMSUserAgentClass_softClass;
  v17 = getAMSUserAgentClass_softClass;
  if (!getAMSUserAgentClass_softClass)
  {
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __getAMSUserAgentClass_block_invoke;
    v12 = &unk_1E7ADC1F0;
    v13 = &v14;
    __getAMSUserAgentClass_block_invoke(&v9);
    v5 = v15[3];
  }

  v6 = v5;
  _Block_object_dispose(&v14, 8);
  v7 = [v5 userAgentForProcessInfo:v4];

  return v7;
}

@end