@interface ICASAccountPurpose
- (ICASAccountPurpose)initWithAccountPurpose:(int64_t)purpose;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASAccountPurpose

- (ICASAccountPurpose)initWithAccountPurpose:(int64_t)purpose
{
  v5.receiver = self;
  v5.super_class = ICASAccountPurpose;
  result = [(ICASAccountPurpose *)&v5 init];
  if (result)
  {
    result->_accountPurpose = purpose;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  accountPurpose = [(ICASAccountPurpose *)self accountPurpose];
  if ((accountPurpose - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF110[accountPurpose - 1];
  }
}

@end