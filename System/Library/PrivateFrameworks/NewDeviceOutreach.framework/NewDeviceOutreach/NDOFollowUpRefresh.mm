@interface NDOFollowUpRefresh
+ (id)nextFollowUpRefreshDateWithDevicesInfo:(id)info isInitialCall:(BOOL)call;
- (void)performActivityForScheduler:(id)scheduler withCompletionHandler:(id)handler;
@end

@implementation NDOFollowUpRefresh

- (void)performActivityForScheduler:(id)scheduler withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [[NDOAgent alloc] initWithCallingProcessBundleID:@"com.apple.ndoagent.followuprefresh"];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100018B48;
  v8[3] = &unk_10009AE38;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(NDOAgent *)v6 getAllFUPEligibleDeviceInfosUsingPolicy:1 updateFollowUps:0 withReply:v8];
}

+ (id)nextFollowUpRefreshDateWithDevicesInfo:(id)info isInitialCall:(BOOL)call
{
  infoCopy = info;
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 objectForKey:@"OneDayInterval"];
  [v7 doubleValue];
  v9 = v8;

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100001F1C;
  v19 = sub_100003F94;
  v20 = 0;
  if (!call)
  {
    v10 = [NSDate dateWithTimeIntervalSinceNow:v9];
    v11 = v16[5];
    v16[5] = v10;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100018EF4;
  v14[3] = &unk_10009AE60;
  *&v14[5] = v9;
  v14[4] = &v15;
  [infoCopy enumerateObjectsUsingBlock:v14];
  v12 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v12;
}

@end