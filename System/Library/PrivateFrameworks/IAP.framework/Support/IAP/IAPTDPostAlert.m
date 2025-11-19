@interface IAPTDPostAlert
+ (id)GetLocalizedString:(id)a3;
+ (void)PostAccessoryNotification:(__CFString *)a3 forMsg:(__CFString *)a4 withArg:(__CFString *)a5 forDefaultButton:(__CFString *)a6 withAlternateButton:(__CFString *)a7 forNotification:(__CFUserNotification *)a8 withCallback:(void *)a9 andTimeout:(double)a10;
+ (void)TearDownAccessoryNotification:(__CFUserNotification *)a3;
@end

@implementation IAPTDPostAlert

+ (void)PostAccessoryNotification:(__CFString *)a3 forMsg:(__CFString *)a4 withArg:(__CFString *)a5 forDefaultButton:(__CFString *)a6 withAlternateButton:(__CFString *)a7 forNotification:(__CFUserNotification *)a8 withCallback:(void *)a9 andTimeout:(double)a10
{
  v16 = objc_autoreleasePoolPush();
  error = 0;
  v17 = [IAPTDPostAlert GetLocalizedString:a3];
  v18 = [IAPTDPostAlert GetLocalizedString:a4];
  v19 = [IAPTDPostAlert GetLocalizedString:a6];
  v20 = [IAPTDPostAlert GetLocalizedString:a7];
  if (v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = &stru_10002E218;
  }

  if (v19)
  {
    v22 = v19;
  }

  else
  {
    v22 = &stru_10002E218;
  }

  if (!v18)
  {
    v18 = &stru_10002E218;
  }

  if (a7)
  {
    if (v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = &stru_10002E218;
    }

    v24 = [[NSDictionary alloc] initWithObjectsAndKeys:{v21, kCFUserNotificationAlertHeaderKey, v18, kCFUserNotificationAlertMessageKey, v22, kCFUserNotificationDefaultButtonTitleKey, v23, kCFUserNotificationAlternateButtonTitleKey, kCFBooleanTrue, kCFUserNotificationAlertTopMostKey, kCFBooleanTrue, @"DismissOnLock", 0}];
  }

  else
  {
    v24 = [[NSDictionary alloc] initWithObjectsAndKeys:{v21, kCFUserNotificationAlertHeaderKey, v18, kCFUserNotificationAlertMessageKey, v22, kCFUserNotificationDefaultButtonTitleKey, kCFBooleanTrue, kCFUserNotificationAlertTopMostKey, kCFBooleanTrue, @"DismissOnLock", 0, v30, v31}];
  }

  v25 = v24;
  [IAPTDPostAlert TearDownAccessoryNotification:a8];
  if (a8)
  {
    v26 = CFUserNotificationCreate(kCFAllocatorDefault, a10, 3uLL, &error, v25);
    *a8 = v26;
    RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v26, a9, 0);
    if (RunLoopSource)
    {
      v28 = RunLoopSource;
      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, v28, kCFRunLoopCommonModes);
      CFRelease(v28);
    }

    else if (*a8)
    {
      CFRelease(*a8);
      *a8 = 0;
    }
  }

  objc_autoreleasePoolPop(v16);
}

+ (void)TearDownAccessoryNotification:(__CFUserNotification *)a3
{
  if (a3)
  {
    if (*a3)
    {
      CFUserNotificationCancel(*a3);
      CFRelease(*a3);
      *a3 = 0;
    }
  }
}

+ (id)GetLocalizedString:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [NSBundle bundleWithIdentifier:kIAPFrameworkBundleID];
  if (!v4)
  {
    return 0;
  }

  return [(NSBundle *)v4 localizedStringForKey:a3 value:&stru_10002E218 table:@"Framework"];
}

@end