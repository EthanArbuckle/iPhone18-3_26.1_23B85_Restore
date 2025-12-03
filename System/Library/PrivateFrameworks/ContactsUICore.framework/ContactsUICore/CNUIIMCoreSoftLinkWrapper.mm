@interface CNUIIMCoreSoftLinkWrapper
+ (BOOL)multiplePhoneNumbersTiedToAppleID;
@end

@implementation CNUIIMCoreSoftLinkWrapper

+ (BOOL)multiplePhoneNumbersTiedToAppleID
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  if ([featureFlags isFeatureEnabled:26])
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2050000000;
    v4 = getIMNicknameControllerClass_softClass;
    v12 = getIMNicknameControllerClass_softClass;
    if (!getIMNicknameControllerClass_softClass)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __getIMNicknameControllerClass_block_invoke;
      v8[3] = &unk_1E76E79E0;
      v8[4] = &v9;
      __getIMNicknameControllerClass_block_invoke(v8);
      v4 = v10[3];
    }

    v5 = v4;
    _Block_object_dispose(&v9, 8);
    multiplePhoneNumbersTiedToAppleID = [v4 multiplePhoneNumbersTiedToAppleID];
  }

  else
  {
    multiplePhoneNumbersTiedToAppleID = 0;
  }

  return multiplePhoneNumbersTiedToAppleID;
}

@end