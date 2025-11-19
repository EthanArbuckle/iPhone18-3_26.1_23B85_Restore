id HAENotificationsLog()
{
  if (qword_100008608 != -1)
  {
    sub_1000016AC();
  }

  v1 = qword_100008610;

  return v1;
}

void sub_100000D8C(id a1)
{
  qword_100008610 = os_log_create("HAENotificationContentExtension", "ADAM");

  _objc_release_x1();
}

id HAENLocalizationUtilityGetBundle()
{
  if (qword_100008620 != -1)
  {
    sub_1000016C0();
  }

  v1 = qword_100008618;

  return v1;
}

void sub_100000E14(id a1)
{
  qword_100008618 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/HAENotifications.framework"];

  _objc_release_x1();
}