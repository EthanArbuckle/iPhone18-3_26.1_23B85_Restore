void sub_1000015AC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000015D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000015E8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = sub_100001670();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100005CC4(a1);
    }
  }

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_group_leave(*(a1 + 40));
}

id sub_100001670()
{
  if (qword_1000121E0 != -1)
  {
    sub_100005D50();
  }

  v1 = qword_1000121D8;

  return v1;
}

void sub_1000016B4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = sub_100001670();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100005D64(a1);
    }
  }

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_group_leave(*(a1 + 40));
}

void sub_10000173C(uint64_t a1)
{
  v2 = [[CSSGenerateApplicationIconsResultObject alloc] initWithIconData:*(*(*(a1 + 40) + 8) + 40) badgeIconData:*(*(*(a1 + 48) + 8) + 40)];
  [*(a1 + 32) endOperationWithResultObject:v2];
}

void sub_10000186C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) calendarIcons];
  v2 = [v3 iconData];
  (*(v1 + 16))(v1, v2);
}

void sub_100001998(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) calendarIcons];
  v2 = [v3 badgeIconData];
  (*(v1 + 16))(v1, v2);
}

void sub_100001ADC(uint64_t a1, void *a2)
{
  v3 = [a2 css_PNGRepresentation];
  (*(*(a1 + 32) + 16))();
}

void sub_100001CAC(id a1)
{
  qword_1000121D8 = os_log_create("com.apple.classroom", "General");

  _objc_release_x1();
}

void sub_100001CF0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100001ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_100001EE8(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 CGAffineTransformValue];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  v5 = v4[3];
  *&v9.a = v4[2];
  *&v9.c = v5;
  *&v9.tx = v4[4];
  CGAffineTransformConcat(&v11, &t1, &v9);
  v6 = *(v3 + 8);
  v8 = *&v11.c;
  result = *&v11.tx;
  *(v6 + 32) = *&v11.a;
  *(v6 + 48) = v8;
  *(v6 + 64) = result;
  return result;
}

void sub_100002194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000021C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateScreenState];
}

void sub_100002208(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateDeviceLocked];
}

void sub_1000029FC(id a1)
{
  if (qword_1000121F0 != -1)
  {
    dispatch_once(&qword_1000121F0, &stru_10000C5D8);
  }

  v1 = qword_1000121E8;
  if (os_log_type_enabled(qword_1000121E8, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SIGTERM received, exiting.", v2, 2u);
  }

  exit(15);
}

void sub_100002AE0(id a1)
{
  qword_1000121E8 = os_log_create("com.apple.classroom", "General");

  _objc_release_x1();
}

id CSSAllRoles()
{
  v0 = objc_opt_new();
  v6 = v0;
  v1 = objc_opt_new();
  v7 = v1;
  v2 = objc_opt_new();
  v8 = v2;
  v3 = [NSArray arrayWithObjects:&v6 count:3];
  v4 = [NSSet setWithArray:v3, v6, v7];

  return v4;
}

id sub_100003634()
{
  if (qword_100012200 != -1)
  {
    sub_100005F30();
  }

  v1 = qword_1000121F8;

  return v1;
}

void sub_100003678(__IOSurface *a1)
{
  if (a1)
  {
    IOSurfaceUnlock(a1, 1u, 0);

    CFRelease(a1);
  }
}

void sub_100003894(id a1)
{
  qword_1000121F8 = os_log_create("com.apple.classroom", "General");

  _objc_release_x1();
}

void sub_1000038D8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id sub_100003F0C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [a2 entitlement];
  v5 = [v2 connection:v3 hasBooleanEntitlement:v4];

  return v5;
}

void sub_100004150(id a1)
{
  qword_100012208 = os_log_create("com.apple.classroom", "General");

  _objc_release_x1();
}

void sub_1000042D4(uint64_t a1)
{
  v2 = [*(a1 + 32) screenshotter];
  [v2 fetchScreenshotDataWithMaximumSizeInPixels:*(a1 + 40) completion:{*(a1 + 48), *(a1 + 56)}];
}

void sub_1000043F0(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationProvider];
  [v2 fetchApplicationWithDescriptor:*(a1 + 40) completion:*(a1 + 48)];
}

void sub_1000044DC(uint64_t a1)
{
  v2 = [*(a1 + 32) internetDateProvider];
  [v2 fetchInternetDateWithCompletion:*(a1 + 40)];
}

id makeService()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  objc_autoreleasePoolPop(v0);

  return v1;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = makeService();
  [v3 run];

  return 0;
}

void sub_10000505C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = a2;
  v7 = [v5 localizedName];
  v8 = [*(a1 + 48) shortVersionString];
  v9 = [v6 iconData];
  v10 = [v6 badgeIconData];

  v11 = [v3 applicationWithBundleIdentifier:v4 name:v7 shortVersionString:v8 iconData:v9 badgeIconData:v10];

  (*(*(a1 + 56) + 16))();
}

void sub_100005238(void *a1, void *a2)
{
  v4 = a1[4];
  v3 = a1[5];
  v5 = a2;
  v6 = [v3 bundleIdentifier];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"Web Clip" value:&stru_10000C9F0 table:0];
  v9 = [v5 iconData];
  v10 = [v5 badgeIconData];

  v11 = [v4 applicationWithBundleIdentifier:v6 name:v8 shortVersionString:0 iconData:v9 badgeIconData:v10];

  (*(a1[6] + 16))();
}

void sub_100005534(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a2;
  v7 = [v5 title];
  v8 = [v6 iconData];
  v9 = [v6 badgeIconData];

  v10 = [v3 applicationWithBundleIdentifier:v4 name:v7 shortVersionString:0 iconData:v8 badgeIconData:v9];

  (*(a1[7] + 16))();
}

void sub_10000593C(uint64_t a1)
{
  v2 = [*(a1 + 32) error];
  if (v2)
  {
    if (qword_100012220 != -1)
    {
      sub_1000060B8();
    }

    v3 = qword_100012218;
    if (os_log_type_enabled(qword_100012218, OS_LOG_TYPE_ERROR))
    {
      sub_1000060CC(a1, v3, v2);
    }
  }

  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) resultObject];
  (*(v4 + 16))(v4, v5);
}

void sub_100005AC4(id a1)
{
  qword_100012218 = os_log_create("com.apple.classroom", "General");

  _objc_release_x1();
}

void sub_100005CC4(uint64_t a1)
{
  v1 = [*(a1 + 32) bundleIdentifier];
  sub_100001CF0(&_mh_execute_header, v2, v3, "Got back nil full size icon data for %{public}@", v4, v5, v6, v7, 2u);
}

void sub_100005D64(uint64_t a1)
{
  v1 = [*(a1 + 32) bundleIdentifier];
  sub_100001CF0(&_mh_execute_header, v2, v3, "Got back nil badge icon data for %{public}@", v4, v5, v6, v7, 2u);
}

void sub_100005DF0(const char *a1, uint64_t a2)
{
  v5 = +[NSAssertionHandler currentHandler];
  v4 = NSStringFromSelector(a1);
  [v5 handleFailureInMethod:a1 object:a2 file:@"CSSCalendarIcons.m" lineNumber:39 description:{@"%@ must be called from the main thread", v4}];
}

void sub_100005F58(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 denialMessageForConnection:a3];
  v7 = 138543362;
  v8 = v6;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@", &v7, 0xCu);
}

void sub_100006010(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = +[NSAssertionHandler currentHandler];
  v9 = [a1 protocol];
  v10 = NSStringFromProtocol(v9);
  [v8 handleFailureInMethod:a2 object:a3 file:@"CSSXPCListenerDelegate.m" lineNumber:57 description:{@"%@ does not conform to %@", a4, v10}];
}

void sub_1000060CC(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [a3 verboseDescription];
  v7 = 138543618;
  v8 = v4;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Generate icons operation failed for descriptor %{public}@: %{public}@", &v7, 0x16u);
}

void sub_10000618C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CSSFraction.m" lineNumber:18 description:@"Zero denominator"];
}