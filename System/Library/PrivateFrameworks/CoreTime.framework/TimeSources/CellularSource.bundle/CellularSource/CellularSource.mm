id sub_10C0(uint64_t a1, void *a2)
{
  v3 = BBTIME_FACILITY;
  if (os_log_type_enabled(BBTIME_FACILITY, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "rtcResetCallback";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%s: reset fetch time", &v5, 0xCu);
  }

  return [a2 setFetchTime:0];
}

void sub_11F4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) airplaneMode];
  v3 = *(*(a1 + 32) + 48);
  if (v2 != v3)
  {
    v4 = v2;
    v5 = BBTIME_FACILITY;
    if (os_log_type_enabled(BBTIME_FACILITY, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v38 = v3;
      v39 = 1024;
      v40 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Airplane mode changed %d->%d", buf, 0xEu);
    }

    v6 = objc_alloc_init(NSMutableArray);
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = *(*(a1 + 32) + 24);
    v8 = [v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v31;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v6 addObject:*(*(&v30 + 1) + 8 * i)];
        }

        v9 = [v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v9);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = *(*(a1 + 32) + 40);
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [v6 addObject:*(*(&v26 + 1) + 8 * j)];
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v14);
    }

    [*(*(a1 + 32) + 24) removeAllObjects];

    *(*(a1 + 32) + 32) = 0;
    if (v4)
    {
      v17 = [[NSMutableDictionary alloc] initWithCapacity:2];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v18 = [v6 countByEnumeratingWithState:&v22 objects:v34 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v23;
        do
        {
          for (k = 0; k != v19; k = k + 1)
          {
            if (*v23 != v20)
            {
              objc_enumerationMutation(v6);
            }

            [v17 setObject:*(*(&v22 + 1) + 8 * k) forKeyedSubscript:@"TMSource"];
            [*(*(a1 + 32) + 8) setSourceUnavailable:v17];
          }

          v19 = [v6 countByEnumeratingWithState:&v22 objects:v34 count:16];
        }

        while (v19);
      }
    }

    else
    {
      [*(*(a1 + 32) + 16) coarseMonotonicTime];
      [*(*(a1 + 32) + 8) resetTimeZone:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", @"TMResetTimeZone", @"TMCommand", @"AirplaneMode", @"TMResetTimeZoneReason", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:"), @"TMRtcTime", 0)}];
    }

    *(*(a1 + 32) + 48) = v4;
  }
}

NSDictionary *sub_1B68(uint64_t a1)
{
  v3[0] = @"utc";
  v4[0] = [NSNumber numberWithDouble:*(a1 + 32)];
  v3[1] = @"mcc";
  v4[1] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[2] = @"offset";
  v4[2] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[3] = @"dst";
  v4[3] = [NSNumber numberWithBool:*(a1 + 48)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
}

NSDictionary *sub_2598(uint64_t a1)
{
  v4[0] = @"delay";
  v2 = [NSNumber numberWithUnsignedLongLong:*(a1 + 32)];
  v4[1] = @"result";
  v5[0] = v2;
  v5[1] = [NSNumber numberWithInteger:*(a1 + 40)];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];
}

void sub_269C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_2D4C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "Time from source '%@' is invalid!", &v2, 0xCu);
}

void sub_2E60(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "MCC is now %d", v2, 8u);
}