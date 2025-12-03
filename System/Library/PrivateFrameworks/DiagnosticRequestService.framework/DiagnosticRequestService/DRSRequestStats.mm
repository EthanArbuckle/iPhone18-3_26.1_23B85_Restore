@interface DRSRequestStats
+ (id)descriptionStringForChildStats:(id)stats;
- (BOOL)addRequest:(id)request;
- (DRSRequestStats)initWithDescriptionString:(id)string;
- (id)_debugDescription:(unint64_t)description;
- (unint64_t)logSizeBytes;
- (unint64_t)requestCount;
- (void)_addChildRequest:(id)request;
@end

@implementation DRSRequestStats

+ (id)descriptionStringForChildStats:(id)stats
{
  statsCopy = stats;
  if ([self childStatsClass])
  {
    v5 = [objc_msgSend(self "childStatsClass")];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (DRSRequestStats)initWithDescriptionString:(id)string
{
  stringCopy = string;
  v12.receiver = self;
  v12.super_class = DRSRequestStats;
  v6 = [(DRSRequestStats *)&v12 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    requests = v6->__requests;
    v6->__requests = v7;

    objc_storeStrong(&v6->_descriptionString, string);
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
  requests = [(DRSRequestStats *)self requests];
  v3 = [requests count];

  return v3;
}

- (unint64_t)logSizeBytes
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  requests = [(DRSRequestStats *)self requests];
  v3 = [requests countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(requests);
        }

        v5 += [*(*(&v10 + 1) + 8 * i) totalLogSizeBytes];
      }

      v4 = [requests countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)_addChildRequest:(id)request
{
  requestCopy = request;
  if ([objc_opt_class() childStatsClass])
  {
    v4 = [objc_opt_class() descriptionStringForChildStats:requestCopy];
    childStats = [(DRSRequestStats *)self childStats];
    v6 = [childStats objectForKeyedSubscript:v4];

    if (!v6)
    {
      v6 = [objc_alloc(objc_msgSend(objc_opt_class() "childStatsClass"))];
      _childStats = [(DRSRequestStats *)self _childStats];
      [_childStats setObject:v6 forKeyedSubscript:v4];
    }

    [v6 addRequest:requestCopy];
  }
}

- (BOOL)addRequest:(id)request
{
  requestCopy = request;
  v5 = [objc_opt_class() descriptionStringForRequest:requestCopy];
  descriptionString = [(DRSRequestStats *)self descriptionString];
  v7 = [v5 isEqualToString:descriptionString];

  if (v7)
  {
    requests = [(DRSRequestStats *)self requests];
    [requests addObject:requestCopy];

    [(DRSRequestStats *)self _addChildRequest:requestCopy];
  }

  return v7;
}

- (id)_debugDescription:(unint64_t)description
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = [&stru_2847F1D58 mutableCopy];
  if (description)
  {
    descriptionCopy = description;
    do
    {
      [v5 appendString:@"\t"];
      --descriptionCopy;
    }

    while (descriptionCopy);
  }

  v7 = MEMORY[0x277CCAB68];
  keyName = [objc_opt_class() keyName];
  descriptionString = [(DRSRequestStats *)self descriptionString];
  v10 = [v7 stringWithFormat:@"%@: %@:\tCount: %llu, Total log size: %lluB\n", keyName, descriptionString, -[DRSRequestStats requestCount](self, "requestCount"), -[DRSRequestStats logSizeBytes](self, "logSizeBytes")];

  if ([objc_opt_class() childStatsClass])
  {
    v11 = [&stru_2847F1D58 mutableCopy];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    childStats = [(DRSRequestStats *)self childStats];
    allValues = [childStats allValues];

    v14 = [allValues countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(allValues);
          }

          v18 = [*(*(&v22 + 1) + 8 * i) _debugDescription:description + 1];
          [v11 appendString:v18];
        }

        v15 = [allValues countByEnumeratingWithState:&v22 objects:v26 count:16];
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