@interface NDOAppleCareLandingViewController
- (BOOL)isNewStackFollowUpItem:(id)a3;
- (id)manager;
- (void)_clearNotificationForSerialNumber:(id)a3 completion:(id)a4;
- (void)amsUIViewFinishedWithCompletion:(unint64_t)a3;
- (void)amsUIViewFinishedWithCompletion:(unint64_t)a3 params:(id)a4;
- (void)outreachFinishedForDeviceWithSerialNumber:(id)a3 withCompletion:(unint64_t)a4;
- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5;
- (void)processNewStackFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5;
- (void)webviewFinishedWithCompletion:(unint64_t)a3;
@end

@implementation NDOAppleCareLandingViewController

- (id)manager
{
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)isNewStackFollowUpItem:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKey:@"ndo-follow-up-new-stack"];
  v5 = [v4 BOOLValue];

  return v5;
}

- (void)processNewStackFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5
{
  v8 = a3;
  v25 = a4;
  v9 = a5;
  v10 = _NDOLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v36 = "[NDOAppleCareLandingViewController processNewStackFollowUpItem:selectedAction:completion:]";
    v37 = 2112;
    v38 = self;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Processing new stack follow up item, %@", buf, 0x16u);
  }

  v11 = [v8 userInfo];
  v12 = [v11 objectForKeyedSubscript:@"ndo-follow-up-url"];

  v13 = [NSURL URLWithString:v12];
  v14 = _NDOLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "url:%@", buf, 0xCu);
  }

  v15 = [v8 userInfo];
  v16 = [v15 objectForKeyedSubscript:@"ndo-follow-up-accept-action-type"];

  objc_initWeak(buf, self);
  if ([v16 isEqualToString:@"OPEN_PATH"])
  {
    v17 = +[LSApplicationWorkspace defaultWorkspace];
    [v17 openSensitiveURL:v13 withOptions:0];

    WeakRetained = objc_loadWeakRetained(buf);
    [WeakRetained finishProcessing];

    v9[2](v9, 1);
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
      v33 = v9;
      [v19 openURL:v32 configuration:0 completionHandler:v31];

      objc_destroyWeak(&v34);
      v20 = v32;
    }

    else
    {
      v21 = [v8 userInfo];
      v20 = [v21 objectForKeyedSubscript:@"ndo-follow-up-additional-payload"];

      v22 = [v8 userInfo];
      v24 = [v22 objectForKeyedSubscript:@"ndo-follow-up-additional-headers"];

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
      v27 = v9;
      [NDOAMSUIComposition makeFollowUpAMSViewControllerWithAgent:v23 url:v13 presenter:self headers:v24 body:v20 onDismiss:v29 completion:v26];

      objc_destroyWeak(&v28);
      objc_destroyWeak(&v30);
    }
  }

  objc_destroyWeak(buf);
}

- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _NDOLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 userInfo];
    v13 = [v12 allKeys];
    v14 = [v9 label];
    v15 = [v9 identifier];
    *buf = 138412802;
    v28 = v13;
    v29 = 2112;
    v30 = v14;
    v31 = 2112;
    v32 = v15;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Proccess followup with user info keys: %@ :: %@ :: %@", buf, 0x20u);
  }

  if ([(NDOAppleCareLandingViewController *)self isNewStackFollowUpItem:v8])
  {
    [(NDOAppleCareLandingViewController *)self processNewStackFollowUpItem:v8 selectedAction:v9 completion:v10];
  }

  else
  {
    v16 = [v8 userInfo];
    v17 = [v16 objectForKeyedSubscript:@"FollowupSerialNumber"];

    [(NDOAppleCareLandingViewController *)self setPresentedSerialNumber:v17];
    v18 = _NDOLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_100003398();
    }

    v19 = [(NDOAppleCareLandingViewController *)self manager];
    objc_initWeak(buf, self);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100001D4C;
    v21[3] = &unk_1000082F8;
    objc_copyWeak(&v26, buf);
    v25 = v10;
    v21[4] = self;
    v22 = v9;
    v20 = v17;
    v23 = v20;
    v24 = v8;
    [v19 getDeviceInfoForSerialNumber:v20 usingPolicy:0 withReply:v21];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }
}

- (void)_clearNotificationForSerialNumber:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NDOAppleCareLandingViewController *)self manager];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000276C;
  v11[3] = &unk_1000082A8;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 dismissNotificationForSerialNumber:v10 completion:v11];
}

- (void)webviewFinishedWithCompletion:(unint64_t)a3
{
  v5 = [(NDOAppleCareLandingViewController *)self presentedSerialNumber];
  [(NDOAppleCareLandingViewController *)self outreachFinishedForDeviceWithSerialNumber:v5 withCompletion:a3];
}

- (void)amsUIViewFinishedWithCompletion:(unint64_t)a3
{
  v5 = [(NDOAppleCareLandingViewController *)self presentedSerialNumber];
  [(NDOAppleCareLandingViewController *)self outreachFinishedForDeviceWithSerialNumber:v5 withCompletion:a3];
}

- (void)amsUIViewFinishedWithCompletion:(unint64_t)a3 params:(id)a4
{
  v6 = [(NDOAppleCareLandingViewController *)self presentedSerialNumber:a3];
  [(NDOAppleCareLandingViewController *)self outreachFinishedForDeviceWithSerialNumber:v6 withCompletion:a3];
}

- (void)outreachFinishedForDeviceWithSerialNumber:(id)a3 withCompletion:(unint64_t)a4
{
  v6 = a3;
  v7 = _NDOLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v13 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "outreachFinishedWithCompletion: %ld", buf, 0xCu);
  }

  v8 = [(NDOAppleCareLandingViewController *)self manager];
  if ((a4 & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100002CC4;
    v10[3] = &unk_100008360;
    v11 = v6;
    [v8 dismissFollowUpForSerialNumber:v11 completion:v10];
  }

  if (a4 <= 5 && ((1 << a4) & 0x2C) != 0)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100002D9C;
    v9[3] = &unk_1000083B0;
    v9[4] = self;
    v9[5] = a4;
    [v8 getDeviceInfoForSerialNumber:v6 usingPolicy:2 withReply:v9];
  }

  else
  {
    [(NDOAppleCareLandingViewController *)self finishProcessing];
  }
}

@end