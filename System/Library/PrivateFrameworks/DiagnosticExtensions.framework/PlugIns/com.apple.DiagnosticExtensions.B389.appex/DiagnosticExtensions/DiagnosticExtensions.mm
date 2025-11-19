uint64_t fileSuffixForLogType(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return *(&off_1000082A8 + a1);
  }
}

void sub_100001120(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_10000D0B0 != -1)
  {
    sub_100002DF0();
  }

  v4 = qword_10000D0B8;
  if (os_log_type_enabled(qword_10000D0B8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *buf = 68289282;
    v13 = 2082;
    v14 = "";
    v15 = 2050;
    v16 = [v3 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#durian TTR extension fetched all beacons, count:%{public}lu}", buf, 0x1Cu);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100001290;
  v9[3] = &unk_100008220;
  v10 = v3;
  v11 = v6;
  v8 = v3;
  dispatch_async(v7, v9);
}

void sub_100001290(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = *(*(a1 + 40) + 40);
        v9 = [v7 identifier];
        [v8 setObject:v7 forKey:v9];

        if ([*(a1 + 40) isValidProductId:{objc_msgSend(v7, "productId")}])
        {
          [*(a1 + 40) fetchFirmwareVersionForBeacon:v7];
          [*(a1 + 40) dumpLogsForBeacon:v7];
        }

        else
        {
          if (qword_10000D0B0 != -1)
          {
            sub_100002E04();
          }

          v10 = qword_10000D0B8;
          if (os_log_type_enabled(qword_10000D0B8, OS_LOG_TYPE_DEBUG))
          {
            v11 = v10;
            v12 = [v7 identifier];
            *buf = 68289282;
            v18 = 2082;
            v19 = "";
            v20 = 2114;
            v21 = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#durian TTR extension ignoring, beacon:%{public, location:escape_only}@}", buf, 0x1Cu);
          }
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v22 count:16];
    }

    while (v4);
  }
}

void sub_100002DAC(id a1)
{
  qword_10000D0B8 = os_log_create("com.apple.locationd.Position", "Proximity");

  _objc_release_x1();
}