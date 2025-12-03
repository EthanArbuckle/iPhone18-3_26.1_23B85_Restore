@interface IDSPinnedIdentityManager
- (void)clearAllPinnedIdentities;
- (void)fetchAllPinnedIdentitiesWithCompletion:(id)completion;
- (void)fetchIdentityForPinningWithCompletion:(id)completion;
- (void)pinIdentityBlob:(id)blob withCompletion:(id)completion;
@end

@implementation IDSPinnedIdentityManager

- (void)fetchIdentityForPinningWithCompletion:(id)completion
{
  completionCopy = completion;
  iDSPinnedIdentity = [MEMORY[0x1E69A5270] IDSPinnedIdentity];
  if (os_log_type_enabled(iDSPinnedIdentity, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1959FF000, iDSPinnedIdentity, OS_LOG_TYPE_DEFAULT, "Client requested identity for pinning.", buf, 2u);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A8D2E0;
  v6[3] = &unk_1E74402E0;
  v7 = completionCopy;
  v5 = completionCopy;
  [IDSXPCDaemonController performDaemonControllerTask:v6];
}

- (void)pinIdentityBlob:(id)blob withCompletion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  blobCopy = blob;
  completionCopy = completion;
  iDSPinnedIdentity = [MEMORY[0x1E69A5270] IDSPinnedIdentity];
  if (os_log_type_enabled(iDSPinnedIdentity, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = blobCopy;
    _os_log_impl(&dword_1959FF000, iDSPinnedIdentity, OS_LOG_TYPE_DEFAULT, "Client requested to pin identity {identityBlob: %@}", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A8D4E0;
  v11[3] = &unk_1E743F8A0;
  v12 = blobCopy;
  v13 = completionCopy;
  v8 = completionCopy;
  v9 = blobCopy;
  [IDSXPCDaemonController performDaemonControllerTask:v11];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)fetchAllPinnedIdentitiesWithCompletion:(id)completion
{
  completionCopy = completion;
  iDSPinnedIdentity = [MEMORY[0x1E69A5270] IDSPinnedIdentity];
  if (os_log_type_enabled(iDSPinnedIdentity, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1959FF000, iDSPinnedIdentity, OS_LOG_TYPE_DEFAULT, "Client requested all pinned identities", buf, 2u);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A8D680;
  v6[3] = &unk_1E74402E0;
  v7 = completionCopy;
  v5 = completionCopy;
  [IDSXPCDaemonController performDaemonControllerTask:v6];
}

- (void)clearAllPinnedIdentities
{
  iDSPinnedIdentity = [MEMORY[0x1E69A5270] IDSPinnedIdentity];
  if (os_log_type_enabled(iDSPinnedIdentity, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1959FF000, iDSPinnedIdentity, OS_LOG_TYPE_DEFAULT, "Client requested to clear all pinned identities", v3, 2u);
  }

  [IDSXPCDaemonController performDaemonControllerTask:&unk_1F09E6380];
}

@end