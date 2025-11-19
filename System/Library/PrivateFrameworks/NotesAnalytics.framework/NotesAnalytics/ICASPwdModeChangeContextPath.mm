@interface ICASPwdModeChangeContextPath
- (ICASPwdModeChangeContextPath)initWithPwdModeChangeContextPath:(int64_t)a3;
- (id)toJsonValueAndReturnError:(id *)a3;
@end

@implementation ICASPwdModeChangeContextPath

- (ICASPwdModeChangeContextPath)initWithPwdModeChangeContextPath:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICASPwdModeChangeContextPath;
  result = [(ICASPwdModeChangeContextPath *)&v5 init];
  if (result)
  {
    result->_pwdModeChangeContextPath = a3;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)a3
{
  v3 = [(ICASPwdModeChangeContextPath *)self pwdModeChangeContextPath];
  if ((v3 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF668[v3 - 1];
  }
}

@end