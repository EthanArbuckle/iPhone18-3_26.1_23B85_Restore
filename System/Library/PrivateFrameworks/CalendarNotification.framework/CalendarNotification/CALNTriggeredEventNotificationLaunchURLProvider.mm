@interface CALNTriggeredEventNotificationLaunchURLProvider
+ (id)_launchURLForEventID:(id)d hypothesis:(id)hypothesis isTravelLaunchURL:(BOOL *)l;
+ (id)_travelLaunchURLForEventID:(id)d hypothesis:(id)hypothesis;
+ (id)launchURLForOptionalEventID:(id)d hypothesis:(id)hypothesis isTravelLaunchURL:(BOOL *)l;
@end

@implementation CALNTriggeredEventNotificationLaunchURLProvider

+ (id)launchURLForOptionalEventID:(id)d hypothesis:(id)hypothesis isTravelLaunchURL:(BOOL *)l
{
  dCopy = d;
  hypothesisCopy = hypothesis;
  *l = 0;
  if (dCopy)
  {
    v9 = [MEMORY[0x277CBEBC0] URLWithString:dCopy];
    if (v9)
    {
      v10 = [objc_opt_class() _launchURLForEventID:v9 hypothesis:hypothesisCopy isTravelLaunchURL:l];
    }

    else
    {
      v11 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CALNTriggeredEventNotificationLaunchURLProvider launchURLForOptionalEventID:dCopy hypothesis:v11 isTravelLaunchURL:?];
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

+ (id)_launchURLForEventID:(id)d hypothesis:(id)hypothesis isTravelLaunchURL:(BOOL *)l
{
  dCopy = d;
  hypothesisCopy = hypothesis;
  if (hypothesisCopy && ([self _travelLaunchURLForEventID:dCopy hypothesis:hypothesisCopy], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    *l = 1;
    v12 = v11;
  }

  else
  {
    v12 = dCopy;
    v11 = 0;
  }

  return v12;
}

+ (id)_travelLaunchURLForEventID:(id)d hypothesis:(id)hypothesis
{
  absoluteString = [d absoluteString];
  v5 = absoluteString;
  if (absoluteString)
  {
    v6 = [absoluteString stringByAppendingString:@"?travel=true"];
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