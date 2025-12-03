@interface NDOAppleCareLandingViewController
- (BOOL)isNewStackFollowUpItem:(id)item;
- (id)manager;
- (void)_clearNotificationForSerialNumber:(id)number completion:(id)completion;
- (void)amsUIViewFinishedWithCompletion:(unint64_t)completion;
- (void)amsUIViewFinishedWithCompletion:(unint64_t)completion params:(id)params;
- (void)outreachFinishedForDeviceWithSerialNumber:(id)number withCompletion:(unint64_t)completion;
- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion;
- (void)processNewStackFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion;
- (void)webviewFinishedWithCompletion:(unint64_t)completion;
@end

@implementation NDOAppleCareLandingViewController

- (id)manager
{
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)isNewStackFollowUpItem:(id)item
{
  userInfo = [item userInfo];
  v4 = [userInfo objectForKey:@"ndo-follow-up-new-stack"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (void)processNewStackFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion
{
  itemCopy = item;
  actionCopy = action;
  completionCopy = completion;
  v10 = _NDOLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v36 = "[NDOAppleCareLandingViewController processNewStackFollowUpItem:selectedAction:completion:]";
    v37 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Processing new stack follow up item, %@", buf, 0x16u);
  }

  userInfo = [itemCopy userInfo];
  v12 = [userInfo objectForKeyedSubscript:@"ndo-follow-up-url"];

  v13 = [NSURL URLWithString:v12];
  v14 = _NDOLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "url:%@", buf, 0xCu);
  }

  userInfo2 = [itemCopy userInfo];
  v16 = [userInfo2 objectForKeyedSubscript:@"ndo-follow-up-accept-action-type"];

  objc_initWeak(buf, self);
  if ([v16 isEqualToString:@"OPEN_PATH"])
  {
    v17 = +[LSApplicationWorkspace defaultWorkspace];
    [v17 openSensitiveURL:v13 withOptions:0];

    WeakRetained = objc_loadWeakRetained(buf);
    [WeakRetained finishProcessing];

    completionCopy[2](completionCopy, 1);
  }

  else
  {
    if ([v16 isEqualToString:@"START_WEB"])
    {
      v19 = +[LSApplicationWorkspace defaultWorkspace];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_100001860;
      v31[3] = &unk_100008208;
      v32 = v13;
      objc_copyWeak(&v34, buf);
      v33 = completionCopy;
      [v19 openURL:v32 configuration:0 completionHandler:v31];

      objc_destroyWeak(&v34);
      v20 = v32;
    }

    else
    {
      userInfo3 = [itemCopy userInfo];
      v20 = [userInfo3 objectForKeyedSubscript:@"ndo-follow-up-additional-payload"];

      userInfo4 = [itemCopy userInfo];
      v24 = [userInfo4 objectForKeyedSubscript:@"ndo-follow-up-additional-headers"];

      v23 = objc_opt_new();
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1000018F8;
      v29[3] = &unk_100008230;
      objc_copyWeak(&v30, buf);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100001938;
      v26[3] = &unk_100008258;
      objc_copyWeak(&v28, buf);
      v27 = completionCopy;
      [NDOAMSUIComposition makeFollowUpAMSViewControllerWithAgent:v23 url:v13 presenter:self headers:v24 body:v20 onDismiss:v29 completion:v26];

      objc_destroyWeak(&v28);
      objc_destroyWeak(&v30);
    }
  }

  objc_destroyWeak(buf);
}

- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion
{
  itemCopy = item;
  actionCopy = action;
  completionCopy = completion;
  v11 = _NDOLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    userInfo = [itemCopy userInfo];
    allKeys = [userInfo allKeys];
    label = [actionCopy label];
    identifier = [actionCopy identifier];
    *buf = 138412802;
    v28 = allKeys;
    v29 = 2112;
    v30 = label;
    v31 = 2112;
    v32 = identifier;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Proccess followup with user info keys: %@ :: %@ :: %@", buf, 0x20u);
  }

  if ([(NDOAppleCareLandingViewController *)self isNewStackFollowUpItem:itemCopy])
  {
    [(NDOAppleCareLandingViewController *)self processNewStackFollowUpItem:itemCopy selectedAction:actionCopy completion:completionCopy];
  }

  else
  {
    userInfo2 = [itemCopy userInfo];
    v17 = [userInfo2 objectForKeyedSubscript:@"FollowupSerialNumber"];

    [(NDOAppleCareLandingViewController *)self setPresentedSerialNumber:v17];
    v18 = _NDOLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_100003398();
    }

    manager = [(NDOAppleCareLandingViewController *)self manager];
    objc_initWeak(buf, self);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100001D4C;
    v21[3] = &unk_1000082F8;
    objc_copyWeak(&v26, buf);
    v25 = completionCopy;
    v21[4] = self;
    v22 = actionCopy;
    v20 = v17;
    v23 = v20;
    v24 = itemCopy;
    [manager getDeviceInfoForSerialNumber:v20 usingPolicy:0 withReply:v21];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }
}

- (void)_clearNotificationForSerialNumber:(id)number completion:(id)completion
{
  numberCopy = number;
  completionCopy = completion;
  manager = [(NDOAppleCareLandingViewController *)self manager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000276C;
  v11[3] = &unk_1000082A8;
  v12 = numberCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = numberCopy;
  [manager dismissNotificationForSerialNumber:v10 completion:v11];
}

- (void)webviewFinishedWithCompletion:(unint64_t)completion
{
  presentedSerialNumber = [(NDOAppleCareLandingViewController *)self presentedSerialNumber];
  [(NDOAppleCareLandingViewController *)self outreachFinishedForDeviceWithSerialNumber:presentedSerialNumber withCompletion:completion];
}

- (void)amsUIViewFinishedWithCompletion:(unint64_t)completion
{
  presentedSerialNumber = [(NDOAppleCareLandingViewController *)self presentedSerialNumber];
  [(NDOAppleCareLandingViewController *)self outreachFinishedForDeviceWithSerialNumber:presentedSerialNumber withCompletion:completion];
}

- (void)amsUIViewFinishedWithCompletion:(unint64_t)completion params:(id)params
{
  v6 = [(NDOAppleCareLandingViewController *)self presentedSerialNumber:completion];
  [(NDOAppleCareLandingViewController *)self outreachFinishedForDeviceWithSerialNumber:v6 withCompletion:completion];
}

- (void)outreachFinishedForDeviceWithSerialNumber:(id)number withCompletion:(unint64_t)completion
{
  numberCopy = number;
  v7 = _NDOLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    completionCopy = completion;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "outreachFinishedWithCompletion: %ld", buf, 0xCu);
  }

  manager = [(NDOAppleCareLandingViewController *)self manager];
  if ((completion & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100002CC4;
    v10[3] = &unk_100008360;
    v11 = numberCopy;
    [manager dismissFollowUpForSerialNumber:v11 completion:v10];
  }

  if (completion <= 5 && ((1 << completion) & 0x2C) != 0)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100002D9C;
    v9[3] = &unk_1000083B0;
    v9[4] = self;
    v9[5] = completion;
    [manager getDeviceInfoForSerialNumber:numberCopy usingPolicy:2 withReply:v9];
  }

  else
  {
    [(NDOAppleCareLandingViewController *)self finishProcessing];
  }
}

@end