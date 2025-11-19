@interface CoreDAVSupportedReportSetItem
+ (id)copyParseRules;
- (BOOL)supportsReportWithNameSpace:(id)a3 andName:(id)a4;
- (id)description;
- (void)addSupportedReport:(id)a3;
@end

@implementation CoreDAVSupportedReportSetItem

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7.receiver = self;
  v7.super_class = CoreDAVSupportedReportSetItem;
  v4 = [(CoreDAVItem *)&v7 description];
  [v3 appendFormat:@"[%@]", v4];

  v5 = [(CoreDAVSupportedReportSetItem *)self supportedReports];
  [v3 appendFormat:@"\n  Number of supported reports: [%lu]", objc_msgSend(v5, "count")];

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
    v7 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:0x7FFFFFFFLL nameSpace:@"DAV:" elementName:@"supported-report" objectClass:objc_opt_class() setterMethod:sel_addSupportedReport_];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"supported-report"];
    v5 = [v6 initWithObjectsAndKeys:{v7, v8, 0}];

    v9 = +[CoreDAVItem parseRuleCache];
    v10 = NSStringFromClass(a1);
    [v9 setObject:v5 forKey:v10];
  }

  return v5;
}

- (void)addSupportedReport:(id)a3
{
  v4 = a3;
  v5 = [(CoreDAVSupportedReportSetItem *)self supportedReports];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(CoreDAVSupportedReportSetItem *)self setSupportedReports:v6];
  }

  v7 = [(CoreDAVSupportedReportSetItem *)self supportedReports];
  [v7 addObject:v4];
}

- (BOOL)supportsReportWithNameSpace:(id)a3 andName:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = [(CoreDAVSupportedReportSetItem *)self supportedReports];
  v26 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v26)
  {
    v9 = *v33;
    v27 = v8;
    v25 = *v33;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v12 = [v11 report];
        v13 = [v12 extraChildItems];

        v14 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v29;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v29 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v28 + 1) + 8 * j);
              v19 = [v18 nameSpace];
              if ([v19 isEqualToString:v6])
              {
                v20 = [v18 name];
                v21 = [v20 isEqualToString:v7];

                if (v21)
                {

                  v22 = 1;
                  v8 = v27;
                  goto LABEL_21;
                }
              }

              else
              {
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v15);
        }

        v8 = v27;
        v9 = v25;
      }

      v22 = 0;
      v26 = [v27 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v26);
  }

  else
  {
    v22 = 0;
  }

LABEL_21:

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

@end