@interface ICASAccountType
- (ICASAccountType)initWithAccountType:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASAccountType

- (ICASAccountType)initWithAccountType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASAccountType;
  result = [(ICASAccountType *)&v5 init];
  if (result)
  {
    result->_accountType = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASAccountType *)self accountType];
  if ((v3 - 1) > 0xC)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF940[v3 - 1];
  }
}

@end