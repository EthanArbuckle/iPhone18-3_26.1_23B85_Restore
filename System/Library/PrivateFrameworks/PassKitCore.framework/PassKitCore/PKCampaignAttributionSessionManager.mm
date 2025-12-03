@interface PKCampaignAttributionSessionManager
+ (id)existingSessionIdentifier;
+ (id)sessionID;
+ (id)userDefaults;
+ (void)restartSession;
+ (void)restartSessionWithIdentifier:(id)identifier;
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
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  [self restartSessionWithIdentifier:uUIDString];
}

+ (id)sessionID
{
  existingSessionIdentifier = [self existingSessionIdentifier];
  v4 = existingSessionIdentifier;
  if (existingSessionIdentifier)
  {
    v5 = existingSessionIdentifier;
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    [self restartSessionWithIdentifier:uUIDString];
    userDefaults = [self userDefaults];
    v5 = [userDefaults stringForKey:@"CampaignAttributionSessionID"];
  }

  return v5;
}

+ (void)restartSessionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  userDefaults = [self userDefaults];
  date = [MEMORY[0x1E695DF00] date];
  [userDefaults setObject:date forKey:@"CampaignAttributionSessionCreationDate"];

  [userDefaults setObject:identifierCopy forKey:@"CampaignAttributionSessionID"];
  v7 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Restarted Campaign Attribution session.", v8, 2u);
  }
}

+ (id)existingSessionIdentifier
{
  userDefaults = [self userDefaults];
  v3 = [userDefaults objectForKey:@"CampaignAttributionSessionCreationDate"];
  v4 = [userDefaults stringForKey:@"CampaignAttributionSessionID"];
  v5 = v4;
  if (v3 && v4)
  {
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSince1970];
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

    [userDefaults setObject:0 forKey:@"CampaignAttributionSessionCreationDate"];
    [userDefaults setObject:0 forKey:@"CampaignAttributionSessionID"];
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