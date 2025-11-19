@interface WFContentCoercionNode
+ (WFContentCoercionNode)coercionNodeWithItem:(id)a3 parent:(id)a4;
+ (WFContentCoercionNode)coercionNodeWithItemClass:(Class)a3 parent:(id)a4;
+ (WFContentCoercionNode)coercionNodeWithItemOrItemClass:(id)a3 parent:(id)a4;
- (NSOrderedSet)coercionPath;
- (NSOrderedSet)itemOrItemClassPath;
- (WFContentCoercionNode)initWithItemOrItemClass:(id)a3 parent:(id)a4;
- (id)continueCoercionUsingPathEnumerator:(id)a3 contentItems:(id)a4 options:(id)a5 error:(id *)a6;
- (id)description;
- (id)runCoercionSynchronouslyWithOptions:(id)a3 error:(id *)a4;
- (id)successorsWithOptions:(id)a3 goalType:(id)a4;
- (void)continueCoercionUsingPathEnumerator:(id)a3 contentItems:(id)a4 options:(id)a5 error:(id)a6 completionHandler:(id)a7;
- (void)runCoercionWithOptions:(id)a3 completionHandler:(id)a4;
@end

@implementation WFContentCoercionNode

- (id)continueCoercionUsingPathEnumerator:(id)a3 contentItems:(id)a4 options:(id)a5 error:(id *)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 nextObject];
  v14 = v13;
  if (v11 && v13)
  {
    v24 = self;
    v25 = v10;
    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v11, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = v11;
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

          v21 = [*(*(&v26 + 1) + 8 * i) itemsByCoercingToItemClass:objc_opt_class() options:v12 error:a6];
          [v15 addObjectsFromArray:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v18);
    }

    v10 = v25;
    v22 = [(WFContentCoercionNode *)v24 continueCoercionUsingPathEnumerator:v25 contentItems:v15 options:v12 error:a6];
  }

  else
  {
    v22 = v11;
  }

  return v22;
}

- (id)runCoercionSynchronouslyWithOptions:(id)a3 error:(id *)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(WFContentCoercionNode *)self itemOrItemClassPath];
  v8 = [v7 objectEnumerator];

  v9 = [v8 nextObject];
  v13[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = [(WFContentCoercionNode *)self continueCoercionUsingPathEnumerator:v8 contentItems:v10 options:v6 error:a4];

  return v11;
}

- (void)continueCoercionUsingPathEnumerator:(id)a3 contentItems:(id)a4 options:(id)a5 error:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v12 nextObject];
  v18 = v17;
  if (v13 && v17 && ((v19 = [v13 count], !v15) || v19))
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __106__WFContentCoercionNode_continueCoercionUsingPathEnumerator_contentItems_options_error_completionHandler___block_invoke;
    v24[3] = &unk_27834A458;
    v25 = v18;
    v26 = v14;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __106__WFContentCoercionNode_continueCoercionUsingPathEnumerator_contentItems_options_error_completionHandler___block_invoke_3;
    v20[3] = &unk_27834A480;
    v20[4] = self;
    v21 = v12;
    v22 = v26;
    v23 = v16;
    [v13 if_flatMapAsynchronously:v24 completionHandler:v20];
  }

  else
  {
    (*(v16 + 2))(v16, v13, v15);
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

- (void)runCoercionWithOptions:(id)a3 completionHandler:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(WFContentCoercionNode *)self itemOrItemClassPath];
  v9 = [v8 objectEnumerator];

  v10 = [v9 nextObject];
  v12[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [(WFContentCoercionNode *)self continueCoercionUsingPathEnumerator:v9 contentItems:v11 options:v7 error:0 completionHandler:v6];
}

- (NSOrderedSet)coercionPath
{
  v3 = [(WFContentCoercionNode *)self parent];

  if (v3)
  {
    v4 = [(WFContentCoercionNode *)self parent];
    v5 = [v4 itemOrItemClassPath];
    v6 = [(WFContentCoercionNode *)self itemOrItemClass];
    v7 = [v5 orderedSetByAddingObject:objc_opt_class()];
  }

  else
  {
    v8 = MEMORY[0x277CBEB70];
    v4 = [(WFContentCoercionNode *)self itemOrItemClass];
    v7 = [v8 orderedSetWithObject:objc_opt_class()];
  }

  return v7;
}

- (NSOrderedSet)itemOrItemClassPath
{
  v3 = [(WFContentCoercionNode *)self parent];

  if (v3)
  {
    v4 = [(WFContentCoercionNode *)self parent];
    v5 = [v4 itemOrItemClassPath];
    v6 = [(WFContentCoercionNode *)self itemOrItemClass];
    v7 = [v5 orderedSetByAddingObject:v6];
  }

  else
  {
    v8 = MEMORY[0x277CBEB70];
    v4 = [(WFContentCoercionNode *)self itemOrItemClass];
    v7 = [v8 orderedSetWithObject:v4];
  }

  return v7;
}

- (id)successorsWithOptions:(id)a3 goalType:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [(WFContentCoercionNode *)self itemOrItemClass];
  v10 = [v9 supportedItemClasses];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __56__WFContentCoercionNode_successorsWithOptions_goalType___block_invoke;
  v26[3] = &unk_27834A408;
  v11 = v7;
  v27 = v11;
  v12 = [v10 sortedArrayUsingComparator:v26];

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
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 canGenerateIntermediaryRepresentationForItemClass:v18])
          {
            v19 = [v9 itemsByCoercingToItemClass:v18 options:v6 error:0];
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
  v5 = [(WFContentCoercionNode *)self itemOrItemClass];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, v5];

  return v6;
}

- (WFContentCoercionNode)initWithItemOrItemClass:(id)a3 parent:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(WFContentCoercionNode *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_itemOrItemClass, a3);
    objc_storeStrong(&v10->_parent, a4);
    v11 = v10;
  }

  return v10;
}

+ (WFContentCoercionNode)coercionNodeWithItemOrItemClass:(id)a3 parent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithItemOrItemClass:v7 parent:v6];

  return v8;
}

+ (WFContentCoercionNode)coercionNodeWithItemClass:(Class)a3 parent:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithItemOrItemClass:a3 parent:v6];

  return v7;
}

+ (WFContentCoercionNode)coercionNodeWithItem:(id)a3 parent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithItemOrItemClass:v7 parent:v6];

  return v8;
}

@end