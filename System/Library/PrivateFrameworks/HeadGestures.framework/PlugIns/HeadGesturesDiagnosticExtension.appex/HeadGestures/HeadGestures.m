id _HGObjCLoggingFacility(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000016CC;
  block[3] = &unk_1000041A0;
  block[4] = a1;
  if (qword_1000081E8 != -1)
  {
    dispatch_once(&qword_1000081E8, block);
  }

  v1 = qword_1000081E0;

  return v1;
}

uint64_t sub_1000016CC(uint64_t a1)
{
  qword_1000081E0 = os_log_create("com.apple.HeadGestures", *(a1 + 32));

  return _objc_release_x1();
}

void sub_100001794(void *a1)
{
  [a1 UTF8String];
  sub_100001604();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10000181C(void *a1, void *a2)
{
  v3 = [a1 localizedDescription];
  [v3 UTF8String];
  [a2 UTF8String];
  sub_100001614();
  sub_100001604();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1000018CC(void *a1, void *a2)
{
  v3 = [a1 localizedDescription];
  [v3 UTF8String];
  [a2 UTF8String];
  sub_100001614();
  sub_100001604();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}