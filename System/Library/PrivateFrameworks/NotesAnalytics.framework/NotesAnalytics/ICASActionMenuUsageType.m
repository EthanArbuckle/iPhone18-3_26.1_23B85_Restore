@interface ICASActionMenuUsageType
- (ICASActionMenuUsageType)initWithActionMenuUsageType:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASActionMenuUsageType

- (ICASActionMenuUsageType)initWithActionMenuUsageType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASActionMenuUsageType;
  result = [(ICASActionMenuUsageType *)&v5 init];
  if (result)
  {
    result->_actionMenuUsageType = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASActionMenuUsageType *)self actionMenuUsageType];
  if ((v3 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF9E8[v3 - 1];
  }
}

@end