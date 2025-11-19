void sub_1000013A8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xCu);
}

void sub_1000013F0(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000013A8(&_mh_execute_header, &_os_log_default, v2, "ConnectivityWiFiDE: %s: invalid client or unsupported platform", v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

void sub_100001490(void *a1, void *a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [a1 localizedDescription];
    v5 = 136315394;
    v6 = "[ConnectivityWiFiDE attachmentsForParameters:]";
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ConnectivityWiFiDE: %s: failed to get attachments: %{public}@", &v5, 0x16u);
  }
}

void sub_100001560(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000013A8(&_mh_execute_header, &_os_log_default, v2, "ConnectivityWiFiDE: %s: Skipping log collection", v3, v4, v5, v6, 2u);
  }
}

void sub_100001600(void *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000013A8(&_mh_execute_header, &_os_log_default, v2, "ConnectivityWiFiDE: %s: Failed to create outputDir", v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}