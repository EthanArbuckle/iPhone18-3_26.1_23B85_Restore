uint64_t sub_100000E28(NSObject *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = &_os_log_default;
  }

  bzero(v3, 0x400uLL);
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1000014AC();
    }

    return 1;
  }

  if (!confstr(65537, v3, 0x400uLL))
  {
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_10000152C();
    }

    return 1;
  }

  return 0;
}

void sub_100000F14(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  FudLog();
  FudLogSetMode();
  if (sub_100000F10(0) || (v2 = objc_alloc_init(FudEarlyBoot)) == 0)
  {
    FudLog();
    v1 = 1;
  }

  else
  {
    v3 = v2;
    v1 = [(FudEarlyBoot *)v2 doFUDEarlyBoot:0];

    FudLog();
  }

  objc_autoreleasePoolPop(v0);
  return v1;
}