@interface NSArray
@end

@implementation NSArray

uint64_t __58__NSArray_GKCollectionUtils___gkMapConcurrentlyWithBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*(a1 + 32) + 16))();
  v6 = *(a1 + 40);
  v7 = *(v6 + 8 * a3);
  *(v6 + 8 * a3) = v5;

  return MEMORY[0x2821F96F8]();
}

uint64_t __46__NSArray_GKCollectionUtils___gkMapWithBlock___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  if (v2)
  {
    [*(a1 + 32) addObject:v2];
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __49__NSArray_GKCollectionUtils___gkFilterWithBlock___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  if (v2)
  {
    [*(a1 + 32) addObject:v2];
  }

  return MEMORY[0x2821F96F8]();
}

void __57__NSArray_GKCollectionUtils___gkSubarraysByKeyWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = (*(*(a1 + 40) + 16))();
  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
    if (!v4)
    {
      v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:*(a1 + 48)];
      [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
    }

    [v4 addObject:v5];
  }
}

void __60__NSArray_GKCollectionUtils___gkFoldWithInitialValue_block___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  v11 = *(*(*(a1 + 40) + 8) + 40);
  v8 = v7(v6, a2, a3, v11);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

uint64_t __58__NSArray_GKCollectionUtils___gkIndexOfObjectPassingTest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  *a4 = result;
  return result;
}

void *__56__NSArray_ScopedIDs___gkUpdateInternalPlayersScopedIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 scopedIDs];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  v5 = v4;

  return v4;
}

void __56__NSArray_ScopedIDs___gkUpdateInternalPlayersScopedIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 playerID];
        v11 = [v3 objectForKeyedSubscript:v10];
        [v9 setScopedIDs:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  (*(*(a1 + 40) + 16))();
  v12 = *MEMORY[0x277D85DE8];
}

id __70__NSArray_GKPlayerCanonicalization___gkIncompletePlayersFromPlayerIDs__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"expected legacy playerID, got %@", v2];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/API/GKPlayer.m"];
    v6 = [v5 lastPathComponent];
    v7 = [v3 stringWithFormat:@"%@ ([playerID isKindOfClass:[NSString class]])\n[%s (%s:%d)]", v4, "-[NSArray(GKPlayerCanonicalization) _gkIncompletePlayersFromPlayerIDs]_block_invoke", objc_msgSend(v6, "UTF8String"), 1048];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v7}];
  }

  v8 = [GKPlayer playerFromPlayerID:v2];

  return v8;
}

id __61__NSArray_GKPlayerCanonicalization___gkPlayersIDsFromPlayers__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"expected GKPlayer, got %@", v2];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/API/GKPlayer.m"];
    v6 = [v5 lastPathComponent];
    v7 = [v3 stringWithFormat:@"%@ ([player isKindOfClass:[GKPlayer class]])\n[%s (%s:%d)]", v4, "-[NSArray(GKPlayerCanonicalization) _gkPlayersIDsFromPlayers]_block_invoke", objc_msgSend(v6, "UTF8String"), 1056];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v7}];
  }

  v8 = [v2 internal];
  v9 = [v8 playerID];

  return v9;
}

id __63__NSArray_GKPlayerCanonicalization___gkPlayersIDsFromInternals__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"expected GKPlayerInternal, got %@", v2];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/API/GKPlayer.m"];
    v6 = [v5 lastPathComponent];
    v7 = [v3 stringWithFormat:@"%@ ([internal isKindOfClass:[GKPlayerInternal class]])\n[%s (%s:%d)]", v4, "-[NSArray(GKPlayerCanonicalization) _gkPlayersIDsFromInternals]_block_invoke", objc_msgSend(v6, "UTF8String"), 1064];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v7}];
  }

  v8 = [v2 playerID];

  return v8;
}

id __60__NSArray_GKPlayerCanonicalization___gkPlayersFromInternals__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"expected GKPlayerInternal, got %@", v2];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/API/GKPlayer.m"];
    v6 = [v5 lastPathComponent];
    v7 = [v3 stringWithFormat:@"%@ ([internal isKindOfClass:[GKPlayerInternal class]])\n[%s (%s:%d)]", v4, "-[NSArray(GKPlayerCanonicalization) _gkPlayersFromInternals]_block_invoke", objc_msgSend(v6, "UTF8String"), 1072];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v7}];
  }

  v8 = [GKPlayer canonicalizedPlayerForInternal:v2];

  return v8;
}

id __60__NSArray_GKPlayerCanonicalization___gkInternalsFromPlayers__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"expected GKPlayer, got %@", v2];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/API/GKPlayer.m"];
    v6 = [v5 lastPathComponent];
    v7 = [v3 stringWithFormat:@"%@ ([player isKindOfClass:[GKPlayer class]])\n[%s (%s:%d)]", v4, "-[NSArray(GKPlayerCanonicalization) _gkInternalsFromPlayers]_block_invoke", objc_msgSend(v6, "UTF8String"), 1082];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v7}];
  }

  v8 = [v2 internal];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
      v9 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __60__NSArray_GKPlayerCanonicalization___gkInternalsFromPlayers__block_invoke_cold_2(v9);
    }
  }

  else
  {
    v11 = [v8 playerID];

    if (v11)
    {
      v12 = v8;
      goto LABEL_15;
    }

    v13 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
      v13 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __60__NSArray_GKPlayerCanonicalization___gkInternalsFromPlayers__block_invoke_cold_1();
    }
  }

  v12 = 0;
LABEL_15:

  return v12;
}

void __71__NSArray_GKPlayerCanonicalization___gkValidatePlayersForReturnFromAPI__block_invoke(uint64_t a1, void *a2)
{
  v20 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/API/GKPlayer.m"];
    v5 = [v4 lastPathComponent];
    v6 = [v2 stringWithFormat:@"%@ ([player isKindOfClass:[GKPlayer class]])\n[%s (%s:%d)]", v3, "-[NSArray(GKPlayerCanonicalization) _gkValidatePlayersForReturnFromAPI]_block_invoke", objc_msgSend(v5, "UTF8String"), 1109];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v6}];
  }

  v7 = [v20 alias];

  if (!v7)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/API/GKPlayer.m"];
    v11 = [v10 lastPathComponent];
    v12 = [v8 stringWithFormat:@"%@ (player.alias != ((void*)0))\n[%s (%s:%d)]", v9, "-[NSArray(GKPlayerCanonicalization) _gkValidatePlayersForReturnFromAPI]_block_invoke", objc_msgSend(v11, "UTF8String"), 1110];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v12}];
  }

  v13 = [v20 internal];
  v14 = [v13 playerID];

  if (!v14)
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/API/GKPlayer.m"];
    v18 = [v17 lastPathComponent];
    v19 = [v15 stringWithFormat:@"%@ (player.internal.playerID != ((void*)0))\n[%s (%s:%d)]", v16, "-[NSArray(GKPlayerCanonicalization) _gkValidatePlayersForReturnFromAPI]_block_invoke", objc_msgSend(v18, "UTF8String"), 1111];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v19}];
  }
}

id __62__NSArray_GKGuestPlayerFilters___gkNonGuestPlayersFromPlayers__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isGuestPlayer] & 1) != 0 || (objc_msgSend(v2, "isLocalPlayer"))
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

id __59__NSArray_GKGuestPlayerFilters___gkGuestPlayersFromPlayers__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isGuestPlayer])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __60__NSArray_GKPlayerCanonicalization___gkInternalsFromPlayers__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_227904000, v0, OS_LOG_TYPE_DEBUG, "filtering player internal with nil playerID %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end