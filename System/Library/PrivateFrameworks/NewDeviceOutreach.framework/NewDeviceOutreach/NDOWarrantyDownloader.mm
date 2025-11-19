@interface NDOWarrantyDownloader
- (NDOWarrantyDownloader)initWithCallingProcessBundleID:(id)a3;
- (id)dictionaryFromURL:(id)a3 forSerialNumber:(id)a4;
- (void)_downloadDeviceListForLocalDevices:(id)a3 sessionID:(id)a4 params:(id)a5 completionHandler:(id)a6;
- (void)_downloadWarrantyForSerialNumber:(id)a3 sessionID:(id)a4 params:(id)a5 withCompletion:(id)a6;
- (void)_scheduleConversionOutreachIfRequiredForWarranty:(id)a3 serialNumber:(id)a4 andCachedWarranty:(id)a5;
- (void)_scheduleWeeklyOutreachIfRequiredForDefaultDeviceWarranty:(id)a3;
- (void)downloadDeviceForLocalDevices:(id)a3 sessionID:(id)a4 params:(id)a5 completionHandler:(id)a6;
- (void)downloadWarrantyForSerialNumber:(id)a3 sessionID:(id)a4 params:(id)a5 completionHandler:(id)a6;
@end

@implementation NDOWarrantyDownloader

- (NDOWarrantyDownloader)initWithCallingProcessBundleID:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = NDOWarrantyDownloader;
  v6 = [(NDOWarrantyDownloader *)&v11 init];
  if (v6)
  {
    if (qword_1000A82E0 != -1)
    {
      sub_1000728AC();
    }

    v7 = _NDOLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1000728D4();
    }

    objc_storeStrong(&v6->_callingProcessBundleID, a3);
    v8 = +[NDORequestProperties makePropertiesProvider];
    requestProperties = v6->_requestProperties;
    v6->_requestProperties = v8;
  }

  return v6;
}

- (void)_scheduleConversionOutreachIfRequiredForWarranty:(id)a3 serialNumber:(id)a4 andCachedWarranty:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v7 && v9)
  {
    v11 = [v9 acOfferConversionDate];
    if (v11)
    {
      v12 = [v7 acOfferConversionDate];
      if (!v12 || (v13 = v12, [v7 acOfferConversionDate], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v11, "compare:", v14), v14, v13, !v15))
      {
LABEL_12:
        v17 = _NDOLogSystem();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v10 acOfferConversionDate];
          v21 = [v7 acOfferConversionDate];
          v22 = 138412546;
          v23 = v20;
          v24 = 2112;
          v25 = v21;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Not Scheduling conversion outreach %@ (%@)", &v22, 0x16u);
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
    v11 = 0;
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  v16 = [v7 acOfferConversionDate];
  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = v16;
  v18 = _NDOLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412546;
    v23 = v17;
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Scheduling conversion outreach %@ (%@)", &v22, 0x16u);
  }

  v19 = [NDOConversionOutreachActivity outreachActivityForSerialNumber:v8];
  [NDOScheduler scheduleActivityWithDelegate:v19 forDate:v17];

LABEL_14:
}

- (void)_scheduleWeeklyOutreachIfRequiredForDefaultDeviceWarranty:(id)a3
{
  v3 = a3;
  if (+[NDOIntervalCallActivity isDeviceCountryEligibleForIntervalEvent])
  {
    v4 = objc_opt_new();
    v5 = [NDOScheduler newSchedulerWithActivityDelegate:v4];

    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [v6 objectForKey:@"OneDayInterval"];
    [v7 doubleValue];
    v9 = v8;

    if (v3)
    {
      v10 = +[NSUserDefaults standardUserDefaults];
      [v10 setBool:objc_msgSend(v3 forKey:{"scIntervalPairedDeviceAllowed"), @"lastStoredPairedDeviceCallAllowedValue"}];

      v11 = [v3 scIntervalInDays];
      [v11 doubleValue];
      v13 = v12;

      v14 = +[NSUserDefaults standardUserDefaults];
      v15 = [v14 objectForKey:@"scIntervalInDays"];
      [v15 doubleValue];
      v17 = v16;

      if (v17 != 0.0)
      {
        v18 = +[NSUserDefaults standardUserDefaults];
        v19 = [v18 objectForKey:@"scIntervalInDays"];
        [v19 doubleValue];
        v13 = v20;

        v21 = _NDOLogSystem();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v59 = 136446466;
          v60 = "[NDOWarrantyDownloader _scheduleWeeklyOutreachIfRequiredForDefaultDeviceWarranty:]";
          v61 = 2048;
          v62 = v13;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}s: Overriden recurring event interval in days: %f", &v59, 0x16u);
        }
      }

      if (v13 == -1.0 || v13 == 0.0)
      {
        v47 = _NDOLogSystem();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          sub_100072AA0(v47);
        }

        goto LABEL_40;
      }

      v22 = +[NSUserDefaults standardUserDefaults];
      [v22 doubleForKey:@"lastStoredIntervalDaysValue"];
      v24 = v23;

      v25 = [v5 scheduledActivityDate];
      if (!v25)
      {
        goto LABEL_28;
      }

      v26 = v25;
      v27 = [v5 scheduledActivityDate];
      v28 = v27;
      if (v27 && v24 != v13)
      {

LABEL_28:
        v56 = +[NSDate date];
        v47 = [v56 dateByAddingTimeInterval:v9 * v13];

        v57 = _NDOLogSystem();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v59 = 136446466;
          v60 = "[NDOWarrantyDownloader _scheduleWeeklyOutreachIfRequiredForDefaultDeviceWarranty:]";
          v61 = 2112;
          v62 = *&v47;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%{public}s: Scheduling interval call for: %@", &v59, 0x16u);
        }

        [v5 scheduleActivityForDate:v47];
        v52 = +[NSUserDefaults standardUserDefaults];
        [v52 setDouble:@"lastStoredIntervalDaysValue" forKey:v13];
        goto LABEL_35;
      }

      v48 = [v5 scheduledActivityDate];
      v49 = +[NSDate date];
      v50 = [v48 compare:v49];

      if (v50 == -1)
      {
        goto LABEL_28;
      }

      v51 = [v5 scheduledActivityDate];
      if (v51)
      {

        if (v24 == 0.0 || v24 == v13)
        {
          v47 = _NDOLogSystem();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            sub_1000729D8(v5, v47, v24);
          }

          goto LABEL_40;
        }
      }

      v47 = _NDOLogSystem();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v52 = [v5 scheduledActivityDate];
        v59 = 136446722;
        v60 = "[NDOWarrantyDownloader _scheduleWeeklyOutreachIfRequiredForDefaultDeviceWarranty:]";
        v61 = 2112;
        v62 = *&v52;
        v63 = 2048;
        v64 = v24;
        v53 = "%{public}s: Didn't schedule interval call with already scheduled activity: %@ and last interval value: %ld";
        v54 = v47;
        v55 = 32;
LABEL_34:
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, v53, &v59, v55);
LABEL_35:

        goto LABEL_40;
      }

      goto LABEL_40;
    }

    v29 = [v5 scheduledActivityDate];
    if (v29)
    {
      v30 = v29;
      v31 = [v5 scheduledActivityDate];
      if (v31)
      {
        v32 = v31;
        v33 = +[NSDate date];
        v34 = [v5 scheduledActivityDate];
        v35 = [v33 compare:v34];

        if (v35 == 1)
        {
          goto LABEL_18;
        }
      }

      else
      {
      }

      v47 = _NDOLogSystem();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v52 = [v5 scheduledActivityDate];
        v59 = 136446466;
        v60 = "[NDOWarrantyDownloader _scheduleWeeklyOutreachIfRequiredForDefaultDeviceWarranty:]";
        v61 = 2112;
        v62 = *&v52;
        v53 = "%{public}s: No warranty present. Found interval call already scheduled for: %@";
        v54 = v47;
        v55 = 22;
        goto LABEL_34;
      }

LABEL_40:

      goto LABEL_41;
    }

LABEL_18:
    v36 = +[NSUserDefaults standardUserDefaults];
    v37 = [v36 objectForKey:@"scIntervalInDays"];
    [v37 doubleValue];
    v39 = v38;

    if (v39 == 0.0)
    {
      v44 = +[NSDate date];
      v45 = v44;
      v46 = v9;
    }

    else
    {
      v40 = +[NSUserDefaults standardUserDefaults];
      v41 = [v40 objectForKey:@"scIntervalInDays"];
      [v41 doubleValue];
      v43 = v42;

      v44 = +[NSDate date];
      v45 = v44;
      v46 = v9 * v43;
    }

    v47 = [v44 dateByAddingTimeInterval:v46];

    v58 = _NDOLogSystem();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = 136446466;
      v60 = "[NDOWarrantyDownloader _scheduleWeeklyOutreachIfRequiredForDefaultDeviceWarranty:]";
      v61 = 2112;
      v62 = *&v47;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%{public}s: No warranty present. Scheduling interval call for: %@", &v59, 0x16u);
    }

    [v5 scheduleActivityForDate:v47];
    goto LABEL_40;
  }

  v5 = _NDOLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100072954(v5);
  }

LABEL_41:
}

- (void)_downloadDeviceListForLocalDevices:(id)a3 sessionID:(id)a4 params:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _NDOLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = "[NDOWarrantyDownloader _downloadDeviceListForLocalDevices:sessionID:params:completionHandler:]";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s", &buf, 0xCu);
  }

  v15 = +[NSUserDefaults standardUserDefaults];
  v16 = [v15 objectForKey:@"DeviceListURL"];
  v17 = [NSURL URLWithString:v16];

  v18 = +[NDODeviceProvider sharedProvider];
  v19 = [v18 defaultDevice];
  v20 = [v19 serialNumber];

  v21 = dispatch_group_create();
  dispatch_group_enter(v21);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v32 = 0x3032000000;
  v33 = sub_100001EDC;
  v34 = sub_100003F74;
  v35 = 0;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100007D44;
  v28[3] = &unk_10009A6D8;
  p_buf = &buf;
  v22 = v21;
  v29 = v22;
  [(NDOWarrantyDownloader *)self _downloadDeviceListFromServerURL:v17 serialNumber:v20 localDevices:v10 sessionID:v11 params:v12 withRetries:2 completionBlock:v28];
  v23 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007E28;
  block[3] = &unk_10009A750;
  v26 = v13;
  v27 = &buf;
  v24 = v13;
  dispatch_group_notify(v22, v23, block);

  _Block_object_dispose(&buf, 8);
}

- (void)_downloadWarrantyForSerialNumber:(id)a3 sessionID:(id)a4 params:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v26 = a4;
  v11 = a5;
  v12 = a6;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_100001EDC;
  v39 = sub_100003F74;
  v40 = 0;
  v13 = +[NDODeviceProvider sharedProvider];
  v14 = [v13 defaultDevice];
  v15 = [v14 serialNumber];

  if (v10 && v15 && [v15 isEqualToString:v10])
  {
    v16 = +[NSUserDefaults standardUserDefaults];
    v17 = [v16 objectForKey:@"WarrantyURL"];
    v18 = [NSURL URLWithString:v17];
    v19 = 1;
  }

  else
  {
    v16 = +[NSUserDefaults standardUserDefaults];
    v17 = [v16 objectForKey:@"WearablesWarrantyURL"];
    v18 = [NSURL URLWithString:v17];
    v19 = 0;
  }

  v20 = dispatch_group_create();
  if ([v18 isFileURL])
  {
    v21 = [(NDOWarrantyDownloader *)self dictionaryFromURL:v18 forSerialNumber:v10];
    v22 = v36[5];
    v36[5] = v21;
  }

  else
  {
    dispatch_group_enter(v20);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10000866C;
    v32[3] = &unk_10009A6D8;
    v34 = &v35;
    v33 = v20;
    [(NDOWarrantyDownloader *)self _downloadWarrantyFromServerURL:v18 serialNumber:v10 sessionID:v26 params:v11 withRetries:2 completionBlock:v32];
    v22 = v33;
  }

  v23 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000086CC;
  block[3] = &unk_10009A7A0;
  v31 = v19;
  v29 = v12;
  v30 = &v35;
  block[4] = self;
  v28 = v10;
  v24 = v10;
  v25 = v12;
  dispatch_group_notify(v20, v23, block);

  _Block_object_dispose(&v35, 8);
}

- (void)downloadDeviceForLocalDevices:(id)a3 sessionID:(id)a4 params:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _NDOLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v25 = "[NDOWarrantyDownloader downloadDeviceForLocalDevices:sessionID:params:completionHandler:]";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100008E28;
  v19[3] = &unk_10009A7C8;
  v22 = v12;
  v23 = v13;
  v19[4] = self;
  v20 = v10;
  v21 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = v13;
  [NDOServerVersionUtilities serverVersionSupported:v19];
}

- (void)downloadWarrantyForSerialNumber:(id)a3 sessionID:(id)a4 params:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _NDOLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446467;
    v26 = "[NDOWarrantyDownloader downloadWarrantyForSerialNumber:sessionID:params:completionHandler:]";
    v27 = 2113;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: %{private}@", buf, 0x16u);
  }

  v15 = +[NSUserDefaults standardUserDefaults];
  [v15 removeObjectForKey:@"ServerVersionCache"];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000090AC;
  v20[3] = &unk_10009A7C8;
  v23 = v12;
  v24 = v13;
  v20[4] = self;
  v21 = v10;
  v22 = v11;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  v19 = v13;
  [NDOServerVersionUtilities serverVersionSupported:v20];
}

- (id)dictionaryFromURL:(id)a3 forSerialNumber:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 pathExtension];
  v8 = [v5 URLByDeletingPathExtension];
  v9 = [NSString stringWithFormat:@"%@.%@", v6, v7];

  v10 = [v8 URLByAppendingPathExtension:v9];

  v11 = [NSData dataWithContentsOfURL:v10];
  v12 = _NDOLogSystem();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      *buf = 138412290;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "loading warranty from: %@", buf, 0xCu);
    }

LABEL_8:
    v18 = 0;
    v14 = [NSPropertyListSerialization propertyListWithData:v11 options:0 format:0 error:&v18];
    v15 = v18;
    if (v15)
    {
      v16 = _NDOLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100072B68();
      }
    }

    goto LABEL_15;
  }

  if (v13)
  {
    *buf = 138412290;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "loading warranty from: %@", buf, 0xCu);
  }

  v11 = [NSData dataWithContentsOfURL:v5];
  if (v11)
  {
    goto LABEL_8;
  }

  v15 = _NDOLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_100072BF4(v5, v15);
  }

  v11 = 0;
  v14 = 0;
LABEL_15:

  return v14;
}

@end