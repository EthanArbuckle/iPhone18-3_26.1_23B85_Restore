@interface CoreDAVMkcolResponseItem
+ (id)copyParseRules;
- (BOOL)hasPropertyError;
- (id)description;
- (void)addPropStat:(id)stat;
@end

@implementation CoreDAVMkcolResponseItem

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7.receiver = self;
  v7.super_class = CoreDAVMkcolResponseItem;
  v4 = [(CoreDAVItem *)&v7 description];
  [v3 appendFormat:@"[%@]", v4];

  propStats = [(CoreDAVMkcolResponseItem *)self propStats];
  [v3 appendFormat:@"\n  Number of prop stats: [%lu]", objc_msgSend(propStats, "count")];

  return v3;
}

+ (id)copyParseRules
{
  v3 = +[CoreDAVItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEAC0]);
    v7 = [CoreDAVParseRule ruleWithMinimumNumber:1 maximumNumber:1 nameSpace:@"DAV:" elementName:@"propstat" objectClass:objc_opt_class() setterMethod:sel_addPropStat_];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"propstat"];
    v5 = [v6 initWithObjectsAndKeys:{v7, v8, 0}];

    v9 = +[CoreDAVItem parseRuleCache];
    v10 = NSStringFromClass(self);
    [v9 setObject:v5 forKey:v10];
  }

  return v5;
}

- (void)addPropStat:(id)stat
{
  statCopy = stat;
  propStats = [(CoreDAVMkcolResponseItem *)self propStats];

  if (!propStats)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(CoreDAVMkcolResponseItem *)self setPropStats:v6];
  }

  propStats2 = [(CoreDAVMkcolResponseItem *)self propStats];
  [propStats2 addObject:statCopy];
}

- (BOOL)hasPropertyError
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  propStats = [(CoreDAVMkcolResponseItem *)self propStats];
  v3 = [propStats countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(propStats);
        }

        status = [*(*(&v11 + 1) + 8 * i) status];
        payloadAsString = [status payloadAsString];
        v8 = [payloadAsString CDVIsHTTPStatusLineWithStatusCode:200];

        if (!v8)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [propStats countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

@end