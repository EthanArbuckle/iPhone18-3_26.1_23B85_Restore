int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v3 registerForLocaleChange];
  [v4 resume];

  return 0;
}

void sub_100000E5C(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = @"UserResponse";
  v5 = a2;
  v6 = [NSNumber numberWithInteger:a3];
  v9 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  (*(*(a1 + 32) + 16))();
}

void sub_100000F34(double a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_self();
  v5 = objc_autoreleasePoolPush();
  v6 = dispatch_get_global_queue(25, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001014;
  v8[3] = &unk_100004290;
  v7 = v4;
  v9 = v7;
  v10 = a1;
  dispatch_async(v6, v8);

  objc_autoreleasePoolPop(v5);
}

void sub_100001014(uint64_t a1)
{
  v2 = objc_alloc_init(NFSettingsNotification);
  [(NFSettingsNotification *)v2 _requestUserNotificationWithCompletion:*(a1 + 32) popupInterval:*(a1 + 40)];
}