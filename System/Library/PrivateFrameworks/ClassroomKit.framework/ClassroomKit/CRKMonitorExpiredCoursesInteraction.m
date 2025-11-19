@interface CRKMonitorExpiredCoursesInteraction
- (CRKMonitorExpiredCoursesInteraction)initWithStudentDaemonProxy:(id)a3 enrollmentController:(id)a4 expiredCoursesInteractionDelegate:(id)a5;
- (void)beginInteractionWithExpiredCourses:(id)a3;
- (void)cancel;
- (void)expiredCoursesInteractionDidFinish:(id)a3;
- (void)main;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)updateWithCourses:(id)a3;
@end

@implementation CRKMonitorExpiredCoursesInteraction

- (CRKMonitorExpiredCoursesInteraction)initWithStudentDaemonProxy:(id)a3 enrollmentController:(id)a4 expiredCoursesInteractionDelegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    [CRKMonitorExpiredCoursesInteraction initWithStudentDaemonProxy:enrollmentController:expiredCoursesInteractionDelegate:];
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [CRKMonitorExpiredCoursesInteraction initWithStudentDaemonProxy:enrollmentController:expiredCoursesInteractionDelegate:];
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_9:
  [CRKMonitorExpiredCoursesInteraction initWithStudentDaemonProxy:enrollmentController:expiredCoursesInteractionDelegate:];
LABEL_4:
  v19.receiver = self;
  v19.super_class = CRKMonitorExpiredCoursesInteraction;
  v12 = [(CRKMonitorExpiredCoursesInteraction *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_studentDaemonProxy, a3);
    objc_storeStrong(&v13->_enrollmentController, a4);
    objc_storeStrong(&v13->_expiredCoursesInteractionDelegate, a5);
    v14 = objc_opt_new();
    expiredCoursesToPresent = v13->_expiredCoursesToPresent;
    v13->_expiredCoursesToPresent = v14;

    v16 = objc_opt_new();
    serialOperationQueue = v13->_serialOperationQueue;
    v13->_serialOperationQueue = v16;
  }

  return v13;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = CRKMonitorExpiredCoursesInteraction;
  [(CRKMonitorExpiredCoursesInteraction *)&v4 cancel];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__CRKMonitorExpiredCoursesInteraction_cancel__block_invoke;
  v3[3] = &unk_278DC10F0;
  v3[4] = self;
  [MEMORY[0x277CBEB88] cat_performBlockOnMainRunLoop:v3];
}

void __45__CRKMonitorExpiredCoursesInteraction_cancel__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isExecuting])
  {
    v2 = *(a1 + 32);
    if (v2[376] == 1)
    {
      v3 = [v2 enrollmentController];
      [v3 removeObserver:*(a1 + 32) forKeyPath:@"courses" context:@"MonitorExpirationsIt"];

      v2 = *(a1 + 32);
    }

    v4 = [v2 serialOperationQueue];
    [v4 cancelAllOperations];

    v5 = *(a1 + 32);
    v6 = CATErrorWithCodeAndUserInfo();
    [v5 endOperationWithError:v6];
  }
}

- (void)main
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __43__CRKMonitorExpiredCoursesInteraction_main__block_invoke;
  v2[3] = &unk_278DC10F0;
  v2[4] = self;
  [MEMORY[0x277CBEB88] cat_performBlockOnMainRunLoop:v2];
}

void __43__CRKMonitorExpiredCoursesInteraction_main__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 376) = 1;
  v2 = [*(a1 + 32) enrollmentController];
  [v2 addObserver:*(a1 + 32) forKeyPath:@"courses" options:4 context:@"MonitorExpirationsIt"];
}

- (void)updateWithCourses:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (!v4)
  {
    [CRKMonitorExpiredCoursesInteraction updateWithCourses:];
    v4 = 0;
  }

  v5 = [MEMORY[0x277CBEB98] setWithArray:v4];
  v6 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_99];
  v7 = [v5 filteredSetUsingPredicate:v6];
  v8 = [v7 mutableCopy];

  v9 = [(CRKMonitorExpiredCoursesInteraction *)self expiredCoursesToPresent];
  [v8 minusSet:v9];

  if ([v8 count])
  {
    [(CRKMonitorExpiredCoursesInteraction *)self beginInteractionWithExpiredCourses:v8];
  }
}

uint64_t __57__CRKMonitorExpiredCoursesInteraction_updateWithCourses___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type] == 1)
  {
    v3 = [v2 isExpired];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)beginInteractionWithExpiredCourses:(id)a3
{
  v10 = a3;
  if (!v10)
  {
    [CRKMonitorExpiredCoursesInteraction beginInteractionWithExpiredCourses:];
  }

  v4 = [CRKExpiredCoursesInteraction alloc];
  v5 = [(CRKMonitorExpiredCoursesInteraction *)self studentDaemonProxy];
  v6 = [(CRKMonitorExpiredCoursesInteraction *)self expiredCoursesInteractionDelegate];
  v7 = [(CRKExpiredCoursesInteraction *)v4 initWithStudentDaemonProxy:v5 delegate:v6 courses:v10];

  [(CRKExpiredCoursesInteraction *)v7 addTarget:self selector:sel_expiredCoursesInteractionDidFinish_ forOperationEvents:6];
  v8 = [(CRKMonitorExpiredCoursesInteraction *)self expiredCoursesToPresent];
  [v8 unionSet:v10];

  v9 = [(CRKMonitorExpiredCoursesInteraction *)self serialOperationQueue];
  [v9 addOperation:v7];
}

- (void)expiredCoursesInteractionDidFinish:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [CRKMonitorExpiredCoursesInteraction expiredCoursesInteractionDidFinish:];
  }

  if ([(CRKMonitorExpiredCoursesInteraction *)self isExecuting])
  {
    v5 = [v4 error];

    if (v5)
    {
      if (_CRKLogGeneral_onceToken_31 != -1)
      {
        [CRKMonitorExpiredCoursesInteraction expiredCoursesInteractionDidFinish:];
      }

      v6 = _CRKLogGeneral_logObj_31;
      if (os_log_type_enabled(_CRKLogGeneral_logObj_31, OS_LOG_TYPE_ERROR))
      {
        [(CRKMonitorExpiredCoursesInteraction *)v6 expiredCoursesInteractionDidFinish:v4];
      }
    }

    v7 = [(CRKMonitorExpiredCoursesInteraction *)self expiredCoursesToPresent];
    v8 = [v4 courses];
    [v7 minusSet:v8];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  if (a6 != @"MonitorExpirationsIt")
  {
    v18.receiver = self;
    v18.super_class = CRKMonitorExpiredCoursesInteraction;
    v11 = a4;
    [(CRKMonitorExpiredCoursesInteraction *)&v18 observeValueForKeyPath:v10 ofObject:v11 change:a5 context:a6];

    goto LABEL_9;
  }

  v12 = a4;
  v13 = [(CRKMonitorExpiredCoursesInteraction *)self enrollmentController];

  if (v13 != v12)
  {
LABEL_4:

    goto LABEL_9;
  }

  v14 = [v10 isEqualToString:@"courses"];

  if (v14)
  {
    if ([(CRKMonitorExpiredCoursesInteraction *)self isExecuting])
    {
      v15 = [(CRKMonitorExpiredCoursesInteraction *)self enrollmentController];
      v16 = [v15 courses];

      if (v16)
      {
        v13 = [(CRKMonitorExpiredCoursesInteraction *)self enrollmentController];
        v17 = [v13 courses];
        [(CRKMonitorExpiredCoursesInteraction *)self updateWithCourses:v17];

        goto LABEL_4;
      }
    }
  }

LABEL_9:
}

- (void)initWithStudentDaemonProxy:enrollmentController:expiredCoursesInteractionDelegate:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"studentDaemonProxy" object:? file:? lineNumber:? description:?];
}

- (void)initWithStudentDaemonProxy:enrollmentController:expiredCoursesInteractionDelegate:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"enrollmentController" object:? file:? lineNumber:? description:?];
}

- (void)initWithStudentDaemonProxy:enrollmentController:expiredCoursesInteractionDelegate:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"expiredCoursesInteractiondelegate" object:? file:? lineNumber:? description:?];
}

- (void)updateWithCourses:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"courses" object:? file:? lineNumber:? description:?];
}

- (void)beginInteractionWithExpiredCourses:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"courses" object:? file:? lineNumber:? description:?];
}

- (void)expiredCoursesInteractionDidFinish:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"expiredCoursesInteraction" object:? file:? lineNumber:? description:?];
}

- (void)expiredCoursesInteractionDidFinish:(void *)a1 .cold.3(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 error];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_243550000, v3, OS_LOG_TYPE_ERROR, "Failed to complete expired course interaction: %{public}@", &v5, 0xCu);
}

@end