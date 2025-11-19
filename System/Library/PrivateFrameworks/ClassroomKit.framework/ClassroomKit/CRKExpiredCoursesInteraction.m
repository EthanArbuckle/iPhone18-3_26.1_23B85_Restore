@interface CRKExpiredCoursesInteraction
+ (id)new;
- (CRKExpiredCoursesInteraction)init;
- (CRKExpiredCoursesInteraction)initWithStudentDaemonProxy:(id)a3 delegate:(id)a4 courses:(id)a5;
- (void)cancel;
- (void)leaveControlGroupsOperationDidFinish:(id)a3;
- (void)main;
- (void)removeCourses:(id)a3;
@end

@implementation CRKExpiredCoursesInteraction

- (CRKExpiredCoursesInteraction)initWithStudentDaemonProxy:(id)a3 delegate:(id)a4 courses:(id)a5
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
    [CRKExpiredCoursesInteraction initWithStudentDaemonProxy:delegate:courses:];
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [CRKExpiredCoursesInteraction initWithStudentDaemonProxy:delegate:courses:];
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
  [CRKExpiredCoursesInteraction initWithStudentDaemonProxy:delegate:courses:];
LABEL_4:
  v17.receiver = self;
  v17.super_class = CRKExpiredCoursesInteraction;
  v12 = [(CRKExpiredCoursesInteraction *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_studentDaemonProxy, a3);
    objc_storeStrong(&v13->_delegate, a4);
    v14 = [v11 copy];
    courses = v13->_courses;
    v13->_courses = v14;
  }

  return v13;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = CRKExpiredCoursesInteraction;
  [(CRKExpiredCoursesInteraction *)&v4 cancel];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__CRKExpiredCoursesInteraction_cancel__block_invoke;
  v3[3] = &unk_278DC10F0;
  v3[4] = self;
  [MEMORY[0x277CBEB88] cat_performBlockOnMainRunLoop:v3];
}

void __38__CRKExpiredCoursesInteraction_cancel__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isExecuting])
  {
    [*(*(a1 + 32) + 376) cancel];
    v2 = *(a1 + 32);
    if (v2[384] == 1)
    {
      v3 = [*(a1 + 32) delegate];
      [v3 interactionNoLongerWantsToPromptCourseExpiration:*(a1 + 32)];

      v2 = *(a1 + 32);
    }

    v4 = CATErrorWithCodeAndUserInfo();
    [v2 endOperationWithError:v4];
  }
}

- (void)main
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __36__CRKExpiredCoursesInteraction_main__block_invoke;
  v2[3] = &unk_278DC10F0;
  v2[4] = self;
  [MEMORY[0x277CBEB88] cat_performBlockOnMainRunLoop:v2];
}

void __36__CRKExpiredCoursesInteraction_main__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isExecuting])
  {
    v2 = [*(a1 + 32) courses];
    v3 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_48];
    v4 = [v2 filteredSetUsingPredicate:v3];

    v5 = [v4 count];
    v6 = *(a1 + 32);
    if (v5)
    {
      v6[384] = 1;
      v7 = [*(a1 + 32) delegate];
      v8 = *(a1 + 32);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __36__CRKExpiredCoursesInteraction_main__block_invoke_3;
      v9[3] = &unk_278DC1320;
      v9[4] = v8;
      v10 = v4;
      [v7 interaction:v8 willRemoveExpiredCourses:v10 acknowledgementHandler:v9];
    }

    else
    {
      [v6 endOperationWithResultObject:0];
    }
  }
}

uint64_t __36__CRKExpiredCoursesInteraction_main__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type] == 1)
  {
    v3 = [v2 mustRequestUnenroll] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __36__CRKExpiredCoursesInteraction_main__block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) isExecuting];
  if (result)
  {
    *(*(a1 + 32) + 384) = 0;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 removeCourses:v4];
  }

  return result;
}

- (void)removeCourses:(id)a3
{
  v10 = a3;
  if (!v10)
  {
    [CRKExpiredCoursesInteraction removeCourses:];
  }

  v4 = objc_opt_new();
  v5 = [v10 crk_mapUsingBlock:&__block_literal_global_22];
  [v4 setGroupIdentifiers:v5];

  v6 = [(CRKExpiredCoursesInteraction *)self studentDaemonProxy];
  v7 = [v6 operationForRequest:v4];
  mLeaveControlGroupsOperation = self->mLeaveControlGroupsOperation;
  self->mLeaveControlGroupsOperation = v7;

  [(CATRemoteTaskOperation *)self->mLeaveControlGroupsOperation addTarget:self selector:sel_leaveControlGroupsOperationDidFinish_ forOperationEvents:6];
  v9 = [MEMORY[0x277CF9540] crk_backgroundQueue];
  [v9 addOperation:self->mLeaveControlGroupsOperation];
}

- (void)leaveControlGroupsOperationDidFinish:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [CRKExpiredCoursesInteraction leaveControlGroupsOperationDidFinish:];
  }

  if ([(CRKExpiredCoursesInteraction *)self isExecuting])
  {
    v5 = [v4 error];

    if (v5)
    {
      if (_CRKLogGeneral_onceToken_11 != -1)
      {
        [CRKExpiredCoursesInteraction leaveControlGroupsOperationDidFinish:];
      }

      v6 = _CRKLogGeneral_logObj_11;
      if (os_log_type_enabled(_CRKLogGeneral_logObj_11, OS_LOG_TYPE_ERROR))
      {
        [(CRKExpiredCoursesInteraction *)v6 leaveControlGroupsOperationDidFinish:v4];
      }

      v7 = [v4 error];
      [(CRKExpiredCoursesInteraction *)self endOperationWithError:v7];

      v8 = [(CRKExpiredCoursesInteraction *)self delegate];
      v9 = [v4 error];
      [v8 interaction:self didEncounterError:v9];
    }

    else
    {
      [(CRKExpiredCoursesInteraction *)self endOperationWithResultObject:0];
    }
  }
}

+ (id)new
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:a1 file:@"CRKExpiredCoursesInteraction.m" lineNumber:137 description:{@"%@ is unavailable for %@", v5, a1}];

  return 0;
}

- (CRKExpiredCoursesInteraction)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"CRKExpiredCoursesInteraction.m" lineNumber:142 description:{@"%@ is unavailable for %@", v5, self}];

  return 0;
}

- (void)initWithStudentDaemonProxy:delegate:courses:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"studentDaemonProxy" object:? file:? lineNumber:? description:?];
}

- (void)initWithStudentDaemonProxy:delegate:courses:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"delegate" object:? file:? lineNumber:? description:?];
}

- (void)initWithStudentDaemonProxy:delegate:courses:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"courses" object:? file:? lineNumber:? description:?];
}

- (void)removeCourses:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"courses" object:? file:? lineNumber:? description:?];
}

- (void)leaveControlGroupsOperationDidFinish:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"leaveControlGroupsOperation" object:? file:? lineNumber:? description:?];
}

- (void)leaveControlGroupsOperationDidFinish:(void *)a1 .cold.3(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 error];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_243550000, v3, OS_LOG_TYPE_ERROR, "Failed to remove expired courses: %{public}@", &v5, 0xCu);
}

@end