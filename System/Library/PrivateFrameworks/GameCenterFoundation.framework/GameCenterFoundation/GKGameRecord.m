@interface GKGameRecord
+ (id)cacheKeyForPlayer:(id)a3 bundleIdentifier:(id)a4;
+ (id)cacheKeyForPlayer:(id)a3 game:(id)a4;
+ (id)cacheKeyForPlayer:(id)a3 internal:(id)a4;
+ (id)gameRecordForPlayer:(id)a3 game:(id)a4;
+ (id)internalRepresentationCache;
+ (id)internalRepresentationForPlayer:(id)a3 game:(id)a4;
+ (void)invalidateCacheForPlayer:(id)a3 game:(id)a4;
+ (void)loadGameRecordForPlayer:(id)a3 game:(id)a4 withCompletionHandler:(id)a5;
+ (void)loadGameRecordsForPlayer:(id)a3 bundleIDs:(id)a4 withCompletionHandler:(id)a5;
+ (void)loadGameRecordsForPlayer:(id)a3 games:(id)a4 withCompletionHandler:(id)a5;
+ (void)partitionGameRecords:(id)a3 returniOS:(id *)a4 returnMac:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)played;
- (GKGameRecord)init;
- (GKGameRecord)initWithCoder:(id)a3;
- (GKGameRecord)initWithInternalRepresentation:(id)a3;
- (GKGameRecord)initWithInternalRepresentation:(id)a3 player:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GKGameRecord

+ (void)partitionGameRecords:(id)a3 returniOS:(id *)a4 returnMac:(id *)a5
{
  v7 = a3;
  v8 = [v7 count];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:v8];
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:v8];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__GKGameRecord_partitionGameRecords_returniOS_returnMac___block_invoke;
  v15[3] = &unk_2785DDC88;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  [v7 enumerateObjectsUsingBlock:v15];

  v13 = v12;
  *a5 = v12;
  v14 = v11;
  *a4 = v11;
}

void __57__GKGameRecord_partitionGameRecords_returniOS_returnMac___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 platform];
  v4 = 40;
  if (v3 == 2)
  {
    v4 = 32;
  }

  [*(a1 + v4) addObject:v5];
}

- (GKGameRecord)initWithInternalRepresentation:(id)a3 player:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = +[(GKInternalRepresentation *)GKGameRecordInternal];
  }

  v11.receiver = self;
  v11.super_class = GKGameRecord;
  v8 = [(GKGame *)&v11 initWithInternalRepresentation:v6];
  v9 = v8;
  if (v8)
  {
    [(GKGameRecord *)v8 setPlayer:v7];
  }

  return v9;
}

- (GKGameRecord)initWithInternalRepresentation:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = +[(GKInternalRepresentation *)GKGameRecordInternal];
  }

  v8.receiver = self;
  v8.super_class = GKGameRecord;
  v5 = [(GKGame *)&v8 initWithInternalRepresentation:v4];
  if (v5)
  {
    v6 = +[GKLocalPlayer localPlayer];
    [(GKGameRecord *)v5 setPlayer:v6];
  }

  return v5;
}

- (GKGameRecord)init
{
  v3 = +[(GKInternalRepresentation *)GKGameRecordInternal];
  v4 = [(GKGameRecord *)self initWithInternalRepresentation:v3];

  return v4;
}

- (GKGameRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = GKGameRecord;
  v5 = [(GKGame *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"player"];
    player = v5->_player;
    v5->_player = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = GKGameRecord;
  v4 = a3;
  [(GKGame *)&v6 encodeWithCoder:v4];
  v5 = [(GKGameRecord *)self player:v6.receiver];
  [v4 encodeObject:v5 forKey:@"player"];
}

- (BOOL)played
{
  v2 = [(GKGameRecord *)self lastPlayedDate];
  v3 = v2 != 0;

  return v3;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = GKGameRecord;
  v3 = [(GKGame *)&v7 hash];
  v4 = [(GKGameRecord *)self player];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v10.receiver = self;
    v10.super_class = GKGameRecord;
    if ([(GKGame *)&v10 isEqual:v5])
    {
      v6 = [(GKGameRecord *)self player];
      v7 = [v5 player];
      v8 = [v6 isEqual:v7];
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

  return v8;
}

- (id)description
{
  v3 = [(GKGameRecord *)self player];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = [(GKGameRecord *)self name];
  v7 = [(GKGameRecord *)self bundleIdentifier];
  v8 = [v3 internal];
  v9 = [v8 conciseDescription];
  v10 = [v4 stringWithFormat:@"<%@ %p> name:%@ bundleID:%@ player:<%@>", v5, self, v6, v7, v9];

  return v10;
}

+ (id)cacheKeyForPlayer:(id)a3 bundleIdentifier:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a4;
  v7 = [a3 cacheKey];
  v8 = [v5 stringWithFormat:@"%@-%@", v7, v6];

  return v8;
}

+ (id)cacheKeyForPlayer:(id)a3 game:(id)a4
{
  v6 = a3;
  v7 = [a4 bundleIdentifier];
  v8 = [a1 cacheKeyForPlayer:v6 bundleIdentifier:v7];

  return v8;
}

+ (id)cacheKeyForPlayer:(id)a3 internal:(id)a4
{
  v6 = a3;
  v7 = [a4 bundleIdentifier];
  v8 = [a1 cacheKeyForPlayer:v6 bundleIdentifier:v7];

  return v8;
}

+ (id)internalRepresentationCache
{
  if (internalRepresentationCache_onceToken != -1)
  {
    +[GKGameRecord internalRepresentationCache];
  }

  v3 = sInternalRepresentationCache;

  return v3;
}

uint64_t __43__GKGameRecord_internalRepresentationCache__block_invoke()
{
  sInternalRepresentationCache = objc_alloc_init(MEMORY[0x277CBEA78]);

  return MEMORY[0x2821F96F8]();
}

+ (void)invalidateCacheForPlayer:(id)a3 game:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [a1 internalRepresentationCache];
  v8 = [a1 cacheKeyForPlayer:v7 game:v6];

  [v9 removeObjectForKey:v8];
}

+ (id)internalRepresentationForPlayer:(id)a3 game:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 internalRepresentationCache];
  v9 = [a1 cacheKeyForPlayer:v7 game:v6];

  v10 = [v8 objectForKey:v9];
  if (!v10)
  {
    v11 = [v6 internal];
    v10 = [GKGameRecordInternal gameRecordForGame:v11];

    [v8 setObject:v10 forKey:v9];
  }

  return v10;
}

+ (id)gameRecordForPlayer:(id)a3 game:(id)a4
{
  v6 = a3;
  v7 = [a1 internalRepresentationForPlayer:v6 game:a4];
  v8 = [[GKGameRecord alloc] initWithInternalRepresentation:v7 player:v6];

  return v8;
}

+ (void)loadGameRecordForPlayer:(id)a3 game:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a5;
  v9 = MEMORY[0x277CBEA60];
  v10 = a3;
  v11 = [v9 arrayWithObject:a4];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__GKGameRecord_loadGameRecordForPlayer_game_withCompletionHandler___block_invoke;
  v13[3] = &unk_2785DDCB0;
  v14 = v8;
  v12 = v8;
  [a1 loadGameRecordsForPlayer:v10 games:v11 withCompletionHandler:v13];
}

void __67__GKGameRecord_loadGameRecordForPlayer_game_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 count];
  if (v6 || v7 != 1)
  {
    v8 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
      v8 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __67__GKGameRecord_loadGameRecordForPlayer_game_withCompletionHandler___block_invoke_cold_1(v8, v5);
    }
  }

  v10 = *(a1 + 32);
  v11 = [v5 objectAtIndex:0];
  (*(v10 + 16))(v10, v11, v6);
}

+ (void)loadGameRecordsForPlayer:(id)a3 games:(id)a4 withCompletionHandler:(id)a5
{
  v8 = MEMORY[0x277CBEB98];
  v9 = a5;
  v10 = a3;
  v12 = [v8 setWithArray:a4];
  v11 = [v12 _gkValuesForKeyPath:@"bundleIdentifier"];
  [a1 loadGameRecordsForPlayer:v10 bundleIDs:v11 withCompletionHandler:v9];
}

+ (void)loadGameRecordsForPlayer:(id)a3 bundleIDs:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 count];
  v12 = [a1 internalRepresentationCache];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __73__GKGameRecord_loadGameRecordsForPlayer_bundleIDs_withCompletionHandler___block_invoke;
  v26 = &unk_2785DDD28;
  v13 = v10;
  v30 = v13;
  v31 = v11;
  v14 = v9;
  v27 = v14;
  v32 = a1;
  v15 = v8;
  v28 = v15;
  v16 = v12;
  v29 = v16;
  v17 = _Block_copy(&v23);
  v18 = v17;
  if (v11)
  {
    v19 = [GKLocalPlayer localPlayer:v23];
    v20 = [GKDaemonProxy proxyForPlayer:v19];
    v21 = [v20 gameServicePrivate];
    v22 = [v15 internal];
    [v21 getGameStatsForPlayer:v22 bundleIDs:v14 handler:v18];
  }

  else
  {
    (*(v17 + 2))(v17, 0, 0);
  }
}

void __73__GKGameRecord_loadGameRecordsForPlayer_bundleIDs_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 56))
  {
    v7 = dispatch_get_global_queue(0, 0);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __73__GKGameRecord_loadGameRecordsForPlayer_bundleIDs_withCompletionHandler___block_invoke_2;
    v12[3] = &unk_2785DDD00;
    v8 = v5;
    v9 = *(a1 + 64);
    v13 = v8;
    v19 = v9;
    v10 = *(a1 + 32);
    v11 = *(a1 + 72);
    v14 = v10;
    v20 = v11;
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v18 = *(a1 + 56);
    v17 = v6;
    dispatch_async(v7, v12);
  }
}

void __73__GKGameRecord_loadGameRecordsForPlayer_bundleIDs_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) count];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__2;
  v37 = __Block_byref_object_dispose__2;
  v38 = 0;
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v2];
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v29 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v29 objects:v40 count:16];
    if (v5)
    {
      v6 = *v30;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v30 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v29 + 1) + 8 * i);
          v9 = [v8 bundleIdentifier];
          if (v9)
          {
            [v3 setObject:v8 forKey:v9];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v29 objects:v40 count:16];
      }

      while (v5);
    }

    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 80)];
    v11 = v34[5];
    v34[5] = v10;

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = *(a1 + 40);
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v39 count:16];
    if (v13)
    {
      v14 = *v26;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v25 + 1) + 8 * j);
          v17 = [*(a1 + 88) cacheKeyForPlayer:*(a1 + 48) bundleIdentifier:v16];
          v18 = [v3 objectForKey:v16];
          if (v18)
          {
            [*(a1 + 56) setObject:v18 forKey:v17];
          }

          else
          {
            v18 = +[(GKInternalRepresentation *)GKGameRecordInternal];
          }

          v19 = [[GKGameRecord alloc] initWithInternalRepresentation:v18 player:*(a1 + 48)];
          [v34[5] addObject:v19];
        }

        v13 = [v12 countByEnumeratingWithState:&v25 objects:v39 count:16];
      }

      while (v13);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__GKGameRecord_loadGameRecordsForPlayer_bundleIDs_withCompletionHandler___block_invoke_30;
  block[3] = &unk_2785DDCD8;
  v23 = *(a1 + 72);
  v24 = &v33;
  v22 = *(a1 + 64);
  dispatch_async(MEMORY[0x277D85CD0], block);

  _Block_object_dispose(&v33, 8);
  v20 = *MEMORY[0x277D85DE8];
}

void __67__GKGameRecord_loadGameRecordForPlayer_game_withCompletionHandler___block_invoke_cold_1(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v5 = 134218242;
  v6 = [a2 count];
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_227904000, v3, OS_LOG_TYPE_DEBUG, "passed in 1 game and got %lu records: %@, will only use the first one", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end