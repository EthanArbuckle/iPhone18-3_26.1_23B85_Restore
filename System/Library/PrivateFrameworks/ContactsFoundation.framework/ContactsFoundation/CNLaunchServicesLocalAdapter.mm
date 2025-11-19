@interface CNLaunchServicesLocalAdapter
- (CNLaunchServicesLocalAdapter)initWithApplicationWorkspace:(id)a3;
- (id)getDefaultAppProxyFromTU;
- (unint64_t)_convertDefaultAppCategory:(unint64_t)a3;
- (void)applicationForBundleIdentifier:(id)a3 withReply:(id)a4;
- (void)applicationsAvailableForDefaultAppCategory:(id)a3 withReply:(id)a4;
- (void)applicationsAvailableForHandlingURLScheme:(id)a3 withReply:(id)a4;
- (void)applicationsForUserActivityType:(id)a3 withReply:(id)a4;
- (void)defaultApplicationForDefaultAppCategory:(id)a3 withReply:(id)a4;
- (void)openSensitiveURLInBackground:(id)a3 withOptions:(id)a4 withReply:(id)a5;
- (void)openUserActivityData:(id)a3 inApplication:(id)a4 withReply:(id)a5;
@end

@implementation CNLaunchServicesLocalAdapter

- (CNLaunchServicesLocalAdapter)initWithApplicationWorkspace:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNLaunchServicesLocalAdapter;
  v6 = [(CNLaunchServicesLocalAdapter *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workspace, a3);
    v8 = v7;
  }

  return v7;
}

- (void)applicationsForUserActivityType:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNLaunchServicesLocalAdapter *)self workspace];
  v9 = [v8 applicationsForUserActivityType:v7];

  v11 = [v9 _cn_map:&__block_literal_global_81];

  if (off_1EF43EA08(&__block_literal_global_93, v11))
  {
    v10 = v11;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v6[2](v6, v10, 0);
}

- (void)applicationsAvailableForHandlingURLScheme:(id)a3 withReply:(id)a4
{
  v6 = MEMORY[0x1E696AF20];
  v7 = a4;
  v8 = a3;
  v14 = objc_alloc_init(v6);
  [v14 setScheme:v8];

  v9 = [(CNLaunchServicesLocalAdapter *)self workspace];
  v10 = [v14 URL];
  v11 = [v9 applicationsAvailableForOpeningURL:v10];
  v12 = [v11 _cn_map:&__block_literal_global_81];

  if (off_1EF43EA08(&__block_literal_global_93, v12))
  {
    v13 = v12;
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  v7[2](v7, v13, 0);
}

- (void)applicationsAvailableForDefaultAppCategory:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = -[CNLaunchServicesLocalAdapter _convertDefaultAppCategory:](self, "_convertDefaultAppCategory:", [a3 integerValue]);
  v11 = [MEMORY[0x1E69635F8] displayOrderEnumeratorForViableDefaultAppsForCategory:v7 options:0];
  v8 = [v11 allObjects];
  v9 = [v8 _cn_map:&__block_literal_global_15_1];

  if (off_1EF43EA08(&__block_literal_global_93, v9))
  {
    v10 = v9;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v6[2](v6, v10, 0);
}

- (void)defaultApplicationForDefaultAppCategory:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 integerValue] == 1 && (-[CNLaunchServicesLocalAdapter getDefaultAppProxyFromTU](self, "getDefaultAppProxyFromTU"), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v7[2](v7, v8, 0);
  }

  else
  {
    v10 = -[CNLaunchServicesLocalAdapter _convertDefaultAppCategory:](self, "_convertDefaultAppCategory:", [v6 integerValue]);
    v11 = [(CNLaunchServicesLocalAdapter *)self workspace];
    v15 = 0;
    v12 = [v11 defaultApplicationForCategory:v10 error:&v15];
    v9 = v15;

    if (v12)
    {
      v14 = CNApplicationProxyFromLSApplicationRecord_block_invoke_2(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    (v7)[2](v7, v14, v9);
  }
}

- (id)getDefaultAppProxyFromTU
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v2 = getdefaultAppRelayTelephonySettingSymbolLoc_ptr;
  v13 = getdefaultAppRelayTelephonySettingSymbolLoc_ptr;
  if (!getdefaultAppRelayTelephonySettingSymbolLoc_ptr)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getdefaultAppRelayTelephonySettingSymbolLoc_block_invoke;
    v9[3] = &unk_1E6ED5A80;
    v9[4] = &v10;
    __getdefaultAppRelayTelephonySettingSymbolLoc_block_invoke(v9);
    v2 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v2)
  {
    +[CNImageCropUtilities centeredSquareCropRectInRect:];
    v8 = v7;
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v8);
  }

  v3 = v2();
  if (v3 == 1)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  else if (v3 == 2)
  {
    v4 = [CNApplicationProxy alloc];
    v5 = [(CNApplicationProxy *)v4 initWithBundleIdentifier:@"com.apple.mobilephone" teamIdentifier:@"0000000000" localizedName:@"Phone" activityTypes:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_convertDefaultAppCategory:(unint64_t)a3
{
  if (!a3)
  {
    return 3;
  }

  if (a3 != 1)
  {
    v4 = CNUnimplementedMethodException(self, a2);
    objc_exception_throw(v4);
  }

  return 4;
}

- (void)applicationForBundleIdentifier:(id)a3 withReply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() lsApplicationWorkspaceForBundleId:v6];

  v9 = CNApplicationProxyFromLSApplicationProxy_block_invoke(v8, v7);

  v5[2](v5, v9, 0);
}

- (void)openUserActivityData:(id)a3 inApplication:(id)a4 withReply:(id)a5
{
  v16 = a4;
  v8 = MEMORY[0x1E69636A8];
  v9 = a5;
  v10 = a3;
  v11 = [[v8 alloc] _initWithUserActivityData:v10];

  v12 = [v16 bundleIdentifier];

  if (v12)
  {
    v13 = objc_opt_class();
    v14 = [v16 bundleIdentifier];
    v12 = [v13 lsApplicationWorkspaceForBundleId:v14];
  }

  v15 = [(CNLaunchServicesLocalAdapter *)self workspace];
  [v15 openUserActivity:v11 withApplicationProxy:v12 completionHandler:v9];
}

- (void)openSensitiveURLInBackground:(id)a3 withOptions:(id)a4 withReply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CNLaunchServicesLocalAdapter *)self workspace];
  v14 = 0;
  v12 = [v11 openSensitiveURL:v10 withOptions:v9 error:&v14];

  v13 = v14;
  v8[2](v8, v12, v13);
}

@end