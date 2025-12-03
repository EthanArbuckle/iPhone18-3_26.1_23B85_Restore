@interface MRRestrictedCommandClientsManager
+ (id)sharedManager;
- (id)_restrictCommandClientsTo:(id)to;
- (id)restrictCommandClientsTo:(id)to;
- (void)republishStateIfNeeded;
@end

@implementation MRRestrictedCommandClientsManager

+ (id)sharedManager
{
  if (sharedManager___once_2 != -1)
  {
    +[MRRestrictedCommandClientsManager sharedManager];
  }

  v3 = sharedManager___sharedManager_0;

  return v3;
}

void __50__MRRestrictedCommandClientsManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(MRRestrictedCommandClientsManager);
  v1 = sharedManager___sharedManager_0;
  sharedManager___sharedManager_0 = v0;
}

- (id)restrictCommandClientsTo:(id)to
{
  toCopy = to;
  v5 = [(MRRestrictedCommandClientsManager *)self _restrictCommandClientsTo:toCopy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__MRRestrictedCommandClientsManager_restrictCommandClientsTo___block_invoke;
  v9[3] = &unk_1E76A1958;
  v10 = v5;
  v6 = v5;
  v7 = [toCopy msv_filter:v9];

  [(MRRestrictedCommandClientsManager *)self setLastAcceptedTokens:v7];

  return v7;
}

uint64_t __62__MRRestrictedCommandClientsManager_restrictCommandClientsTo___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 realToken];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:v6 length:32];
  v4 = [*(a1 + 32) containsObject:v3];

  return v4;
}

- (void)republishStateIfNeeded
{
  v11 = *MEMORY[0x1E69E9840];
  lastAcceptedTokens = [self lastAcceptedTokens];
  v7 = 138412546;
  v8 = lastAcceptedTokens;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1A2860000, a3, OS_LOG_TYPE_ERROR, "[RestrictedCommandClients Mode] Republish Error: \n Tried to restrict to %@ but %@ was accepted.", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (id)_restrictCommandClientsTo:(id)to
{
  v3 = MRCreateDataFromArray(to, &__block_literal_global_8_3);
  v4 = MRGetSharedService();
  v5 = MRCreateXPCMessage(0x40000000000000EuLL);
  MRAddDataToXPCMessage(v5, v3, "MRXPC_RESTRICT_COMMANDS_ARRAY_DATA_KEY");
  connection = [v4 connection];
  v7 = xpc_connection_send_message_with_reply_sync(connection, v5);

  v8 = MRCreateDataFromXPCMessage(v7, "MRXPC_RESTRICT_COMMANDS_ARRAY_DATA_KEY");
  v9 = MRCreateArrayFromData(v8, &__block_literal_global_12_2);

  return v9;
}

id __63__MRRestrictedCommandClientsManager__restrictCommandClientsTo___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 realToken];
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  v2 = [MEMORY[0x1E695DEF0] dataWithBytes:v4 length:32];

  return v2;
}

@end