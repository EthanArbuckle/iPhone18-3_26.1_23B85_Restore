@interface CRKASMTimeoutRosterProvider
- (CRKASMTimeoutRosterProvider)initWithRosterProvider:(id)a3 timeout:(double)a4;
- (id)scheduleTimeoutForCompletion:(id)a3;
- (void)createCourseWithProperties:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)operationDidFinishWithTimer:(id)a3 error:(id)a4;
- (void)removeCourseWithIdentifier:(id)a3 completion:(id)a4;
- (void)timeoutDidFire:(id)a3;
- (void)updateCourseWithIdentifier:(id)a3 properties:(id)a4 completion:(id)a5;
@end

@implementation CRKASMTimeoutRosterProvider

- (void)dealloc
{
  OUTLINED_FUNCTION_1_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"CRKASMTimeoutRosterProvider.m" lineNumber:30 description:@"Roster provider deallocated with in-flight crud operations"];
}

- (CRKASMTimeoutRosterProvider)initWithRosterProvider:(id)a3 timeout:(double)a4
{
  v10.receiver = self;
  v10.super_class = CRKASMTimeoutRosterProvider;
  v5 = [(CRKASMRosterProviderDecoratorBase *)&v10 initWithRosterProvider:a3];
  v6 = v5;
  if (v5)
  {
    v5->_timeout = a4;
    v7 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    completionsByTimer = v6->_completionsByTimer;
    v6->_completionsByTimer = v7;
  }

  return v6;
}

- (void)createCourseWithProperties:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CCACC8];
  v8 = a3;
  if (([v7 isMainThread] & 1) == 0)
  {
    [CRKASMTimeoutRosterProvider createCourseWithProperties:completion:];
  }

  v9 = [(CRKASMTimeoutRosterProvider *)self scheduleTimeoutForCompletion:v6];
  v10 = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__CRKASMTimeoutRosterProvider_createCourseWithProperties_completion___block_invoke;
  v12[3] = &unk_278DC2448;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 createCourseWithProperties:v8 completion:v12];
}

- (void)updateCourseWithIdentifier:(id)a3 properties:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = MEMORY[0x277CCACC8];
  v10 = a4;
  v11 = a3;
  if (([v9 isMainThread] & 1) == 0)
  {
    [CRKASMTimeoutRosterProvider updateCourseWithIdentifier:properties:completion:];
  }

  v12 = [(CRKASMTimeoutRosterProvider *)self scheduleTimeoutForCompletion:v8];
  v13 = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__CRKASMTimeoutRosterProvider_updateCourseWithIdentifier_properties_completion___block_invoke;
  v15[3] = &unk_278DC2448;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 updateCourseWithIdentifier:v11 properties:v10 completion:v15];
}

- (void)removeCourseWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CCACC8];
  v8 = a3;
  if (([v7 isMainThread] & 1) == 0)
  {
    [CRKASMTimeoutRosterProvider removeCourseWithIdentifier:completion:];
  }

  v9 = [(CRKASMTimeoutRosterProvider *)self scheduleTimeoutForCompletion:v6];
  v10 = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__CRKASMTimeoutRosterProvider_removeCourseWithIdentifier_completion___block_invoke;
  v12[3] = &unk_278DC2448;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 removeCourseWithIdentifier:v8 completion:v12];
}

- (id)scheduleTimeoutForCompletion:(id)a3
{
  v4 = MEMORY[0x277CBEBB8];
  v5 = a3;
  [(CRKASMTimeoutRosterProvider *)self timeout];
  v6 = [v4 scheduledTimerWithTimeInterval:self target:sel_timeoutDidFire_ selector:0 userInfo:0 repeats:?];
  v7 = [(CRKASMTimeoutRosterProvider *)self completionsByTimer];
  v8 = MEMORY[0x245D3AAD0](v5);

  [v7 setObject:v8 forKey:v6];

  return v6;
}

- (void)operationDidFinishWithTimer:(id)a3 error:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKASMTimeoutRosterProvider operationDidFinishWithTimer:error:];
  }

  [v10 invalidate];
  v7 = [(CRKASMTimeoutRosterProvider *)self completionsByTimer];
  v8 = [v7 objectForKey:v10];

  if (v8)
  {
    v9 = [(CRKASMTimeoutRosterProvider *)self completionsByTimer];
    [v9 removeObjectForKey:v10];

    (v8)[2](v8, v6);
  }
}

- (void)timeoutDidFire:(id)a3
{
  v4 = a3;
  v5 = CRKErrorWithCodeAndUserInfo(32, 0);
  [(CRKASMTimeoutRosterProvider *)self operationDidFinishWithTimer:v4 error:v5];
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

- (void)operationDidFinishWithTimer:error:.cold.1()
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