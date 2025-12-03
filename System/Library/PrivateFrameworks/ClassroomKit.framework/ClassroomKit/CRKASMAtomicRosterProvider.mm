@interface CRKASMAtomicRosterProvider
- (CRKASMAtomicRosterProvider)initWithRosterProvider:(id)provider;
- (id)courseWithIdentifier:(id)identifier inRoster:(id)roster;
- (id)coursesMatchingCreateProperties:(id)properties inRoster:(id)roster createdAfter:(id)after;
- (id)pushCompletion:(id)completion withRosterEvaluator:(id)evaluator;
- (void)beginObservingRoster;
- (void)createCourseWithProperties:(id)properties completion:(id)completion;
- (void)dealloc;
- (void)endObservingRoster;
- (void)evaluateConstraintForUnderlyingCompletion:(id)completion error:(id)error;
- (void)evalutateConstraintsForRosterUpdate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeCourseWithIdentifier:(id)identifier completion:(id)completion;
- (void)updateCourseWithIdentifier:(id)identifier properties:(id)properties completion:(id)completion;
@end

@implementation CRKASMAtomicRosterProvider

- (void)dealloc
{
  [(CRKASMAtomicRosterProvider *)self endObservingRoster];
  v3.receiver = self;
  v3.super_class = CRKASMAtomicRosterProvider;
  [(CRKASMAtomicRosterProvider *)&v3 dealloc];
}

- (CRKASMAtomicRosterProvider)initWithRosterProvider:(id)provider
{
  v7.receiver = self;
  v7.super_class = CRKASMAtomicRosterProvider;
  v3 = [(CRKASMRosterProviderDecoratorBase *)&v7 initWithRosterProvider:provider];
  if (v3)
  {
    v4 = objc_opt_new();
    completionsByConstraint = v3->_completionsByConstraint;
    v3->_completionsByConstraint = v4;

    [(CRKASMAtomicRosterProvider *)v3 beginObservingRoster];
  }

  return v3;
}

- (void)createCourseWithProperties:(id)properties completion:(id)completion
{
  propertiesCopy = properties;
  v7 = MEMORY[0x277CCACC8];
  completionCopy = completion;
  if (([v7 isMainThread] & 1) == 0)
  {
    [CRKASMAtomicRosterProvider createCourseWithProperties:completion:];
  }

  date = [MEMORY[0x277CBEAA8] date];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__CRKASMAtomicRosterProvider_createCourseWithProperties_completion___block_invoke;
  v17[3] = &unk_278DC3048;
  v17[4] = self;
  v18 = propertiesCopy;
  v19 = date;
  v10 = date;
  v11 = propertiesCopy;
  v12 = [(CRKASMAtomicRosterProvider *)self pushCompletion:completionCopy withRosterEvaluator:v17];

  underlyingRosterProvider = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__CRKASMAtomicRosterProvider_createCourseWithProperties_completion___block_invoke_2;
  v15[3] = &unk_278DC2448;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [underlyingRosterProvider createCourseWithProperties:v11 completion:v15];
}

BOOL __68__CRKASMAtomicRosterProvider_createCourseWithProperties_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) coursesMatchingCreateProperties:*(a1 + 40) inRoster:a2 createdAfter:*(a1 + 48)];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)updateCourseWithIdentifier:(id)identifier properties:(id)properties completion:(id)completion
{
  identifierCopy = identifier;
  propertiesCopy = properties;
  v10 = MEMORY[0x277CCACC8];
  completionCopy = completion;
  if (([v10 isMainThread] & 1) == 0)
  {
    [CRKASMAtomicRosterProvider updateCourseWithIdentifier:properties:completion:];
  }

  underlyingRosterProvider = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  roster = [underlyingRosterProvider roster];
  user = [roster user];

  usersToRemove = [propertiesCopy usersToRemove];
  v16 = [usersToRemove crk_mapUsingBlock:&__block_literal_global_102];

  identifier = [user identifier];
  v18 = [v16 containsObject:identifier];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __79__CRKASMAtomicRosterProvider_updateCourseWithIdentifier_properties_completion___block_invoke_2;
  v26[3] = &unk_278DC3070;
  v26[4] = self;
  v27 = identifierCopy;
  v29 = v18;
  v28 = propertiesCopy;
  v19 = propertiesCopy;
  v20 = identifierCopy;
  v21 = [(CRKASMAtomicRosterProvider *)self pushCompletion:completionCopy withRosterEvaluator:v26];

  underlyingRosterProvider2 = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __79__CRKASMAtomicRosterProvider_updateCourseWithIdentifier_properties_completion___block_invoke_3;
  v24[3] = &unk_278DC2448;
  v24[4] = self;
  v25 = v21;
  v23 = v21;
  [underlyingRosterProvider2 updateCourseWithIdentifier:v20 properties:v19 completion:v24];
}

uint64_t __79__CRKASMAtomicRosterProvider_updateCourseWithIdentifier_properties_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) courseWithIdentifier:*(a1 + 40) inRoster:a2];
  if (v3)
  {
    v4 = [*(a1 + 48) areFulfilledByCourse:v3];
  }

  else
  {
    v4 = *(a1 + 56);
  }

  return v4 & 1;
}

- (void)removeCourseWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKASMAtomicRosterProvider removeCourseWithIdentifier:completion:];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__CRKASMAtomicRosterProvider_removeCourseWithIdentifier_completion___block_invoke;
  v14[3] = &unk_278DC3098;
  v14[4] = self;
  v15 = identifierCopy;
  v8 = identifierCopy;
  v9 = [(CRKASMAtomicRosterProvider *)self pushCompletion:completionCopy withRosterEvaluator:v14];
  underlyingRosterProvider = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__CRKASMAtomicRosterProvider_removeCourseWithIdentifier_completion___block_invoke_2;
  v12[3] = &unk_278DC2448;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [underlyingRosterProvider removeCourseWithIdentifier:v8 completion:v12];
}

BOOL __68__CRKASMAtomicRosterProvider_removeCourseWithIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) courseWithIdentifier:*(a1 + 40) inRoster:a2];
  v3 = v2 == 0;

  return v3;
}

- (void)beginObservingRoster
{
  underlyingRosterProvider = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  [underlyingRosterProvider addObserver:self forKeyPath:@"roster" options:0 context:@"CRKASMAtomicRosterProviderObservationContext"];
}

- (void)endObservingRoster
{
  underlyingRosterProvider = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  [underlyingRosterProvider removeObserver:self forKeyPath:@"roster" context:@"CRKASMAtomicRosterProviderObservationContext"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == @"CRKASMAtomicRosterProviderObservationContext")
  {

    [(CRKASMAtomicRosterProvider *)self evalutateConstraintsForRosterUpdate:path];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = CRKASMAtomicRosterProvider;
    [(CRKASMAtomicRosterProvider *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (id)pushCompletion:(id)completion withRosterEvaluator:(id)evaluator
{
  evaluatorCopy = evaluator;
  v7 = MEMORY[0x277CCACC8];
  completionCopy = completion;
  if (([v7 isMainThread] & 1) == 0)
  {
    [CRKASMAtomicRosterProvider pushCompletion:withRosterEvaluator:];
  }

  v9 = [CRKASMAtomicRosterConstraint constraintWithRosterEvaluator:evaluatorCopy];
  v10 = MEMORY[0x245D3AAD0](completionCopy);

  completionsByConstraint = [(CRKASMAtomicRosterProvider *)self completionsByConstraint];
  [completionsByConstraint setObject:v10 forKeyedSubscript:v9];

  return v9;
}

- (void)evaluateConstraintForUnderlyingCompletion:(id)completion error:(id)error
{
  completionCopy = completion;
  errorCopy = error;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKASMAtomicRosterProvider evaluateConstraintForUnderlyingCompletion:error:];
  }

  roster = [(CRKASMRosterProviderDecoratorBase *)self roster];

  if (roster)
  {
    completionsByConstraint = [(CRKASMAtomicRosterProvider *)self completionsByConstraint];
    v9 = [completionsByConstraint objectForKeyedSubscript:completionCopy];

    if (v9)
    {
      if (errorCopy)
      {
        completionsByConstraint2 = [(CRKASMAtomicRosterProvider *)self completionsByConstraint];
        [completionsByConstraint2 setObject:0 forKeyedSubscript:completionCopy];

        (v9)[2](v9, errorCopy);
      }

      else
      {
        roster2 = [(CRKASMRosterProviderDecoratorBase *)self roster];
        v12 = [completionCopy isFulfilledByRoster:roster2];

        if (v12)
        {
          completionsByConstraint3 = [(CRKASMAtomicRosterProvider *)self completionsByConstraint];
          [completionsByConstraint3 setObject:0 forKeyedSubscript:completionCopy];

          v9[2](v9, 0);
        }
      }
    }
  }
}

- (void)evalutateConstraintsForRosterUpdate
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (id)courseWithIdentifier:(id)identifier inRoster:(id)roster
{
  identifierCopy = identifier;
  courses = [roster courses];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__CRKASMAtomicRosterProvider_courseWithIdentifier_inRoster___block_invoke;
  v10[3] = &unk_278DC1C30;
  v11 = identifierCopy;
  v7 = identifierCopy;
  v8 = [courses crk_firstMatching:v10];

  return v8;
}

uint64_t __60__CRKASMAtomicRosterProvider_courseWithIdentifier_inRoster___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)coursesMatchingCreateProperties:(id)properties inRoster:(id)roster createdAfter:(id)after
{
  propertiesCopy = properties;
  afterCopy = after;
  courses = [roster courses];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__CRKASMAtomicRosterProvider_coursesMatchingCreateProperties_inRoster_createdAfter___block_invoke;
  v14[3] = &unk_278DC30C0;
  v15 = afterCopy;
  v16 = propertiesCopy;
  v10 = propertiesCopy;
  v11 = afterCopy;
  v12 = [courses crk_filterUsingBlock:v14];

  return v12;
}

uint64_t __84__CRKASMAtomicRosterProvider_coursesMatchingCreateProperties_inRoster_createdAfter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 creationDate];
  v5 = [v4 earlierDate:*(a1 + 32)];
  if (v5 == *(a1 + 32))
  {
    v6 = [*(a1 + 40) areFulfilledByCourse:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)createCourseWithProperties:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)updateCourseWithIdentifier:properties:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)removeCourseWithIdentifier:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)pushCompletion:withRosterEvaluator:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)evaluateConstraintForUnderlyingCompletion:error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

@end