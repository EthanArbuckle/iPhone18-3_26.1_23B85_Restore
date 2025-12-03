@interface EDCategorizationProgress
- (EDCategorizationProgress)initWithTotalMessagesToCategorize:(unint64_t)categorize categorizedMessages:(unint64_t)messages;
@end

@implementation EDCategorizationProgress

- (EDCategorizationProgress)initWithTotalMessagesToCategorize:(unint64_t)categorize categorizedMessages:(unint64_t)messages
{
  v7.receiver = self;
  v7.super_class = EDCategorizationProgress;
  result = [(EDCategorizationProgress *)&v7 init];
  if (result)
  {
    result->_totalMessagesToCategorize = categorize;
    result->_categorizedMessages = messages;
  }

  return result;
}

@end