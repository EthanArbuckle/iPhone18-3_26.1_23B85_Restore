@interface ICASActionMenuUsageType
- (ICASActionMenuUsageType)initWithActionMenuUsageType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASActionMenuUsageType

- (ICASActionMenuUsageType)initWithActionMenuUsageType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASActionMenuUsageType;
  result = [(ICASActionMenuUsageType *)&v5 init];
  if (result)
  {
    result->_actionMenuUsageType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  actionMenuUsageType = [(ICASActionMenuUsageType *)self actionMenuUsageType];
  if ((actionMenuUsageType - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF9E8[actionMenuUsageType - 1];
  }
}

@end