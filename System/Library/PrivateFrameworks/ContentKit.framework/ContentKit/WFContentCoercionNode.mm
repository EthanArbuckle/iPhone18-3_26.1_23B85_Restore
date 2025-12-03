@interface WFContentCoercionNode
+ (WFContentCoercionNode)coercionNodeWithItem:(id)item parent:(id)parent;
+ (WFContentCoercionNode)coercionNodeWithItemClass:(Class)class parent:(id)parent;
+ (WFContentCoercionNode)coercionNodeWithItemOrItemClass:(id)class parent:(id)parent;
- (NSOrderedSet)coercionPath;
- (NSOrderedSet)itemOrItemClassPath;
- (WFContentCoercionNode)initWithItemOrItemClass:(id)class parent:(id)parent;
- (id)continueCoercionUsingPathEnumerator:(id)enumerator contentItems:(id)items options:(id)options error:(id *)error;
- (id)description;
- (id)runCoercionSynchronouslyWithOptions:(id)options error:(id *)error;
- (id)successorsWithOptions:(id)options goalType:(id)type;
- (void)continueCoercionUsingPathEnumerator:(id)enumerator contentItems:(id)items options:(id)options error:(id)error completionHandler:(id)handler;
- (void)runCoercionWithOptions:(id)options completionHandler:(id)handler;
@end

@implementation WFContentCoercionNode

- (id)continueCoercionUsingPathEnumerator:(id)enumerator contentItems:(id)items options:(id)options error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  enumeratorCopy = enumerator;
  itemsCopy = items;
  optionsCopy = options;
  nextObject = [enumeratorCopy nextObject];
  v14 = nextObject;
  if (itemsCopy && nextObject)
  {
    selfCopy = self;
    v25 = enumeratorCopy;
    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(itemsCopy, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = itemsCopy;
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v26 + 1) + 8 * i) itemsByCoercingToItemClass:objc_opt_class() options:optionsCopy error:error];
          [v15 addObjectsFromArray:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v18);
    }

    enumeratorCopy = v25;
    v22 = [(WFContentCoercionNode *)selfCopy continueCoercionUsingPathEnumerator:v25 contentItems:v15 options:optionsCopy error:error];
  }

  else
  {
    v22 = itemsCopy;
  }

  return v22;
}

- (id)runCoercionSynchronouslyWithOptions:(id)options error:(id *)error
{
  v13[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  itemOrItemClassPath = [(WFContentCoercionNode *)self itemOrItemClassPath];
  objectEnumerator = [itemOrItemClassPath objectEnumerator];

  nextObject = [objectEnumerator nextObject];
  v13[0] = nextObject;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = [(WFContentCoercionNode *)self continueCoercionUsingPathEnumerator:objectEnumerator contentItems:v10 options:optionsCopy error:error];

  return v11;
}

- (void)continueCoercionUsingPathEnumerator:(id)enumerator contentItems:(id)items options:(id)options error:(id)error completionHandler:(id)handler
{
  enumeratorCopy = enumerator;
  itemsCopy = items;
  optionsCopy = options;
  errorCopy = error;
  handlerCopy = handler;
  nextObject = [enumeratorCopy nextObject];
  v18 = nextObject;
  if (itemsCopy && nextObject && ((v19 = [itemsCopy count], !errorCopy) || v19))
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __106__WFContentCoercionNode_continueCoercionUsingPathEnumerator_contentItems_options_error_completionHandler___block_invoke;
    v24[3] = &unk_27834A458;
    v25 = v18;
    v26 = optionsCopy;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __106__WFContentCoercionNode_continueCoercionUsingPathEnumerator_contentItems_options_error_completionHandler___block_invoke_3;
    v20[3] = &unk_27834A480;
    v20[4] = self;
    v21 = enumeratorCopy;
    v22 = v26;
    v23 = handlerCopy;
    [itemsCopy if_flatMapAsynchronously:v24 completionHandler:v20];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, itemsCopy, errorCopy);
  }
}

void __106__WFContentCoercionNode_continueCoercionUsingPathEnumerator_contentItems_options_error_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a2;
  v13[0] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v9 = *(a1 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __106__WFContentCoercionNode_continueCoercionUsingPathEnumerator_contentItems_options_error_completionHandler___block_invoke_2;
  v11[3] = &unk_27834A430;
  v12 = v6;
  v10 = v6;
  [v7 forceCoerceToItemClasses:v8 options:v9 completionHandler:v11];
}

void __106__WFContentCoercionNode_continueCoercionUsingPathEnumerator_contentItems_options_error_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v8 count];
  if (!v5 || v6)
  {
    v7 = v8;
  }

  else
  {

    v7 = 0;
  }

  v9 = v7;
  [*(a1 + 32) continueCoercionUsingPathEnumerator:*(a1 + 40) contentItems:v7 options:*(a1 + 48) error:v5 completionHandler:*(a1 + 56)];
}

- (void)runCoercionWithOptions:(id)options completionHandler:(id)handler
{
  v12[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  optionsCopy = options;
  itemOrItemClassPath = [(WFContentCoercionNode *)self itemOrItemClassPath];
  objectEnumerator = [itemOrItemClassPath objectEnumerator];

  nextObject = [objectEnumerator nextObject];
  v12[0] = nextObject;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [(WFContentCoercionNode *)self continueCoercionUsingPathEnumerator:objectEnumerator contentItems:v11 options:optionsCopy error:0 completionHandler:handlerCopy];
}

- (NSOrderedSet)coercionPath
{
  parent = [(WFContentCoercionNode *)self parent];

  if (parent)
  {
    parent2 = [(WFContentCoercionNode *)self parent];
    itemOrItemClassPath = [parent2 itemOrItemClassPath];
    itemOrItemClass = [(WFContentCoercionNode *)self itemOrItemClass];
    v7 = [itemOrItemClassPath orderedSetByAddingObject:objc_opt_class()];
  }

  else
  {
    v8 = MEMORY[0x277CBEB70];
    parent2 = [(WFContentCoercionNode *)self itemOrItemClass];
    v7 = [v8 orderedSetWithObject:objc_opt_class()];
  }

  return v7;
}

- (NSOrderedSet)itemOrItemClassPath
{
  parent = [(WFContentCoercionNode *)self parent];

  if (parent)
  {
    parent2 = [(WFContentCoercionNode *)self parent];
    itemOrItemClassPath = [parent2 itemOrItemClassPath];
    itemOrItemClass = [(WFContentCoercionNode *)self itemOrItemClass];
    v7 = [itemOrItemClassPath orderedSetByAddingObject:itemOrItemClass];
  }

  else
  {
    v8 = MEMORY[0x277CBEB70];
    parent2 = [(WFContentCoercionNode *)self itemOrItemClass];
    v7 = [v8 orderedSetWithObject:parent2];
  }

  return v7;
}

- (id)successorsWithOptions:(id)options goalType:(id)type
{
  v29 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  typeCopy = type;
  v8 = objc_opt_new();
  itemOrItemClass = [(WFContentCoercionNode *)self itemOrItemClass];
  supportedItemClasses = [itemOrItemClass supportedItemClasses];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __56__WFContentCoercionNode_successorsWithOptions_goalType___block_invoke;
  v26[3] = &unk_27834A408;
  v11 = typeCopy;
  v27 = v11;
  v12 = [supportedItemClasses sortedArrayUsingComparator:v26];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      v17 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * v17);
        if ([objc_opt_class() supportedItemClassMustBeDeterminedByInstance:{v18, v22}])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [itemOrItemClass canGenerateIntermediaryRepresentationForItemClass:v18])
          {
            v19 = [itemOrItemClass itemsByCoercingToItemClass:v18 options:optionsCopy error:0];
            if ([v19 count])
            {
              [v8 addObjectsFromArray:v19];
            }

            else
            {
              [v8 addObject:v18];
            }
          }
        }

        else
        {
          [v8 addObject:v18];
        }

        ++v17;
      }

      while (v15 != v17);
      v20 = [v13 countByEnumeratingWithState:&v22 objects:v28 count:16];
      v15 = v20;
    }

    while (v20);
  }

  return v8;
}

uint64_t __56__WFContentCoercionNode_successorsWithOptions_goalType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 ownedTypes];
  v6 = [v5 containsObject:*(a1 + 32)];

  v7 = [a3 ownedTypes];
  v8 = [v7 containsObject:*(a1 + 32)];

  if ((v6 ^ 1 | v8))
  {
    return (v6 ^ 1) & v8;
  }

  else
  {
    return -1;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = WFContentCoercionNode;
  v4 = [(WFContentCoercionNode *)&v8 description];
  itemOrItemClass = [(WFContentCoercionNode *)self itemOrItemClass];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, itemOrItemClass];

  return v6;
}

- (WFContentCoercionNode)initWithItemOrItemClass:(id)class parent:(id)parent
{
  classCopy = class;
  parentCopy = parent;
  v9 = [(WFContentCoercionNode *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_itemOrItemClass, class);
    objc_storeStrong(&v10->_parent, parent);
    v11 = v10;
  }

  return v10;
}

+ (WFContentCoercionNode)coercionNodeWithItemOrItemClass:(id)class parent:(id)parent
{
  parentCopy = parent;
  classCopy = class;
  v8 = [[self alloc] initWithItemOrItemClass:classCopy parent:parentCopy];

  return v8;
}

+ (WFContentCoercionNode)coercionNodeWithItemClass:(Class)class parent:(id)parent
{
  parentCopy = parent;
  v7 = [[self alloc] initWithItemOrItemClass:class parent:parentCopy];

  return v7;
}

+ (WFContentCoercionNode)coercionNodeWithItem:(id)item parent:(id)parent
{
  parentCopy = parent;
  itemCopy = item;
  v8 = [[self alloc] initWithItemOrItemClass:itemCopy parent:parentCopy];

  return v8;
}

@end