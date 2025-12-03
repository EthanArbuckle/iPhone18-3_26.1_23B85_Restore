@interface BCSRealTimeSignposter
- (id)_initWithType:(int64_t)type signpostIdentifier:(unint64_t)identifier;
@end

@implementation BCSRealTimeSignposter

- (id)_initWithType:(int64_t)type signpostIdentifier:(unint64_t)identifier
{
  v7.receiver = self;
  v7.super_class = BCSRealTimeSignposter;
  result = [(BCSRealTimeSignposter *)&v7 init];
  if (result)
  {
    *(result + 1) = type;
    *(result + 2) = identifier;
  }

  return result;
}

@end