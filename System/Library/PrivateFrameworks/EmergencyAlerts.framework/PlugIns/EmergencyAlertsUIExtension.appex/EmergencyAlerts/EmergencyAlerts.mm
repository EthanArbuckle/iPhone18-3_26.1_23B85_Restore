void sub_100001150(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = qword_10000CD40;
  if (os_log_type_enabled(qword_10000CD40, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = a5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received broadcast message notification %{public}@", &v8, 0xCu);
  }

  if (a5)
  {
    if (objc_opt_respondsToSelector())
    {
      [a2 cellBroadcastMessageReceived:a5];
    }
  }
}

void sub_1000019C4(uint64_t a1, void *a2)
{
  v27 = a2;
  v3 = [v27 resultType];
  if (v3 == 16)
  {
    v8 = [v27 addressComponents];
    v17 = [v8 objectForKey:NSTextCheckingStreetKey];
    v18 = [v8 objectForKey:NSTextCheckingCityKey];
    v19 = [v8 objectForKey:NSTextCheckingStateKey];
    if (v17)
    {
      v20 = [@"http://maps.apple.com/?address=" stringByAppendingString:v17];
      if (!v18)
      {
LABEL_13:
        if (v19)
        {
          v22 = [(__CFString *)v20 stringByAppendingString:@" "];

          v20 = [v22 stringByAppendingString:v19];
        }

        v23 = [NSURL URLWithString:v20];
        if (v23)
        {
          v24 = *(a1 + 32);
          v25 = [v27 range];
          [v24 addAttribute:NSLinkAttributeName value:v23 range:{v25, v26}];
        }

        goto LABEL_18;
      }
    }

    else
    {
      v20 = @"http://maps.apple.com/?address=";
      if (!v18)
      {
        goto LABEL_13;
      }
    }

    v21 = [(__CFString *)v20 stringByAppendingString:@" "];

    v20 = [v21 stringByAppendingString:v18];

    goto LABEL_13;
  }

  if (v3 == 32)
  {
    v8 = [v27 URL];
    if (v8)
    {
      v14 = *(a1 + 32);
      v15 = [v27 range];
      [v14 addAttribute:NSLinkAttributeName value:v8 range:{v15, v16}];
    }

    goto LABEL_18;
  }

  v4 = v3 == 2048;
  v5 = v27;
  if (v4)
  {
    v6 = [v27 phoneNumber];
    v7 = +[NSCharacterSet URLHostAllowedCharacterSet];
    v8 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:v7];

    v9 = [NSString stringWithFormat:@"tel://%@", v8];
    v10 = [NSURL URLWithString:v9];
    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = [v27 range];
      [v11 addAttribute:NSLinkAttributeName value:v10 range:{v12, v13}];
    }

LABEL_18:
    v5 = v27;
  }
}

void sub_100002704(uint64_t a1)
{
  v2 = [*(a1 + 32) safetyAlertSpinner];
  [v2 startAnimating];

  v3 = dispatch_time(0, 8000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000027B4;
  block[3] = &unk_1000082D0;
  block[4] = *(a1 + 32);
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_1000027B4(uint64_t a1)
{
  v1 = [*(a1 + 32) safetyAlertSpinner];
  [v1 removeFromSuperview];
}

void sub_1000038A8(id a1)
{
  qword_10000CD40 = os_log_create("com.apple.EmergencyAlerts", "EmergencyAlertsUIExtension");

  _objc_release_x1();
}

void sub_1000038EC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id ea_getFormattedDatePrint(void *a1, BOOL *a2)
{
  v3 = a1;
  v4 = objc_alloc_init(NSISO8601DateFormatter);
  [v4 setFormatOptions:1907];
  v5 = [v4 dateFromString:v3];
  v6 = v5;
  if (!v5)
  {
    v11 = v3;
    goto LABEL_14;
  }

  [v5 timeIntervalSinceNow];
  *a2 = v7 < 0.0;
  v8 = +[NSCalendar currentCalendar];
  v9 = [NSBundle bundleWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.cmas.bundle"];
  if ([v8 isDateInToday:v6])
  {
    v10 = @"TODAY";
  }

  else if ([v8 isDateInTomorrow:v6])
  {
    v10 = @"TOMORROW";
  }

  else
  {
    if (([v8 isDateInYesterday:v6] & 1) == 0)
    {
      v13 = objc_alloc_init(NSDateFormatter);
LABEL_12:
      [v13 setLocalizedDateFormatFromTemplate:@"MMMMd"];
      v12 = [v13 stringFromDate:v6];
      goto LABEL_13;
    }

    v10 = @"YESTERDAY";
  }

  v12 = [v9 localizedStringForKey:v10 value:&stru_1000084C0 table:0];
  v13 = objc_alloc_init(NSDateFormatter);
  if (!v12)
  {
    goto LABEL_12;
  }

LABEL_13:
  [v13 setDateFormat:@"hh:mm a"];
  v14 = [v13 stringFromDate:v6];
  v11 = [v12 stringByAppendingFormat:@", %@", v14];

LABEL_14:

  return v11;
}

void *ea_isValidString(void *result)
{
  if (result)
  {
    return ([result length] != 0);
  }

  return result;
}

id ea_getEpochTimestamp()
{
  v0 = +[NSDate date];
  [v0 timeIntervalSince1970];
  v1 = [NSNumber numberWithDouble:?];
  v2 = [v1 integerValue];

  return v2;
}

id ea_getHashForString(void *a1)
{
  if (a1)
  {
    v1 = [a1 UTF8String];
    v2 = strlen(v1);
    CC_SHA256(v1, v2, md);
    v3 = [NSMutableString stringWithCapacity:32];
    for (i = 0; i != 16; ++i)
    {
      [v3 appendFormat:@"%02x", md[i]];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void ea_sendSafetyAlertTapIndication(void *a1, uint64_t a2)
{
  v9[0] = a1;
  v8[0] = @"WeaMessage";
  v8[1] = @"WeaHash";
  v3 = a1;
  v4 = ea_getHashForString(v3);
  v9[1] = v4;
  v8[2] = @"UserInteractionType";
  v5 = [NSNumber numberWithInt:a2];
  v9[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];

  v7 = +[SafetyAlerts sharedInterface];

  [v7 onUserTappedOnWeaWithInfo:v6];
}

void sub_100003DB8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to load bundle: %@", &v2, 0xCu);
}