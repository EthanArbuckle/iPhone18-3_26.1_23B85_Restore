@interface CRKASMAtomicRosterProvider
- (CRKASMAtomicRosterProvider)initWithRosterProvider:(id)a3;
- (id)courseWithIdentifier:(id)a3 inRoster:(id)a4;
- (id)coursesMatchingCreateProperties:(id)a3 inRoster:(id)a4 createdAfter:(id)a5;
- (id)pushCompletion:(id)a3 withRosterEvaluator:(id)a4;
- (void)beginObservingRoster;
- (void)createCourseWithProperties:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)endObservingRoster;
- (void)evaluateConstraintForUnderlyingCompletion:(id)a3 error:(id)a4;
- (void)evalutateConstraintsForRosterUpdate;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeCourseWithIdentifier:(id)a3 completion:(id)a4;
- (void)updateCourseWithIdentifier:(id)a3 properties:(id)a4 completion:(id)a5;
@end

@implementation CRKASMAtomicRosterProvider

- (void)dealloc
{
  [(CRKASMAtomicRosterProvider *)self endObservingRoster];
  v3.receiver = self;
  v3.super_class = CRKASMAtomicRosterProvider;
  [(CRKASMAtomicRosterProvider *)&v3 dealloc];
}

- (CRKASMAtomicRosterProvider)initWithRosterProvider:(id)a3
{
  v7.receiver = self;
  v7.super_class = CRKASMAtomicRosterProvider;
  v3 = [(CRKASMRosterProviderDecoratorBase *)&v7 initWithRosterProvider:a3];
  if (v3)
  {
    v4 = objc_opt_new();
    completionsByConstraint = v3->_completionsByConstraint;
    v3->_completionsByConstraint = v4;

    [(CRKASMAtomicRosterProvider *)v3 beginObservingRoster];
  }

  return v3;
}

- (void)createCourseWithProperties:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x277CCACC8];
  v8 = a4;
  if (([v7 isMainThread] & 1) == 0)
  {
    [CRKASMAtomicRosterProvider createCourseWithProperties:completion:];
  }

  v9 = [MEMORY[0x277CBEAA8] date];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__CRKASMAtomicRosterProvider_createCourseWithProperties_completion___block_invoke;
  v17[3] = &unk_278DC3048;
  v17[4] = self;
  v18 = v6;
  v19 = v9;
  v10 = v9;
  v11 = v6;
  v12 = [(CRKASMAtomicRosterProvider *)self pushCompletion:v8 withRosterEvaluator:v17];

  v13 = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__CRKASMAtomicRosterProvider_createCourseWithProperties_completion___block_invoke_2;
  v15[3] = &unk_278DC2448;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 createCourseWithProperties:v11 completion:v15];
}

BOOL __68__CRKASMAtomicRosterProvider_createCourseWithProperties_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) coursesMatchingCreateProperties:*(a1 + 40) inRoster:a2 createdAfter:*(a1 + 48)];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)updateCourseWithIdentifier:(id)a3 properties:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x277CCACC8];
  v11 = a5;
  if (([v10 isMainThread] & 1) == 0)
  {
    [CRKASMAtomicRosterProvider updateCourseWithIdentifier:properties:completion:];
  }

  v12 = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  v13 = [v12 roster];
  v14 = [v13 user];

  v15 = [v9 usersToRemove];
  v16 = [v15 crk_mapUsingBlock:&__block_literal_global_102];

  v17 = [v14 identifier];
  v18 = [v16 containsObject:v17];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __79__CRKASMAtomicRosterProvider_updateCourseWithIdentifier_properties_completion___block_invoke_2;
  v26[3] = &unk_278DC3070;
  v26[4] = self;
  v27 = v8;
  v29 = v18;
  v28 = v9;
  v19 = v9;
  v20 = v8;
  v21 = [(CRKASMAtomicRosterProvider *)self pushCompletion:v11 withRosterEvaluator:v26];

  v22 = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __79__CRKASMAtomicRosterProvider_updateCourseWithIdentifier_properties_completion___block_invoke_3;
  v24[3] = &unk_278DC2448;
  v24[4] = self;
  v25 = v21;
  v23 = v21;
  [v22 updateCourseWithIdentifier:v20 properties:v19 completion:v24];
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

- (void)removeCourseWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKASMAtomicRosterProvider removeCourseWithIdentifier:completion:];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__CRKASMAtomicRosterProvider_removeCourseWithIdentifier_completion___block_invoke;
  v14[3] = &unk_278DC3098;
  v14[4] = self;
  v15 = v6;
  v8 = v6;
  v9 = [(CRKASMAtomicRosterProvider *)self pushCompletion:v7 withRosterEvaluator:v14];
  v10 = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__CRKASMAtomicRosterProvider_removeCourseWithIdentifier_completion___block_invoke_2;
  v12[3] = &unk_278DC2448;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 removeCourseWithIdentifier:v8 completion:v12];
}

BOOL __68__CRKASMAtomicRosterProvider_removeCourseWithIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) courseWithIdentifier:*(a1 + 40) inRoster:a2];
  v3 = v2 == 0;

  return v3;
}

- (void)beginObservingRoster
{
  v3 = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  [v3 addObserver:self forKeyPath:@"roster" options:0 context:@"CRKASMAtomicRosterProviderObservationContext"];
}

- (void)endObservingRoster
{
  v3 = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  [v3 removeObserver:self forKeyPath:@"roster" context:@"CRKASMAtomicRosterProviderObservationContext"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == @"CRKASMAtomicRosterProviderObservationContext")
  {

    [(CRKASMAtomicRosterProvider *)self evalutateConstraintsForRosterUpdate:a3];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = CRKASMAtomicRosterProvider;
    [(CRKASMAtomicRosterProvider *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (id)pushCompletion:(id)a3 withRosterEvaluator:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CCACC8];
  v8 = a3;
  if (([v7 isMainThread] & 1) == 0)
  {
    [CRKASMAtomicRosterProvider pushCompletion:withRosterEvaluator:];
  }

  v9 = [CRKASMAtomicRosterConstraint constraintWithRosterEvaluator:v6];
  v10 = MEMORY[0x245D3AAD0](v8);

  v11 = [(CRKASMAtomicRosterProvider *)self completionsByConstraint];
  [v11 setObject:v10 forKeyedSubscript:v9];

  return v9;
}

- (void)evaluateConstraintForUnderlyingCompletion:(id)a3 error:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKASMAtomicRosterProvider evaluateConstraintForUnderlyingCompletion:error:];
  }

  v7 = [(CRKASMRosterProviderDecoratorBase *)self roster];

  if (v7)
  {
    v8 = [(CRKASMAtomicRosterProvider *)self completionsByConstraint];
    v9 = [v8 objectForKeyedSubscript:v14];

    if (v9)
    {
      if (v6)
      {
        v10 = [(CRKASMAtomicRosterProvider *)self completionsByConstraint];
        [v10 setObject:0 forKeyedSubscript:v14];

        (v9)[2](v9, v6);
      }

      else
      {
        v11 = [(CRKASMRosterProviderDecoratorBase *)self roster];
        v12 = [v14 isFulfilledByRoster:v11];

        if (v12)
        {
          v13 = [(CRKASMAtomicRosterProvider *)self completionsByConstraint];
          [v13 setObject:0 forKeyedSubscript:v14];

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

- (id)courseWithIdentifier:(id)a3 inRoster:(id)a4
{
  v5 = a3;
  v6 = [a4 courses];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__CRKASMAtomicRosterProvider_courseWithIdentifier_inRoster___block_invoke;
  v10[3] = &unk_278DC1C30;
  v11 = v5;
  v7 = v5;
  v8 = [v6 crk_firstMatching:v10];

  return v8;
}

uint64_t __60__CRKASMAtomicRosterProvider_courseWithIdentifier_inRoster___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)coursesMatchingCreateProperties:(id)a3 inRoster:(id)a4 createdAfter:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [a4 courses];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__CRKASMAtomicRosterProvider_coursesMatchingCreateProperties_inRoster_createdAfter___block_invoke;
  v14[3] = &unk_278DC30C0;
  v15 = v8;
  v16 = v7;
  v10 = v7;
  v11 = v8;
  v12 = [v9 crk_filterUsingBlock:v14];

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