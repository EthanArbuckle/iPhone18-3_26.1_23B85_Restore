int64_t sub_100001358(id a1, DEAttachmentItem *a2, DEAttachmentItem *a3)
{
  v4 = a2;
  v5 = [(DEAttachmentItem *)a3 modificationDate];
  v6 = [(DEAttachmentItem *)v4 modificationDate];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_100001400(id a1)
{
  v1 = IOServiceNameMatching("bluetooth-pcie");
  if (v1)
  {
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v1);
    if (MatchingService)
    {
      byte_1000081D8 = 1;
      IOObjectRelease(MatchingService);
    }
  }

  if ((byte_1000081D8 & 1) == 0)
  {
    v3 = IOServiceNameMatching("marconi-bt");
    if (v3)
    {
      v4 = IOServiceGetMatchingService(kIOMainPortDefault, v3);
      if (v4)
      {
        byte_1000081D8 = 1;
        IOObjectRelease(v4);
      }
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_1000081D8)
    {
      v5 = "ENABLED";
    }

    else
    {
      v5 = "DISABLED";
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CoreCapture collection is %s", &v6, 0xCu);
  }
}