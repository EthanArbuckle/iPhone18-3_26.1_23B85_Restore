id MTLogForCategory(uint64_t a1)
{
  if (qword_100008980 != -1)
  {
    sub_100002150();
  }

  v2 = qword_100008970[a1];

  return v2;
}

void sub_100000F14(id a1)
{
  v1 = os_log_create("com.apple.mobiletimer", "MobileTimer");
  v2 = qword_100008970;
  qword_100008970 = v1;

  qword_100008978 = os_log_create("com.apple.mobiletimer", "MobileTimer Notification Log");

  _objc_release_x1();
}