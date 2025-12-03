@interface HDDatabaseTransactionStatistics
- (id)_initWithStartTime:(double)time endTime:(double)endTime;
@end

@implementation HDDatabaseTransactionStatistics

- (id)_initWithStartTime:(double)time endTime:(double)endTime
{
  v7.receiver = self;
  v7.super_class = HDDatabaseTransactionStatistics;
  result = [(HDDatabaseTransactionStatistics *)&v7 init];
  if (result)
  {
    *(result + 1) = time;
    *(result + 2) = endTime;
  }

  return result;
}

@end