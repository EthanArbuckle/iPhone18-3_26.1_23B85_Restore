@interface FCArticleSearchOperationFeedbackResult
- (FCArticleSearchOperationFeedbackResult)initWithSearchOperationRankingFeedBack:(id)a3;
@end

@implementation FCArticleSearchOperationFeedbackResult

- (FCArticleSearchOperationFeedbackResult)initWithSearchOperationRankingFeedBack:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FCArticleSearchOperationFeedbackResult;
  v5 = [(FCArticleSearchOperationFeedbackResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    resultRankingFeedback = v5->_resultRankingFeedback;
    v5->_resultRankingFeedback = v6;
  }

  return v5;
}

@end