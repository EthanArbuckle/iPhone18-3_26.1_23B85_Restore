@interface CNUIUserActionExtensionURLOpener
- (CNUIUserActionExtensionURLOpener)initWithExtensionContext:(id)a3;
- (id)openURL:(id)a3 isSensitive:(BOOL)a4 connectionEndpoint:(id)a5 bundleIdentifier:(id)a6 withScheduler:(id)a7;
@end

@implementation CNUIUserActionExtensionURLOpener

- (CNUIUserActionExtensionURLOpener)initWithExtensionContext:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNUIUserActionExtensionURLOpener;
  v6 = [(CNUIUserActionExtensionURLOpener *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_extensionContext, a3);
    v8 = v7;
  }

  return v7;
}

- (id)openURL:(id)a3 isSensitive:(BOOL)a4 connectionEndpoint:(id)a5 bundleIdentifier:(id)a6 withScheduler:(id)a7
{
  v9 = a3;
  v10 = MEMORY[0x1E69967D0];
  v11 = a7;
  v12 = objc_alloc_init(v10);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __106__CNUIUserActionExtensionURLOpener_openURL_isSensitive_connectionEndpoint_bundleIdentifier_withScheduler___block_invoke;
  v17[3] = &unk_1E76E7B50;
  v18 = v9;
  v19 = v12;
  v20 = self;
  v13 = v12;
  v14 = v9;
  [v11 performBlock:v17];

  v15 = [v13 future];

  return v15;
}

void __106__CNUIUserActionExtensionURLOpener_openURL_isSensitive_connectionEndpoint_bundleIdentifier_withScheduler___block_invoke(id *a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    v2 = [a1[6] extensionContext];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __106__CNUIUserActionExtensionURLOpener_openURL_isSensitive_connectionEndpoint_bundleIdentifier_withScheduler___block_invoke_2;
    v7[3] = &unk_1E76E9570;
    v3 = a1[4];
    v8 = a1[5];
    v9 = a1[4];
    [v2 openURL:v3 completionHandler:v7];

    v4 = v8;
  }

  else
  {
    v10 = @"url";
    v11[0] = @"(nil)";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v5 = a1[5];
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsUIErrorDomain" code:201 userInfo:v4];
    [v5 finishWithError:v6];
  }
}

void __106__CNUIUserActionExtensionURLOpener_openURL_isSensitive_connectionEndpoint_bundleIdentifier_withScheduler___block_invoke_2(uint64_t a1, int a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = MEMORY[0x1E695E118];

    [v3 finishWithResult:v4];
  }

  else
  {
    v9 = @"url";
    v5 = [*(a1 + 40) absoluteString];
    v10[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsUIErrorDomain" code:201 userInfo:v6];
    [v7 finishWithError:v8];
  }
}

@end