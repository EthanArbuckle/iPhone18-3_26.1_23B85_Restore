@interface GKUpdateInviteInfo
+ (id)secureCodedPropertyKeys;
- (id)description;
- (void)mergeWithUpdate:(id)a3;
@end

@implementation GKUpdateInviteInfo

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_204 != -1)
  {
    +[GKUpdateInviteInfo secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_203;

  return v3;
}

void __45__GKUpdateInviteInfo_secureCodedPropertyKeys__block_invoke()
{
  v11[7] = *MEMORY[0x277D85DE8];
  v10[0] = @"gameParticipants";
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = [v0 setWithObjects:{v1, objc_opt_class(), 0}];
  v11[0] = v2;
  v10[1] = @"lobbyParticipants";
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  v11[1] = v5;
  v10[2] = @"playerTokenMap";
  v6 = +[GKServiceInterface plistClasses];
  v11[2] = v6;
  v10[3] = @"sessionID";
  v11[3] = objc_opt_class();
  v10[4] = @"sessionToken";
  v11[4] = objc_opt_class();
  v10[5] = @"matchID";
  v11[5] = objc_opt_class();
  v10[6] = @"transportVersionToUse";
  v11[6] = objc_opt_class();
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:7];
  v8 = secureCodedPropertyKeys_sSecureCodedKeys_203;
  secureCodedPropertyKeys_sSecureCodedKeys_203 = v7;

  v9 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(GKUpdateInviteInfo *)self sessionID];
  v5 = [(GKUpdateInviteInfo *)self matchID];
  v6 = [(GKUpdateInviteInfo *)self lobbyParticipants];
  v7 = [(GKUpdateInviteInfo *)self gameParticipants];
  v8 = [v3 stringWithFormat:@"GKUpdateInviteInfo[sessionID: %@, matchID: %@]\nLobbyParticipants: %@\nGameParticipants:%@", v4, v5, v6, v7];

  return v8;
}

- (void)mergeWithUpdate:(id)a3
{
  v4 = a3;
  v5 = [(GKUpdateInviteInfo *)self sessionID];
  v6 = [v4 sessionID];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      [(GKUpdateInviteInfo *)self mergeWithUpdate:v4, v9];
    }

    lobbyParticipants = self->_lobbyParticipants;
    v11 = lobbyParticipants;
    if (!lobbyParticipants)
    {
      v11 = [MEMORY[0x277CBEB98] set];
    }

    v12 = [v4 lobbyParticipants];
    v13 = [v11 setByAddingObjectsFromSet:v12];
    v14 = self->_lobbyParticipants;
    self->_lobbyParticipants = v13;

    if (!lobbyParticipants)
    {
    }

    gameParticipants = self->_gameParticipants;
    v16 = gameParticipants;
    if (!gameParticipants)
    {
      v16 = [MEMORY[0x277CBEB98] set];
    }

    v17 = [v4 gameParticipants];
    v18 = [v16 setByAddingObjectsFromSet:v17];
    v19 = self->_gameParticipants;
    self->_gameParticipants = v18;

    if (!gameParticipants)
    {
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v20 = GKOSLoggers();
    }

    v21 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      [GKUpdateInviteInfo mergeWithUpdate:v21];
    }
  }
}

- (void)mergeWithUpdate:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_227904000, log, OS_LOG_TYPE_DEBUG, "Merging invite updates for %@ with %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end