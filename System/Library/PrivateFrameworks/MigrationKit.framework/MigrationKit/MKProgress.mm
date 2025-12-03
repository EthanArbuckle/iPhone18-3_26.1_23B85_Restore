@interface MKProgress
- (float)progress:(unint64_t *)progress;
- (void)addCompletedOerationCount:(unint64_t)count;
@end

@implementation MKProgress

- (void)addCompletedOerationCount:(unint64_t)count
{
  completedOperationCount = self->_completedOperationCount;
  if (!completedOperationCount)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    self->_startTime = v6;
    completedOperationCount = self->_completedOperationCount;
  }

  self->_completedOperationCount = completedOperationCount + count;
}

- (float)progress:(unint64_t *)progress
{
  totalOperationCount = self->_totalOperationCount;
  completedOperationCount = self->_completedOperationCount;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  if (progress)
  {
    v8 = 60 * vcvtad_u64_f64((totalOperationCount - completedOperationCount) / (self->_completedOperationCount / (v7 - self->_startTime)) / 60.0);
    if (v8 <= 0x3C)
    {
      v8 = 60;
    }

    *progress = v8;
  }

  return fmin(completedOperationCount / totalOperationCount, 1.0);
}

@end