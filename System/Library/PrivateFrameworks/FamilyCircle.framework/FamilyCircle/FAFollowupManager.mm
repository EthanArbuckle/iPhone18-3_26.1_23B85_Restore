@interface FAFollowupManager
+ (id)_followupManager;
+ (void)synchronizeFollowupWithPayload:(id)payload altDSID:(id)d;
+ (void)tearDownFollowupItemWithIdentifier:(id)identifier completion:(id)completion;
+ (void)teardownFollowUpWithContext:(id)context completion:(id)completion;
+ (void)teardownPendingFollowup;
@end

@implementation FAFollowupManager

+ (void)tearDownFollowupItemWithIdentifier:(id)identifier completion:(id)completion
{
  v14[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v6 = MEMORY[0x1E6997AC8];
  identifierCopy = identifier;
  v8 = [[v6 alloc] initWithClientIdentifier:@"com.icloud.family"];
  v14[0] = identifierCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__FAFollowupManager_tearDownFollowupItemWithIdentifier_completion___block_invoke;
  v12[3] = &unk_1E7CA47F0;
  v13 = completionCopy;
  v10 = completionCopy;
  [v8 clearPendingFollowUpItemsWithUniqueIdentifiers:v9 completion:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __67__FAFollowupManager_tearDownFollowupItemWithIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = _FALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __67__FAFollowupManager_tearDownFollowupItemWithIdentifier_completion___block_invoke_cold_1(v5);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

+ (void)synchronizeFollowupWithPayload:(id)payload altDSID:(id)d
{
  dCopy = d;
  payloadCopy = payload;
  _followupManager = [self _followupManager];
  v13 = 0;
  v9 = [_followupManager synchronizeFollowUpsWithServerPayload:payloadCopy altDSID:dCopy error:&v13];

  v10 = v13;
  v11 = _FALogSystem();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (v9)
  {
    if (v12)
    {
      [FAFollowupManager synchronizeFollowupWithPayload:v11 altDSID:?];
    }
  }

  else if (v12)
  {
    [FAFollowupManager synchronizeFollowupWithPayload:v10 altDSID:v11];
  }
}

+ (void)teardownPendingFollowup
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [self description];
  OUTLINED_FUNCTION_0(&dword_1B70B0000, v2, v3, "Failed to clear pending family followup items with error: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)teardownFollowUpWithContext:(id)context completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v8 = _FALogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = contextCopy;
    _os_log_impl(&dword_1B70B0000, v8, OS_LOG_TYPE_DEFAULT, "teardownFollowUpWithContext called with context: %@", buf, 0xCu);
  }

  _followupManager = [self _followupManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__FAFollowupManager_teardownFollowUpWithContext_completion___block_invoke;
  v12[3] = &unk_1E7CA47F0;
  v13 = completionCopy;
  v10 = completionCopy;
  [_followupManager teardownFollowUpWithContext:contextCopy completion:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __60__FAFollowupManager_teardownFollowUpWithContext_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _FALogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1B70B0000, v6, OS_LOG_TYPE_DEFAULT, "Successfully cleared pending family followup items.", &v10, 2u);
    }
  }

  else if (v7)
  {
    v8 = [v5 debugDescription];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_1B70B0000, v6, OS_LOG_TYPE_DEFAULT, "Failed to clear pending family followup items with error: %@", &v10, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v9 = *MEMORY[0x1E69E9840];
}

+ (id)_followupManager
{
  v2 = [objc_alloc(MEMORY[0x1E6997AC8]) initWithClientIdentifier:@"com.icloud.family"];
  v3 = [objc_alloc(MEMORY[0x1E698DD78]) initWithFLFollowupController:v2];
  v4 = objc_alloc_init(MEMORY[0x1E698DD80]);
  [v4 setExtensionIdentifier:@"com.apple.family.FAFollowupExtension"];
  [v4 setRepresentingBundlePath:@"/System/Library/PreferencePanes/FamilySharingPrefPane.prefPane"];
  [v4 setBundleIconName:@"iCloudFamily"];
  v5 = [objc_alloc(MEMORY[0x1E698DD30]) initWithFollowUpFactory:v4 provider:v3];

  return v5;
}

void __67__FAFollowupManager_tearDownFollowupItemWithIdentifier_completion___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 description];
  OUTLINED_FUNCTION_0(&dword_1B70B0000, v2, v3, "Failed to teardown followup item with error: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)synchronizeFollowupWithPayload:(void *)a1 altDSID:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 debugDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_1B70B0000, a2, OS_LOG_TYPE_DEBUG, "Failed to post followup with error %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end