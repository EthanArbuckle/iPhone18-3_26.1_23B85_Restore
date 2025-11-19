@interface DDRTaskRegenerateRapportSelfIdentity
- (void)run;
@end

@implementation DDRTaskRegenerateRapportSelfIdentity

- (void)run
{
  v2 = dispatch_semaphore_create(0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005C84;
  v7[3] = &unk_100014710;
  v8 = objc_alloc_init(RPClient);
  v3 = v2;
  v9 = v3;
  v4 = v8;
  [v4 regenerateSelfIdentity:@"ResetNetworkSettings" withCompletion:v7];
  v5 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v3, v5))
  {
    v6 = DDRLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100009058(v6);
    }
  }
}

@end