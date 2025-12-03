@interface NDOWarrantyDownloader
- (NDOWarrantyDownloader)initWithCallingProcessBundleID:(id)d;
- (id)dictionaryFromURL:(id)l forSerialNumber:(id)number;
- (void)_downloadDeviceListForLocalDevices:(id)devices sessionID:(id)d params:(id)params completionHandler:(id)handler;
- (void)_downloadWarrantyForSerialNumber:(id)number sessionID:(id)d params:(id)params withCompletion:(id)completion;
- (void)_scheduleConversionOutreachIfRequiredForWarranty:(id)warranty serialNumber:(id)number andCachedWarranty:(id)cachedWarranty;
- (void)_scheduleWeeklyOutreachIfRequiredForDefaultDeviceWarranty:(id)warranty;
- (void)downloadDeviceForLocalDevices:(id)devices sessionID:(id)d params:(id)params completionHandler:(id)handler;
- (void)downloadWarrantyForSerialNumber:(id)number sessionID:(id)d params:(id)params completionHandler:(id)handler;
@end

@implementation NDOWarrantyDownloader

- (NDOWarrantyDownloader)initWithCallingProcessBundleID:(id)d
{
  dCopy = d;
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

    objc_storeStrong(&v6->_callingProcessBundleID, d);
    v8 = +[NDORequestProperties makePropertiesProvider];
    requestProperties = v6->_requestProperties;
    v6->_requestProperties = v8;
  }

  return v6;
}

- (void)_scheduleConversionOutreachIfRequiredForWarranty:(id)warranty serialNumber:(id)number andCachedWarranty:(id)cachedWarranty
{
  warrantyCopy = warranty;
  numberCopy = number;
  cachedWarrantyCopy = cachedWarranty;
  v10 = cachedWarrantyCopy;
  if (warrantyCopy && cachedWarrantyCopy)
  {
    acOfferConversionDate = [cachedWarrantyCopy acOfferConversionDate];
    if (acOfferConversionDate)
    {
      acOfferConversionDate2 = [warrantyCopy acOfferConversionDate];
      if (!acOfferConversionDate2 || (v13 = acOfferConversionDate2, [warrantyCopy acOfferConversionDate], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(acOfferConversionDate, "compare:", v14), v14, v13, !v15))
      {
LABEL_12:
        v17 = _NDOLogSystem();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          acOfferConversionDate3 = [v10 acOfferConversionDate];
          acOfferConversionDate4 = [warrantyCopy acOfferConversionDate];
          v22 = 138412546;
          v23 = acOfferConversionDate3;
          v24 = 2112;
          v25 = acOfferConversionDate4;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Not Scheduling conversion outreach %@ (%@)", &v22, 0x16u);
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
    acOfferConversionDate = 0;
    if (!warrantyCopy)
    {
      goto LABEL_12;
    }
  }

  acOfferConversionDate5 = [warrantyCopy acOfferConversionDate];
  if (!acOfferConversionDate5)
  {
    goto LABEL_12;
  }

  v17 = acOfferConversionDate5;
  v18 = _NDOLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412546;
    v23 = v17;
    v24 = 2112;
    v25 = numberCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Scheduling conversion outreach %@ (%@)", &v22, 0x16u);
  }

  v19 = [NDOConversionOutreachActivity outreachActivityForSerialNumber:numberCopy];
  [NDOScheduler scheduleActivityWithDelegate:v19 forDate:v17];

LABEL_14:
}

- (void)_scheduleWeeklyOutreachIfRequiredForDefaultDeviceWarranty:(id)warranty
{
  warrantyCopy = warranty;
  if (+[NDOIntervalCallActivity isDeviceCountryEligibleForIntervalEvent])
  {
    v4 = objc_opt_new();
    v5 = [NDOScheduler newSchedulerWithActivityDelegate:v4];

    v6 = +[NSUserDefaults standardUserDefaults];
    v7 = [v6 objectForKey:@"OneDayInterval"];
    [v7 doubleValue];
    v9 = v8;

    if (warrantyCopy)
    {
      v10 = +[NSUserDefaults standardUserDefaults];
      [v10 setBool:objc_msgSend(warrantyCopy forKey:{"scIntervalPairedDeviceAllowed"), @"lastStoredPairedDeviceCallAllowedValue"}];

      scIntervalInDays = [warrantyCopy scIntervalInDays];
      [scIntervalInDays doubleValue];
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

      scheduledActivityDate = [v5 scheduledActivityDate];
      if (!scheduledActivityDate)
      {
        goto LABEL_28;
      }

      v26 = scheduledActivityDate;
      scheduledActivityDate2 = [v5 scheduledActivityDate];
      v28 = scheduledActivityDate2;
      if (scheduledActivityDate2 && v24 != v13)
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
        scheduledActivityDate5 = +[NSUserDefaults standardUserDefaults];
        [scheduledActivityDate5 setDouble:@"lastStoredIntervalDaysValue" forKey:v13];
        goto LABEL_35;
      }

      scheduledActivityDate3 = [v5 scheduledActivityDate];
      v49 = +[NSDate date];
      v50 = [scheduledActivityDate3 compare:v49];

      if (v50 == -1)
      {
        goto LABEL_28;
      }

      scheduledActivityDate4 = [v5 scheduledActivityDate];
      if (scheduledActivityDate4)
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
        scheduledActivityDate5 = [v5 scheduledActivityDate];
        v59 = 136446722;
        v60 = "[NDOWarrantyDownloader _scheduleWeeklyOutreachIfRequiredForDefaultDeviceWarranty:]";
        v61 = 2112;
        v62 = *&scheduledActivityDate5;
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

    scheduledActivityDate6 = [v5 scheduledActivityDate];
    if (scheduledActivityDate6)
    {
      v30 = scheduledActivityDate6;
      scheduledActivityDate7 = [v5 scheduledActivityDate];
      if (scheduledActivityDate7)
      {
        v32 = scheduledActivityDate7;
        v33 = +[NSDate date];
        scheduledActivityDate8 = [v5 scheduledActivityDate];
        v35 = [v33 compare:scheduledActivityDate8];

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
        scheduledActivityDate5 = [v5 scheduledActivityDate];
        v59 = 136446466;
        v60 = "[NDOWarrantyDownloader _scheduleWeeklyOutreachIfRequiredForDefaultDeviceWarranty:]";
        v61 = 2112;
        v62 = *&scheduledActivityDate5;
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

- (void)_downloadDeviceListForLocalDevices:(id)devices sessionID:(id)d params:(id)params completionHandler:(id)handler
{
  devicesCopy = devices;
  dCopy = d;
  paramsCopy = params;
  handlerCopy = handler;
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
  defaultDevice = [v18 defaultDevice];
  serialNumber = [defaultDevice serialNumber];

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
  [(NDOWarrantyDownloader *)self _downloadDeviceListFromServerURL:v17 serialNumber:serialNumber localDevices:devicesCopy sessionID:dCopy params:paramsCopy withRetries:2 completionBlock:v28];
  v23 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007E28;
  block[3] = &unk_10009A750;
  v26 = handlerCopy;
  v27 = &buf;
  v24 = handlerCopy;
  dispatch_group_notify(v22, v23, block);

  _Block_object_dispose(&buf, 8);
}

- (void)_downloadWarrantyForSerialNumber:(id)number sessionID:(id)d params:(id)params withCompletion:(id)completion
{
  numberCopy = number;
  dCopy = d;
  paramsCopy = params;
  completionCopy = completion;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_100001EDC;
  v39 = sub_100003F74;
  v40 = 0;
  v13 = +[NDODeviceProvider sharedProvider];
  defaultDevice = [v13 defaultDevice];
  serialNumber = [defaultDevice serialNumber];

  if (numberCopy && serialNumber && [serialNumber isEqualToString:numberCopy])
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
    v21 = [(NDOWarrantyDownloader *)self dictionaryFromURL:v18 forSerialNumber:numberCopy];
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
    [(NDOWarrantyDownloader *)self _downloadWarrantyFromServerURL:v18 serialNumber:numberCopy sessionID:dCopy params:paramsCopy withRetries:2 completionBlock:v32];
    v22 = v33;
  }

  v23 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000086CC;
  block[3] = &unk_10009A7A0;
  v31 = v19;
  v29 = completionCopy;
  v30 = &v35;
  block[4] = self;
  v28 = numberCopy;
  v24 = numberCopy;
  v25 = completionCopy;
  dispatch_group_notify(v20, v23, block);

  _Block_object_dispose(&v35, 8);
}

- (void)downloadDeviceForLocalDevices:(id)devices sessionID:(id)d params:(id)params completionHandler:(id)handler
{
  devicesCopy = devices;
  dCopy = d;
  paramsCopy = params;
  handlerCopy = handler;
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
  v22 = paramsCopy;
  v23 = handlerCopy;
  v19[4] = self;
  v20 = devicesCopy;
  v21 = dCopy;
  v15 = paramsCopy;
  v16 = dCopy;
  v17 = devicesCopy;
  v18 = handlerCopy;
  [NDOServerVersionUtilities serverVersionSupported:v19];
}

- (void)downloadWarrantyForSerialNumber:(id)number sessionID:(id)d params:(id)params completionHandler:(id)handler
{
  numberCopy = number;
  dCopy = d;
  paramsCopy = params;
  handlerCopy = handler;
  v14 = _NDOLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446467;
    v26 = "[NDOWarrantyDownloader downloadWarrantyForSerialNumber:sessionID:params:completionHandler:]";
    v27 = 2113;
    v28 = numberCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: %{private}@", buf, 0x16u);
  }

  v15 = +[NSUserDefaults standardUserDefaults];
  [v15 removeObjectForKey:@"ServerVersionCache"];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000090AC;
  v20[3] = &unk_10009A7C8;
  v23 = paramsCopy;
  v24 = handlerCopy;
  v20[4] = self;
  v21 = numberCopy;
  v22 = dCopy;
  v16 = paramsCopy;
  v17 = dCopy;
  v18 = numberCopy;
  v19 = handlerCopy;
  [NDOServerVersionUtilities serverVersionSupported:v20];
}

- (id)dictionaryFromURL:(id)l forSerialNumber:(id)number
{
  lCopy = l;
  numberCopy = number;
  pathExtension = [lCopy pathExtension];
  uRLByDeletingPathExtension = [lCopy URLByDeletingPathExtension];
  v9 = [NSString stringWithFormat:@"%@.%@", numberCopy, pathExtension];

  v10 = [uRLByDeletingPathExtension URLByAppendingPathExtension:v9];

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
    v20 = lCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "loading warranty from: %@", buf, 0xCu);
  }

  v11 = [NSData dataWithContentsOfURL:lCopy];
  if (v11)
  {
    goto LABEL_8;
  }

  v15 = _NDOLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_100072BF4(lCopy, v15);
  }

  v11 = 0;
  v14 = 0;
LABEL_15:

  return v14;
}

@end