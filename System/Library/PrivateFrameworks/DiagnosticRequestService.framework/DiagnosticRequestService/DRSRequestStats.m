@interface DRSRequestStats
+ (id)descriptionStringForChildStats:(id)a3;
- (BOOL)addRequest:(id)a3;
- (DRSRequestStats)initWithDescriptionString:(id)a3;
- (id)_debugDescription:(unint64_t)a3;
- (unint64_t)logSizeBytes;
- (unint64_t)requestCount;
- (void)_addChildRequest:(id)a3;
@end

@implementation DRSRequestStats

+ (id)descriptionStringForChildStats:(id)a3
{
  v4 = a3;
  if ([a1 childStatsClass])
  {
    v5 = [objc_msgSend(a1 "childStatsClass")];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (DRSRequestStats)initWithDescriptionString:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = DRSRequestStats;
  v6 = [(DRSRequestStats *)&v12 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    requests = v6->__requests;
    v6->__requests = v7;

    objc_storeStrong(&v6->_descriptionString, a3);
    if ([objc_opt_class() childStatsClass])
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      childStats = v6->__childStats;
      v6->__childStats = v9;
    }
  }

  return v6;
}

- (unint64_t)requestCount
{
  v2 = [(DRSRequestStats *)self requests];
  v3 = [v2 count];

  return v3;
}

- (unint64_t)logSizeBytes
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(DRSRequestStats *)self requests];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v10 + 1) + 8 * i) totalLogSizeBytes];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_addChildRequest:(id)a3
{
  v8 = a3;
  if ([objc_opt_class() childStatsClass])
  {
    v4 = [objc_opt_class() descriptionStringForChildStats:v8];
    v5 = [(DRSRequestStats *)self childStats];
    v6 = [v5 objectForKeyedSubscript:v4];

    if (!v6)
    {
      v6 = [objc_alloc(objc_msgSend(objc_opt_class() "childStatsClass"))];
      v7 = [(DRSRequestStats *)self _childStats];
      [v7 setObject:v6 forKeyedSubscript:v4];
    }

    [v6 addRequest:v8];
  }
}

- (BOOL)addRequest:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() descriptionStringForRequest:v4];
  v6 = [(DRSRequestStats *)self descriptionString];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [(DRSRequestStats *)self requests];
    [v8 addObject:v4];

    [(DRSRequestStats *)self _addChildRequest:v4];
  }

  return v7;
}

- (id)_debugDescription:(unint64_t)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = [&stru_2847F1D58 mutableCopy];
  if (a3)
  {
    v6 = a3;
    do
    {
      [v5 appendString:@"\t"];
      --v6;
    }

    while (v6);
  }

  v7 = MEMORY[0x277CCAB68];
  v8 = [objc_opt_class() keyName];
  v9 = [(DRSRequestStats *)self descriptionString];
  v10 = [v7 stringWithFormat:@"%@: %@:\tCount: %llu, Total log size: %lluB\n", v8, v9, -[DRSRequestStats requestCount](self, "requestCount"), -[DRSRequestStats logSizeBytes](self, "logSizeBytes")];

  if ([objc_opt_class() childStatsClass])
  {
    v11 = [&stru_2847F1D58 mutableCopy];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = [(DRSRequestStats *)self childStats];
    v13 = [v12 allValues];

    v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v22 + 1) + 8 * i) _debugDescription:a3 + 1];
          [v11 appendString:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
    }

    [v10 appendFormat:@"%@", v11];
  }

  v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@", v5, v10];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end