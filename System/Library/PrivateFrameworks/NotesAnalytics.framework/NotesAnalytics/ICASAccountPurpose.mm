@interface ICASAccountPurpose
- (ICASAccountPurpose)initWithAccountPurpose:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASAccountPurpose

- (ICASAccountPurpose)initWithAccountPurpose:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASAccountPurpose;
  result = [(ICASAccountPurpose *)&v5 init];
  if (result)
  {
    result->_accountPurpose = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASAccountPurpose *)self accountPurpose];
  if ((v3 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF110[v3 - 1];
  }
}

@end