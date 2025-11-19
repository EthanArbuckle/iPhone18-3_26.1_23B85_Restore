@interface SystemProtectedConfig
- (SystemProtectedConfig)init;
@end

@implementation SystemProtectedConfig

- (SystemProtectedConfig)init
{
  v4.receiver = self;
  v4.super_class = SystemProtectedConfig;
  result = [(SystemProtectedConfig *)&v4 init];
  if (result)
  {
    *&v3 = -1;
    *(&v3 + 1) = -1;
    *&result->_unlockTokenMaxLifetime = v3;
    *&result->_biometryEnabled = v3;
  }

  return result;
}

@end