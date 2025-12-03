@interface CRKFetchObservingInstructorsByCourseOperation
- (CRKFetchObservingInstructorsByCourseOperation)initWithRequestPerformer:(id)performer;
- (void)cancel;
- (void)compileResultsWithFetchCoursesResult:(id)result fetchScreenObserversResult:(id)observersResult;
- (void)main;
- (void)operationsDidComplete:(id)complete;
@end

@implementation CRKFetchObservingInstructorsByCourseOperation

- (CRKFetchObservingInstructorsByCourseOperation)initWithRequestPerformer:(id)performer
{
  performerCopy = performer;
  v9.receiver = self;
  v9.super_class = CRKFetchObservingInstructorsByCourseOperation;
  v6 = [(CRKFetchObservingInstructorsByCourseOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestPerformer, performer);
  }

  return v7;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = CRKFetchObservingInstructorsByCourseOperation;
  [(CRKFetchObservingInstructorsByCourseOperation *)&v4 cancel];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CRKFetchObservingInstructorsByCourseOperation_cancel__block_invoke;
  block[3] = &unk_278DC10F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __55__CRKFetchObservingInstructorsByCourseOperation_cancel__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isExecuting])
  {
    v2 = [*(a1 + 32) fetchCoursesOperation];
    [v2 cancel];

    v3 = [*(a1 + 32) fetchInstructorsOperation];
    [v3 cancel];

    v4 = *(a1 + 32);
    v5 = CATErrorWithCodeAndUserInfo();
    [v4 endOperationWithError:v5];
  }
}

- (void)main
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    requestPerformer = [(CRKFetchObservingInstructorsByCourseOperation *)self requestPerformer];
    v5 = objc_opt_new();
    v6 = [requestPerformer operationForRequest:v5];
    [(CRKFetchObservingInstructorsByCourseOperation *)self setFetchCoursesOperation:v6];

    requestPerformer2 = [(CRKFetchObservingInstructorsByCourseOperation *)self requestPerformer];
    v8 = objc_opt_new();
    v9 = [requestPerformer2 operationForRequest:v8];
    [(CRKFetchObservingInstructorsByCourseOperation *)self setFetchInstructorsOperation:v9];

    v17 = objc_opt_new();
    fetchCoursesOperation = [(CRKFetchObservingInstructorsByCourseOperation *)self fetchCoursesOperation];
    [v17 addDependency:fetchCoursesOperation];

    fetchInstructorsOperation = [(CRKFetchObservingInstructorsByCourseOperation *)self fetchInstructorsOperation];
    [v17 addDependency:fetchInstructorsOperation];

    [v17 addTarget:self selector:sel_operationsDidComplete_ forOperationEvents:6];
    crk_backgroundQueue = [MEMORY[0x277CF9540] crk_backgroundQueue];
    fetchCoursesOperation2 = [(CRKFetchObservingInstructorsByCourseOperation *)self fetchCoursesOperation];
    [crk_backgroundQueue addOperation:fetchCoursesOperation2];

    crk_backgroundQueue2 = [MEMORY[0x277CF9540] crk_backgroundQueue];
    fetchInstructorsOperation2 = [(CRKFetchObservingInstructorsByCourseOperation *)self fetchInstructorsOperation];
    [crk_backgroundQueue2 addOperation:fetchInstructorsOperation2];

    crk_backgroundQueue3 = [MEMORY[0x277CF9540] crk_backgroundQueue];
    [crk_backgroundQueue3 addOperation:v17];
  }

  else
  {

    [(CRKFetchObservingInstructorsByCourseOperation *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
  }
}

- (void)operationsDidComplete:(id)complete
{
  if (![(CRKFetchObservingInstructorsByCourseOperation *)self isExecuting])
  {
    return;
  }

  fetchCoursesOperation = [(CRKFetchObservingInstructorsByCourseOperation *)self fetchCoursesOperation];
  error = [fetchCoursesOperation error];

  if (error)
  {
    fetchCoursesOperation2 = [(CRKFetchObservingInstructorsByCourseOperation *)self fetchCoursesOperation];
  }

  else
  {
    fetchInstructorsOperation = [(CRKFetchObservingInstructorsByCourseOperation *)self fetchInstructorsOperation];
    error2 = [fetchInstructorsOperation error];

    if (!error2)
    {
      fetchCoursesOperation3 = [(CRKFetchObservingInstructorsByCourseOperation *)self fetchCoursesOperation];
      resultObject = [fetchCoursesOperation3 resultObject];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [CRKFetchObservingInstructorsByCourseOperation operationsDidComplete:];
      }

      fetchInstructorsOperation2 = [(CRKFetchObservingInstructorsByCourseOperation *)self fetchInstructorsOperation];
      resultObject2 = [fetchInstructorsOperation2 resultObject];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [CRKFetchObservingInstructorsByCourseOperation operationsDidComplete:];
      }

      [(CRKFetchObservingInstructorsByCourseOperation *)self compileResultsWithFetchCoursesResult:resultObject fetchScreenObserversResult:resultObject2];
      goto LABEL_8;
    }

    fetchCoursesOperation2 = [(CRKFetchObservingInstructorsByCourseOperation *)self fetchInstructorsOperation];
  }

  resultObject = fetchCoursesOperation2;
  resultObject2 = [fetchCoursesOperation2 error];
  [(CRKFetchObservingInstructorsByCourseOperation *)self endOperationWithError:resultObject2];
LABEL_8:
}

- (void)compileResultsWithFetchCoursesResult:(id)result fetchScreenObserversResult:(id)observersResult
{
  resultCopy = result;
  observersResultCopy = observersResult;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKFetchObservingInstructorsByCourseOperation compileResultsWithFetchCoursesResult:a2 fetchScreenObserversResult:self];
  }

  courses = [resultCopy courses];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __113__CRKFetchObservingInstructorsByCourseOperation_compileResultsWithFetchCoursesResult_fetchScreenObserversResult___block_invoke_2;
  v12[3] = &unk_278DC1FB0;
  v13 = observersResultCopy;
  v10 = observersResultCopy;
  v11 = [courses crk_dictionaryUsingKeyGenerator:&__block_literal_global_45 valueGenerator:v12];

  [(CRKFetchObservingInstructorsByCourseOperation *)self endOperationWithResultObject:v11];
}

id __113__CRKFetchObservingInstructorsByCourseOperation_compileResultsWithFetchCoursesResult_fetchScreenObserversResult___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) instructors];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __113__CRKFetchObservingInstructorsByCourseOperation_compileResultsWithFetchCoursesResult_fetchScreenObserversResult___block_invoke_3;
  v17[3] = &unk_278DC1F40;
  v5 = v3;
  v18 = v5;
  v6 = [v4 crk_mapUsingBlock:v17];

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __113__CRKFetchObservingInstructorsByCourseOperation_compileResultsWithFetchCoursesResult_fetchScreenObserversResult___block_invoke_4;
  v15 = &unk_278DC1F68;
  v16 = v5;
  v7 = v5;
  v8 = [v6 crk_mapUsingBlock:&v12];
  v9 = [v8 sortedArrayUsingComparator:{&__block_literal_global_25, v12, v13, v14, v15}];

  if ([v9 count])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __113__CRKFetchObservingInstructorsByCourseOperation_compileResultsWithFetchCoursesResult_fetchScreenObserversResult___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isObservingStudentScreen] && (objc_msgSend(v3, "sessionIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "groupIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "courseIdentifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqual:", v6), v6, v5, v4, v7))
  {
    v8 = [v3 userIdentifier];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __113__CRKFetchObservingInstructorsByCourseOperation_compileResultsWithFetchCoursesResult_fetchScreenObserversResult___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 instructorsByIdentifier];
  v5 = [v4 objectForKeyedSubscript:v3];

  return v5;
}

uint64_t __113__CRKFetchObservingInstructorsByCourseOperation_compileResultsWithFetchCoursesResult_fetchScreenObserversResult___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 userIdentifier];
  v6 = [v4 userIdentifier];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)operationsDidComplete:.cold.1()
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CRKFetchObservingInstructorsByCourseOperation operationsDidComplete:]"];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v5 handleFailureInFunction:v0 file:@"CRKFetchObservingInstructorsByCourseOperation.m" lineNumber:99 description:{@"expected %@, got %@", v2, v4}];
}

- (void)operationsDidComplete:.cold.2()
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CRKFetchObservingInstructorsByCourseOperation operationsDidComplete:]"];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v5 handleFailureInFunction:v0 file:@"CRKFetchObservingInstructorsByCourseOperation.m" lineNumber:100 description:{@"expected %@, got %@", v2, v4}];
}

- (void)compileResultsWithFetchCoursesResult:(const char *)a1 fetchScreenObserversResult:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"CRKFetchObservingInstructorsByCourseOperation.m" lineNumber:105 description:{@"%@ must be called from the main thread", v4}];
}

@end