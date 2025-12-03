@interface HFConditionCollection
+ (id)_findBestConditionMatchForPredicates:(id)predicates;
+ (id)_findBestMatchingConditionsForPredicates:(id)predicates;
+ (id)_flattenedSubpredicatesForAndPredicate:(id)predicate;
+ (id)_singleConditionForPredicate:(id)predicate knownConditionsOnly:(BOOL)only;
+ (id)conditionCollectionForPredicate:(id)predicate;
- (HFConditionCollection)init;
- (HFConditionCollection)initWithConditions:(id)conditions;
- (NSPredicate)predicate;
- (void)addCondition:(id)condition;
- (void)removeCondition:(id)condition;
@end

@implementation HFConditionCollection

+ (id)conditionCollectionForPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = [MEMORY[0x277CBEB98] set];
  v6 = [self _singleConditionForPredicate:predicateCopy knownConditionsOnly:0];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB98] setWithObject:v6];

    v5 = v7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [predicateCopy compoundPredicateType] == 1)
    {
      v8 = [self _flattenedSubpredicatesForAndPredicate:predicateCopy];
      v9 = MEMORY[0x277CBEB98];
      v10 = [self _findBestMatchingConditionsForPredicates:v8];
      v11 = [v9 setWithArray:v10];

      v5 = v11;
    }
  }

  v12 = objc_alloc(objc_opt_class());
  allObjects = [v5 allObjects];
  v14 = [v12 initWithConditions:allObjects];

  return v14;
}

+ (id)_flattenedSubpredicatesForAndPredicate:(id)predicate
{
  subpredicates = [predicate subpredicates];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HFConditionCollection__flattenedSubpredicatesForAndPredicate___block_invoke;
  v7[3] = &__block_descriptor_40_e30___NSArray_16__0__NSPredicate_8l;
  v7[4] = self;
  v5 = [subpredicates na_flatMap:v7];

  return v5;
}

id __64__HFConditionCollection__flattenedSubpredicatesForAndPredicate___block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6 && [v6 compoundPredicateType] == 1)
  {
    v7 = [*(a1 + 32) _flattenedSubpredicatesForAndPredicate:v6];
  }

  else
  {
    v11[0] = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  }

  v8 = v7;

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)_findBestMatchingConditionsForPredicates:(id)predicates
{
  v4 = [predicates mutableCopy];
  v5 = objc_opt_new();
  while ([v4 count])
  {
    v6 = [self _findBestConditionMatchForPredicates:v4];
    matchedCondition = [v6 matchedCondition];
    [v5 addObject:matchedCondition];

    matchedPredicates = [v6 matchedPredicates];
    [v4 removeObjectsInArray:matchedPredicates];
  }

  return v5;
}

+ (id)_findBestConditionMatchForPredicates:(id)predicates
{
  predicatesCopy = predicates;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __62__HFConditionCollection__findBestConditionMatchForPredicates___block_invoke;
  v19[3] = &unk_277DF39A8;
  v5 = predicatesCopy;
  v20 = v5;
  selfCopy = self;
  v6 = __62__HFConditionCollection__findBestConditionMatchForPredicates___block_invoke(v19);
  if (v6)
  {
    v7 = [_HFCompoundConditionMatch matchWithCondition:v6 matchedPredicates:v5];
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__1;
    v17 = __Block_byref_object_dispose__1;
    v18 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62__HFConditionCollection__findBestConditionMatchForPredicates___block_invoke_25;
    v9[3] = &unk_277DF39D0;
    v11 = &v13;
    selfCopy2 = self;
    v10 = v5;
    [v10 enumerateObjectsWithOptions:2 usingBlock:v9];
    v7 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  return v7;
}

id __62__HFConditionCollection__findBestConditionMatchForPredicates___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count] < 2)
  {
    v8 = *(a1 + 40);
    v9 = objc_opt_class();
    v3 = [*(a1 + 32) firstObject];
    v5 = v9;
    v6 = v3;
    v7 = 0;
  }

  else
  {
    v2 = [*(a1 + 32) count] < 8;
    v3 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:*(a1 + 32)];
    v4 = *(a1 + 40);
    v5 = objc_opt_class();
    v6 = v3;
    v7 = v2;
  }

  v10 = [v5 _singleConditionForPredicate:v6 knownConditionsOnly:v7];

  return v10;
}

void __62__HFConditionCollection__findBestConditionMatchForPredicates___block_invoke_25(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = [*(a1 + 32) mutableCopy];
  [v12 removeObjectAtIndex:a3];
  v5 = [*(a1 + 48) _findBestConditionMatchForPredicates:v12];
  v6 = v5;
  v7 = *(*(a1 + 40) + 8);
  if (*(v7 + 40))
  {
    v8 = [v5 matchedPredicates];
    v9 = [v8 count];
    v10 = [*(*(*(a1 + 40) + 8) + 40) matchedPredicates];
    v11 = [v10 count];

    if (v9 <= v11)
    {
      goto LABEL_5;
    }

    v7 = *(*(a1 + 40) + 8);
  }

  objc_storeStrong((v7 + 40), v6);
LABEL_5:
}

+ (id)_singleConditionForPredicate:(id)predicate knownConditionsOnly:(BOOL)only
{
  v21 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  if (_MergedGlobals_214 != -1)
  {
    dispatch_once(&_MergedGlobals_214, &__block_literal_global_30_0);
  }

  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = qword_280E02AF0;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = objc_alloc(*(*(&v16 + 1) + 8 * i));
        v12 = [v11 initWithPredicate:{predicateCopy, v16}];
        if (v12)
        {
          v13 = v12;

          goto LABEL_15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  if (only)
  {
    v13 = 0;
  }

  else
  {
    v13 = [(HFCondition *)[HFUnknownCondition alloc] initWithPredicate:predicateCopy];
  }

LABEL_15:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __74__HFConditionCollection__singleConditionForPredicate_knownConditionsOnly___block_invoke_2()
{
  v3[7] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v3[5] = objc_opt_class();
  v3[6] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:7];
  v1 = qword_280E02AF0;
  qword_280E02AF0 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (HFConditionCollection)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithConditions_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFConditionCollection.m" lineNumber:184 description:{@"%s is unavailable; use %@ instead", "-[HFConditionCollection init]", v5}];

  return 0;
}

- (HFConditionCollection)initWithConditions:(id)conditions
{
  conditionsCopy = conditions;
  v9.receiver = self;
  v9.super_class = HFConditionCollection;
  v6 = [(HFConditionCollection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_conditions, conditions);
  }

  return v7;
}

- (void)addCondition:(id)condition
{
  conditionCopy = condition;
  conditions = [(HFConditionCollection *)self conditions];
  v5 = [conditions arrayByAddingObject:conditionCopy];

  [(HFConditionCollection *)self setConditions:v5];
}

- (void)removeCondition:(id)condition
{
  conditionCopy = condition;
  conditions = [(HFConditionCollection *)self conditions];
  v7 = [conditions mutableCopy];

  [v7 removeObject:conditionCopy];
  v6 = [v7 copy];
  [(HFConditionCollection *)self setConditions:v6];
}

- (NSPredicate)predicate
{
  conditions = [(HFConditionCollection *)self conditions];
  v3 = [conditions na_map:&__block_literal_global_48];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__HFConditionCollection_predicate__block_invoke_2;
  v7[3] = &unk_277DF3A18;
  v8 = v3;
  v4 = v3;
  v5 = __34__HFConditionCollection_predicate__block_invoke_2(v7);

  return v5;
}

id __34__HFConditionCollection_predicate__block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) count] < 2)
  {
    if ([*(a1 + 32) count] == 1)
    {
      v2 = [*(a1 + 32) firstObject];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:*(a1 + 32)];
  }

  return v2;
}

@end