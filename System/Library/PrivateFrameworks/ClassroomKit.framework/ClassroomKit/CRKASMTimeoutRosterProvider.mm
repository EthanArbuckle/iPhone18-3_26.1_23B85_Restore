@interface CRKASMTimeoutRosterProvider
- (CRKASMTimeoutRosterProvider)initWithRosterProvider:(id)provider timeout:(double)timeout;
- (id)scheduleTimeoutForCompletion:(id)completion;
- (void)createCourseWithProperties:(id)properties completion:(id)completion;
- (void)dealloc;
- (void)operationDidFinishWithTimer:(id)timer error:(id)error;
- (void)removeCourseWithIdentifier:(id)identifier completion:(id)completion;
- (void)timeoutDidFire:(id)fire;
- (void)updateCourseWithIdentifier:(id)identifier properties:(id)properties completion:(id)completion;
@end

@implementation CRKASMTimeoutRosterProvider

- (void)dealloc
{
  OUTLINED_FUNCTION_1_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:v1 object:v0 file:@"CRKASMTimeoutRosterProvider.m" lineNumber:30 description:@"Roster provider deallocated with in-flight crud operations"];
}

- (CRKASMTimeoutRosterProvider)initWithRosterProvider:(id)provider timeout:(double)timeout
{
  v10.receiver = self;
  v10.super_class = CRKASMTimeoutRosterProvider;
  v5 = [(CRKASMRosterProviderDecoratorBase *)&v10 initWithRosterProvider:provider];
  v6 = v5;
  if (v5)
  {
    v5->_timeout = timeout;
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    completionsByTimer = v6->_completionsByTimer;
    v6->_completionsByTimer = strongToStrongObjectsMapTable;
  }

  return v6;
}

- (void)createCourseWithProperties:(id)properties completion:(id)completion
{
  completionCopy = completion;
  v7 = MEMORY[0x277CCACC8];
  propertiesCopy = properties;
  if (([v7 isMainThread] & 1) == 0)
  {
    [CRKASMTimeoutRosterProvider createCourseWithProperties:completion:];
  }

  v9 = [(CRKASMTimeoutRosterProvider *)self scheduleTimeoutForCompletion:completionCopy];
  underlyingRosterProvider = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__CRKASMTimeoutRosterProvider_createCourseWithProperties_completion___block_invoke;
  v12[3] = &unk_278DC2448;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [underlyingRosterProvider createCourseWithProperties:propertiesCopy completion:v12];
}

- (void)updateCourseWithIdentifier:(id)identifier properties:(id)properties completion:(id)completion
{
  completionCopy = completion;
  v9 = MEMORY[0x277CCACC8];
  propertiesCopy = properties;
  identifierCopy = identifier;
  if (([v9 isMainThread] & 1) == 0)
  {
    [CRKASMTimeoutRosterProvider updateCourseWithIdentifier:properties:completion:];
  }

  v12 = [(CRKASMTimeoutRosterProvider *)self scheduleTimeoutForCompletion:completionCopy];
  underlyingRosterProvider = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__CRKASMTimeoutRosterProvider_updateCourseWithIdentifier_properties_completion___block_invoke;
  v15[3] = &unk_278DC2448;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [underlyingRosterProvider updateCourseWithIdentifier:identifierCopy properties:propertiesCopy completion:v15];
}

- (void)removeCourseWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v7 = MEMORY[0x277CCACC8];
  identifierCopy = identifier;
  if (([v7 isMainThread] & 1) == 0)
  {
    [CRKASMTimeoutRosterProvider removeCourseWithIdentifier:completion:];
  }

  v9 = [(CRKASMTimeoutRosterProvider *)self scheduleTimeoutForCompletion:completionCopy];
  underlyingRosterProvider = [(CRKASMRosterProviderDecoratorBase *)self underlyingRosterProvider];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__CRKASMTimeoutRosterProvider_removeCourseWithIdentifier_completion___block_invoke;
  v12[3] = &unk_278DC2448;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [underlyingRosterProvider removeCourseWithIdentifier:identifierCopy completion:v12];
}

- (id)scheduleTimeoutForCompletion:(id)completion
{
  v4 = MEMORY[0x277CBEBB8];
  completionCopy = completion;
  [(CRKASMTimeoutRosterProvider *)self timeout];
  v6 = [v4 scheduledTimerWithTimeInterval:self target:sel_timeoutDidFire_ selector:0 userInfo:0 repeats:?];
  completionsByTimer = [(CRKASMTimeoutRosterProvider *)self completionsByTimer];
  v8 = MEMORY[0x245D3AAD0](completionCopy);

  [completionsByTimer setObject:v8 forKey:v6];

  return v6;
}

- (void)operationDidFinishWithTimer:(id)timer error:(id)error
{
  timerCopy = timer;
  errorCopy = error;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKASMTimeoutRosterProvider operationDidFinishWithTimer:error:];
  }

  [timerCopy invalidate];
  completionsByTimer = [(CRKASMTimeoutRosterProvider *)self completionsByTimer];
  v8 = [completionsByTimer objectForKey:timerCopy];

  if (v8)
  {
    completionsByTimer2 = [(CRKASMTimeoutRosterProvider *)self completionsByTimer];
    [completionsByTimer2 removeObjectForKey:timerCopy];

    (v8)[2](v8, errorCopy);
  }
}

- (void)timeoutDidFire:(id)fire
{
  fireCopy = fire;
  v5 = CRKErrorWithCodeAndUserInfo(32, 0);
  [(CRKASMTimeoutRosterProvider *)self operationDidFinishWithTimer:fireCopy error:v5];
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