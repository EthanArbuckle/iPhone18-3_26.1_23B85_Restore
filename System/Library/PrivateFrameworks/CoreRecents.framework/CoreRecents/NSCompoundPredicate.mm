@interface NSCompoundPredicate
- (id)cr_simplifiedPredicateSingleStep;
- (void)cr_addToClause:(id)clause usingOperator:(id)operator bindings:(id)bindings;
- (void)cr_mergeSubcontext:(id)subcontext intoContext:(id)context;
- (void)cr_processWithContext:(id)context;
@end

@implementation NSCompoundPredicate

- (id)cr_simplifiedPredicateSingleStep
{
  selfCopy = self;
  subpredicates = [(NSCompoundPredicate *)self subpredicates];
  v4 = [(NSArray *)subpredicates count];
  compoundPredicateType = [(NSCompoundPredicate *)selfCopy compoundPredicateType];
  if ((compoundPredicateType - 1) < 2)
  {
    if (v4 == 1)
    {
      lastObject = [(NSArray *)subpredicates lastObject];

      return [lastObject cr_simplifiedPredicateSingleStep];
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = [(NSArray *)subpredicates countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (!v9)
    {
      return selfCopy;
    }

    v10 = v9;
    v21 = selfCopy;
    v11 = 0;
    v12 = 0;
    v13 = *v24;
LABEL_14:
    v14 = 0;
    while (1)
    {
      if (*v24 != v13)
      {
        objc_enumerationMutation(subpredicates);
      }

      v15 = *(*(&v23 + 1) + 8 * v14);
      cr_simplifiedPredicateSingleStep = [v15 cr_simplifiedPredicateSingleStep];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [cr_simplifiedPredicateSingleStep compoundPredicateType] == compoundPredicateType)
      {
        subpredicates2 = [cr_simplifiedPredicateSingleStep subpredicates];
        if (subpredicates2)
        {
          break;
        }
      }

      if (!v12)
      {
        if (v15 == cr_simplifiedPredicateSingleStep || (v27 = cr_simplifiedPredicateSingleStep, (v18 = [NSArray arrayWithObjects:&v27 count:1]) == 0))
        {
          v12 = 0;
          goto LABEL_29;
        }

LABEL_26:
        v19 = [[(NSArray *)subpredicates subarrayWithRange:0 mutableCopy];
        v12 = v19;
LABEL_27:
        [v19 addObjectsFromArray:v18];
        goto LABEL_29;
      }

      [v12 addObject:cr_simplifiedPredicateSingleStep];
LABEL_29:
      ++v11;
      if (v10 == ++v14)
      {
        v10 = [(NSArray *)subpredicates countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (!v10)
        {
          selfCopy = v21;
          if (v12)
          {
            v20 = [[NSCompoundPredicate alloc] initWithType:compoundPredicateType subpredicates:v12];

            return v20;
          }

          return selfCopy;
        }

        goto LABEL_14;
      }
    }

    v18 = subpredicates2;
    if (!v12)
    {
      goto LABEL_26;
    }

    v19 = v12;
    goto LABEL_27;
  }

  if (compoundPredicateType)
  {
    sub_10001914C();
  }

  if (v4 != 1)
  {
    sub_100019120();
  }

  lastObject2 = [(NSArray *)subpredicates lastObject];
  cr_simplifiedPredicateSingleStep2 = [lastObject2 cr_simplifiedPredicateSingleStep];
  if (cr_simplifiedPredicateSingleStep2 == lastObject2)
  {
    return selfCopy;
  }

  return [NSCompoundPredicate notPredicateWithSubpredicate:cr_simplifiedPredicateSingleStep2];
}

- (void)cr_processWithContext:(id)context
{
  if ([(NSCompoundPredicate *)self compoundPredicateType])
  {
    v5 = objc_alloc_init(_ClauseGenerationContext);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    subpredicates = [(NSCompoundPredicate *)self subpredicates];
    v7 = [(NSArray *)subpredicates countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(subpredicates);
          }

          [*(*(&v11 + 1) + 8 * i) cr_processWithContext:v5];
        }

        v8 = [(NSArray *)subpredicates countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    [(NSCompoundPredicate *)self cr_mergeSubcontext:v5 intoContext:context];
  }

  else
  {

    [context setHadError:1];
  }
}

- (void)cr_mergeSubcontext:(id)subcontext intoContext:(id)context
{
  [context setHadError:{objc_msgSend(subcontext, "hadError") | objc_msgSend(context, "hadError")}];
  [context setWantsGroups:{objc_msgSend(subcontext, "wantsGroups") | objc_msgSend(context, "wantsGroups")}];
  if (([context hadError] & 1) == 0)
  {
    [objc_msgSend(context "kindPredicates")];
    [subcontext setKindPredicates:0];
    compoundPredicateType = [(NSCompoundPredicate *)self compoundPredicateType];
    v8 = [objc_msgSend(subcontext "predicates")];
    if (v8)
    {
      if (v8 == 1)
      {
        predicates = [context predicates];
        v10 = [objc_msgSend(subcontext "predicates")];
      }

      else
      {
        predicates = [context predicates];
        v10 = [[NSCompoundPredicate alloc] initWithType:compoundPredicateType subpredicates:{objc_msgSend(subcontext, "predicates")}];
      }

      [predicates addObject:v10];
    }
  }
}

- (void)cr_addToClause:(id)clause usingOperator:(id)operator bindings:(id)bindings
{
  subpredicates = [(NSCompoundPredicate *)self subpredicates];
  if ([(NSArray *)subpredicates count])
  {
    if ([(NSCompoundPredicate *)self compoundPredicateType]== 1)
    {
      v10 = @"\n AND ";
    }

    else
    {
      v10 = @"\n OR ";
    }

    objc_msgSend(clause, "appendFormat:", @"%@("), operator;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = [(NSArray *)subpredicates countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v18;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(subpredicates);
          }

          if (v13)
          {
            v16 = v10;
          }

          else
          {
            v16 = &stru_10002DA70;
          }

          [*(*(&v17 + 1) + 8 * i) cr_addToClause:clause usingOperator:v16 bindings:bindings];
          v13 = 1;
        }

        v12 = [(NSArray *)subpredicates countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    [clause appendString:@""]);
  }
}

@end