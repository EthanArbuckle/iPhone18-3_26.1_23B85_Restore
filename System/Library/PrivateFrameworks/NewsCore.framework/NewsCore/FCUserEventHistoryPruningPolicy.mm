@interface FCUserEventHistoryPruningPolicy
- (FCUserEventHistoryPruningPolicy)initWithType:(int64_t)type value:(unint64_t)value;
- (id)description;
@end

@implementation FCUserEventHistoryPruningPolicy

- (FCUserEventHistoryPruningPolicy)initWithType:(int64_t)type value:(unint64_t)value
{
  v7.receiver = self;
  v7.super_class = FCUserEventHistoryPruningPolicy;
  result = [(FCUserEventHistoryPruningPolicy *)&v7 init];
  if (result)
  {
    result->_type = type;
    result->_value = value;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  type = [(FCUserEventHistoryPruningPolicy *)self type];
  if (type > 4)
  {
    v5 = @"MaxTotalSize";
  }

  else
  {
    v5 = off_1E7C3B8B8[type];
  }

  [v3 appendFormat:@"; type: %@", v5];
  [v3 appendFormat:@"; value: %lu", -[FCUserEventHistoryPruningPolicy value](self, "value")];
  [v3 appendString:@">"];

  return v3;
}

@end