@interface ICASRankingStrategyType
- (ICASRankingStrategyType)initWithRankingStrategyType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASRankingStrategyType

- (ICASRankingStrategyType)initWithRankingStrategyType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASRankingStrategyType;
  result = [(ICASRankingStrategyType *)&v5 init];
  if (result)
  {
    result->_rankingStrategyType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  rankingStrategyType = [(ICASRankingStrategyType *)self rankingStrategyType];
  if ((rankingStrategyType - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF0B0[rankingStrategyType - 1];
  }
}

@end