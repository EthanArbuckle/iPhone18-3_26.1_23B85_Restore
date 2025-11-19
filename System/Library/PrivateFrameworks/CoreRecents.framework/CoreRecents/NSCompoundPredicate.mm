@interface NSCompoundPredicate
- (id)cr_simplifiedPredicateSingleStep;
- (void)cr_addToClause:(id)a3 usingOperator:(id)a4 bindings:(id)a5;
- (void)cr_mergeSubcontext:(id)a3 intoContext:(id)a4;
- (void)cr_processWithContext:(id)a3;
@end

@implementation NSCompoundPredicate

- (id)cr_simplifiedPredicateSingleStep
{
  v2 = self;
  v3 = [(NSCompoundPredicate *)self subpredicates];
  v4 = [(NSArray *)v3 count];
  v22 = [(NSCompoundPredicate *)v2 compoundPredicateType];
  if ((v22 - 1) < 2)
  {
    if (v4 == 1)
    {
      v5 = [(NSArray *)v3 lastObject];

      return [v5 cr_simplifiedPredicateSingleStep];
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = [(NSArray *)v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (!v9)
    {
      return v2;
    }

    v10 = v9;
    v21 = v2;
    v11 = 0;
    v12 = 0;
    v13 = *v24;
LABEL_14:
    v14 = 0;
    while (1)
    {
      if (*v24 != v13)
      {
        objc_enumerationMutation(v3);
      }

      v15 = *(*(&v23 + 1) + 8 * v14);
      v16 = [v15 cr_simplifiedPredicateSingleStep];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v16 compoundPredicateType] == v22)
      {
        v17 = [v16 subpredicates];
        if (v17)
        {
          break;
        }
      }

      if (!v12)
      {
        if (v15 == v16 || (v27 = v16, (v18 = [NSArray arrayWithObjects:&v27 count:1]) == 0))
        {
          v12 = 0;
          goto LABEL_29;
        }

LABEL_26:
        v19 = [[(NSArray *)v3 subarrayWithRange:0 mutableCopy];
        v12 = v19;
LABEL_27:
        [v19 addObjectsFromArray:v18];
        goto LABEL_29;
      }

      [v12 addObject:v16];
LABEL_29:
      ++v11;
      if (v10 == ++v14)
      {
        v10 = [(NSArray *)v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (!v10)
        {
          v2 = v21;
          if (v12)
          {
            v20 = [[NSCompoundPredicate alloc] initWithType:v22 subpredicates:v12];

            return v20;
          }

          return v2;
        }

        goto LABEL_14;
      }
    }

    v18 = v17;
    if (!v12)
    {
      goto LABEL_26;
    }

    v19 = v12;
    goto LABEL_27;
  }

  if (v22)
  {
    sub_10001914C();
  }

  if (v4 != 1)
  {
    sub_100019120();
  }

  v7 = [(NSArray *)v3 lastObject];
  v8 = [v7 cr_simplifiedPredicateSingleStep];
  if (v8 == v7)
  {
    return v2;
  }

  return [NSCompoundPredicate notPredicateWithSubpredicate:v8];
}

- (void)cr_processWithContext:(id)a3
{
  if ([(NSCompoundPredicate *)self compoundPredicateType])
  {
    v5 = objc_alloc_init(_ClauseGenerationContext);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [(NSCompoundPredicate *)self subpredicates];
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * i) cr_processWithContext:v5];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    [(NSCompoundPredicate *)self cr_mergeSubcontext:v5 intoContext:a3];
  }

  else
  {

    [a3 setHadError:1];
  }
}

- (void)cr_mergeSubcontext:(id)a3 intoContext:(id)a4
{
  [a4 setHadError:{objc_msgSend(a3, "hadError") | objc_msgSend(a4, "hadError")}];
  [a4 setWantsGroups:{objc_msgSend(a3, "wantsGroups") | objc_msgSend(a4, "wantsGroups")}];
  if (([a4 hadError] & 1) == 0)
  {
    [objc_msgSend(a4 "kindPredicates")];
    [a3 setKindPredicates:0];
    v7 = [(NSCompoundPredicate *)self compoundPredicateType];
    v8 = [objc_msgSend(a3 "predicates")];
    if (v8)
    {
      if (v8 == 1)
      {
        v9 = [a4 predicates];
        v10 = [objc_msgSend(a3 "predicates")];
      }

      else
      {
        v9 = [a4 predicates];
        v10 = [[NSCompoundPredicate alloc] initWithType:v7 subpredicates:{objc_msgSend(a3, "predicates")}];
      }

      [v9 addObject:v10];
    }
  }
}

- (void)cr_addToClause:(id)a3 usingOperator:(id)a4 bindings:(id)a5
{
  v9 = [(NSCompoundPredicate *)self subpredicates];
  if ([(NSArray *)v9 count])
  {
    if ([(NSCompoundPredicate *)self compoundPredicateType]== 1)
    {
      v10 = @"\n AND ";
    }

    else
    {
      v10 = @"\n OR ";
    }

    objc_msgSend(a3, "appendFormat:", @"%@("), a4;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v9);
          }

          if (v13)
          {
            v16 = v10;
          }

          else
          {
            v16 = &stru_10002DA70;
          }

          [*(*(&v17 + 1) + 8 * i) cr_addToClause:a3 usingOperator:v16 bindings:a5];
          v13 = 1;
        }

        v12 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    [a3 appendString:@""]);
  }
}

@end