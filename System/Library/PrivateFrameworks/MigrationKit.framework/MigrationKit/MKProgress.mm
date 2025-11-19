@interface MKProgress
- (float)progress:(unint64_t *)a3;
- (void)addCompletedOerationCount:(unint64_t)a3;
@end

@implementation MKProgress

- (void)addCompletedOerationCount:(unint64_t)a3
{
  completedOperationCount = self->_completedOperationCount;
  if (!completedOperationCount)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    self->_startTime = v6;
    completedOperationCount = self->_completedOperationCount;
  }

  self->_completedOperationCount = completedOperationCount + a3;
}

- (float)progress:(unint64_t *)a3
{
  totalOperationCount = self->_totalOperationCount;
  completedOperationCount = self->_completedOperationCount;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  if (a3)
  {
    v8 = 60 * vcvtad_u64_f64((totalOperationCount - completedOperationCount) / (self->_completedOperationCount / (v7 - self->_startTime)) / 60.0);
    if (v8 <= 0x3C)
    {
      v8 = 60;
    }

    *a3 = v8;
  }

  return fmin(completedOperationCount / totalOperationCount, 1.0);
}

@end