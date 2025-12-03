@interface WFContentCoercionSearch
+ (id)searchForCoercingItem:(id)item toItemClass:(Class)class options:(id)options;
+ (id)searchForCoercingItem:(id)item toItemClasses:(id)classes options:(id)options;
+ (id)searchForCoercingItem:(id)item toType:(id)type options:(id)options;
- (BOOL)goalTest:(id)test;
- (BOOL)isCoercionPathAllowedForNode:(id)node;
- (WFContentCoercionSearch)initWithStartNode:(id)node goalItemClasses:(id)classes goalType:(id)type options:(id)options;
- (id)badCoercionError;
- (id)continueCoercionWithContentItems:(id)items error:(id *)error;
- (id)nextPathNode;
- (void)continueCoercionWithContentItems:(id)items error:(id)error handler:(id)handler;
@end

@implementation WFContentCoercionSearch

+ (id)searchForCoercingItem:(id)item toType:(id)type options:(id)options
{
  optionsCopy = options;
  typeCopy = type;
  itemCopy = item;
  v11 = [self alloc];
  v12 = [WFContentCoercionNode coercionNodeWithItem:itemCopy parent:0];

  v13 = [v11 initWithStartNode:v12 goalItemClasses:0 goalType:typeCopy options:optionsCopy];

  return v13;
}

+ (id)searchForCoercingItem:(id)item toItemClasses:(id)classes options:(id)options
{
  optionsCopy = options;
  classesCopy = classes;
  itemCopy = item;
  v11 = [self alloc];
  v12 = [WFContentCoercionNode coercionNodeWithItem:itemCopy parent:0];

  v13 = [v11 initWithStartNode:v12 goalItemClasses:classesCopy goalType:0 options:optionsCopy];

  return v13;
}

+ (id)searchForCoercingItem:(id)item toItemClass:(Class)class options:(id)options
{
  v15[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  itemCopy = item;
  v10 = [self alloc];
  v11 = [WFContentCoercionNode coercionNodeWithItem:itemCopy parent:0];

  v15[0] = class;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v13 = [v10 initWithStartNode:v11 goalItemClasses:v12 goalType:0 options:optionsCopy];

  return v13;
}

- (id)continueCoercionWithContentItems:(id)items error:(id *)error
{
  itemsCopy = items;
  v7 = itemsCopy;
  if (itemsCopy)
  {
    v8 = itemsCopy;
  }

  else if (error && *error && ![WFContentItem errorIsBadCoercionError:?])
  {
    v8 = 0;
  }

  else
  {
    nextPathNode = [(WFContentCoercionSearch *)self nextPathNode];
    if (nextPathNode)
    {
      options = [(WFContentCoercionSearch *)self options];
      v11 = [nextPathNode runCoercionSynchronouslyWithOptions:options error:error];

      v8 = [(WFContentCoercionSearch *)self continueCoercionWithContentItems:v11 error:error];
    }

    else if (error)
    {
      [(WFContentCoercionSearch *)self badCoercionError];
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)continueCoercionWithContentItems:(id)items error:(id)error handler:(id)handler
{
  itemsCopy = items;
  errorCopy = error;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (itemsCopy)
  {
    v12 = *(handlerCopy + 2);
LABEL_3:
    v12();
    goto LABEL_11;
  }

  if (errorCopy && ![WFContentItem errorIsBadCoercionError:errorCopy])
  {
    v12 = v11[2];
    goto LABEL_3;
  }

  nextPathNode = [(WFContentCoercionSearch *)self nextPathNode];
  if (nextPathNode)
  {
    options = [(WFContentCoercionSearch *)self options];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __74__WFContentCoercionSearch_continueCoercionWithContentItems_error_handler___block_invoke;
    v16[3] = &unk_27834A200;
    v16[4] = self;
    v17 = v11;
    [nextPathNode runCoercionWithOptions:options completionHandler:v16];
  }

  else
  {
    badCoercionError = [(WFContentCoercionSearch *)self badCoercionError];
    (v11[2])(v11, 0, badCoercionError);
  }

LABEL_11:
}

- (id)badCoercionError
{
  startNode = [(WFContentCoercionSearch *)self startNode];
  itemOrItemClass = [startNode itemOrItemClass];
  v5 = objc_opt_class();

  goalItemClasses = [(WFContentCoercionSearch *)self goalItemClasses];

  if (goalItemClasses)
  {
    goalItemClasses2 = [(WFContentCoercionSearch *)self goalItemClasses];
    [v5 badCoercionErrorForItemClasses:goalItemClasses2];
  }

  else
  {
    goalItemClasses2 = [(WFContentCoercionSearch *)self goalType];
    [v5 badCoercionErrorForType:goalItemClasses2];
  }
  v8 = ;

  return v8;
}

- (id)nextPathNode
{
  v65 = *MEMORY[0x277D85DE8];
  agenda = [(WFContentCoercionSearch *)self agenda];
  if (![agenda count])
  {
    goto LABEL_27;
  }

  selfCopy = self;
  goalType2 = v53;
  v40 = agenda;
  while (1)
  {
    v5 = [agenda objectAtIndex:0];
    [agenda removeObjectAtIndex:0];
    itemOrItemClass = [v5 itemOrItemClass];
    v7 = [(WFContentCoercionSearch *)selfCopy goalTest:itemOrItemClass];

    if (v7)
    {
      break;
    }

    options = [(WFContentCoercionSearch *)selfCopy options];
    goalType = [(WFContentCoercionSearch *)selfCopy goalType];
    v10 = [v5 successorsWithOptions:options goalType:goalType];
    array = [v10 array];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __39__WFContentCoercionSearch_nextPathNode__block_invoke;
    v53[3] = &unk_27834A228;
    v39 = v5;
    log = v5;
    v54 = log;
    v12 = [array if_map:v53];

    [agenda addObjectsFromArray:v12];
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
    v15 = selfCopy;
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
        itemOrItemClass2 = [v17 itemOrItemClass];
        v19 = objc_opt_class();
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        itemOrItemClassPath = [log itemOrItemClassPath];
        v21 = [itemOrItemClassPath countByEnumeratingWithState:&v45 objects:v55 count:16];
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
                objc_enumerationMutation(itemOrItemClassPath);
              }

              v23 |= objc_opt_class() == v19;
            }

            v22 = [itemOrItemClassPath countByEnumeratingWithState:&v45 objects:v55 count:16];
          }

          while (v22);

          v15 = selfCopy;
          if (v23)
          {
            [v40 removeObject:v17];
            goto LABEL_23;
          }
        }

        else
        {
        }

        if ([(WFContentCoercionSearch *)v15 goalTest:itemOrItemClass2]&& [(WFContentCoercionSearch *)v15 isCoercionPathAllowedForNode:v17])
        {
          v26 = getWFContentGraphLogObject();
          agenda = v40;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            startNode = [(WFContentCoercionSearch *)v15 startNode];
            itemOrItemClass3 = [startNode itemOrItemClass];
            goalItemClasses = [(WFContentCoercionSearch *)v15 goalItemClasses];
            typeDescription = goalItemClasses;
            if (!goalItemClasses)
            {
              i = [(WFContentCoercionSearch *)v15 goalType];
              typeDescription = [i typeDescription];
            }

            itemOrItemClassPath2 = [v17 itemOrItemClassPath];
            *buf = 136315906;
            v58 = "[WFContentCoercionSearch nextPathNode]";
            v59 = 2112;
            v60 = itemOrItemClass3;
            v61 = 2112;
            v62 = typeDescription;
            v63 = 2112;
            v64 = itemOrItemClassPath2;
            _os_log_impl(&dword_21E1BD000, v26, OS_LOG_TYPE_INFO, "%s Found coercion path from %@ to %@: %@", buf, 0x2Au);

            if (!goalItemClasses)
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

    agenda = v40;
    v5 = v39;
    goalType2 = v53;
LABEL_26:

    if (![agenda count])
    {
LABEL_27:
      v5 = 0;
      goto LABEL_36;
    }
  }

  if (![(WFContentCoercionSearch *)selfCopy isCoercionPathAllowedForNode:v5])
  {
    goto LABEL_26;
  }

  log = getWFContentGraphLogObject();
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    startNode2 = [(WFContentCoercionSearch *)selfCopy startNode];
    itemOrItemClass4 = [startNode2 itemOrItemClass];
    goalItemClasses2 = [(WFContentCoercionSearch *)selfCopy goalItemClasses];
    typeDescription2 = goalItemClasses2;
    if (!goalItemClasses2)
    {
      goalType2 = [(WFContentCoercionSearch *)selfCopy goalType];
      typeDescription2 = [goalType2 typeDescription];
    }

    itemOrItemClassPath3 = [v5 itemOrItemClassPath];
    *buf = 136315906;
    v58 = "[WFContentCoercionSearch nextPathNode]";
    v59 = 2112;
    v60 = itemOrItemClass4;
    v61 = 2114;
    v62 = typeDescription2;
    v63 = 2112;
    v64 = itemOrItemClassPath3;
    _os_log_impl(&dword_21E1BD000, log, OS_LOG_TYPE_INFO, "%s Found coercion path from %@ to %{public}@: %@", buf, 0x2Au);

    if (!goalItemClasses2)
    {
    }
  }

LABEL_35:

LABEL_36:

  return v5;
}

- (BOOL)goalTest:(id)test
{
  v27 = *MEMORY[0x277D85DE8];
  testCopy = test;
  goalType = [(WFContentCoercionSearch *)self goalType];
  if (goalType)
  {
    v23 = 0uLL;
    v24 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    supportedTypes = [testCopy supportedTypes];
    v7 = [supportedTypes countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(supportedTypes);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        if ([v12 conformsToType:goalType])
        {
          break;
        }

        if ([goalType conformsToType:v12])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([goalType isCoreType])
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
          v8 = [supportedTypes countByEnumeratingWithState:&v21 objects:v26 count:16];
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
    supportedTypes = [(WFContentCoercionSearch *)self goalItemClasses];
    v13 = [supportedTypes countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v13)
    {
      v14 = *v18;
LABEL_19:
      v15 = 0;
      while (1)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(supportedTypes);
        }

        if ([objc_opt_class() isSubclassOfClass:*(*(&v17 + 1) + 8 * v15)])
        {
          goto LABEL_26;
        }

        if (v13 == ++v15)
        {
          v13 = [supportedTypes countByEnumeratingWithState:&v17 objects:v25 count:16];
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

- (BOOL)isCoercionPathAllowedForNode:(id)node
{
  coercionPath = [node coercionPath];
  goalType = [(WFContentCoercionSearch *)self goalType];

  if (goalType)
  {
    v6 = +[WFContentItemRegistry sharedRegistry];
    goalType2 = [(WFContentCoercionSearch *)self goalType];
    v8 = [v6 contentItemClassForType:goalType2];

    if (v8)
    {
      v9 = [coercionPath orderedSetByAddingObject:v8];

      coercionPath = v9;
    }
  }

  options = [(WFContentCoercionSearch *)self options];
  v11 = [options coercionPathIsDisallowed:coercionPath];

  return v11 ^ 1;
}

- (WFContentCoercionSearch)initWithStartNode:(id)node goalItemClasses:(id)classes goalType:(id)type options:(id)options
{
  nodeCopy = node;
  classesCopy = classes;
  typeCopy = type;
  optionsCopy = options;
  v15 = [(WFContentCoercionSearch *)self init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_startNode, node);
    objc_storeStrong(&v16->_goalItemClasses, classes);
    objc_storeStrong(&v16->_goalType, type);
    v17 = [MEMORY[0x277CBEB18] arrayWithObject:nodeCopy];
    agenda = v16->_agenda;
    v16->_agenda = v17;

    objc_storeStrong(&v16->_options, options);
    v19 = v16;
  }

  return v16;
}

@end