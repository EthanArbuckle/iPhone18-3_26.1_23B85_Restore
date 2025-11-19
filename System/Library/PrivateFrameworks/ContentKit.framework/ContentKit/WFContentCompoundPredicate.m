@interface WFContentCompoundPredicate
+ (id)andPredicateWithSubpredicates:(id)a3;
+ (id)notPredicateWithSubpredicate:(id)a3;
+ (id)orPredicateWithSubpredicates:(id)a3;
- (NSSet)containedProperties;
- (WFContentCompoundPredicate)initWithType:(unint64_t)a3 subpredicates:(id)a4;
- (id)description;
- (void)evaluateWithObject:(id)a3 propertySubstitutor:(id)a4 completionHandler:(id)a5;
@end

@implementation WFContentCompoundPredicate

- (NSSet)containedProperties
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(WFContentCompoundPredicate *)self subpredicates];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) containedProperties];
        [v3 unionSet:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)evaluateWithObject:(id)a3 propertySubstitutor:(id)a4 completionHandler:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v17 = a4;
  v8 = a5;
  if (v8)
  {
    v9 = dispatch_group_create();
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x3032000000;
    v31[3] = __Block_byref_object_copy__11243;
    v31[4] = __Block_byref_object_dispose__11244;
    v32 = 0;
    v10 = objc_opt_new();
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = [(WFContentCompoundPredicate *)self subpredicates];
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v12)
    {
      v13 = *v28;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          dispatch_group_enter(v9);
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __87__WFContentCompoundPredicate_evaluateWithObject_propertySubstitutor_completionHandler___block_invoke;
          v22[3] = &unk_278346F50;
          v23 = v10;
          v24 = self;
          v26 = v31;
          v25 = v9;
          [v15 evaluateWithObject:v18 propertySubstitutor:v17 completionHandler:v22];
        }

        v12 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v12);
    }

    v16 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__WFContentCompoundPredicate_evaluateWithObject_propertySubstitutor_completionHandler___block_invoke_2;
    block[3] = &unk_278346F78;
    v20 = v8;
    v21 = v31;
    dispatch_group_notify(v9, v16, block);

    _Block_object_dispose(v31, 8);
  }
}

void __87__WFContentCompoundPredicate_evaluateWithObject_propertySubstitutor_completionHandler___block_invoke(uint64_t a1, unsigned int a2)
{
  [*(a1 + 32) lock];
  v4 = ([*(a1 + 40) compoundPredicateType] == 0) ^ a2;
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v5 = [*(a1 + 40) compoundPredicateType];
    if (v5 == 1)
    {
      v6 = MEMORY[0x277CCABB0];
      v7 = v4 & [*(*(*(a1 + 56) + 8) + 40) BOOLValue];
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_9;
      }

      v6 = MEMORY[0x277CCABB0];
      v7 = v4 | [*(*(*(a1 + 56) + 8) + 40) BOOLValue];
    }

    v8 = [v6 numberWithInt:v7];
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  }

  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

LABEL_9:
  [*(a1 + 32) unlock];
  v11 = *(a1 + 48);

  dispatch_group_leave(v11);
}

uint64_t __87__WFContentCompoundPredicate_evaluateWithObject_propertySubstitutor_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 1;
  }

  v4 = *(v1 + 16);

  return v4(v1, v3);
}

- (id)description
{
  v3 = [(WFContentCompoundPredicate *)self compoundPredicateType];
  if (v3 > 2)
  {
    v4 = @"unknown";
  }

  else
  {
    v4 = *(&off_278346F98 + v3);
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(WFContentCompoundPredicate *)self subpredicates];
  v9 = [v5 stringWithFormat:@"<%@: %p, type: %@, subpredicates: %@>", v7, self, v4, v8];

  return v9;
}

- (WFContentCompoundPredicate)initWithType:(unint64_t)a3 subpredicates:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = WFContentCompoundPredicate;
  v7 = [(WFContentCompoundPredicate *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_compoundPredicateType = a3;
    v9 = [v6 copy];
    subpredicates = v8->_subpredicates;
    v8->_subpredicates = v9;

    v11 = v8;
  }

  return v8;
}

+ (id)notPredicateWithSubpredicate:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 alloc];
  v9[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = [v5 initWithType:0 subpredicates:v6];

  return v7;
}

+ (id)orPredicateWithSubpredicates:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithType:2 subpredicates:v4];

  return v5;
}

+ (id)andPredicateWithSubpredicates:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithType:1 subpredicates:v4];

  return v5;
}

@end