@interface WFContentCoercionSearch
+ (id)searchForCoercingItem:(id)a3 toItemClass:(Class)a4 options:(id)a5;
+ (id)searchForCoercingItem:(id)a3 toItemClasses:(id)a4 options:(id)a5;
+ (id)searchForCoercingItem:(id)a3 toType:(id)a4 options:(id)a5;
- (BOOL)goalTest:(id)a3;
- (BOOL)isCoercionPathAllowedForNode:(id)a3;
- (WFContentCoercionSearch)initWithStartNode:(id)a3 goalItemClasses:(id)a4 goalType:(id)a5 options:(id)a6;
- (id)badCoercionError;
- (id)continueCoercionWithContentItems:(id)a3 error:(id *)a4;
- (id)nextPathNode;
- (void)continueCoercionWithContentItems:(id)a3 error:(id)a4 handler:(id)a5;
@end

@implementation WFContentCoercionSearch

+ (id)searchForCoercingItem:(id)a3 toType:(id)a4 options:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 alloc];
  v12 = [WFContentCoercionNode coercionNodeWithItem:v10 parent:0];

  v13 = [v11 initWithStartNode:v12 goalItemClasses:0 goalType:v9 options:v8];

  return v13;
}

+ (id)searchForCoercingItem:(id)a3 toItemClasses:(id)a4 options:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 alloc];
  v12 = [WFContentCoercionNode coercionNodeWithItem:v10 parent:0];

  v13 = [v11 initWithStartNode:v12 goalItemClasses:v9 goalType:0 options:v8];

  return v13;
}

+ (id)searchForCoercingItem:(id)a3 toItemClass:(Class)a4 options:(id)a5
{
  v15[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a3;
  v10 = [a1 alloc];
  v11 = [WFContentCoercionNode coercionNodeWithItem:v9 parent:0];

  v15[0] = a4;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = [v10 initWithStartNode:v11 goalItemClasses:v12 goalType:0 options:v8];

  return v13;
}

- (id)continueCoercionWithContentItems:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else if (a4 && *a4 && ![WFContentItem errorIsBadCoercionError:?])
  {
    v8 = 0;
  }

  else
  {
    v9 = [(WFContentCoercionSearch *)self nextPathNode];
    if (v9)
    {
      v10 = [(WFContentCoercionSearch *)self options];
      v11 = [v9 runCoercionSynchronouslyWithOptions:v10 error:a4];

      v8 = [(WFContentCoercionSearch *)self continueCoercionWithContentItems:v11 error:a4];
    }

    else if (a4)
    {
      [(WFContentCoercionSearch *)self badCoercionError];
      *a4 = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)continueCoercionWithContentItems:(id)a3 error:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8)
  {
    v12 = *(v10 + 2);
LABEL_3:
    v12();
    goto LABEL_11;
  }

  if (v9 && ![WFContentItem errorIsBadCoercionError:v9])
  {
    v12 = v11[2];
    goto LABEL_3;
  }

  v13 = [(WFContentCoercionSearch *)self nextPathNode];
  if (v13)
  {
    v14 = [(WFContentCoercionSearch *)self options];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __74__WFContentCoercionSearch_continueCoercionWithContentItems_error_handler___block_invoke;
    v16[3] = &unk_27834A200;
    v16[4] = self;
    v17 = v11;
    [v13 runCoercionWithOptions:v14 completionHandler:v16];
  }

  else
  {
    v15 = [(WFContentCoercionSearch *)self badCoercionError];
    (v11[2])(v11, 0, v15);
  }

LABEL_11:
}

- (id)badCoercionError
{
  v3 = [(WFContentCoercionSearch *)self startNode];
  v4 = [v3 itemOrItemClass];
  v5 = objc_opt_class();

  v6 = [(WFContentCoercionSearch *)self goalItemClasses];

  if (v6)
  {
    v7 = [(WFContentCoercionSearch *)self goalItemClasses];
    [v5 badCoercionErrorForItemClasses:v7];
  }

  else
  {
    v7 = [(WFContentCoercionSearch *)self goalType];
    [v5 badCoercionErrorForType:v7];
  }
  v8 = ;

  return v8;
}

- (id)nextPathNode
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = [(WFContentCoercionSearch *)self agenda];
  if (![v3 count])
  {
    goto LABEL_27;
  }

  v42 = self;
  v4 = v53;
  v40 = v3;
  while (1)
  {
    v5 = [v3 objectAtIndex:0];
    [v3 removeObjectAtIndex:0];
    v6 = [v5 itemOrItemClass];
    v7 = [(WFContentCoercionSearch *)v42 goalTest:v6];

    if (v7)
    {
      break;
    }

    v8 = [(WFContentCoercionSearch *)v42 options];
    v9 = [(WFContentCoercionSearch *)v42 goalType];
    v10 = [v5 successorsWithOptions:v8 goalType:v9];
    v11 = [v10 array];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __39__WFContentCoercionSearch_nextPathNode__block_invoke;
    v53[3] = &unk_27834A228;
    v39 = v5;
    log = v5;
    v54 = log;
    v12 = [v11 if_map:v53];

    [v3 addObjectsFromArray:v12];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v12;
    v13 = [obj countByEnumeratingWithState:&v49 objects:v56 count:16];
    if (!v13)
    {
      goto LABEL_25;
    }

    v14 = v13;
    v15 = v42;
    v43 = *v50;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v50 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v49 + 1) + 8 * i);
        v18 = [v17 itemOrItemClass];
        v19 = objc_opt_class();
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v20 = [log itemOrItemClassPath];
        v21 = [v20 countByEnumeratingWithState:&v45 objects:v55 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = 0;
          v24 = *v46;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v46 != v24)
              {
                objc_enumerationMutation(v20);
              }

              v23 |= objc_opt_class() == v19;
            }

            v22 = [v20 countByEnumeratingWithState:&v45 objects:v55 count:16];
          }

          while (v22);

          v15 = v42;
          if (v23)
          {
            [v40 removeObject:v17];
            goto LABEL_23;
          }
        }

        else
        {
        }

        if ([(WFContentCoercionSearch *)v15 goalTest:v18]&& [(WFContentCoercionSearch *)v15 isCoercionPathAllowedForNode:v17])
        {
          v26 = getWFContentGraphLogObject();
          v3 = v40;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = [(WFContentCoercionSearch *)v15 startNode];
            v28 = [v27 itemOrItemClass];
            v29 = [(WFContentCoercionSearch *)v15 goalItemClasses];
            v30 = v29;
            if (!v29)
            {
              i = [(WFContentCoercionSearch *)v15 goalType];
              v30 = [i typeDescription];
            }

            v31 = [v17 itemOrItemClassPath];
            *buf = 136315906;
            v58 = "[WFContentCoercionSearch nextPathNode]";
            v59 = 2112;
            v60 = v28;
            v61 = 2112;
            v62 = v30;
            v63 = 2112;
            v64 = v31;
            _os_log_impl(&dword_21E1BD000, v26, OS_LOG_TYPE_INFO, "%s Found coercion path from %@ to %@: %@", buf, 0x2Au);

            if (!v29)
            {
            }
          }

          [v40 removeObject:v17];
          v5 = v17;

          goto LABEL_35;
        }

LABEL_23:
      }

      v14 = [obj countByEnumeratingWithState:&v49 objects:v56 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }

LABEL_25:

    v3 = v40;
    v5 = v39;
    v4 = v53;
LABEL_26:

    if (![v3 count])
    {
LABEL_27:
      v5 = 0;
      goto LABEL_36;
    }
  }

  if (![(WFContentCoercionSearch *)v42 isCoercionPathAllowedForNode:v5])
  {
    goto LABEL_26;
  }

  log = getWFContentGraphLogObject();
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v34 = [(WFContentCoercionSearch *)v42 startNode];
    v35 = [v34 itemOrItemClass];
    v36 = [(WFContentCoercionSearch *)v42 goalItemClasses];
    v37 = v36;
    if (!v36)
    {
      v4 = [(WFContentCoercionSearch *)v42 goalType];
      v37 = [v4 typeDescription];
    }

    v38 = [v5 itemOrItemClassPath];
    *buf = 136315906;
    v58 = "[WFContentCoercionSearch nextPathNode]";
    v59 = 2112;
    v60 = v35;
    v61 = 2114;
    v62 = v37;
    v63 = 2112;
    v64 = v38;
    _os_log_impl(&dword_21E1BD000, log, OS_LOG_TYPE_INFO, "%s Found coercion path from %@ to %{public}@: %@", buf, 0x2Au);

    if (!v36)
    {
    }
  }

LABEL_35:

LABEL_36:

  return v5;
}

- (BOOL)goalTest:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFContentCoercionSearch *)self goalType];
  if (v5)
  {
    v23 = 0uLL;
    v24 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v6 = [v4 supportedTypes];
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      v10 = *MEMORY[0x277CE1D48];
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        if ([v12 conformsToType:v5])
        {
          break;
        }

        if ([v5 conformsToType:v12])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v5 isCoreType])
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 isCoreType] && !objc_msgSend(v12, "isEqualToUTType:", v10))
              {
                break;
              }
            }
          }
        }

        if (v8 == ++v11)
        {
          v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_16;
        }
      }

LABEL_26:
      LOBYTE(v13) = 1;
      goto LABEL_27;
    }

LABEL_16:
    LOBYTE(v13) = 0;
  }

  else
  {
    v19 = 0uLL;
    v20 = 0uLL;
    *(&v17 + 1) = 0;
    v18 = 0uLL;
    v6 = [(WFContentCoercionSearch *)self goalItemClasses];
    v13 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v13)
    {
      v14 = *v18;
LABEL_19:
      v15 = 0;
      while (1)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v6);
        }

        if ([objc_opt_class() isSubclassOfClass:*(*(&v17 + 1) + 8 * v15)])
        {
          goto LABEL_26;
        }

        if (v13 == ++v15)
        {
          v13 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v13)
          {
            goto LABEL_19;
          }

          break;
        }
      }
    }
  }

LABEL_27:

  return v13;
}

- (BOOL)isCoercionPathAllowedForNode:(id)a3
{
  v4 = [a3 coercionPath];
  v5 = [(WFContentCoercionSearch *)self goalType];

  if (v5)
  {
    v6 = +[WFContentItemRegistry sharedRegistry];
    v7 = [(WFContentCoercionSearch *)self goalType];
    v8 = [v6 contentItemClassForType:v7];

    if (v8)
    {
      v9 = [v4 orderedSetByAddingObject:v8];

      v4 = v9;
    }
  }

  v10 = [(WFContentCoercionSearch *)self options];
  v11 = [v10 coercionPathIsDisallowed:v4];

  return v11 ^ 1;
}

- (WFContentCoercionSearch)initWithStartNode:(id)a3 goalItemClasses:(id)a4 goalType:(id)a5 options:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(WFContentCoercionSearch *)self init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_startNode, a3);
    objc_storeStrong(&v16->_goalItemClasses, a4);
    objc_storeStrong(&v16->_goalType, a5);
    v17 = [MEMORY[0x277CBEB18] arrayWithObject:v11];
    agenda = v16->_agenda;
    v16->_agenda = v17;

    objc_storeStrong(&v16->_options, a6);
    v19 = v16;
  }

  return v16;
}

@end