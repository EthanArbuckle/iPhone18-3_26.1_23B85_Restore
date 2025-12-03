@interface WFContentQuery
- (BOOL)canEvaluateObjects:(id)objects withPropertySubstitutor:(id)substitutor;
- (NSSet)containedProperties;
- (WFContentQuery)initWithPredicate:(id)predicate;
- (_WFContentSlice)slice;
- (id)description;
- (void)runWithObjects:(id)objects propertySubstitutor:(id)substitutor completionHandler:(id)handler;
@end

@implementation WFContentQuery

- (_WFContentSlice)slice
{
  endIndex = self->_slice.endIndex;
  startIndex = self->_slice.startIndex;
  result.endIndex = endIndex;
  result.startIndex = startIndex;
  return result;
}

- (BOOL)canEvaluateObjects:(id)objects withPropertySubstitutor:(id)substitutor
{
  substitutorCopy = substitutor;
  objectsCopy = objects;
  containedProperties = [(WFContentQuery *)self containedProperties];
  HaveProperties = WFContentObjectsHaveProperties(objectsCopy, containedProperties, substitutorCopy);

  return HaveProperties;
}

- (NSSet)containedProperties
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  predicate = [(WFContentQuery *)self predicate];

  if (predicate)
  {
    predicate2 = [(WFContentQuery *)self predicate];
    containedProperties = [predicate2 containedProperties];
    [v3 unionSet:containedProperties];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  sortDescriptors = [(WFContentQuery *)self sortDescriptors];
  v8 = [sortDescriptors countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(sortDescriptors);
        }

        containedProperties2 = [*(*(&v14 + 1) + 8 * i) containedProperties];
        [v3 unionSet:containedProperties2];
      }

      v9 = [sortDescriptors countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v3;
}

- (void)runWithObjects:(id)objects propertySubstitutor:(id)substitutor completionHandler:(id)handler
{
  objectsCopy = objects;
  substitutorCopy = substitutor;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (handlerCopy)
  {
    if (objectsCopy)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __71__WFContentQuery_runWithObjects_propertySubstitutor_completionHandler___block_invoke;
      v15[3] = &unk_2783485E8;
      v15[4] = self;
      v16 = substitutorCopy;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __71__WFContentQuery_runWithObjects_propertySubstitutor_completionHandler___block_invoke_3;
      v12[3] = &unk_278348610;
      v12[4] = self;
      v13 = v11;
      v14 = v16;
      [objectsCopy if_mapAsynchronously:v15 completionHandler:v12];
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }
  }
}

void __71__WFContentQuery_runWithObjects_propertySubstitutor_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) predicate];
  v9 = *(a1 + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__WFContentQuery_runWithObjects_propertySubstitutor_completionHandler___block_invoke_2;
  v12[3] = &unk_2783485C0;
  v13 = v6;
  v14 = v7;
  v10 = v6;
  v11 = v7;
  [v8 evaluateWithObject:v10 propertySubstitutor:v9 completionHandler:v12];
}

void __71__WFContentQuery_runWithObjects_propertySubstitutor_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) sortDescriptors];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __71__WFContentQuery_runWithObjects_propertySubstitutor_completionHandler___block_invoke_4;
    v7[3] = &unk_278349A90;
    v5 = *(a1 + 48);
    v6 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v6;
    [v3 sortedArrayUsingContentSortDescriptors:v4 propertySubstitutor:v5 completionHandler:v7];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __71__WFContentQuery_runWithObjects_propertySubstitutor_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 slice];
  v8 = WFIndexSetFromContentSlice(v5, v6, [v4 count]);
  v7 = [v4 objectsAtIndexes:v8];

  (*(v2 + 16))(v2, v7, 0);
}

uint64_t __71__WFContentQuery_runWithObjects_propertySubstitutor_completionHandler___block_invoke_2(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 16))(v3, v4, 0);
}

- (id)description
{
  v17 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  predicate = [(WFContentQuery *)self predicate];
  sortDescriptors = [(WFContentQuery *)self sortDescriptors];
  slice = [(WFContentQuery *)self slice];
  v8 = slice;
  v10 = v9;
  v11 = MEMORY[0x277CCACA8];
  if (slice == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = &stru_282F53518;
  }

  else
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", slice];
  }

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [v11 stringWithFormat:@"[%@:%@]", v12, &stru_282F53518];
  }

  else
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v10];
    v13 = [v11 stringWithFormat:@"[%@:%@]", v12, v14];
  }

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
  }

  v15 = [v17 stringWithFormat:@"<%@: %p, predicate: %@, sortDescriptors: %@, slice: %@>", v4, self, predicate, sortDescriptors, v13];

  return v15;
}

- (WFContentQuery)initWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v10.receiver = self;
  v10.super_class = WFContentQuery;
  v5 = [(WFContentQuery *)&v10 init];
  if (v5)
  {
    if (predicateCopy)
    {
      v6 = predicateCopy;
    }

    else
    {
      v6 = +[WFContentPredicate truePredicate];
    }

    predicate = v5->_predicate;
    v5->_predicate = v6;

    v5->_slice = WFContentSliceAll;
    v8 = v5;
  }

  return v5;
}

@end