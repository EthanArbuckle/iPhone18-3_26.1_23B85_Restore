@interface FCUserEventHistoryPruningPolicy
- (FCUserEventHistoryPruningPolicy)initWithType:(int64_t)a3 value:(unint64_t)a4;
- (id)description;
@end

@implementation FCUserEventHistoryPruningPolicy

- (FCUserEventHistoryPruningPolicy)initWithType:(int64_t)a3 value:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = FCUserEventHistoryPruningPolicy;
  result = [(FCUserEventHistoryPruningPolicy *)&v7 init];
  if (result)
  {
    result->_type = a3;
    result->_value = a4;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = [(FCUserEventHistoryPruningPolicy *)self type];
  if (v4 > 4)
  {
    v5 = @"MaxTotalSize";
  }

  else
  {
    v5 = off_1E7C3B8B8[v4];
  }

  [v3 appendFormat:@"; type: %@", v5];
  [v3 appendFormat:@"; value: %lu", -[FCUserEventHistoryPruningPolicy value](self, "value")];
  [v3 appendString:@">"];

  return v3;
}

@end