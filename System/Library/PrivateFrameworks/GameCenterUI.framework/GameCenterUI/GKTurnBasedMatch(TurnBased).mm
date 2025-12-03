@interface GKTurnBasedMatch(TurnBased)
- (id)matchTitle;
- (id)showcasePlayer;
- (uint64_t)isAllAutomatchedPlayer;
@end

@implementation GKTurnBasedMatch(TurnBased)

- (uint64_t)isAllAutomatchedPlayer
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [self participants];
  v1 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v17;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v17 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v16 + 1) + 8 * i);
        internal = [v5 internal];
        playerID = [internal playerID];
        local = [MEMORY[0x277D0C138] local];
        playerID2 = [local playerID];
        v10 = [playerID isEqualToString:playerID2];

        if ((v10 & 1) == 0)
        {
          internal2 = [v5 internal];
          isAutomatchParticipant = [internal2 isAutomatchParticipant];

          if (!isAutomatchParticipant)
          {
            v13 = 0;
            goto LABEL_12;
          }
        }
      }

      v2 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_12:

  return v13;
}

- (id)matchTitle
{
  if ([self isAllAutomatchedPlayer])
  {
    goto LABEL_2;
  }

  playingWithParticipantOrFirstKnownPlayer = [self playingWithParticipantOrFirstKnownPlayer];
  if (playingWithParticipantOrFirstKnownPlayer && (v5 = playingWithParticipantOrFirstKnownPlayer, [self playingWithParticipantOrFirstKnownPlayer], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "internal"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "invitedBy"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, v5, v8))
  {
    playingWithParticipantOrFirstKnownPlayer2 = [self playingWithParticipantOrFirstKnownPlayer];
    internal = [playingWithParticipantOrFirstKnownPlayer2 internal];
    invitedBy = [internal invitedBy];
    isLocalPlayer = [invitedBy isLocalPlayer];

    if (isLocalPlayer)
    {
LABEL_2:
      v2 = GKGameCenterUIFrameworkBundle();
      v3 = GKGetLocalizedStringFromTableInBundle();
      goto LABEL_10;
    }

    v18 = MEMORY[0x277CCACA8];
    v2 = GKGameCenterUIFrameworkBundle();
    v14 = GKGetLocalizedStringFromTableInBundle();
    playingWithParticipantOrFirstKnownPlayer3 = [self playingWithParticipantOrFirstKnownPlayer];
    internal2 = [playingWithParticipantOrFirstKnownPlayer3 internal];
    invitedBy2 = [internal2 invitedBy];
    v19 = [invitedBy2 displayNameWithOptions:1];
    v3 = [v18 stringWithFormat:v14, v19];
  }

  else
  {
    v13 = MEMORY[0x277CCACA8];
    v2 = GKGameCenterUIFrameworkBundle();
    v14 = GKGetLocalizedStringFromTableInBundle();
    playingWithParticipantOrFirstKnownPlayer3 = [self playingWithParticipantOrFirstKnownPlayer];
    internal2 = [playingWithParticipantOrFirstKnownPlayer3 player];
    invitedBy2 = [internal2 displayNameWithOptions:1];
    v3 = [v13 stringWithFormat:v14, invitedBy2];
  }

LABEL_10:

  return v3;
}

- (id)showcasePlayer
{
  if (![self isAllAutomatchedPlayer] && (objc_msgSend(self, "playingWithParticipantOrFirstKnownPlayer"), (v2 = objc_claimAutoreleasedReturnValue()) != 0) && (v3 = v2, objc_msgSend(self, "playingWithParticipantOrFirstKnownPlayer"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "internal"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "invitedBy"), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v4, v3, v6))
  {
    v7 = objc_alloc(MEMORY[0x277D0C170]);
    playingWithParticipantOrFirstKnownPlayer = [self playingWithParticipantOrFirstKnownPlayer];
    internal = [playingWithParticipantOrFirstKnownPlayer internal];
    invitedBy = [internal invitedBy];
    player = [v7 initWithInternalRepresentation:invitedBy];
  }

  else
  {
    playingWithParticipantOrFirstKnownPlayer = [self localPlayerParticipant];
    player = [playingWithParticipantOrFirstKnownPlayer player];
  }

  return player;
}

@end