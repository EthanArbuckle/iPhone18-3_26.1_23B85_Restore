@interface HDHRAFibBurdenSevenDayAnalysisBreadcrumbManager
- (HDHRAFibBurdenSevenDayAnalysisBreadcrumbManager)initWithKeyValueDomain:(id)domain dateGenerator:(id)generator queue:(id)queue;
- (HDHRAFibBurdenSevenDayAnalysisBreadcrumbManager)initWithProfile:(id)profile;
- (id)_dateKeyForBreadcrumb:(int64_t)breadcrumb;
- (id)fetchBreadcrumbsWithError:(id *)error;
- (void)_queue_dropAnalysisResultBreadcrumbWithContext:(id)context date:(id)date;
- (void)_queue_dropBreadcrumb:(int64_t)breadcrumb date:(id)date;
- (void)dropAnalysisResultBreadcrumbWithContext:(id)context;
- (void)dropBreadcrumb:(int64_t)breadcrumb;
@end

@implementation HDHRAFibBurdenSevenDayAnalysisBreadcrumbManager

- (HDHRAFibBurdenSevenDayAnalysisBreadcrumbManager)initWithProfile:(id)profile
{
  v4 = [MEMORY[0x277D10718] hdhr_aFibBurdenProtectedSyncedDomainForProfile:profile];
  v5 = HKCreateSerialDispatchQueue();
  v6 = [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManager *)self initWithKeyValueDomain:v4 dateGenerator:&__block_literal_global_14 queue:v5];

  return v6;
}

- (HDHRAFibBurdenSevenDayAnalysisBreadcrumbManager)initWithKeyValueDomain:(id)domain dateGenerator:(id)generator queue:(id)queue
{
  domainCopy = domain;
  generatorCopy = generator;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = HDHRAFibBurdenSevenDayAnalysisBreadcrumbManager;
  v12 = [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManager *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_keyValueDomain, domain);
    v14 = MEMORY[0x22AACDB50](generatorCopy);
    dateGenerator = v13->_dateGenerator;
    v13->_dateGenerator = v14;

    objc_storeStrong(&v13->_queue, queue);
  }

  return v13;
}

- (void)dropBreadcrumb:(int64_t)breadcrumb
{
  v5 = (*(self->_dateGenerator + 2))();
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HDHRAFibBurdenSevenDayAnalysisBreadcrumbManager_dropBreadcrumb___block_invoke;
  block[3] = &unk_278660C58;
  v9 = v5;
  breadcrumbCopy = breadcrumb;
  block[4] = self;
  v7 = v5;
  dispatch_async(queue, block);
}

- (void)dropAnalysisResultBreadcrumbWithContext:(id)context
{
  contextCopy = context;
  v5 = (*(self->_dateGenerator + 2))();
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__HDHRAFibBurdenSevenDayAnalysisBreadcrumbManager_dropAnalysisResultBreadcrumbWithContext___block_invoke;
  block[3] = &unk_278660440;
  block[4] = self;
  v10 = contextCopy;
  v11 = v5;
  v7 = v5;
  v8 = contextCopy;
  dispatch_async(queue, block);
}

- (id)fetchBreadcrumbsWithError:(id *)error
{
  keyValueDomain = self->_keyValueDomain;
  v6 = [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManager *)self _dateKeyForBreadcrumb:0];
  v7 = [(HDKeyValueDomain *)keyValueDomain dateForKey:v6 error:error];

  v8 = 0;
  if (!*error)
  {
    v9 = self->_keyValueDomain;
    v10 = [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManager *)self _dateKeyForBreadcrumb:1];
    v11 = [(HDKeyValueDomain *)v9 dateForKey:v10 error:error];

    if (*error)
    {
      v8 = 0;
    }

    else
    {
      v12 = self->_keyValueDomain;
      v13 = [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManager *)self _dateKeyForBreadcrumb:2];
      v14 = [(HDKeyValueDomain *)v12 dateForKey:v13 error:error];

      if (*error)
      {
        v8 = 0;
      }

      else
      {
        v15 = self->_keyValueDomain;
        v16 = [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManager *)self _dateKeyForBreadcrumb:3];
        v17 = [(HDKeyValueDomain *)v15 dateForKey:v16 error:error];

        if (*error)
        {
          v8 = 0;
        }

        else
        {
          v18 = self->_keyValueDomain;
          v19 = [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManager *)self _dateKeyForBreadcrumb:4];
          v20 = [(HDKeyValueDomain *)v18 dateForKey:v19 error:error];

          if (*error)
          {
            v8 = 0;
          }

          else
          {
            v21 = self->_keyValueDomain;
            v22 = [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManager *)self _dateKeyForBreadcrumb:5];
            v23 = [(HDKeyValueDomain *)v21 dateForKey:v22 error:error];

            if (*error)
            {
              v8 = 0;
            }

            else
            {
              v24 = self->_keyValueDomain;
              v25 = [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManager *)self _dateKeyForBreadcrumb:6];
              v26 = [(HDKeyValueDomain *)v24 dateForKey:v25 error:error];

              if (*error)
              {
                v8 = 0;
              }

              else
              {
                v27 = [(HDKeyValueDomain *)self->_keyValueDomain dateForKey:@"SevenDayAnalysisBreadcrumbAnalysisResultGiven" error:error];
                if (*error)
                {
                  v8 = 0;
                }

                else
                {
                  v30 = v27;
                  v28 = [(HDKeyValueDomain *)self->_keyValueDomain stringForKey:@"SevenDayAnalysisBreadcrumbAnalysisResultContext" error:error];
                  if (*error)
                  {
                    v8 = 0;
                  }

                  else
                  {
                    v8 = [objc_alloc(MEMORY[0x277D12F58]) initWithAlarmFiredDate:v7 xpcActivityFiredDate:v11 protectedDataOperationRunDate:v14 analysisStartedDate:v17 tachogramsClassifiedDate:v20 analysisEndedDate:v23 analysisRetryLaterRequestedDate:v26 lastAnalysisResultDate:v30 lastAnalysisResultContext:v28];
                  }

                  v27 = v30;
                }
              }
            }
          }
        }
      }
    }
  }

  return v8;
}

- (void)_queue_dropBreadcrumb:(int64_t)breadcrumb date:(id)date
{
  queue = self->_queue;
  dateCopy = date;
  dispatch_assert_queue_V2(queue);
  v8 = [(HDHRAFibBurdenSevenDayAnalysisBreadcrumbManager *)self _dateKeyForBreadcrumb:breadcrumb];
  keyValueDomain = self->_keyValueDomain;
  v12 = 0;
  [(HDKeyValueDomain *)keyValueDomain setDate:dateCopy forKey:v8 error:&v12];

  v10 = v12;
  if (v10)
  {
    _HKInitializeLogging();
    v11 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [HDHRAFibBurdenSevenDayAnalysisBreadcrumbManager _queue_dropBreadcrumb:date:];
    }
  }
}

- (void)_queue_dropAnalysisResultBreadcrumbWithContext:(id)context date:(id)date
{
  queue = self->_queue;
  dateCopy = date;
  contextCopy = context;
  dispatch_assert_queue_V2(queue);
  keyValueDomain = self->_keyValueDomain;
  v16 = 0;
  [(HDKeyValueDomain *)keyValueDomain setDate:dateCopy forKey:@"SevenDayAnalysisBreadcrumbAnalysisResultGiven" error:&v16];

  v10 = v16;
  if (v10)
  {
    _HKInitializeLogging();
    v11 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [HDHRAFibBurdenSevenDayAnalysisBreadcrumbManager _queue_dropBreadcrumb:date:];
    }
  }

  v12 = self->_keyValueDomain;
  v15 = 0;
  [(HDKeyValueDomain *)v12 setString:contextCopy forKey:@"SevenDayAnalysisBreadcrumbAnalysisResultContext" error:&v15];

  v13 = v15;
  if (v13)
  {
    _HKInitializeLogging();
    v14 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [HDHRAFibBurdenSevenDayAnalysisBreadcrumbManager _queue_dropAnalysisResultBreadcrumbWithContext:date:];
    }
  }
}

- (id)_dateKeyForBreadcrumb:(int64_t)breadcrumb
{
  if ((breadcrumb - 1) > 5)
  {
    return @"SevenDayAnalysisBreadcrumbAlarmFired";
  }

  else
  {
    return off_278660C78[breadcrumb - 1];
  }
}

- (void)_queue_dropBreadcrumb:date:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@] Error when saving date: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_queue_dropAnalysisResultBreadcrumbWithContext:date:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@] Error when saving context: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end