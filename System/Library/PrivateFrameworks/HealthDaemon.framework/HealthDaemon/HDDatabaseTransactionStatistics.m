@interface HDDatabaseTransactionStatistics
- (id)_initWithStartTime:(double)a3 endTime:(double)a4;
@end

@implementation HDDatabaseTransactionStatistics

- (id)_initWithStartTime:(double)a3 endTime:(double)a4
{
  v7.receiver = self;
  v7.super_class = HDDatabaseTransactionStatistics;
  result = [(HDDatabaseTransactionStatistics *)&v7 init];
  if (result)
  {
    *(result + 1) = a3;
    *(result + 2) = a4;
  }

  return result;
}

@end