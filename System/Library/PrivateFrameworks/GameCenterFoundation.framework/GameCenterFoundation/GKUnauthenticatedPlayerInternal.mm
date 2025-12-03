@interface GKUnauthenticatedPlayerInternal
- (BOOL)isEqual:(id)equal;
- (id)alias;
- (id)playerID;
- (void)alias;
- (void)encodeWithCoder:(id)coder;
- (void)playerID;
@end

@implementation GKUnauthenticatedPlayerInternal

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  GKAtomicIncrement32((&self->super._allowMultiplayerFriendInvites + 1));
  v5.receiver = self;
  v5.super_class = GKUnauthenticatedPlayerInternal;
  [(GKPlayerInternal *)&v5 encodeWithCoder:coderCopy];

  GKAtomicDecrement32((&self->super._allowMultiplayerFriendInvites + 1));
}

- (id)playerID
{
  if (!*(&self->super._allowMultiplayerFriendInvites + 1))
  {
    if (!os_log_GKGeneral)
    {
      v2 = GKOSLoggers();
    }

    v3 = os_log_GKAccount;
    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
    {
      [(GKUnauthenticatedPlayerInternal *)v3 playerID];
    }
  }

  return 0;
}

- (id)alias
{
  if (!*(&self->super._allowMultiplayerFriendInvites + 1))
  {
    if (!os_log_GKGeneral)
    {
      v2 = GKOSLoggers();
    }

    v3 = os_log_GKAccount;
    if (os_log_type_enabled(os_log_GKAccount, OS_LOG_TYPE_DEBUG))
    {
      [(GKUnauthenticatedPlayerInternal *)v3 alias];
    }
  }

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = [equalCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

- (void)playerID
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v2 = GKStackTraceWithFrameLimit(5);
  OUTLINED_FUNCTION_0_10(&dword_227904000, v3, v4, "asking for GKLocalPlayer playerID when player is not authenticated. Might be in the process of being authenticated or this is a race condition.Call stack:%@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)alias
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v2 = GKStackTraceWithFrameLimit(5);
  OUTLINED_FUNCTION_0_10(&dword_227904000, v3, v4, "asking for GKLocalPlayer playerID when player is not authenticated.Might be in the process of being authenticated or this is a race condition.Call stack:%@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

@end