@interface CoreDAVACLItem
+ (id)copyParseRules;
- (id)description;
- (id)liveACEs;
- (id)notGrantedSubsetOfACEs:(id)a3;
- (void)addACE:(id)a3;
@end

@implementation CoreDAVACLItem

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7.receiver = self;
  v7.super_class = CoreDAVACLItem;
  v4 = [(CoreDAVItem *)&v7 description];
  [v3 appendFormat:@"[%@]", v4];

  v5 = [(CoreDAVACLItem *)self accessControlEntities];
  [v3 appendFormat:@"\n  Number of access control entities: [%lu]", objc_msgSend(v5, "count")];

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
    v7 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:0x7FFFFFFFLL nameSpace:@"DAV:" elementName:@"ace" objectClass:objc_opt_class() setterMethod:sel_addACE_];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"ace"];
    v5 = [v6 initWithObjectsAndKeys:{v7, v8, 0}];

    v9 = +[CoreDAVItem parseRuleCache];
    v10 = NSStringFromClass(a1);
    [v9 setObject:v5 forKey:v10];
  }

  return v5;
}

- (void)addACE:(id)a3
{
  v4 = a3;
  v5 = [(CoreDAVACLItem *)self accessControlEntities];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(CoreDAVACLItem *)self setAccessControlEntities:v6];
  }

  v7 = [(CoreDAVACLItem *)self accessControlEntities];
  [v7 addObject:v4];
}

- (id)notGrantedSubsetOfACEs:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v56;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v56 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v55 + 1) + 8 * i);
        v10 = [v9 principal];
        v11 = [v10 hashString];
        v12 = [v4 objectForKey:v11];

        if (!v12)
        {
          v12 = [MEMORY[0x277CBEB58] set];
          v13 = [v9 principal];
          v14 = [v13 hashString];
          [v4 setObject:v12 forKey:v14];
        }

        v15 = [v9 grant];
        v16 = [v15 privileges];
        v17 = [v16 valueForKey:@"hashString"];
        [v12 unionSet:v17];
      }

      v6 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v6);
  }

  v38 = [CoreDAVACEItem privilegeItemWithNameSpace:@"DAV:" andName:@"all"];
  v18 = [v38 hashString];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v39 = [(CoreDAVACLItem *)self accessControlEntities];
  v44 = [v39 countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v44)
  {
    v41 = v4;
    v42 = *v52;
    do
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v52 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v20 = *(*(&v51 + 1) + 8 * j);
        v21 = [v20 principal];
        v22 = [v21 hashString];
        v23 = [v4 objectForKey:v22];

        if ([v23 count])
        {
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v24 = [v20 grant];
          v25 = [v24 privileges];

          v26 = [v25 countByEnumeratingWithState:&v47 objects:v59 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v48;
            while (2)
            {
              for (k = 0; k != v27; ++k)
              {
                if (*v48 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v30 = *(*(&v47 + 1) + 8 * k);
                v31 = [v30 hashString];
                v32 = [v31 isEqualToString:v18];

                if (v32)
                {
                  [v23 removeAllObjects];
                  goto LABEL_26;
                }

                v33 = [v30 hashString];
                [v23 removeObject:v33];
              }

              v27 = [v25 countByEnumeratingWithState:&v47 objects:v59 count:16];
              if (v27)
              {
                continue;
              }

              break;
            }
          }

LABEL_26:

          v4 = v41;
        }
      }

      v44 = [v39 countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v44);
  }

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __41__CoreDAVACLItem_notGrantedSubsetOfACEs___block_invoke;
  v45[3] = &unk_278E31488;
  v46 = v4;
  v34 = v4;
  v35 = [obj objectsPassingTest:v45];

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

uint64_t __41__CoreDAVACLItem_notGrantedSubsetOfACEs___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 principal];
  v6 = [v5 hashString];
  v7 = [v4 objectForKey:v6];

  if ([v7 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v3 grant];
    v9 = [v8 privileges];

    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = *v18;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = [*(*(&v17 + 1) + 8 * i) hashString];
          v14 = [v7 containsObject:v13];

          if (v14)
          {
            v10 = 1;
            goto LABEL_12;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)liveACEs
{
  v2 = [(CoreDAVACLItem *)self accessControlEntities];
  v3 = [v2 objectsPassingTest:&__block_literal_global_4];

  return v3;
}

BOOL __26__CoreDAVACLItem_liveACEs__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 inherited];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [v2 protectedItem];
    v4 = v5 == 0;
  }

  return v4;
}

@end