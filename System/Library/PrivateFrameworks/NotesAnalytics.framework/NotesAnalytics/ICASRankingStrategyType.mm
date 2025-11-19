@interface ICASRankingStrategyType
- (ICASRankingStrategyType)initWithRankingStrategyType:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASRankingStrategyType

- (ICASRankingStrategyType)initWithRankingStrategyType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASRankingStrategyType;
  result = [(ICASRankingStrategyType *)&v5 init];
  if (result)
  {
    result->_rankingStrategyType = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASRankingStrategyType *)self rankingStrategyType];
  if ((v3 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF0B0[v3 - 1];
  }
}

@end