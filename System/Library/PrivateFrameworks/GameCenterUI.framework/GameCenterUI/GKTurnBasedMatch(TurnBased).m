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
  obj = [a1 participants];
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
        v6 = [v5 internal];
        v7 = [v6 playerID];
        v8 = [MEMORY[0x277D0C138] local];
        v9 = [v8 playerID];
        v10 = [v7 isEqualToString:v9];

        if ((v10 & 1) == 0)
        {
          v11 = [v5 internal];
          v12 = [v11 isAutomatchParticipant];

          if (!v12)
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
  if ([a1 isAllAutomatchedPlayer])
  {
    goto LABEL_2;
  }

  v4 = [a1 playingWithParticipantOrFirstKnownPlayer];
  if (v4 && (v5 = v4, [a1 playingWithParticipantOrFirstKnownPlayer], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "internal"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "invitedBy"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, v5, v8))
  {
    v9 = [a1 playingWithParticipantOrFirstKnownPlayer];
    v10 = [v9 internal];
    v11 = [v10 invitedBy];
    v12 = [v11 isLocalPlayer];

    if (v12)
    {
LABEL_2:
      v2 = GKGameCenterUIFrameworkBundle();
      v3 = GKGetLocalizedStringFromTableInBundle();
      goto LABEL_10;
    }

    v18 = MEMORY[0x277CCACA8];
    v2 = GKGameCenterUIFrameworkBundle();
    v14 = GKGetLocalizedStringFromTableInBundle();
    v15 = [a1 playingWithParticipantOrFirstKnownPlayer];
    v16 = [v15 internal];
    v17 = [v16 invitedBy];
    v19 = [v17 displayNameWithOptions:1];
    v3 = [v18 stringWithFormat:v14, v19];
  }

  else
  {
    v13 = MEMORY[0x277CCACA8];
    v2 = GKGameCenterUIFrameworkBundle();
    v14 = GKGetLocalizedStringFromTableInBundle();
    v15 = [a1 playingWithParticipantOrFirstKnownPlayer];
    v16 = [v15 player];
    v17 = [v16 displayNameWithOptions:1];
    v3 = [v13 stringWithFormat:v14, v17];
  }

LABEL_10:

  return v3;
}

- (id)showcasePlayer
{
  if (![a1 isAllAutomatchedPlayer] && (objc_msgSend(a1, "playingWithParticipantOrFirstKnownPlayer"), (v2 = objc_claimAutoreleasedReturnValue()) != 0) && (v3 = v2, objc_msgSend(a1, "playingWithParticipantOrFirstKnownPlayer"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "internal"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "invitedBy"), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v4, v3, v6))
  {
    v7 = objc_alloc(MEMORY[0x277D0C170]);
    v8 = [a1 playingWithParticipantOrFirstKnownPlayer];
    v9 = [v8 internal];
    v10 = [v9 invitedBy];
    v11 = [v7 initWithInternalRepresentation:v10];
  }

  else
  {
    v8 = [a1 localPlayerParticipant];
    v11 = [v8 player];
  }

  return v11;
}

@end