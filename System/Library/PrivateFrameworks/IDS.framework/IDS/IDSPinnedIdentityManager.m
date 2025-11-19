@interface IDSPinnedIdentityManager
- (void)clearAllPinnedIdentities;
- (void)fetchAllPinnedIdentitiesWithCompletion:(id)a3;
- (void)fetchIdentityForPinningWithCompletion:(id)a3;
- (void)pinIdentityBlob:(id)a3 withCompletion:(id)a4;
@end

@implementation IDSPinnedIdentityManager

- (void)fetchIdentityForPinningWithCompletion:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69A5270] IDSPinnedIdentity];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Client requested identity for pinning.", buf, 2u);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A8D2E0;
  v6[3] = &unk_1E74402E0;
  v7 = v3;
  v5 = v3;
  [IDSXPCDaemonController performDaemonControllerTask:v6];
}

- (void)pinIdentityBlob:(id)a3 withCompletion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69A5270] IDSPinnedIdentity];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Client requested to pin identity {identityBlob: %@}", buf, 0xCu);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A8D4E0;
  v11[3] = &unk_1E743F8A0;
  v12 = v5;
  v13 = v6;
  v8 = v6;
  v9 = v5;
  [IDSXPCDaemonController performDaemonControllerTask:v11];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)fetchAllPinnedIdentitiesWithCompletion:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69A5270] IDSPinnedIdentity];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Client requested all pinned identities", buf, 2u);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A8D680;
  v6[3] = &unk_1E74402E0;
  v7 = v3;
  v5 = v3;
  [IDSXPCDaemonController performDaemonControllerTask:v6];
}

- (void)clearAllPinnedIdentities
{
  v2 = [MEMORY[0x1E69A5270] IDSPinnedIdentity];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Client requested to clear all pinned identities", v3, 2u);
  }

  [IDSXPCDaemonController performDaemonControllerTask:&unk_1F09E6380];
}

@end