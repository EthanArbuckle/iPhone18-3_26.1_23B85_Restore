@interface ICASPwdModeChangeContextPath
- (ICASPwdModeChangeContextPath)initWithPwdModeChangeContextPath:(int64_t)path;
- (id)toJsonValueAndReturnError:(id *)error;
@end

@implementation ICASPwdModeChangeContextPath

- (ICASPwdModeChangeContextPath)initWithPwdModeChangeContextPath:(int64_t)path
{
  v5.receiver = self;
  v5.super_class = ICASPwdModeChangeContextPath;
  result = [(ICASPwdModeChangeContextPath *)&v5 init];
  if (result)
  {
    result->_pwdModeChangeContextPath = path;
  }

  return result;
}

- (id)toJsonValueAndReturnError:(id *)error
{
  pwdModeChangeContextPath = [(ICASPwdModeChangeContextPath *)self pwdModeChangeContextPath];
  if ((pwdModeChangeContextPath - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_2799AF668[pwdModeChangeContextPath - 1];
  }
}

@end