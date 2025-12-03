@interface CNLaunchServicesLocalAdapter
- (CNLaunchServicesLocalAdapter)initWithApplicationWorkspace:(id)workspace;
- (id)getDefaultAppProxyFromTU;
- (unint64_t)_convertDefaultAppCategory:(unint64_t)category;
- (void)applicationForBundleIdentifier:(id)identifier withReply:(id)reply;
- (void)applicationsAvailableForDefaultAppCategory:(id)category withReply:(id)reply;
- (void)applicationsAvailableForHandlingURLScheme:(id)scheme withReply:(id)reply;
- (void)applicationsForUserActivityType:(id)type withReply:(id)reply;
- (void)defaultApplicationForDefaultAppCategory:(id)category withReply:(id)reply;
- (void)openSensitiveURLInBackground:(id)background withOptions:(id)options withReply:(id)reply;
- (void)openUserActivityData:(id)data inApplication:(id)application withReply:(id)reply;
@end

@implementation CNLaunchServicesLocalAdapter

- (CNLaunchServicesLocalAdapter)initWithApplicationWorkspace:(id)workspace
{
  workspaceCopy = workspace;
  v10.receiver = self;
  v10.super_class = CNLaunchServicesLocalAdapter;
  v6 = [(CNLaunchServicesLocalAdapter *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workspace, workspace);
    v8 = v7;
  }

  return v7;
}

- (void)applicationsForUserActivityType:(id)type withReply:(id)reply
{
  replyCopy = reply;
  typeCopy = type;
  workspace = [(CNLaunchServicesLocalAdapter *)self workspace];
  v9 = [workspace applicationsForUserActivityType:typeCopy];

  v11 = [v9 _cn_map:&__block_literal_global_81];

  if (off_1EF43EA08(&__block_literal_global_93, v11))
  {
    v10 = v11;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  replyCopy[2](replyCopy, v10, 0);
}

- (void)applicationsAvailableForHandlingURLScheme:(id)scheme withReply:(id)reply
{
  v6 = MEMORY[0x1E696AF20];
  replyCopy = reply;
  schemeCopy = scheme;
  v14 = objc_alloc_init(v6);
  [v14 setScheme:schemeCopy];

  workspace = [(CNLaunchServicesLocalAdapter *)self workspace];
  v10 = [v14 URL];
  v11 = [workspace applicationsAvailableForOpeningURL:v10];
  v12 = [v11 _cn_map:&__block_literal_global_81];

  if (off_1EF43EA08(&__block_literal_global_93, v12))
  {
    v13 = v12;
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  replyCopy[2](replyCopy, v13, 0);
}

- (void)applicationsAvailableForDefaultAppCategory:(id)category withReply:(id)reply
{
  replyCopy = reply;
  v7 = -[CNLaunchServicesLocalAdapter _convertDefaultAppCategory:](self, "_convertDefaultAppCategory:", [category integerValue]);
  v11 = [MEMORY[0x1E69635F8] displayOrderEnumeratorForViableDefaultAppsForCategory:v7 options:0];
  allObjects = [v11 allObjects];
  v9 = [allObjects _cn_map:&__block_literal_global_15_1];

  if (off_1EF43EA08(&__block_literal_global_93, v9))
  {
    v10 = v9;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  replyCopy[2](replyCopy, v10, 0);
}

- (void)defaultApplicationForDefaultAppCategory:(id)category withReply:(id)reply
{
  categoryCopy = category;
  replyCopy = reply;
  if ([categoryCopy integerValue] == 1 && (-[CNLaunchServicesLocalAdapter getDefaultAppProxyFromTU](self, "getDefaultAppProxyFromTU"), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    replyCopy[2](replyCopy, v8, 0);
  }

  else
  {
    v10 = -[CNLaunchServicesLocalAdapter _convertDefaultAppCategory:](self, "_convertDefaultAppCategory:", [categoryCopy integerValue]);
    workspace = [(CNLaunchServicesLocalAdapter *)self workspace];
    v15 = 0;
    v12 = [workspace defaultApplicationForCategory:v10 error:&v15];
    v9 = v15;

    if (v12)
    {
      v14 = CNApplicationProxyFromLSApplicationRecord_block_invoke_2(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    (replyCopy)[2](replyCopy, v14, v9);
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
    null = [MEMORY[0x1E695DFB0] null];
  }

  else if (v3 == 2)
  {
    v4 = [CNApplicationProxy alloc];
    null = [(CNApplicationProxy *)v4 initWithBundleIdentifier:@"com.apple.mobilephone" teamIdentifier:@"0000000000" localizedName:@"Phone" activityTypes:MEMORY[0x1E695E0F0]];
  }

  else
  {
    null = 0;
  }

  return null;
}

- (unint64_t)_convertDefaultAppCategory:(unint64_t)category
{
  if (!category)
  {
    return 3;
  }

  if (category != 1)
  {
    v4 = CNUnimplementedMethodException(self, a2);
    objc_exception_throw(v4);
  }

  return 4;
}

- (void)applicationForBundleIdentifier:(id)identifier withReply:(id)reply
{
  replyCopy = reply;
  identifierCopy = identifier;
  v7 = [objc_opt_class() lsApplicationWorkspaceForBundleId:identifierCopy];

  v9 = CNApplicationProxyFromLSApplicationProxy_block_invoke(v8, v7);

  replyCopy[2](replyCopy, v9, 0);
}

- (void)openUserActivityData:(id)data inApplication:(id)application withReply:(id)reply
{
  applicationCopy = application;
  v8 = MEMORY[0x1E69636A8];
  replyCopy = reply;
  dataCopy = data;
  v11 = [[v8 alloc] _initWithUserActivityData:dataCopy];

  bundleIdentifier = [applicationCopy bundleIdentifier];

  if (bundleIdentifier)
  {
    v13 = objc_opt_class();
    bundleIdentifier2 = [applicationCopy bundleIdentifier];
    bundleIdentifier = [v13 lsApplicationWorkspaceForBundleId:bundleIdentifier2];
  }

  workspace = [(CNLaunchServicesLocalAdapter *)self workspace];
  [workspace openUserActivity:v11 withApplicationProxy:bundleIdentifier completionHandler:replyCopy];
}

- (void)openSensitiveURLInBackground:(id)background withOptions:(id)options withReply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  backgroundCopy = background;
  workspace = [(CNLaunchServicesLocalAdapter *)self workspace];
  v14 = 0;
  v12 = [workspace openSensitiveURL:backgroundCopy withOptions:optionsCopy error:&v14];

  v13 = v14;
  replyCopy[2](replyCopy, v12, v13);
}

@end