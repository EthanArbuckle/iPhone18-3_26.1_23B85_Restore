@interface GKTurnBasedMatchInternal
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)a3;
- (int64_t)activeExchangeCount;
- (int64_t)localPlayerParticipantIndex;
- (int64_t)previousParticipantIndex;
- (unint64_t)hash;
- (unsigned)state;
- (void)state;
@end

@implementation GKTurnBasedMatchInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_28 != -1)
  {
    +[GKTurnBasedMatchInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_28;

  return v3;
}

void __51__GKTurnBasedMatchInternal_secureCodedPropertyKeys__block_invoke()
{
  v18[23] = *MEMORY[0x277D85DE8];
  v17[0] = @"matchID";
  v18[0] = objc_opt_class();
  v17[1] = @"status";
  v18[1] = objc_opt_class();
  v17[2] = @"creationDate";
  v18[2] = objc_opt_class();
  v17[3] = @"currentPlayer";
  v18[3] = objc_opt_class();
  v17[4] = @"lastTurnDate";
  v18[4] = objc_opt_class();
  v17[5] = @"message";
  v18[5] = objc_opt_class();
  v17[6] = @"localizableMessage";
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v0 setWithObjects:{v1, v2, v3, v4, objc_opt_class(), 0}];
  v18[6] = v5;
  v17[7] = @"reason";
  v18[7] = objc_opt_class();
  v17[8] = @"minPlayers";
  v18[8] = objc_opt_class();
  v17[9] = @"maxPlayers";
  v18[9] = objc_opt_class();
  v17[10] = @"deletionDate";
  v18[10] = objc_opt_class();
  v17[11] = @"currentParticipant";
  v18[11] = objc_opt_class();
  v17[12] = @"turnNumber";
  v18[12] = objc_opt_class();
  v17[13] = @"lastTurnPlayerID";
  v18[13] = objc_opt_class();
  v17[14] = @"matchData";
  v18[14] = objc_opt_class();
  v17[15] = @"participants";
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
  v18[15] = v9;
  v17[16] = @"matchDataVersion";
  v18[16] = objc_opt_class();
  v17[17] = @"bundleID";
  v18[17] = objc_opt_class();
  v17[18] = @"bundleVersion";
  v18[18] = objc_opt_class();
  v17[19] = @"shortBundleVersion";
  v18[19] = objc_opt_class();
  v17[20] = @"platform";
  v18[20] = objc_opt_class();
  v17[21] = @"exchanges";
  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
  v18[21] = v13;
  v17[22] = @"game";
  v18[22] = objc_opt_class();
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:23];

  v15 = secureCodedPropertyKeys_sSecureCodedKeys_28;
  secureCodedPropertyKeys_sSecureCodedKeys_28 = v14;

  v16 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  v2 = [(GKTurnBasedMatchInternal *)self matchID];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(GKTurnBasedMatchInternal *)self lastTurnDate];
    v7 = [v5 lastTurnDate];
    v8 = [(GKTurnBasedMatchInternal *)self matchID];
    v9 = [v5 matchID];
    if ([v8 isEqualToString:v9] && (v6 == v7 || objc_msgSend(v6, "isEqualToDate:", v7)))
    {
      v10 = [(GKTurnBasedMatchInternal *)self status];
      v11 = [v5 status];
      v12 = [v10 isEqualToString:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int64_t)localPlayerParticipantIndex
{
  v2 = [(GKTurnBasedMatchInternal *)self participants];
  v3 = [v2 indexOfObjectPassingTest:&__block_literal_global_82_0];

  return v3;
}

uint64_t __55__GKTurnBasedMatchInternal_localPlayerParticipantIndex__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 player];
  v3 = [v2 isLocalPlayer];

  return v3;
}

- (int64_t)previousParticipantIndex
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [(GKTurnBasedMatchInternal *)self participants];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 lastTurnDate];

        if (v10)
        {
          if (!v6 || ([v9 lastTurnDate], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "lastTurnDate"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "compare:", v12), v12, v11, v13 == 1))
          {
            v14 = v9;

            v6 = v14;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v15 = [(GKTurnBasedMatchInternal *)self participants];
  v16 = [v15 indexOfObject:v6];

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (int64_t)activeExchangeCount
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = [(GKTurnBasedMatchInternal *)self status];
  v4 = [v3 isEqualToString:@"Active"];

  if (v4)
  {
    v5 = [(GKTurnBasedMatchInternal *)self localPlayerParticipantIndex];
    [(GKTurnBasedMatchInternal *)self exchanges];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v37 = 0u;
    v6 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v35;
      v10 = @"A";
      do
      {
        v11 = 0;
        v28 = v7;
        do
        {
          if (*v35 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v34 + 1) + 8 * v11);
          v13 = [v12 statusString];
          v14 = [v13 isEqualToString:v10];

          if (v14)
          {
            v15 = v5 == 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = 1;
          }

          if (!v15)
          {
            v16 = [v12 replies];
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v17 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = v9;
              v20 = v8;
              v21 = v10;
              v22 = 0;
              v23 = *v31;
              do
              {
                for (i = 0; i != v18; ++i)
                {
                  if (*v31 != v23)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v22 |= v5 == [*(*(&v30 + 1) + 8 * i) recipientIndex];
                }

                v18 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
              }

              while (v18);
              v25 = (v22 & 1) == 0;
              v10 = v21;
              v8 = v20;
              v9 = v19;
              v7 = v28;
            }

            else
            {
              v25 = 1;
            }

            v8 += v25;
          }

          ++v11;
        }

        while (v11 != v7);
        v7 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v8;
}

- (unsigned)state
{
  state = self->_state;
  if (!state)
  {
    if ([(GKTurnBasedMatchInternal *)self activeExchangeCount]> 0)
    {
      state = 2;
LABEL_38:
      self->_state = state;
      return state;
    }

    v4 = [(GKTurnBasedMatchInternal *)self status];
    if ([v4 isEqualToString:@"Active"])
    {
    }

    else
    {
      v5 = [(GKTurnBasedMatchInternal *)self status];
      v6 = [v5 isEqualToString:@"Matching"];

      if (!v6)
      {
        v30 = [(GKTurnBasedMatchInternal *)self status];
        v31 = [v30 isEqualToString:@"Complete"];

        if (v31)
        {
          state = 5;
        }

        else
        {
          v32 = os_log_GKGeneral;
          if (!os_log_GKGeneral)
          {
            v33 = GKOSLoggers();
            v32 = os_log_GKGeneral;
          }

          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            [(GKTurnBasedMatchInternal *)v32 state];
          }

          state = 3;
        }

        goto LABEL_38;
      }
    }

    v7 = [(GKTurnBasedMatchInternal *)self currentParticipant];
    if (v7 < 0 || (v8 = v7, -[GKTurnBasedMatchInternal participants](self, "participants"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 count], v9, v10 <= v8))
    {
      v12 = 0;
    }

    else
    {
      v11 = [(GKTurnBasedMatchInternal *)self participants];
      v12 = [v11 objectAtIndexedSubscript:v8];
    }

    v13 = [(GKTurnBasedMatchInternal *)self localPlayerParticipantIndex];
    if (v13 < 0 || (v14 = v13, -[GKTurnBasedMatchInternal participants](self, "participants"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 count], v15, v14 >= v16))
    {
      v18 = 0;
    }

    else
    {
      v17 = [(GKTurnBasedMatchInternal *)self participants];
      v18 = [v17 objectAtIndexedSubscript:v14];

      if (v18)
      {
        v19 = [v18 status];
        v20 = [v19 isEqualToString:@"Inactive"];

        if (v20)
        {
          state = 5;
LABEL_37:

          goto LABEL_38;
        }
      }
    }

    v21 = [v12 player];
    if ([v21 isGuestPlayer])
    {
      v22 = [v12 player];
      v23 = [v22 hostPlayerInternal];
      v24 = [v23 isLocalPlayer];

      if (v24)
      {
        state = 6;
        goto LABEL_37;
      }
    }

    else
    {
    }

    v25 = [v12 player];
    v26 = [v25 isLocalPlayer];

    if (v26)
    {
      v27 = [v12 status];
      v28 = [v27 isEqualToString:@"Invited"];

      if (v28)
      {
        state = 1;
      }

      else
      {
        state = 3;
      }
    }

    else
    {
      v29 = [(GKTurnBasedMatchInternal *)self participants];
      if ([v29 count])
      {

        state = 4;
      }

      else
      {
        v34 = [v12 player];
        v35 = [v34 isLocalPlayer];

        if (v35)
        {
          state = 3;
        }

        else
        {
          state = 4;
        }
      }
    }

    goto LABEL_37;
  }

  return state;
}

- (void)state
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 status];
  v6 = 138412290;
  v7 = v4;
  _os_log_debug_impl(&dword_227904000, v3, OS_LOG_TYPE_DEBUG, "GKTurnBasedMatchInternal->state Unexpected match status encountered: %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end