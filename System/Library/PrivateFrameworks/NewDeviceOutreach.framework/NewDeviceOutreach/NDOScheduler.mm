@interface NDOScheduler
+ (void)clearScheduledActivities;
+ (void)scheduleActivityWithDelegate:(id)a3 forDate:(id)a4;
- ($334330880F6F150C3C7EE8C53B00592A)getScheduledActivityDateAndKey;
- (id)scheduledActivityDate;
- (void)_scheduleActivityWithDelay:(double)a3 forDate:(id)a4;
- (void)monitorForScheduledActivity;
- (void)performScheduledOutreachWithBlock:(id)a3;
- (void)scheduleActivityForDate:(id)a3;
- (void)scheduleActivityWithDelay:(double)a3;
@end

@implementation NDOScheduler

+ (void)scheduleActivityWithDelegate:(id)a3 forDate:(id)a4
{
  v5 = a4;
  v6 = [NDOScheduler newSchedulerWithActivityDelegate:a3];
  [v6 scheduleActivityForDate:v5];
}

+ (void)clearScheduledActivities
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 dictionaryRepresentation];
  v4 = [v3 allKeys];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v15;
    *&v6 = 138412290;
    v13 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 hasSuffix:{@".TargetDate", v13}])
        {
          v11 = _NDOLogSystem();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v13;
            v19 = v10;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Clearing %@", buf, 0xCu);
          }

          v12 = +[NSUserDefaults standardUserDefaults];
          [v12 removeObjectForKey:v10];
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }
}

- (void)monitorForScheduledActivity
{
  v3 = _NDOLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NDOScheduler *)self identifier];
    *buf = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "monitorForScheduledActivity for '%@'", buf, 0xCu);
  }

  [(NDOScheduler *)self setPreregistered:1];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000BBD8;
  v5[3] = &unk_10009A900;
  v5[4] = self;
  [(NDOScheduler *)self scheduleWithBlock:v5];
}

- (void)scheduleActivityWithDelay:(double)a3
{
  v5 = [NSDate dateWithTimeIntervalSinceNow:?];
  [(NDOScheduler *)self _scheduleActivityWithDelay:v5 forDate:a3];
}

- (void)scheduleActivityForDate:(id)a3
{
  v4 = a3;
  [v4 timeIntervalSinceNow];
  [(NDOScheduler *)self _scheduleActivityWithDelay:v4 forDate:?];
}

- (void)_scheduleActivityWithDelay:(double)a3 forDate:(id)a4
{
  v6 = a4;
  v7 = _NDOLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(NDOScheduler *)self identifier];
    v9 = [(NDOScheduler *)self activityDelegate];
    v10 = [v9 uuid];
    *buf = 138413058;
    v29 = v8;
    v30 = 2112;
    v31 = v10;
    v32 = 2048;
    v33 = a3;
    v34 = 2112;
    v35 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "scheduled '%@ (%@)' with delay: %.02f (%@)", buf, 0x2Au);
  }

  [(NDOScheduler *)self setPreregistered:0];
  [(NDOScheduler *)self setRepeats:0];
  [(NDOScheduler *)self setQualityOfService:9];
  if (a3 < 0.0)
  {
    v11 = _NDOLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(NDOScheduler *)self identifier];
      *buf = 138412290;
      v29 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "XPC activity delay is negative. Scheduling with zero delay (%@)", buf, 0xCu);
    }

    a3 = 0.0;
  }

  v13 = xpc_dictionary_create(0, 0, 0);
  v14 = v13;
  v15 = 600;
  if (a3 > 600)
  {
    v15 = a3;
  }

  if (v15 >= 14400)
  {
    v16 = 14400;
  }

  else
  {
    v16 = v15;
  }

  xpc_dictionary_set_int64(v13, XPC_ACTIVITY_GRACE_PERIOD, v16);
  xpc_dictionary_set_int64(v14, XPC_ACTIVITY_DELAY, a3);
  v17 = XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY;
  v18 = [(NDOScheduler *)self activityDelegate];
  xpc_dictionary_set_BOOL(v14, v17, [v18 requiresNetwork]);

  xpc_dictionary_set_string(v14, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  [(NDOScheduler *)self _setAdditionalXPCActivityProperties:v14];
  v19 = [(NDOScheduler *)self identifier];
  v20 = [(NDOScheduler *)self activityDelegate];
  v21 = [v20 uuid];

  if (v21)
  {
    v22 = [(NDOScheduler *)self activityDelegate];
    v23 = [v22 uuid];
    v24 = [v19 stringByAppendingFormat:@"-%@", v23];

    v19 = v24;
  }

  v25 = +[NSUserDefaults standardUserDefaults];
  v26 = [v19 stringByAppendingString:@".TargetDate"];
  [v25 setObject:v6 forKey:v26];

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10000C03C;
  v27[3] = &unk_10009A900;
  v27[4] = self;
  [(NDOScheduler *)self scheduleWithBlock:v27];
}

- (id)scheduledActivityDate
{
  v2 = [(NDOScheduler *)self getScheduledActivityDateAndKey];

  return v2;
}

- ($334330880F6F150C3C7EE8C53B00592A)getScheduledActivityDateAndKey
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 dictionaryRepresentation];
  v5 = [v4 allKeys];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v23;
    while (1)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [(NDOScheduler *)self identifier];
        if (![v13 hasPrefix:v14])
        {
          goto LABEL_13;
        }

        v15 = [v13 hasSuffix:@".TargetDate"];

        if (!v15)
        {
          continue;
        }

        v16 = +[NSUserDefaults standardUserDefaults];
        v14 = [v16 objectForKey:v13];

        if (!v10)
        {
          v18 = v14;
          goto LABEL_12;
        }

        if ([v14 compare:v10] == -1)
        {
          v17 = v14;

LABEL_12:
          v19 = v13;

          v9 = v19;
          v10 = v14;
        }

LABEL_13:
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (!v8)
      {
        goto LABEL_18;
      }
    }
  }

  v9 = 0;
  v10 = 0;
LABEL_18:

  v20 = v10;
  v21 = v9;
  result.var1 = v21;
  result.var0 = v20;
  return result;
}

- (void)performScheduledOutreachWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(NDOScheduler *)self scheduledActivityDate];
  v6 = _NDOLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(NDOScheduler *)self identifier];
    *buf = 138412546;
    v25 = v7;
    v26 = 2112;
    v27 = *&v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "activity for '%@' should occur on: %@", buf, 0x16u);
  }

  [v5 timeIntervalSinceNow];
  v9 = v8;
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_10000C60C;
  v21 = &unk_10009A950;
  v22 = self;
  v10 = v4;
  v23 = v10;
  v11 = objc_retainBlock(&v18);
  v12 = _NDOLogSystem();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v9 <= 0.0)
  {
    if (v13)
    {
      v16 = [(NDOScheduler *)self identifier:v18];
      *buf = 138412290;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "target reached for '%@', trigger activity", buf, 0xCu);
    }

    v17 = [(NDOScheduler *)self activityDelegate];
    [v17 performActivityForScheduler:self withCompletionHandler:v11];
  }

  else
  {
    if (v13)
    {
      v14 = [(NDOScheduler *)self identifier:v18];
      *buf = 138412546;
      v25 = v14;
      v26 = 2048;
      v27 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "target not past for '%@', reschedule for: %.02f", buf, 0x16u);
    }

    v15 = [(NDOScheduler *)self activityDelegate];
    [NDOScheduler scheduleActivityWithDelegate:v15 forDate:v5];

    (v11[2])(v11, 1);
  }
}

@end