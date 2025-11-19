@interface UserProtectedConfig
- (UserProtectedConfig)init;
@end

@implementation UserProtectedConfig

- (UserProtectedConfig)init
{
  v3.receiver = self;
  v3.super_class = UserProtectedConfig;
  result = [(UserProtectedConfig *)&v3 init];
  if (result)
  {
    *&result->_loginEnabled = -1;
    *&result->_attentionDetectionEnabled = -1;
    *&result->_unlockEnabled = -1;
  }

  return result;
}

@end