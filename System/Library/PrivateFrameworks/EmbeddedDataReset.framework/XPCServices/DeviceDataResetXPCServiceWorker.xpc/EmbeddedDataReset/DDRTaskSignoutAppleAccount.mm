@interface DDRTaskSignoutAppleAccount
- (void)run;
@end

@implementation DDRTaskSignoutAppleAccount

- (void)run
{
  v2 = dispatch_semaphore_create(0);
  v3 = [[AMSSignOutTask alloc] initWithAccounts:0];
  v4 = [v3 performTask];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100002C20;
  v9[3] = &unk_1000145D8;
  v5 = v2;
  v10 = v5;
  [v4 addFinishBlock:v9];
  v6 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = DDRLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Apple Account signout timed out", v8, 2u);
    }
  }
}

@end