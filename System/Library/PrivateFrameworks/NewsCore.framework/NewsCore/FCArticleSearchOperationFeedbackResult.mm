@interface FCArticleSearchOperationFeedbackResult
- (FCArticleSearchOperationFeedbackResult)initWithSearchOperationRankingFeedBack:(id)back;
@end

@implementation FCArticleSearchOperationFeedbackResult

- (FCArticleSearchOperationFeedbackResult)initWithSearchOperationRankingFeedBack:(id)back
{
  backCopy = back;
  v9.receiver = self;
  v9.super_class = FCArticleSearchOperationFeedbackResult;
  v5 = [(FCArticleSearchOperationFeedbackResult *)&v9 init];
  if (v5)
  {
    v6 = [backCopy copy];
    resultRankingFeedback = v5->_resultRankingFeedback;
    v5->_resultRankingFeedback = v6;
  }

  return v5;
}

@end