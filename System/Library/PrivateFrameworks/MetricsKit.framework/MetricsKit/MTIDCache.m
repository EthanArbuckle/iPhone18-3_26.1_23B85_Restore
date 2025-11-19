@interface MTIDCache
+ (BOOL)idInfo:(id)a3 isValidForDate:(id)a4;
- (MTIDCache)init;
- (id)IDInfoForScheme:(id)a3 options:(id)a4;
- (id)optionsDescription:(id)a3;
- (id)promiseKeyForScheme:(id)a3 options:(id)a4;
- (void)addIDInfo:(id)a3 reset:(BOOL)a4;
- (void)addIdInfoPromise:(id)a3 forScheme:(id)a4 options:(id)a5;
- (void)removeAllNamespaces;
- (void)removeNamespace:(id)a3;
- (void)removeNamespaces:(id)a3;
- (void)removeUnsyncedNamespaces;
@end

@implementation MTIDCache

- (MTIDCache)init
{
  v6.receiver = self;
  v6.super_class = MTIDCache;
  v2 = [(MTIDCache *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    [(MTIDCache *)v2 setCache:v3];

    v4 = [MEMORY[0x277CBEB38] dictionary];
    [(MTIDCache *)v2 setPromiseCache:v4];
  }

  return v2;
}

+ (BOOL)idInfo:(id)a3 isValidForDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 effectiveDate];
  v8 = v7;
  if (v7 && [v7 compare:v6] == 1)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v5 expirationDate];
    v11 = v10;
    v9 = !v10 || [v10 compare:v6] != -1;
  }

  return v9;
}

- (id)optionsDescription:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = +[MTIDCommon idOptions];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __32__MTIDCache_optionsDescription___block_invoke;
  v13 = &unk_2798CDDC8;
  v14 = v3;
  v15 = v4;
  v6 = v4;
  v7 = v3;
  [v5 enumerateObjectsUsingBlock:&v10];

  v8 = [v6 componentsJoinedByString:{@", ", v10, v11, v12, v13}];

  return v8;
}

void __32__MTIDCache_optionsDescription___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 description];
    v6 = v5;
    v7 = &stru_286A3A510;
    if (v5)
    {
      v7 = v5;
    }

    v8 = v7;

    v9 = *(a1 + 40);
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@=%@", v11, v8];

    [v9 addObject:v10];
  }
}

- (id)promiseKeyForScheme:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 mutableCopy];
  v9 = [v6 objectForKeyedSubscript:@"date"];

  if (v9)
  {
    goto LABEL_4;
  }

  v10 = [MEMORY[0x277CBEAA8] now];
  if (v10)
  {
    v9 = v10;
LABEL_4:
    v11 = v9;
    goto LABEL_5;
  }

  v11 = [MEMORY[0x277CBEAA8] now];
  v9 = v11;
LABEL_5:
  [v11 timeIntervalSinceReferenceDate];
  v13 = v12;

  v14 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:round(v13 / 10.0) * 10.0];
  [v8 setObject:v14 forKeyedSubscript:@"date"];

  v15 = MEMORY[0x277CCACA8];
  v16 = [v7 idNamespace];

  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = &stru_286A3A510;
  }

  v18 = [(MTIDCache *)self optionsDescription:v8];
  v19 = [v15 stringWithFormat:@"%@:%@", v17, v18];

  return v19;
}

- (id)IDInfoForScheme:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [v7 objectForKeyedSubscript:@"date"];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x277CBEAA8] now];
  }

  v12 = v11;

  v13 = [v7 objectForKeyedSubscript:@"dsId"];
  v14 = v13;
  v15 = &unk_286A4C2A8;
  if (v13)
  {
    v15 = v13;
  }

  v16 = v15;

  v17 = [(MTIDCache *)v8 cache];
  v18 = [v6 idNamespace];
  v19 = [v17 objectForKeyedSubscript:v18];

  if (!v19)
  {
    goto LABEL_13;
  }

  v20 = [v19 scheme];
  if (![v20 isEqual:v6] || !+[MTIDCache idInfo:isValidForDate:](MTIDCache, "idInfo:isValidForDate:", v19, v12))
  {

    goto LABEL_13;
  }

  v21 = [v19 dsId];
  v22 = v21;
  if (v21 != v16)
  {
    v23 = [v19 dsId];
    v24 = [v16 isEqual:v23];

    if (v24)
    {
      goto LABEL_18;
    }

LABEL_13:
    v25 = [(MTIDCache *)v8 promiseKeyForScheme:v6 options:v7];
    v26 = [(MTIDCache *)v8 promiseCache];
    v27 = [v26 objectForKeyedSubscript:v25];

    goto LABEL_14;
  }

LABEL_18:
  v27 = [MTPromise promiseWithResult:v19];
LABEL_14:

  objc_sync_exit(v8);

  return v27;
}

- (void)addIdInfoPromise:(id)a3 forScheme:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MTIDCache *)self promiseKeyForScheme:v9 options:v10];
  v12 = [v10 objectForKeyedSubscript:@"reset"];
  v13 = [v12 BOOLValue];

  v14 = self;
  objc_sync_enter(v14);
  v15 = [(MTIDCache *)v14 promiseCache];
  [v15 setObject:v8 forKeyedSubscript:v11];

  objc_sync_exit(v14);
  objc_initWeak(&location, v14);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __48__MTIDCache_addIdInfoPromise_forScheme_options___block_invoke;
  v17[3] = &unk_2798CDDF0;
  objc_copyWeak(&v19, &location);
  v16 = v11;
  v18 = v16;
  v20 = v13;
  [v8 addFinishBlock:v17];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __48__MTIDCache_addIdInfoPromise_forScheme_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
    objc_sync_enter(v8);
    v9 = [v8 promiseCache];
    [v9 removeObjectForKey:*(a1 + 32)];

    if (v10)
    {
      [v8 addIDInfo:v10 reset:*(a1 + 48)];
    }

    objc_sync_exit(v8);
  }
}

- (void)addIDInfo:(id)a3 reset:(BOOL)a4
{
  v4 = a4;
  v17 = a3;
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(MTIDCache *)v6 cache];
  v8 = [v17 scheme];
  v9 = [v8 idNamespace];
  v10 = [v7 objectForKeyedSubscript:v9];

  if (v10 == v17 || ([v10 isEqual:v17] & 1) != 0)
  {

    objc_sync_exit(v6);
LABEL_4:

    goto LABEL_5;
  }

  v11 = [v17 scheme];
  v12 = [v11 idNamespace];
  [(MTIDCache *)v6 removeNamespace:v12];

  v13 = [(MTIDCache *)v6 cache];
  v14 = [v17 scheme];
  v15 = [v14 idNamespace];
  [v13 setObject:v17 forKeyedSubscript:v15];

  objc_sync_exit(v6);
  if (v4)
  {
    v6 = [v17 scheme];
    v16 = [(MTIDCache *)v6 idNamespace];
    [MTInterprocessChangeNotifier notify:v16];

    goto LABEL_4;
  }

LABEL_5:
}

- (void)removeNamespace:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v8 count:1];

  [(MTIDCache *)self removeNamespaces:v6, v8, v9];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeNamespaces:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [MEMORY[0x277CBEB58] setWithArray:v4];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v7 = &v18;
  v18 = 0;
  do
  {
    *v7 = 1;
    v8 = [(MTIDCache *)v5 cache];
    v9 = [v8 copy];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __30__MTIDCache_removeNamespaces___block_invoke;
    v11[3] = &unk_2798CDE18;
    v10 = v6;
    v12 = v10;
    v13 = v5;
    v14 = &v15;
    [v9 enumerateKeysAndObjectsUsingBlock:v11];

    v7 = (v16 + 3);
  }

  while ((v16[3] & 1) == 0);
  _Block_object_dispose(&v15, 8);

  objc_sync_exit(v5);
}

void __30__MTIDCache_removeNamespaces___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v6 scheme];
  v9 = [v8 idNamespace];
  LODWORD(v7) = [v7 containsObject:v9];

  if (v7)
  {
    v10 = [*(a1 + 40) cache];
    [v10 setObject:0 forKeyedSubscript:v5];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [v6 scheme];
  v12 = [v11 correlations];

  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        if ([*(a1 + 32) containsObject:*(*(&v24 + 1) + 8 * i)])
        {
          v17 = *(a1 + 32);
          v18 = [v6 scheme];
          v19 = [v18 idNamespace];
          LOBYTE(v17) = [v17 containsObject:v19];

          if ((v17 & 1) == 0)
          {
            v20 = *(a1 + 32);
            v21 = [v6 scheme];
            v22 = [v21 idNamespace];
            [v20 addObject:v22];

            *(*(*(a1 + 48) + 8) + 24) = 0;
            goto LABEL_14;
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)removeAllNamespaces
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [(MTIDCache *)obj cache];
  [v2 removeAllObjects];

  objc_sync_exit(obj);
}

- (void)removeUnsyncedNamespaces
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MTIDCache *)v2 cache];
  v4 = [v3 allKeys];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = [(MTIDCache *)v2 cache];
        v11 = [v10 objectForKeyedSubscript:v9];

        if (([v11 isSynchronized] & 1) == 0)
        {
          v12 = [(MTIDCache *)v2 cache];
          [v12 setObject:0 forKeyedSubscript:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v2);
  v13 = *MEMORY[0x277D85DE8];
}

@end