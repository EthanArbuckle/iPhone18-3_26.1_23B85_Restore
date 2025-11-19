@interface CNUIApplicationLaunchOptions
+ (id)defaultOptions;
@end

@implementation CNUIApplicationLaunchOptions

+ (id)defaultOptions
{
  if (defaultOptions_cn_once_token_1 != -1)
  {
    +[CNUIApplicationLaunchOptions defaultOptions];
  }

  v3 = defaultOptions_cn_once_object_1;

  return v3;
}

void __46__CNUIApplicationLaunchOptions_defaultOptions__block_invoke()
{
  v17[2] = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v0 = getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr;
  v14 = getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr;
  if (!getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr)
  {
    v1 = FrontBoardServicesLibrary();
    v12[3] = dlsym(v1, "FBSOpenApplicationOptionKeyUnlockDevice");
    getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr = v12[3];
    v0 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v0)
  {
    goto LABEL_8;
  }

  v2 = *v0;
  v15 = v2;
  v3 = MEMORY[0x1E695E118];
  v17[0] = MEMORY[0x1E695E118];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v4 = getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr;
  v14 = getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr;
  if (!getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr)
  {
    v5 = FrontBoardServicesLibrary();
    v12[3] = dlsym(v5, "FBSOpenApplicationOptionKeyPromptUnlockDevice");
    getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr = v12[3];
    v4 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v4)
  {
LABEL_8:
    +[CNUIIDSRequest IDSServiceForService:];
    __break(1u);
  }

  v16 = *v4;
  v17[1] = v3;
  v6 = MEMORY[0x1E695DF20];
  v7 = v16;
  v8 = [v6 dictionaryWithObjects:v17 forKeys:&v15 count:2];
  v9 = [v8 copy];
  v10 = defaultOptions_cn_once_object_1;
  defaultOptions_cn_once_object_1 = v9;
}

@end