@interface ICASGmRankingStrategyType
- (ICASGmRankingStrategyType)initWithGmRankingStrategyType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASGmRankingStrategyType

- (ICASGmRankingStrategyType)initWithGmRankingStrategyType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASGmRankingStrategyType;
  result = [(ICASGmRankingStrategyType *)&v5 init];
  if (result)
  {
    result->_gmRankingStrategyType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  gmRankingStrategyType = [(ICASGmRankingStrategyType *)self gmRankingStrategyType];
  if ((gmRankingStrategyType - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AFFA0[gmRankingStrategyType - 1];
  }
}

@end