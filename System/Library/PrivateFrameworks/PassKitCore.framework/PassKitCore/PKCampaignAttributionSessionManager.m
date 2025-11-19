@interface PKCampaignAttributionSessionManager
+ (id)existingSessionIdentifier;
+ (id)sessionID;
+ (id)userDefaults;
+ (void)restartSession;
+ (void)restartSessionWithIdentifier:(id)a3;
@end

@implementation PKCampaignAttributionSessionManager

+ (id)userDefaults
{
  if (qword_1ED6D2088 != -1)
  {
    dispatch_once(&qword_1ED6D2088, &__block_literal_global_190);
  }

  v3 = _MergedGlobals_264;

  return v3;
}

void __51__PKCampaignAttributionSessionManager_userDefaults__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.Wallet"];
  v1 = _MergedGlobals_264;
  _MergedGlobals_264 = v0;
}

+ (void)restartSession
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];

  [a1 restartSessionWithIdentifier:v4];
}

+ (id)sessionID
{
  v3 = [a1 existingSessionIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [MEMORY[0x1E696AFB0] UUID];
    v7 = [v6 UUIDString];

    [a1 restartSessionWithIdentifier:v7];
    v8 = [a1 userDefaults];
    v5 = [v8 stringForKey:@"CampaignAttributionSessionID"];
  }

  return v5;
}

+ (void)restartSessionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 userDefaults];
  v6 = [MEMORY[0x1E695DF00] date];
  [v5 setObject:v6 forKey:@"CampaignAttributionSessionCreationDate"];

  [v5 setObject:v4 forKey:@"CampaignAttributionSessionID"];
  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Restarted Campaign Attribution session.", v8, 2u);
  }
}

+ (id)existingSessionIdentifier
{
  v2 = [a1 userDefaults];
  v3 = [v2 objectForKey:@"CampaignAttributionSessionCreationDate"];
  v4 = [v2 stringForKey:@"CampaignAttributionSessionID"];
  v5 = v4;
  if (v3 && v4)
  {
    v6 = [MEMORY[0x1E695DF00] date];
    [v6 timeIntervalSince1970];
    v8 = v7;
    [v3 timeIntervalSince1970];
    v10 = v8 - v9;

    if (v10 < 259200.0)
    {
      v11 = v5;
      goto LABEL_12;
    }

    v13 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Existing Campaign Attribution session is expired and needs to be restarted.", v15, 2u);
    }

    [v2 setObject:0 forKey:@"CampaignAttributionSessionCreationDate"];
    [v2 setObject:0 forKey:@"CampaignAttributionSessionID"];
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Campaign Attribution session does not exist.", buf, 2u);
    }
  }

  v11 = 0;
LABEL_12:

  return v11;
}

@end