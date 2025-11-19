@interface CALNTriggeredEventNotificationLaunchURLProvider
+ (id)_launchURLForEventID:(id)a3 hypothesis:(id)a4 isTravelLaunchURL:(BOOL *)a5;
+ (id)_travelLaunchURLForEventID:(id)a3 hypothesis:(id)a4;
+ (id)launchURLForOptionalEventID:(id)a3 hypothesis:(id)a4 isTravelLaunchURL:(BOOL *)a5;
@end

@implementation CALNTriggeredEventNotificationLaunchURLProvider

+ (id)launchURLForOptionalEventID:(id)a3 hypothesis:(id)a4 isTravelLaunchURL:(BOOL *)a5
{
  v7 = a3;
  v8 = a4;
  *a5 = 0;
  if (v7)
  {
    v9 = [MEMORY[0x277CBEBC0] URLWithString:v7];
    if (v9)
    {
      v10 = [objc_opt_class() _launchURLForEventID:v9 hypothesis:v8 isTravelLaunchURL:a5];
    }

    else
    {
      v11 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CALNTriggeredEventNotificationLaunchURLProvider launchURLForOptionalEventID:v7 hypothesis:v11 isTravelLaunchURL:?];
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_launchURLForEventID:(id)a3 hypothesis:(id)a4 isTravelLaunchURL:(BOOL *)a5
{
  v8 = a3;
  v9 = a4;
  if (v9 && ([a1 _travelLaunchURLForEventID:v8 hypothesis:v9], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    *a5 = 1;
    v12 = v11;
  }

  else
  {
    v12 = v8;
    v11 = 0;
  }

  return v12;
}

+ (id)_travelLaunchURLForEventID:(id)a3 hypothesis:(id)a4
{
  v4 = [a3 absoluteString];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 stringByAppendingString:@"?travel=true"];
    v7 = [MEMORY[0x277CBEBC0] URLWithString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)launchURLForOptionalEventID:(uint64_t)a1 hypothesis:(NSObject *)a2 isTravelLaunchURL:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_242909000, a2, OS_LOG_TYPE_ERROR, "Could not get launch URL because unable to get event ID url for event ID = %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end