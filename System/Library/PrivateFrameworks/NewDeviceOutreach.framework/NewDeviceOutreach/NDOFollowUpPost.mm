@interface NDOFollowUpPost
+ (id)nextFollowUpPostDateWithDevicesInfo:(id)info;
- (void)performActivityForScheduler:(id)scheduler withCompletionHandler:(id)handler;
@end

@implementation NDOFollowUpPost

- (void)performActivityForScheduler:(id)scheduler withCompletionHandler:(id)handler
{
  schedulerCopy = scheduler;
  handlerCopy = handler;
  [(NDOFollowUpPost *)self setFollowUpPostInProgress:1];
  objc_initWeak(&location, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100011B38;
  v18[3] = &unk_10009A978;
  objc_copyWeak(&v21, &location);
  v8 = schedulerCopy;
  v19 = v8;
  v9 = handlerCopy;
  v20 = v9;
  v10 = [NSTimer timerWithTimeInterval:1 repeats:v18 block:2000000000.0];
  [(NDOFollowUpPost *)self setFollowUpPostTimer:v10];

  v11 = +[NSRunLoop mainRunLoop];
  followUpPostTimer = [(NDOFollowUpPost *)self followUpPostTimer];
  [v11 addTimer:followUpPostTimer forMode:NSDefaultRunLoopMode];

  v13 = [[NDOAgent alloc] initWithCallingProcessBundleID:@"com.apple.ndoagent.followuppost"];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100011C08;
  v15[3] = &unk_10009ABC0;
  objc_copyWeak(&v17, &location);
  v15[4] = self;
  v14 = v9;
  v16 = v14;
  [(NDOAgent *)v13 getAllFUPEligibleDeviceInfosUsingPolicy:2 updateFollowUps:0 withReply:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

+ (id)nextFollowUpPostDateWithDevicesInfo:(id)info
{
  infoCopy = info;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100001EFC;
  v11 = sub_100003F84;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100012008;
  v6[3] = &unk_10009ABE8;
  v6[4] = &v7;
  [infoCopy enumerateObjectsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

@end