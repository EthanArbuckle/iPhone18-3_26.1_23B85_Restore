@interface BCSRealTimeShardSignposter
- (id)_initWithShardType:(int64_t)type signpostIdentifier:(unint64_t)identifier;
@end

@implementation BCSRealTimeShardSignposter

- (id)_initWithShardType:(int64_t)type signpostIdentifier:(unint64_t)identifier
{
  if ((type - 2) > 4)
  {
    v5 = 1;
  }

  else
  {
    v5 = qword_2420E9168[type - 2];
  }

  v7.receiver = self;
  v7.super_class = BCSRealTimeShardSignposter;
  result = [(BCSRealTimeSignposter *)&v7 _initWithType:v5 signpostIdentifier:identifier];
  if (result)
  {
    *(result + 3) = type;
  }

  return result;
}

@end