@interface FedStatsPluginSQLQueryValidator
+ (id)isValidSQLQuery:(id)query forNamespaceID:(id)d possibleError:(id *)error;
+ (id)parseQueryPermissionList:(id)list error:(id *)error;
+ (id)sharedInstanceWithError:(id *)error;
- (FedStatsPluginSQLQueryValidator)initWithAllowList:(id)list blockList:(id)blockList;
@end

@implementation FedStatsPluginSQLQueryValidator

- (FedStatsPluginSQLQueryValidator)initWithAllowList:(id)list blockList:(id)blockList
{
  listCopy = list;
  blockListCopy = blockList;
  v12.receiver = self;
  v12.super_class = FedStatsPluginSQLQueryValidator;
  v9 = [(FedStatsPluginSQLQueryValidator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_allowList, list);
    objc_storeStrong(&v10->_blockList, blockList);
  }

  return v10;
}

+ (id)parseQueryPermissionList:(id)list error:(id *)error
{
  v53 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:listCopy];
  v7 = v6;
  if (!v6)
  {
    if (error)
    {
      [FedStatsPluginError errorWithCode:300 description:@"Cannot load allow-list from class bundle file"];
      v13 = 0;
      v14 = 0;
      *error = v28 = 0;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v28 = 0;
    }

    goto LABEL_34;
  }

  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  allKeys = [v7 allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v47 objects:v52 count:16];
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (!v10)
  {
    goto LABEL_19;
  }

  v15 = *v48;
  v35 = listCopy;
  v40 = allKeys;
  errorCopy = error;
  v33 = *v48;
LABEL_4:
  v16 = 0;
  v17 = v12;
  v34 = v10;
LABEL_5:
  if (*v48 != v15)
  {
    v18 = v16;
    objc_enumerationMutation(allKeys);
    v16 = v18;
  }

  v37 = v16;
  v19 = *(*(&v47 + 1) + 8 * v16);
  v20 = [v7 objectForKey:{v19, v33}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = v19;
    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v20, "count")}];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v11 = v20;
    v21 = [v11 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (!v21)
    {
      goto LABEL_17;
    }

    v22 = v21;
    v23 = *v44;
    v38 = v7;
    v39 = v8;
LABEL_10:
    v24 = 0;
    v25 = v13;
    v26 = v14;
    while (1)
    {
      if (*v44 != v23)
      {
        objc_enumerationMutation(v11);
      }

      v27 = *(*(&v43 + 1) + 8 * v24);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v42 = v26;
      v13 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v27 options:16 error:&v42];
      v14 = v42;

      if (!v13)
      {
        v29 = errorCopy;
        if (errorCopy)
        {
          v30 = [FedStatsPluginError errorWithCode:300 underlyingError:v14 description:@"Permission list has a malformed regex value"];
          v25 = 0;
LABEL_26:
          listCopy = v35;
          v7 = v38;
          allKeys = v40;
          *v29 = v30;
LABEL_31:

          v13 = v25;
          v8 = v39;
          goto LABEL_32;
        }

        v25 = 0;
LABEL_30:
        listCopy = v35;
        v7 = v38;
        allKeys = v40;
        goto LABEL_31;
      }

      [v12 addObject:v13];
      ++v24;
      v25 = v13;
      v26 = v14;
      if (v22 == v24)
      {
        v22 = [v11 countByEnumeratingWithState:&v43 objects:v51 count:16];
        v7 = v38;
        v8 = v39;
        if (v22)
        {
          goto LABEL_10;
        }

LABEL_17:

        [v8 setObject:v12 forKey:v36];
        v16 = v37 + 1;
        v17 = v12;
        v15 = v33;
        allKeys = v40;
        error = errorCopy;
        if (v37 + 1 == v34)
        {
          v10 = [v40 countByEnumeratingWithState:&v47 objects:v52 count:16];
          listCopy = v35;
          if (!v10)
          {
LABEL_19:

            v28 = v8;
            v20 = v11;
            goto LABEL_33;
          }

          goto LABEL_4;
        }

        goto LABEL_5;
      }
    }

    v29 = errorCopy;
    if (errorCopy)
    {
      v30 = [FedStatsPluginError errorWithCode:300 description:@"Permission list value has a non-string item"];
      v14 = v26;
      goto LABEL_26;
    }

    v14 = v26;
    goto LABEL_30;
  }

  if (error)
  {
    *error = [FedStatsPluginError errorWithCode:300 description:@"Permission list has a non-list value"];
  }

  v12 = v17;
  listCopy = v35;
LABEL_32:

  v28 = 0;
LABEL_33:

LABEL_34:
  v31 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (id)sharedInstanceWithError:(id *)error
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__FedStatsPluginSQLQueryValidator_sharedInstanceWithError___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstanceWithError__dispatchToken_0 == -1)
  {
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dispatch_once(&sharedInstanceWithError__dispatchToken_0, block);
  if (error)
  {
LABEL_3:
    *error = sharedInstanceWithError__error;
  }

LABEL_4:
  v4 = sharedInstanceWithError__sharedInstance_0;

  return v4;
}

void __59__FedStatsPluginSQLQueryValidator_sharedInstanceWithError___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 URLForResource:@"FedStatsPluginSQLQueryAllowList" withExtension:@"plist"];
    if (v4)
    {
      v20 = 0;
      v5 = [FedStatsPluginSQLQueryValidator parseQueryPermissionList:v4 error:&v20];
      v6 = v20;
      if (v5)
      {
        v7 = [v3 URLForResource:@"FedStatsPluginSQLQueryBlockList" withExtension:@"plist"];
        if (v7)
        {
          v19 = v6;
          v8 = [FedStatsPluginSQLQueryValidator parseQueryPermissionList:v7 error:&v19];
          v9 = v19;

          if (v8)
          {
            v10 = [objc_alloc(*(a1 + 32)) initWithAllowList:v5 blockList:v8];
            v11 = sharedInstanceWithError__sharedInstance_0;
            sharedInstanceWithError__sharedInstance_0 = v10;
          }

          else
          {
            v18 = [FedStatsPluginError errorWithCode:300 underlyingError:v9 description:@"Cannot create block-list"];
            v11 = sharedInstanceWithError__error;
            sharedInstanceWithError__error = v18;
          }

          v6 = v9;
        }

        else
        {
          v17 = [FedStatsPluginError errorWithCode:300 description:@"Cannot find block-list from class bundle"];
          v8 = sharedInstanceWithError__error;
          sharedInstanceWithError__error = v17;
        }
      }

      else
      {
        v16 = [FedStatsPluginError errorWithCode:300 underlyingError:v6 description:@"Cannot create allow-list"];
        v7 = sharedInstanceWithError__error;
        sharedInstanceWithError__error = v16;
      }
    }

    else
    {
      v14 = [FedStatsPluginError errorWithCode:300 description:@"Cannot find allow-list from class bundle"];
      v15 = sharedInstanceWithError__error;
      sharedInstanceWithError__error = v14;
    }
  }

  else
  {
    v12 = [FedStatsPluginError errorWithCode:300 description:@"Cannot load class bundle"];
    v13 = sharedInstanceWithError__error;
    sharedInstanceWithError__error = v12;
  }
}

+ (id)isValidSQLQuery:(id)query forNamespaceID:(id)d possibleError:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  dCopy = d;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![queryCopy length])
  {
    if (error)
    {
      v25 = @"SQL query needs to be a non-empty string";
LABEL_27:
      [FedStatsPluginError errorWithCode:300 description:v25];
      *error = v24 = 0;
      goto LABEL_38;
    }

LABEL_30:
    v24 = 0;
    goto LABEL_38;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v25 = @"Namespace Identifier needs to be a string";
      goto LABEL_27;
    }

    goto LABEL_30;
  }

  v37 = 0;
  v9 = [FedStatsPluginSQLQueryValidator sharedInstanceWithError:&v37];
  v10 = v37;
  if (!v9)
  {
    if (error)
    {
      [FedStatsPluginError errorWithCode:300 underlyingError:v10 description:@"Cannot create SQL query validator"];
      *error = v24 = 0;
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_37;
  }

  blockList = [v9 blockList];
  v12 = [blockList objectForKey:dCopy];

  if (v12)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v34;
LABEL_8:
      v17 = 0;
      while (1)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v13);
        }

        if ([*(*(&v33 + 1) + 8 * v17) numberOfMatchesInString:queryCopy options:4 range:{0, objc_msgSend(queryCopy, "length")}])
        {
          goto LABEL_31;
        }

        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v33 objects:v39 count:16];
          if (v15)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }
  }

  allowList = [v9 allowList];
  v13 = [allowList objectForKey:dCopy];

  if (v13)
  {
    v28 = v10;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = v13;
    v20 = [v19 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v30;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(v19);
          }

          if ([*(*(&v29 + 1) + 8 * i) numberOfMatchesInString:queryCopy options:4 range:{0, objc_msgSend(queryCopy, "length")}])
          {
            v24 = [MEMORY[0x277CCABB0] numberWithBool:1];

            goto LABEL_35;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v29 objects:v38 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    v24 = [MEMORY[0x277CCABB0] numberWithBool:0];
LABEL_35:
    v10 = v28;
    goto LABEL_36;
  }

LABEL_31:
  v24 = [MEMORY[0x277CCABB0] numberWithBool:0];
LABEL_36:

LABEL_37:
LABEL_38:

  v26 = *MEMORY[0x277D85DE8];

  return v24;
}

@end