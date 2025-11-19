@interface BCSRealTimeShardSignposter
- (id)_initWithShardType:(int64_t)a3 signpostIdentifier:(unint64_t)a4;
@end

@implementation BCSRealTimeShardSignposter

- (id)_initWithShardType:(int64_t)a3 signpostIdentifier:(unint64_t)a4
{
  if ((a3 - 2) > 4)
  {
    v5 = 1;
  }

  else
  {
    v5 = qword_2420E9168[a3 - 2];
  }

  v7.receiver = self;
  v7.super_class = BCSRealTimeShardSignposter;
  result = [(BCSRealTimeSignposter *)&v7 _initWithType:v5 signpostIdentifier:a4];
  if (result)
  {
    *(result + 3) = a3;
  }

  return result;
}

@end