@interface ICASGmRankingStrategyType
- (ICASGmRankingStrategyType)initWithGmRankingStrategyType:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASGmRankingStrategyType

- (ICASGmRankingStrategyType)initWithGmRankingStrategyType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASGmRankingStrategyType;
  result = [(ICASGmRankingStrategyType *)&v5 init];
  if (result)
  {
    result->_gmRankingStrategyType = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASGmRankingStrategyType *)self gmRankingStrategyType];
  if ((v3 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AFFA0[v3 - 1];
  }
}

@end