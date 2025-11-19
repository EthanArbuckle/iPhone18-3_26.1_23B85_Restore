@interface NDOAirPodsServiceProvider
+ (id)airPodsDataStore;
- (BOOL)isLastSyncNeedsRetryWithSerialNumber:(id)a3 withServiceName:(id)a4;
- (BOOL)shouldSendFirmwareUpdateAndGetUpdatedData:(id *)a3;
- (BOOL)shouldSendFirstPairingData:(id)a3;
- (NDOAirPodsServiceProvider)init;
- (id)getCachedAirPodsWarrantyDetailsForKey:(id)a3;
- (int64_t)calculateDaysBetweenStartDate:(id)a3 endDate:(id)a4;
- (void)cacheAirPodsFirmwareUpdateDetails:(id)a3;
- (void)cacheAirPodsFirstPairingData:(id)a3;
- (void)sendFirmwareUpdateDataIfRequired:(id)a3 completionHandler:(id)a4;
- (void)sendPairingDataIfRequired:(id)a3 completionHandler:(id)a4;
- (void)setSyncDateForDeviceServicesWithSerialNumber:(id)a3 needsRetry:(BOOL)a4 withServiceName:(id)a5;
@end

@implementation NDOAirPodsServiceProvider

- (NDOAirPodsServiceProvider)init
{
  v5.receiver = self;
  v5.super_class = NDOAirPodsServiceProvider;
  v2 = [(NDOAirPodsServiceProvider *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(NDODeviceServicesInterface);
    [(NDOAirPodsServiceProvider *)v2 setDeviceServicesInterface:v3];
  }

  return v2;
}

+ (id)airPodsDataStore
{
  if (qword_1000A8300 != -1)
  {
    sub_100072C6C();
  }

  v3 = qword_1000A82F8;

  return v3;
}

- (BOOL)shouldSendFirmwareUpdateAndGetUpdatedData:(id *)a3
{
  v5 = [[NSMutableDictionary alloc] initWithDictionary:*a3];
  if ([v5 count])
  {
    v6 = [v5 valueForKey:@"caseSerialNumber"];
    v7 = [v5 valueForKey:@"leftBudSerialNumber"];
    v8 = [v5 valueForKey:@"rightBudSerialNumber"];
    v9 = [v5 valueForKey:@"caseFirmwareVersion"];
    v10 = [NSString stringWithFormat:@"%@_%@", v6, @"Firmware"];
    v11 = [(NDOAirPodsServiceProvider *)self getCachedAirPodsWarrantyDetailsForKey:v10];
    v12 = v11;
    if (!v11)
    {
      [(NDOAirPodsServiceProvider *)self cacheAirPodsFirmwareUpdateDetails:v5];
      v18 = 1;
LABEL_25:

      goto LABEL_26;
    }

    v26 = v8;
    v24 = v9;
    v13 = [v11 objectForKeyedSubscript:@"caseSerialNumber"];
    v25 = [v12 objectForKeyedSubscript:@"leftBudSerialNumber"];
    v23 = [v12 objectForKeyedSubscript:@"rightBudSerialNumber"];
    v14 = [v12 objectForKeyedSubscript:@"caseFirmwareVersion"];
    v15 = [v12 objectForKeyedSubscript:@"firmwareUpdateDate"];
    v22 = [(NDOAirPodsServiceProvider *)self isLastSyncNeedsRetryWithSerialNumber:v13 withServiceName:@"Firmware"];
    if (v7 && v26)
    {
      if (!v13 || ![v6 isEqualToString:v13] || !v25 || !objc_msgSend(v7, "isEqualToString:", v25) || !v23)
      {
        goto LABEL_22;
      }

      v16 = v26;
      v17 = v23;
    }

    else
    {
      if (!v13)
      {
        goto LABEL_22;
      }

      v16 = v6;
      v17 = v13;
    }

    if ([v16 isEqualToString:v17] && v14 && (objc_msgSend(v24, "isEqualToString:", v14) & 1) != 0)
    {
      if (v22)
      {
        if (v15)
        {
          [v5 setValue:v15 forKey:@"firmwareUpdateDate"];
        }

        v19 = v15;
        v18 = 1;
        goto LABEL_24;
      }

      v18 = 0;
LABEL_23:
      v19 = v15;
LABEL_24:

      v9 = v24;
      v8 = v26;
      goto LABEL_25;
    }

LABEL_22:
    [(NDOAirPodsServiceProvider *)self cacheAirPodsFirmwareUpdateDetails:v5];
    v18 = 1;
    goto LABEL_23;
  }

  v18 = 0;
LABEL_26:
  v20 = v5;
  *a3 = v5;

  return v18;
}

- (BOOL)shouldSendFirstPairingData:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForKey:@"caseSerialNumber"];
  v6 = [v4 valueForKey:@"leftBudSerialNumber"];
  v7 = [v4 valueForKey:@"rightBudSerialNumber"];

  if (![(NDOAirPodsServiceProvider *)self isLastSyncNeedsRetryWithSerialNumber:v5 withServiceName:@"FirstPairing"])
  {
    v9 = [NSString stringWithFormat:@"%@_%@", v5, @"FirstPairing"];
    v10 = [(NDOAirPodsServiceProvider *)self getCachedAirPodsWarrantyDetailsForKey:v9];
    v11 = v10;
    if (!v10)
    {
      v8 = 1;
LABEL_19:

      goto LABEL_20;
    }

    v12 = [v10 objectForKeyedSubscript:@"caseSerialNumber"];
    v13 = [v11 objectForKeyedSubscript:@"leftBudSerialNumber"];
    v14 = [v11 objectForKeyedSubscript:@"rightBudSerialNumber"];
    if (v6 && v7)
    {
      if (v12)
      {
        v8 = 1;
        if (![v5 isEqualToString:v12] || !v13 || !objc_msgSend(v6, "isEqualToString:", v13) || !v14 || (objc_msgSend(v7, "isEqualToString:", v14) & 1) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }
    }

    else if (v12 && [v5 isEqualToString:v12])
    {
LABEL_16:
      v8 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v8 = 1;
    goto LABEL_18;
  }

  v8 = 1;
LABEL_20:

  return v8;
}

- (void)cacheAirPodsFirstPairingData:(id)a3
{
  v3 = a3;
  v11 = [v3 valueForKey:@"caseSerialNumber"];
  v4 = [v3 valueForKey:@"leftBudSerialNumber"];
  v5 = [v3 valueForKey:@"rightBudSerialNumber"];

  v6 = [NSString stringWithFormat:@"%@_%@", v11, @"FirstPairing"];
  v7 = +[NDOAirPodsServiceProvider airPodsDataStore];
  v8 = [v7 objectForKey:v6];
  v9 = [v8 mutableCopy];

  if (!v9)
  {
    v9 = objc_opt_new();
  }

  [NDOTypeChecking safeAddValue:v11 forKey:@"caseSerialNumber" toDictionary:v9];
  [NDOTypeChecking safeAddValue:v4 forKey:@"leftBudSerialNumber" toDictionary:v9];
  [NDOTypeChecking safeAddValue:v5 forKey:@"rightBudSerialNumber" toDictionary:v9];
  v10 = +[NDOAirPodsServiceProvider airPodsDataStore];
  [v10 setObject:v9 forKey:v6];
}

- (void)cacheAirPodsFirmwareUpdateDetails:(id)a3
{
  v3 = a3;
  v13 = [v3 valueForKey:@"caseSerialNumber"];
  v4 = [v3 valueForKey:@"leftBudSerialNumber"];
  v5 = [v3 valueForKey:@"rightBudSerialNumber"];
  v6 = [v3 valueForKey:@"caseFirmwareVersion"];
  v7 = [v3 valueForKey:@"firmwareUpdateDate"];

  v8 = [NSString stringWithFormat:@"%@_%@", v13, @"Firmware"];
  v9 = +[NDOAirPodsServiceProvider airPodsDataStore];
  v10 = [v9 objectForKey:v8];
  v11 = [v10 mutableCopy];

  if (!v11)
  {
    v11 = objc_opt_new();
  }

  [NDOTypeChecking safeAddValue:v13 forKey:@"caseSerialNumber" toDictionary:v11];
  [NDOTypeChecking safeAddValue:v4 forKey:@"leftBudSerialNumber" toDictionary:v11];
  [NDOTypeChecking safeAddValue:v5 forKey:@"rightBudSerialNumber" toDictionary:v11];
  [NDOTypeChecking safeAddValue:v6 forKey:@"caseFirmwareVersion" toDictionary:v11];
  [NDOTypeChecking safeAddValue:v7 forKey:@"firmwareUpdateDate" toDictionary:v11];
  v12 = +[NDOAirPodsServiceProvider airPodsDataStore];
  [v12 setObject:v11 forKey:v8];
}

- (id)getCachedAirPodsWarrantyDetailsForKey:(id)a3
{
  v3 = a3;
  v4 = +[NDOAirPodsServiceProvider airPodsDataStore];
  v5 = [v4 objectForKey:v3];

  return v5;
}

- (void)sendPairingDataIfRequired:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v9 = _NDOLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100072CBC();
    }

    goto LABEL_8;
  }

  if (![(NDOAirPodsServiceProvider *)self shouldSendFirstPairingData:v6])
  {
    v9 = _NDOLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100072C80();
    }

LABEL_8:

    v7[2](v7, 0);
    goto LABEL_9;
  }

  v8 = [(NDOAirPodsServiceProvider *)self deviceServicesInterface];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000A890;
  v10[3] = &unk_10009A8B0;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  [v8 sendPairingRequest:v11 completionHandler:v10];

LABEL_9:
}

- (void)sendFirmwareUpdateDataIfRequired:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = [NSMutableDictionary dictionaryWithDictionary:a3];
    v16 = v7;
    v8 = [(NDOAirPodsServiceProvider *)self shouldSendFirmwareUpdateAndGetUpdatedData:&v16];
    v9 = v16;

    if (v8)
    {
      v10 = [(NDOAirPodsServiceProvider *)self deviceServicesInterface];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10000AADC;
      v13[3] = &unk_10009A8B0;
      v13[4] = self;
      v14 = v9;
      v15 = v6;
      [v10 sendFirmwareUpdateRequest:v14 completionHandler:v13];
    }

    else
    {
      v12 = _NDOLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_100072D84();
      }

      (*(v6 + 2))(v6, 0);
    }
  }

  else
  {
    v11 = _NDOLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100072DC0();
    }

    (*(v6 + 2))(v6, 0);
  }
}

- (BOOL)isLastSyncNeedsRetryWithSerialNumber:(id)a3 withServiceName:(id)a4
{
  v5 = [NSString stringWithFormat:@"%@_%@", a3, a4];
  v6 = +[NDOAirPodsServiceProvider airPodsDataStore];
  v7 = [v6 objectForKey:v5];

  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = [v7 objectForKeyedSubscript:@"LastSyncNeedRetry"];
  if ([v8 BOOLValue])
  {
    v9 = objc_alloc_init(NSDateFormatter);
    [v9 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    v10 = [v7 objectForKeyedSubscript:@"LastSyncTime"];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &stru_10009E988;
    }

    v13 = [v9 dateFromString:v12];

    if (v13)
    {
      v14 = +[NSDate date];
      v15 = [(NDOAirPodsServiceProvider *)self calculateDaysBetweenStartDate:v13 endDate:v14];

      if (v15 < 1)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

LABEL_12:
    v16 = 1;
    goto LABEL_13;
  }

LABEL_10:
  v16 = 0;
LABEL_13:

  return v16;
}

- (void)setSyncDateForDeviceServicesWithSerialNumber:(id)a3 needsRetry:(BOOL)a4 withServiceName:(id)a5
{
  v5 = a4;
  v14 = [NSString stringWithFormat:@"%@_%@", a3, a5];
  v6 = +[NDOAirPodsServiceProvider airPodsDataStore];
  v7 = [v6 objectForKey:v14];
  v8 = [v7 mutableCopy];

  if (!v8)
  {
    v8 = objc_opt_new();
  }

  v9 = +[NSDate date];
  v10 = objc_alloc_init(NSDateFormatter);
  [v10 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v11 = [v10 stringFromDate:v9];
  if (v5)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [v8 setValue:v12 forKey:@"LastSyncNeedRetry"];
  [NDOTypeChecking safeAddValue:v11 forKey:@"LastSyncTime" toDictionary:v8];
  v13 = +[NDOAirPodsServiceProvider airPodsDataStore];
  [v13 setObject:v8 forKey:v14];
}

- (int64_t)calculateDaysBetweenStartDate:(id)a3 endDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[NSCalendar currentCalendar];
  v8 = [v7 components:16 fromDate:v6 toDate:v5 options:0];

  v9 = [v8 day];
  return v9;
}

@end