@interface MAProgressReporterSplitter
- (MAProgressReporterSplitter)initWithProgressReporter:(id)a3;
- (id)childProgressReporterToCheckpoint:(double)a3;
@end

@implementation MAProgressReporterSplitter

- (id)childProgressReporterToCheckpoint:(double)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 > 1.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = 134217984;
    v10 = a3;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MAProgressReporter: newCheckpoint (%f) > 1.0", &v9, 0xCu);
  }

  previousCheckpoint = self->_previousCheckpoint;
  if (previousCheckpoint > a3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = 134218240;
    v10 = a3;
    v11 = 2048;
    v12 = previousCheckpoint;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "MAProgressReporter: newCheckpoint (%f) < _previousCheckpoint (%f)", &v9, 0x16u);
    previousCheckpoint = self->_previousCheckpoint;
  }

  v6 = [(MAProgressReporter *)self->_progressReporter childProgressReporterFromStart:previousCheckpoint toEnd:a3];
  self->_previousCheckpoint = a3;
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (MAProgressReporterSplitter)initWithProgressReporter:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MAProgressReporterSplitter;
  v6 = [(MAProgressReporterSplitter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_progressReporter, a3);
    v7->_previousCheckpoint = 0.0;
  }

  return v7;
}

@end