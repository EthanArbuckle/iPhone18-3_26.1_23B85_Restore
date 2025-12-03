@interface MAProgressReporter
+ (MAProgressReporter)ignoreProgress;
+ (MAProgressReporter)progressReporterWithProgressBlock:(id)block throughputReportBlock:(id)reportBlock;
- (BOOL)isCancelled;
- (BOOL)isCancelledWithProgress:(double)progress;
- (BOOL)isCancelledWithProgress:(double)progress currentTime:(double)time;
- (BOOL)isCancelledWithUnitsCompleted:(unint64_t)completed outOf:(unint64_t)of;
- (id)childProgressReporterForStep:(unint64_t)step outOf:(unint64_t)of;
- (id)childProgressReporterFromStart:(double)start toEnd:(double)end;
- (id)childProgressWithOffset:(double)offset scale:(double)scale;
- (id)initForSubclasses;
- (id)progressReportersForParallelOperationsWithCount:(unint64_t)count;
@end

@implementation MAProgressReporter

- (id)initForSubclasses
{
  v3.receiver = self;
  v3.super_class = MAProgressReporter;
  return [(MAProgressReporter *)&v3 init];
}

- (id)progressReportersForParallelOperationsWithCount:(unint64_t)count
{
  v4 = [[MAParallelProgress alloc] initWithProgressReporter:self parallelOperationCount:count];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:count];
  if (count)
  {
    v6 = 0;
    do
    {
      v7 = [[MAParallelProgressReporter alloc] initWithParallelProgress:v4 index:v6];
      [v5 addObject:v7];

      ++v6;
    }

    while (count != v6);
  }

  return v5;
}

+ (MAProgressReporter)progressReporterWithProgressBlock:(id)block throughputReportBlock:(id)reportBlock
{
  reportBlockCopy = reportBlock;
  blockCopy = block;
  v7 = [[MALegacyProgressReporter alloc] initWithProgressBlock:blockCopy];

  [(MAProgressReporter *)v7 setThroughputReportBlock:reportBlockCopy];

  return v7;
}

+ (MAProgressReporter)ignoreProgress
{
  v2 = objc_alloc_init(MAIgnoreProgressReporter);

  return v2;
}

- (id)childProgressReporterForStep:(unint64_t)step outOf:(unint64_t)of
{
  v13 = *MEMORY[0x277D85DE8];
  if (step >= of && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v10[0] = 67109376;
    v10[1] = step;
    v11 = 1024;
    ofCopy = of;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MAProgressReporter: step (%d) >= count (%d)", v10, 0xEu);
  }

  v7 = [(MAProgressReporter *)self childProgressWithOffset:step / of scale:1.0 / of];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)childProgressReporterFromStart:(double)start toEnd:(double)end
{
  v14 = *MEMORY[0x277D85DE8];
  if (start < 0.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v10 = 134217984;
    endCopy2 = start;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MAProgressReporter: start (%f) < 0.0", &v10, 0xCu);
  }

  if (start > end && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v10 = 134218240;
    endCopy2 = start;
    v12 = 2048;
    endCopy = end;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MAProgressReporter: start (%f) > end (%f)", &v10, 0x16u);
  }

  if (end > 1.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v10 = 134217984;
    endCopy2 = end;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MAProgressReporter: end (%f) > 1.0", &v10, 0xCu);
  }

  start = [(MAProgressReporter *)self childProgressWithOffset:start scale:end - start];
  v8 = *MEMORY[0x277D85DE8];

  return start;
}

- (id)childProgressWithOffset:(double)offset scale:(double)scale
{
  v4 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v4);
}

- (BOOL)isCancelledWithUnitsCompleted:(unint64_t)completed outOf:(unint64_t)of
{
  v13 = *MEMORY[0x277D85DE8];
  if (completed > of && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v10[0] = 67109376;
    v10[1] = completed;
    v11 = 1024;
    ofCopy = of;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MAProgressReporter: unitsCompleted (%d) > total (%d)", v10, 0xEu);
    if (of)
    {
      goto LABEL_4;
    }
  }

  else if (of)
  {
LABEL_4:
    v7 = completed / of;
    goto LABEL_8;
  }

  v7 = 1.0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    LOWORD(v10[0]) = 0;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MAProgressReporter: total = 0", v10, 2u);
  }

LABEL_8:
  result = [(MAProgressReporter *)self isCancelledWithProgress:v7];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isCancelledWithProgress:(double)progress currentTime:(double)time
{
  v4 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v4);
}

- (BOOL)isCancelledWithProgress:(double)progress
{
  Current = CFAbsoluteTimeGetCurrent();

  return [(MAProgressReporter *)self isCancelledWithProgress:progress currentTime:Current];
}

- (BOOL)isCancelled
{
  v2 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

@end