void sub_1000016F8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xCu);
}

void sub_100001714(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000016F8(&_mh_execute_header, &_os_log_default, v2, "CDE: %s: invalid client or unsupported platform", v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_1000017B4(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000016F8(&_mh_execute_header, &_os_log_default, v2, "CDE: %s: unsupported log environment for client", v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100001854(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[ConnectivityDE attachmentsForParameters:]";
    v6 = 2114;
    v7 = a1;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CDE: %s: failed to get attachments: %{public}@", &v4, 0x16u);
  }
}

void sub_100001910(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000016F8(&_mh_execute_header, &_os_log_default, v2, "CDE: %s: Skipping log collection", v3, v4, v5, v6, 2u);
  }
}

void sub_1000019B0(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000016F8(&_mh_execute_header, &_os_log_default, v2, "CDE: %s: Failed to create outputDir", v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}