@interface CNUIUserActionWorkspaceURLOpener
+ (id)openConfigurationWithEndpoint:(id)endpoint isSensitive:(BOOL)sensitive;
+ (id)urlCouldNotBeOpenedErrorWithURL:(id)l;
- (CNUIUserActionWorkspaceURLOpener)init;
- (CNUIUserActionWorkspaceURLOpener)initWithWorkspace:(id)workspace;
- (id)openURL:(id)l isSensitive:(BOOL)sensitive connectionEndpoint:(id)endpoint bundleIdentifier:(id)identifier withScheduler:(id)scheduler;
@end

@implementation CNUIUserActionWorkspaceURLOpener

- (CNUIUserActionWorkspaceURLOpener)init
{
  defaultWorkspace = [NSClassFromString(&cfstr_Lsapplicationw.isa) defaultWorkspace];
  v4 = [(CNUIUserActionWorkspaceURLOpener *)self initWithWorkspace:defaultWorkspace];

  return v4;
}

- (CNUIUserActionWorkspaceURLOpener)initWithWorkspace:(id)workspace
{
  workspaceCopy = workspace;
  v10.receiver = self;
  v10.super_class = CNUIUserActionWorkspaceURLOpener;
  v6 = [(CNUIUserActionWorkspaceURLOpener *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workspace, workspace);
    v8 = v7;
  }

  return v7;
}

- (id)openURL:(id)l isSensitive:(BOOL)sensitive connectionEndpoint:(id)endpoint bundleIdentifier:(id)identifier withScheduler:(id)scheduler
{
  lCopy = l;
  endpointCopy = endpoint;
  identifierCopy = identifier;
  schedulerCopy = scheduler;
  v16 = objc_alloc_init(MEMORY[0x1E69967D0]);
  if (lCopy)
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __106__CNUIUserActionWorkspaceURLOpener_openURL_isSensitive_connectionEndpoint_bundleIdentifier_withScheduler___block_invoke;
    v24 = &unk_1E76E9B88;
    v25 = identifierCopy;
    selfCopy = self;
    v27 = lCopy;
    v17 = v16;
    v28 = v17;
    v29 = endpointCopy;
    sensitiveCopy = sensitive;
    [schedulerCopy performBlock:&v21];
    future = [v17 future];
  }

  else
  {
    v19 = [objc_opt_class() urlCouldNotBeOpenedErrorWithURL:0];
    [v16 finishWithError:v19];

    future = [v16 future];
  }

  return future;
}

void __106__CNUIUserActionWorkspaceURLOpener_openURL_isSensitive_connectionEndpoint_bundleIdentifier_withScheduler___block_invoke(uint64_t a1)
{
  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v2 = [*(a1 + 40) workspace];
    v3 = [v2 operationToOpenResource:*(a1 + 48) usingApplication:*(a1 + 32) userInfo:0];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __106__CNUIUserActionWorkspaceURLOpener_openURL_isSensitive_connectionEndpoint_bundleIdentifier_withScheduler___block_invoke_2;
    v9[3] = &unk_1E76E7D10;
    v4 = &v10;
    v10 = *(a1 + 56);
    [v3 setCompletionBlock:v9];
    [v3 start];
  }

  else
  {
    v3 = [objc_opt_class() openConfigurationWithEndpoint:*(a1 + 64) isSensitive:*(a1 + 72)];
    v5 = [*(a1 + 40) workspace];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __106__CNUIUserActionWorkspaceURLOpener_openURL_isSensitive_connectionEndpoint_bundleIdentifier_withScheduler___block_invoke_3;
    v7[3] = &unk_1E76E9B60;
    v4 = &v8;
    v6 = *(a1 + 48);
    v8 = *(a1 + 56);
    [v5 openURL:v6 configuration:v3 completionHandler:v7];
  }
}

uint64_t __106__CNUIUserActionWorkspaceURLOpener_openURL_isSensitive_connectionEndpoint_bundleIdentifier_withScheduler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishWithResult:MEMORY[0x1E695E118]];
  }

  else
  {
    return [v2 finishWithError:?];
  }
}

+ (id)urlCouldNotBeOpenedErrorWithURL:(id)l
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (l)
  {
    absoluteString = [l absoluteString];
  }

  else
  {
    absoluteString = @"(nil)";
  }

  v4 = MEMORY[0x1E696ABC0];
  v8 = @"url";
  v9[0] = absoluteString;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v4 errorWithDomain:@"CNContactsUIErrorDomain" code:201 userInfo:v5];

  return v6;
}

+ (id)openConfigurationWithEndpoint:(id)endpoint isSensitive:(BOOL)sensitive
{
  sensitiveCopy = sensitive;
  v5 = MEMORY[0x1E69636B8];
  endpointCopy = endpoint;
  v7 = objc_alloc_init(v5);
  [v7 setTargetConnectionEndpoint:endpointCopy];

  [v7 setSensitive:sensitiveCopy];

  return v7;
}

@end