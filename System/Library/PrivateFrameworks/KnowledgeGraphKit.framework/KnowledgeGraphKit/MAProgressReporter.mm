@interface MAProgressReporter
+ (MAProgressReporter)ignoreProgress;
+ (MAProgressReporter)progressReporterWithProgressBlock:(id)a3 throughputReportBlock:(id)a4;
- (BOOL)isCancelled;
- (BOOL)isCancelledWithProgress:(double)a3;
- (BOOL)isCancelledWithProgress:(double)a3 currentTime:(double)a4;
- (BOOL)isCancelledWithUnitsCompleted:(unint64_t)a3 outOf:(unint64_t)a4;
- (id)childProgressReporterForStep:(unint64_t)a3 outOf:(unint64_t)a4;
- (id)childProgressReporterFromStart:(double)a3 toEnd:(double)a4;
- (id)childProgressWithOffset:(double)a3 scale:(double)a4;
- (id)initForSubclasses;
- (id)progressReportersForParallelOperationsWithCount:(unint64_t)a3;
@end

@implementation MAProgressReporter

- (id)initForSubclasses
{
  v3.receiver = self;
  v3.super_class = MAProgressReporter;
  return [(MAProgressReporter *)&v3 init];
}

- (id)progressReportersForParallelOperationsWithCount:(unint64_t)a3
{
  v4 = [[MAParallelProgress alloc] initWithProgressReporter:self parallelOperationCount:a3];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a3];
  if (a3)
  {
    v6 = 0;
    do
    {
      v7 = [[MAParallelProgressReporter alloc] initWithParallelProgress:v4 index:v6];
      [v5 addObject:v7];

      ++v6;
    }

    while (a3 != v6);
  }

  return v5;
}

+ (MAProgressReporter)progressReporterWithProgressBlock:(id)a3 throughputReportBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MALegacyProgressReporter alloc] initWithProgressBlock:v6];

  [(MAProgressReporter *)v7 setThroughputReportBlock:v5];

  return v7;
}

+ (MAProgressReporter)ignoreProgress
{
  v2 = objc_alloc_init(MAIgnoreProgressReporter);

  return v2;
}

- (id)childProgressReporterForStep:(unint64_t)a3 outOf:(unint64_t)a4
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 >= a4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v10[0] = 67109376;
    v10[1] = a3;
    v11 = 1024;
    v12 = a4;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MAProgressReporter: step (%d) >= count (%d)", v10, 0xEu);
  }

  v7 = [(MAProgressReporter *)self childProgressWithOffset:a3 / a4 scale:1.0 / a4];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)childProgressReporterFromStart:(double)a3 toEnd:(double)a4
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3 < 0.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v10 = 134217984;
    v11 = a3;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MAProgressReporter: start (%f) < 0.0", &v10, 0xCu);
  }

  if (a3 > a4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v10 = 134218240;
    v11 = a3;
    v12 = 2048;
    v13 = a4;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MAProgressReporter: start (%f) > end (%f)", &v10, 0x16u);
  }

  if (a4 > 1.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v10 = 134217984;
    v11 = a4;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MAProgressReporter: end (%f) > 1.0", &v10, 0xCu);
  }

  v7 = [(MAProgressReporter *)self childProgressWithOffset:a3 scale:a4 - a3];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)childProgressWithOffset:(double)a3 scale:(double)a4
{
  v4 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v4);
}

- (BOOL)isCancelledWithUnitsCompleted:(unint64_t)a3 outOf:(unint64_t)a4
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 > a4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v10[0] = 67109376;
    v10[1] = a3;
    v11 = 1024;
    v12 = a4;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MAProgressReporter: unitsCompleted (%d) > total (%d)", v10, 0xEu);
    if (a4)
    {
      goto LABEL_4;
    }
  }

  else if (a4)
  {
LABEL_4:
    v7 = a3 / a4;
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

- (BOOL)isCancelledWithProgress:(double)a3 currentTime:(double)a4
{
  v4 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v4);
}

- (BOOL)isCancelledWithProgress:(double)a3
{
  Current = CFAbsoluteTimeGetCurrent();

  return [(MAProgressReporter *)self isCancelledWithProgress:a3 currentTime:Current];
}

- (BOOL)isCancelled
{
  v2 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

@end