@interface BLTLightsAndSirensReplyInfoCache
+ (id)sharedReplyCache;
- (BLTLightsAndSirensReplyInfoCache)init;
- (BOOL)_isTimeToCheck;
- (id)_firstReplyInfoWithNoDidPlayStateWithReplyToken:(id)a3;
- (id)_firstReplyInfoWithNoReplyWithReplyToken:(id)a3;
- (id)cacheDidPlayLightsAndSirens:(unint64_t)a3 withReplyToken:(id)a4;
- (void)_addReplyInfo:(id)a3 forReplyToken:(id)a4;
- (void)_checkCache;
- (void)_setNextTimeToCheck;
- (void)cacheReply:(id)a3 withSectionID:(id)a4 bulletinID:(id)a5 publicationDate:(id)a6 replyToken:(id)a7;
- (void)purgeReplyInfo:(id)a3 withReplyToken:(id)a4;
@end

@implementation BLTLightsAndSirensReplyInfoCache

+ (id)sharedReplyCache
{
  if (sharedReplyCache_onceToken != -1)
  {
    +[BLTLightsAndSirensReplyInfoCache sharedReplyCache];
  }

  v3 = sharedReplyCache__sharedInstance;

  return v3;
}

uint64_t __52__BLTLightsAndSirensReplyInfoCache_sharedReplyCache__block_invoke()
{
  v0 = objc_alloc_init(BLTLightsAndSirensReplyInfoCache);
  v1 = sharedReplyCache__sharedInstance;
  sharedReplyCache__sharedInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (BLTLightsAndSirensReplyInfoCache)init
{
  v8.receiver = self;
  v8.super_class = BLTLightsAndSirensReplyInfoCache;
  v2 = [(BLTLightsAndSirensReplyInfoCache *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.bulletindistributor.replyInfoCache", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_opt_new();
    [(BLTLightsAndSirensReplyInfoCache *)v2 setLocalReplyInfo:v6];

    [(BLTLightsAndSirensReplyInfoCache *)v2 _setNextTimeToCheck];
  }

  return v2;
}

- (void)cacheReply:(id)a3 withSectionID:(id)a4 bulletinID:(id)a5 publicationDate:(id)a6 replyToken:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  queue = self->_queue;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __99__BLTLightsAndSirensReplyInfoCache_cacheReply_withSectionID_bulletinID_publicationDate_replyToken___block_invoke;
  v23[3] = &unk_278D32958;
  v23[4] = self;
  v24 = v16;
  v25 = v15;
  v26 = v13;
  v27 = v14;
  v28 = v12;
  v18 = v14;
  v19 = v13;
  v20 = v15;
  v21 = v12;
  v22 = v16;
  dispatch_async(queue, v23);
}

void __99__BLTLightsAndSirensReplyInfoCache_cacheReply_withSectionID_bulletinID_publicationDate_replyToken___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _firstReplyInfoWithNoReplyWithReplyToken:*(a1 + 40)];
  if (!v2)
  {
    v3 = objc_opt_new();
    [*(a1 + 32) _addReplyInfo:v3 forReplyToken:*(a1 + 40)];
    v2 = v3;
  }

  v4 = v2;
  [v2 setReply:*(a1 + 72)];
  [v4 setBulletinPublicationDate:*(a1 + 48)];
  [v4 setSectionID:*(a1 + 56)];
  [v4 setPublisherMatchID:*(a1 + 64)];
}

- (id)cacheDidPlayLightsAndSirens:(unint64_t)a3 withReplyToken:(id)a4
{
  v6 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__7;
  v19 = __Block_byref_object_dispose__7;
  v20 = 0;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__BLTLightsAndSirensReplyInfoCache_cacheDidPlayLightsAndSirens_withReplyToken___block_invoke;
  v11[3] = &unk_278D32980;
  v11[4] = self;
  v12 = v6;
  v13 = &v15;
  v14 = a3;
  v8 = v6;
  dispatch_sync(queue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

uint64_t __79__BLTLightsAndSirensReplyInfoCache_cacheDidPlayLightsAndSirens_withReplyToken___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _firstReplyInfoWithNoDidPlayStateWithReplyToken:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(*(a1 + 48) + 8) + 40) setDidPlayLightsAndSirens:*(a1 + 56)];
  v5 = *(a1 + 32);

  return [v5 _checkCache];
}

- (void)purgeReplyInfo:(id)a3 withReplyToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__BLTLightsAndSirensReplyInfoCache_purgeReplyInfo_withReplyToken___block_invoke;
  block[3] = &unk_278D316C8;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

void __66__BLTLightsAndSirensReplyInfoCache_purgeReplyInfo_withReplyToken___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) localReplyInfo];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  [v3 removeObject:*(a1 + 48)];
  [*(a1 + 32) _checkCache];
}

- (id)_firstReplyInfoWithNoDidPlayStateWithReplyToken:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(BLTLightsAndSirensReplyInfoCache *)self localReplyInfo];
  v6 = [v5 objectForKeyedSubscript:v4];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (![v11 didPlayLightsAndSirens])
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_firstReplyInfoWithNoReplyWithReplyToken:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(BLTLightsAndSirensReplyInfoCache *)self localReplyInfo];
  v6 = [v5 objectForKeyedSubscript:v4];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 reply];

        if (!v12)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_addReplyInfo:(id)a3 forReplyToken:(id)a4
{
  v10 = a3;
  v6 = a4;
  [(BLTLightsAndSirensReplyInfoCache *)self _checkCache];
  v7 = [(BLTLightsAndSirensReplyInfoCache *)self localReplyInfo];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (!v8)
  {
    v8 = objc_opt_new();
    v9 = [(BLTLightsAndSirensReplyInfoCache *)self localReplyInfo];
    [v9 setObject:v8 forKeyedSubscript:v6];
  }

  [v8 addObject:v10];
}

- (void)_setNextTimeToCheck
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1800.0];
  [(BLTLightsAndSirensReplyInfoCache *)self setTimeToCheck:v3];
}

- (BOOL)_isTimeToCheck
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [(BLTLightsAndSirensReplyInfoCache *)self timeToCheck];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5 >= 0.0;

  return v6;
}

- (void)_checkCache
{
  v2 = self;
  v32 = *MEMORY[0x277D85DE8];
  if ([(BLTLightsAndSirensReplyInfoCache *)self _isTimeToCheck])
  {
    v19 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [(BLTLightsAndSirensReplyInfoCache *)v2 localReplyInfo];
    v3 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v3)
    {
      v4 = v3;
      v21 = *v27;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v26 + 1) + 8 * i);
          v7 = objc_opt_new();
          v8 = v2;
          v9 = [(BLTLightsAndSirensReplyInfoCache *)v2 localReplyInfo];
          v10 = [v9 objectForKeyedSubscript:v6];

          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v23;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v23 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v22 + 1) + 8 * j);
                if ([v16 hasExpired])
                {
                  [v7 addObject:v16];
                  [v16 sendReply];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v13);
          }

          [v11 removeObjectsInArray:v7];
          if (![v11 count])
          {
            [v19 addObject:v6];
          }

          v2 = v8;
        }

        v4 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v4);
    }

    v17 = [(BLTLightsAndSirensReplyInfoCache *)v2 localReplyInfo];
    [v17 removeObjectsForKeys:v19];

    [(BLTLightsAndSirensReplyInfoCache *)v2 _setNextTimeToCheck];
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end