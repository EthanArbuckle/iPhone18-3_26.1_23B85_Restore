@interface ICASAccountType
- (ICASAccountType)initWithAccountType:(int64_t)type;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASAccountType

- (ICASAccountType)initWithAccountType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ICASAccountType;
  result = [(ICASAccountType *)&v5 init];
  if (result)
  {
    result->_accountType = type;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  accountType = [(ICASAccountType *)self accountType];
  if ((accountType - 1) > 0xC)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF940[accountType - 1];
  }
}

@end