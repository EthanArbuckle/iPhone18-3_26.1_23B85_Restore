@interface _IDSPasswordManager
- (void)setPassword:(id)password forUsername:(id)username onService:(id)service completionBlock:(id)block;
@end

@implementation _IDSPasswordManager

- (void)setPassword:(id)password forUsername:(id)username onService:(id)service completionBlock:(id)block
{
  usernameCopy = username;
  serviceCopy = service;
  blockCopy = block;
  passwordCopy = password;
  if (_IDSRunningInDaemon())
  {
    sub_195B2AC6C(a2, self);
  }

  v14 = +[IDSDaemonController sharedInstance];
  [v14 setPassword:passwordCopy forUsername:usernameCopy onService:serviceCopy];

  if (blockCopy)
  {
    blockCopy[2](blockCopy, usernameCopy, serviceCopy, 1);
  }
}

@end