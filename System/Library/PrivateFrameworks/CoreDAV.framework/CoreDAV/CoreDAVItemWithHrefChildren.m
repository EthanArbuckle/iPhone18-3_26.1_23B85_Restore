@interface CoreDAVItemWithHrefChildren
+ (id)copyParseRules;
- (id)description;
- (id)hrefsAsFullURLs;
- (id)hrefsAsOriginalURLs;
- (id)hrefsAsStrings;
- (void)addHref:(id)a3;
@end

@implementation CoreDAVItemWithHrefChildren

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v8.receiver = self;
  v8.super_class = CoreDAVItemWithHrefChildren;
  v4 = [(CoreDAVItem *)&v8 description];
  [v3 appendFormat:@"[%@]", v4];

  v5 = [(CoreDAVItemWithHrefChildren *)self hrefs];
  [v3 appendFormat:@"\n  Number of HREFs: [%lu]", objc_msgSend(v5, "count")];

  v6 = [(CoreDAVItemWithHrefChildren *)self unauthenticated];
  [v3 appendFormat:@"\n  Unauthenticated: [%@]", v6];

  return v3;
}

+ (id)copyParseRules
{
  v3 = +[CoreDAVItem parseRuleCache];
  v4 = NSStringFromClass(a1);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEAC0]);
    v7 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:0x7FFFFFFFLL nameSpace:@"DAV:" elementName:@"href" objectClass:objc_opt_class() setterMethod:sel_addHref_];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"href"];
    v9 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:1 nameSpace:@"DAV:" elementName:@"unauthenticated" objectClass:objc_opt_class() setterMethod:sel_setUnauthenticated_];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"unauthenticated"];
    v5 = [v6 initWithObjectsAndKeys:{v7, v8, v9, v10, 0}];

    v11 = +[CoreDAVItem parseRuleCache];
    v12 = NSStringFromClass(a1);
    [v11 setObject:v5 forKey:v12];
  }

  return v5;
}

- (void)addHref:(id)a3
{
  v4 = a3;
  v5 = [(CoreDAVItemWithHrefChildren *)self hrefs];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(CoreDAVItemWithHrefChildren *)self setHrefs:v6];
  }

  v7 = [(CoreDAVItemWithHrefChildren *)self hrefs];
  [v7 addObject:v4];
}

- (id)hrefsAsFullURLs
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(CoreDAVItemWithHrefChildren *)self hrefs];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CBEB58]);
    v5 = [(CoreDAVItemWithHrefChildren *)self hrefs];
    v3 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = [(CoreDAVItemWithHrefChildren *)self hrefs];
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v21;
      *&v8 = 138412290;
      v19 = v8;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = [v12 payloadAsFullURL];
          if (v13)
          {
            [v3 addObject:v13];
          }

          else
          {
            v14 = +[CoreDAVLogging sharedLogging];
            v15 = [v14 logHandleForAccountInfoProvider:0];
            v16 = v15;
            if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v19;
              v25 = v12;
              _os_log_impl(&dword_2452FB000, v16, OS_LOG_TYPE_DEFAULT, "omitting nil URL from href '%@'", buf, 0xCu);
            }
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v9);
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)hrefsAsOriginalURLs
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [(CoreDAVItemWithHrefChildren *)self hrefs];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v2, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v16 = v2;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = [v9 payloadAsOriginalURL];
          if (v10)
          {
            [v3 addObject:v10];
          }

          else
          {
            v11 = +[CoreDAVLogging sharedLogging];
            v12 = [v11 logHandleForAccountInfoProvider:0];
            v13 = v12;
            if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v22 = v9;
              _os_log_impl(&dword_2452FB000, v13, OS_LOG_TYPE_DEFAULT, "omitting nil URL from href '%@'", buf, 0xCu);
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v6);
    }

    v2 = v16;
  }

  else
  {
    v3 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)hrefsAsStrings
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [(CoreDAVItemWithHrefChildren *)self hrefs];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v2, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v16 = v2;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = [v9 payloadAsString];
          if (v10)
          {
            [v3 addObject:v10];
          }

          else
          {
            v11 = +[CoreDAVLogging sharedLogging];
            v12 = [v11 logHandleForAccountInfoProvider:0];
            v13 = v12;
            if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v22 = v9;
              _os_log_impl(&dword_2452FB000, v13, OS_LOG_TYPE_DEFAULT, "omitting nil URL from href '%@'", buf, 0xCu);
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v6);
    }

    v2 = v16;
  }

  else
  {
    v3 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

@end