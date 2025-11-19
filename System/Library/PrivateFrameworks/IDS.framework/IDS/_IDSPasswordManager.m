@interface _IDSPasswordManager
- (void)setPassword:(id)a3 forUsername:(id)a4 onService:(id)a5 completionBlock:(id)a6;
@end

@implementation _IDSPasswordManager

- (void)setPassword:(id)a3 forUsername:(id)a4 onService:(id)a5 completionBlock:(id)a6
{
  v15 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  if (_IDSRunningInDaemon())
  {
    sub_195B2AC6C(a2, self);
  }

  v14 = +[IDSDaemonController sharedInstance];
  [v14 setPassword:v13 forUsername:v15 onService:v11];

  if (v12)
  {
    v12[2](v12, v15, v11, 1);
  }
}

@end