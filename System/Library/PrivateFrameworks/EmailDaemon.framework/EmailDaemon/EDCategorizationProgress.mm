@interface EDCategorizationProgress
- (EDCategorizationProgress)initWithTotalMessagesToCategorize:(unint64_t)a3 categorizedMessages:(unint64_t)a4;
@end

@implementation EDCategorizationProgress

- (EDCategorizationProgress)initWithTotalMessagesToCategorize:(unint64_t)a3 categorizedMessages:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = EDCategorizationProgress;
  result = [(EDCategorizationProgress *)&v7 init];
  if (result)
  {
    result->_totalMessagesToCategorize = a3;
    result->_categorizedMessages = a4;
  }

  return result;
}

@end