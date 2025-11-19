@interface BCSRealTimeSignposter
- (id)_initWithType:(int64_t)a3 signpostIdentifier:(unint64_t)a4;
@end

@implementation BCSRealTimeSignposter

- (id)_initWithType:(int64_t)a3 signpostIdentifier:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = BCSRealTimeSignposter;
  result = [(BCSRealTimeSignposter *)&v7 init];
  if (result)
  {
    *(result + 1) = a3;
    *(result + 2) = a4;
  }

  return result;
}

@end