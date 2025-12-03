@interface IAPTDPostAlert
+ (id)GetLocalizedString:(id)string;
+ (void)PostAccessoryNotification:(__CFString *)notification forMsg:(__CFString *)msg withArg:(__CFString *)arg forDefaultButton:(__CFString *)button withAlternateButton:(__CFString *)alternateButton forNotification:(__CFUserNotification *)forNotification withCallback:(void *)callback andTimeout:(double)self0;
+ (void)TearDownAccessoryNotification:(__CFUserNotification *)notification;
@end

@implementation IAPTDPostAlert

+ (void)PostAccessoryNotification:(__CFString *)notification forMsg:(__CFString *)msg withArg:(__CFString *)arg forDefaultButton:(__CFString *)button withAlternateButton:(__CFString *)alternateButton forNotification:(__CFUserNotification *)forNotification withCallback:(void *)callback andTimeout:(double)self0
{
  v16 = objc_autoreleasePoolPush();
  error = 0;
  v17 = [IAPTDPostAlert GetLocalizedString:notification];
  v18 = [IAPTDPostAlert GetLocalizedString:msg];
  v19 = [IAPTDPostAlert GetLocalizedString:button];
  v20 = [IAPTDPostAlert GetLocalizedString:alternateButton];
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

  if (alternateButton)
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
  [IAPTDPostAlert TearDownAccessoryNotification:forNotification];
  if (forNotification)
  {
    v26 = CFUserNotificationCreate(kCFAllocatorDefault, timeout, 3uLL, &error, v25);
    *forNotification = v26;
    RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v26, callback, 0);
    if (RunLoopSource)
    {
      v28 = RunLoopSource;
      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, v28, kCFRunLoopCommonModes);
      CFRelease(v28);
    }

    else if (*forNotification)
    {
      CFRelease(*forNotification);
      *forNotification = 0;
    }
  }

  objc_autoreleasePoolPop(v16);
}

+ (void)TearDownAccessoryNotification:(__CFUserNotification *)notification
{
  if (notification)
  {
    if (*notification)
    {
      CFUserNotificationCancel(*notification);
      CFRelease(*notification);
      *notification = 0;
    }
  }
}

+ (id)GetLocalizedString:(id)string
{
  if (!string)
  {
    return 0;
  }

  v4 = [NSBundle bundleWithIdentifier:kIAPFrameworkBundleID];
  if (!v4)
  {
    return 0;
  }

  return [(NSBundle *)v4 localizedStringForKey:string value:&stru_10002E218 table:@"Framework"];
}

@end