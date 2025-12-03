@interface WFContentLibraryANDFiltering
+ (void)getItemsMatchingComparisonPredicates:(id)predicates resultHandler:(id)handler;
+ (void)getItemsMatchingPredicate:(id)predicate resultHandler:(id)handler;
+ (void)performCustomFilteringUsingORComparisonPredicates:(id)predicates resultHandler:(id)handler;
@end

@implementation WFContentLibraryANDFiltering

+ (void)getItemsMatchingComparisonPredicates:(id)predicates resultHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__WFContentLibraryANDFiltering_getItemsMatchingComparisonPredicates_resultHandler___block_invoke;
  v9[3] = &unk_2783483B8;
  v10 = handlerCopy;
  selfCopy = self;
  v12 = a2;
  v8 = handlerCopy;
  [self performCustomFilteringUsingComparisonPredicates:predicates resultHandler:v9];
}

void __83__WFContentLibraryANDFiltering_getItemsMatchingComparisonPredicates_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v13 = *(*(a1 + 32) + 16);
LABEL_6:
    v13();
    goto LABEL_7;
  }

  if (![v6 count])
  {
    v13 = *(*(a1 + 32) + 16);
    goto LABEL_6;
  }

  v8 = [v5 if_map:&__block_literal_global_18245];
  v9 = [WFContentQuery alloc];
  v10 = [v7 allObjects];
  v11 = [WFContentCompoundPredicate andPredicateWithSubpredicates:v10];
  v12 = [(WFContentQuery *)v9 initWithPredicate:v11];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__WFContentLibraryANDFiltering_getItemsMatchingComparisonPredicates_resultHandler___block_invoke_3;
  v14[3] = &unk_278348390;
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  [(WFContentQuery *)v12 runWithObjects:v8 completionHandler:v14];

LABEL_7:
}

void __83__WFContentLibraryANDFiltering_getItemsMatchingComparisonPredicates_resultHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __83__WFContentLibraryANDFiltering_getItemsMatchingComparisonPredicates_resultHandler___block_invoke_4;
  v4[3] = &__block_descriptor_48_e26__24__0__WFContentItem_8Q16l;
  v5 = *(a1 + 40);
  v3 = [a2 if_map:v4];
  (*(v2 + 16))(v2, v3);
}

id __83__WFContentLibraryANDFiltering_getItemsMatchingComparisonPredicates_resultHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 objectForClass:{objc_msgSend(v3, "objectClass")}];

  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"WFContentLibraryFiltering.m" lineNumber:97 description:@"WFContentLibraryFiltering: item did not have an object of the expected class"];
  }

  return v5;
}

+ (void)performCustomFilteringUsingORComparisonPredicates:(id)predicates resultHandler:(id)handler
{
  predicatesCopy = predicates;
  handlerCopy = handler;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__18260;
  v13[4] = __Block_byref_object_dispose__18261;
  v14 = objc_opt_new();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __96__WFContentLibraryANDFiltering_performCustomFilteringUsingORComparisonPredicates_resultHandler___block_invoke;
  v12[3] = &unk_278348320;
  v12[4] = v13;
  v12[5] = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __96__WFContentLibraryANDFiltering_performCustomFilteringUsingORComparisonPredicates_resultHandler___block_invoke_3;
  v9[3] = &unk_278348348;
  v8 = handlerCopy;
  v10 = v8;
  v11 = v13;
  [predicatesCopy if_enumerateAsynchronouslyInSequence:v12 completionHandler:v9];

  _Block_object_dispose(v13, 8);
}

void __96__WFContentLibraryANDFiltering_performCustomFilteringUsingORComparisonPredicates_resultHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __96__WFContentLibraryANDFiltering_performCustomFilteringUsingORComparisonPredicates_resultHandler___block_invoke_2;
  v11[3] = &unk_2783482F8;
  v9 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = a5;
  v12 = v8;
  v10 = v8;
  [v9 getItemsMatchingPredicate:a2 resultHandler:v11];
}

void __96__WFContentLibraryANDFiltering_performCustomFilteringUsingORComparisonPredicates_resultHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(*(a1 + 40) + 8) + 40) array];
  (*(v1 + 16))(v1, v2);
}

uint64_t __96__WFContentLibraryANDFiltering_performCustomFilteringUsingORComparisonPredicates_resultHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:a2];
  }

  else
  {
    **(a1 + 48) = 1;
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

+ (void)getItemsMatchingPredicate:(id)predicate resultHandler:(id)handler
{
  v11[1] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  handlerCopy = handler;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_17:
      handlerCopy[2](handlerCopy, 0);
      goto LABEL_18;
    }

    v8 = predicateCopy;
    subpredicates = [v8 subpredicates];
    if ([subpredicates count])
    {
      if ([v8 compoundPredicateType] == 1)
      {
        if ([subpredicates count] == 1)
        {
          firstObject = [subpredicates firstObject];
          [self getItemsMatchingPredicate:firstObject resultHandler:handlerCopy];
LABEL_13:

          goto LABEL_14;
        }

        if ([subpredicates count] >= 2)
        {
          firstObject = WFCollapseANDCompoundPredicates(subpredicates);
          [self getItemsMatchingComparisonPredicates:firstObject resultHandler:handlerCopy];
          goto LABEL_13;
        }

        goto LABEL_16;
      }

      if ([v8 compoundPredicateType] != 2)
      {
LABEL_16:

        goto LABEL_17;
      }

      [self performCustomFilteringUsingORComparisonPredicates:subpredicates resultHandler:handlerCopy];
    }

    else
    {
      [self getItemsMatchingComparisonPredicates:MEMORY[0x277CBEBF8] resultHandler:handlerCopy];
    }

LABEL_14:

    goto LABEL_15;
  }

  v11[0] = predicateCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [self getItemsMatchingComparisonPredicates:v8 resultHandler:handlerCopy];
LABEL_15:

LABEL_18:
}

@end