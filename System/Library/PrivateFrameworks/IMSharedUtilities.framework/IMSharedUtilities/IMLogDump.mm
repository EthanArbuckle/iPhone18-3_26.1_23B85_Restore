@interface IMLogDump
+ (id)sharedInstance;
- (BOOL)_isOnPower;
- (BOOL)_isWifiUsable;
- (IMLogDump)init;
- (double)_calculateMinutesSyncingWithDurationKey:(id)key attemptDateKey:(id)dateKey;
- (id)_calculatePowerAndWifiConnectedTimeInMinutesForDictionary:(id)dictionary;
- (void)_calculateConnectedMinutesForDateKey:(id)key durationKey:(id)durationKey daysDictionary:(id)dictionary totalDurationDictionary:(id)durationDictionary totalDurationKey:(id)totalDurationKey;
- (void)_incrementSyncAttemptsWithKey:(id)key syncDateKey:(id)dateKey;
- (void)_noteSyncEndedForDurationKey:(id)key dateKey:(id)dateKey;
- (void)clearSyncStats;
- (void)dumpMOCLoggingMetaData;
- (void)printPowerAndWifiStats;
- (void)printSyncDurationStats;
@end

@implementation IMLogDump

+ (id)sharedInstance
{
  if (qword_1ED8CA3F8 != -1)
  {
    sub_1A88C1418();
  }

  v3 = qword_1ED8CA358;

  return v3;
}

- (IMLogDump)init
{
  v6.receiver = self;
  v6.super_class = IMLogDump;
  v2 = [(IMLogDump *)&v6 init];
  if (v2)
  {
    mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
    isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

    if (isInternalInstall)
    {
      v2->_shouldCollectPowerWifiStats = 1;
    }
  }

  return v2;
}

- (void)dumpMOCLoggingMetaData
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E6959A48]);
  v3 = *MEMORY[0x1E6959890];
  v30 = 0;
  v23 = v2;
  v21 = v3;
  v24 = [v2 accountTypeWithAccountTypeIdentifier:? error:?];
  v20 = 0;
  v4 = [v2 accountsWithAccountType:v24];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v33 = v4;
      v34 = 2112;
      v35 = v20;
      v36 = 2112;
      v37 = v21;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Accounts %@ accountTypeError %@ ID Type %@", buf, 0x20u);
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = *v27;
    v8 = *MEMORY[0x1E6959760];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        accountProperties = [v10 accountProperties];
        v12 = [accountProperties valueForKey:v8];
        v13 = MEMORY[0x1E696AEC0];
        username = [v10 username];
        v15 = [v13 stringWithFormat:@"%@@%@", username, v12];

        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            qualifiedUsername = [v10 qualifiedUsername];
            *buf = 138412546;
            v33 = v15;
            v34 = 2112;
            v35 = qualifiedUsername;
            _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "<StartAccountDetails>Account userName %@ | Account qualifiedUserName %@ <EndAccountDetails>", buf, 0x16u);
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }

  v18 = IMGetCachedDomainValueForKey();
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v33 = v18;
      _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_INFO, "<StartCoreDuetSyncInfo> LastFullSyncAttempt\x05 %@ <EndCoreDuetLastFullSyncInfo>", buf, 0xCu);
    }
  }

  [(IMLogDump *)self printSyncDurationStats];
  [(IMLogDump *)self printPowerAndWifiStats];
}

- (void)clearSyncStats
{
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  IMSetDomainValueForKey();

  v3 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  IMSetDomainValueForKey();

  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
  IMSetDomainValueForKey();

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
  IMSetDomainValueForKey();
}

- (double)_calculateMinutesSyncingWithDurationKey:(id)key attemptDateKey:(id)dateKey
{
  dateKeyCopy = dateKey;
  v5 = IMGetCachedDomainValueForKey();
  [v5 doubleValue];
  v7 = v6;

  v8 = IMGetCachedDomainValueForKey();

  if (v8)
  {
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceReferenceDate];
    v11 = v10;
    [v8 timeIntervalSinceReferenceDate];
    v7 = v7 + v11 - v12;
  }

  return v7 / 60.0;
}

- (void)printSyncDurationStats
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(IMLogDump *)self shouldCollectPowerWifiStats])
  {
    v3 = IMGetCachedDomainValueForKey();
    unsignedIntegerValue = [v3 unsignedIntegerValue];

    [(IMLogDump *)self _calculateMinutesSyncingWithDurationKey:@"IMCKTotalDurationOfCoreDuetSync" attemptDateKey:@"CoreduetLastFullSyncAttemptDate"];
    v6 = v5;
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue];
        v9 = 138412546;
        v10 = v8;
        v11 = 2048;
        v12 = v6;
        _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "<StartCoreDuetAttemptInfo> Number of Attempts %@ | Duration of Sync %.04f Minutes <EndCoreDuetAttemptInfo>", &v9, 0x16u);
      }
    }
  }
}

- (BOOL)_isWifiUsable
{
  v2 = +[IMDeviceConditions sharedInstance];
  isDeviceOnWifi = [v2 isDeviceOnWifi];

  return isDeviceOnWifi;
}

- (BOOL)_isOnPower
{
  v2 = +[IMDeviceConditions sharedInstance];
  isDeviceCharging = [v2 isDeviceCharging];

  return isDeviceCharging;
}

- (void)_calculateConnectedMinutesForDateKey:(id)key durationKey:(id)durationKey daysDictionary:(id)dictionary totalDurationDictionary:(id)durationDictionary totalDurationKey:(id)totalDurationKey
{
  totalDurationKeyCopy = totalDurationKey;
  durationDictionaryCopy = durationDictionary;
  dictionaryCopy = dictionary;
  durationKeyCopy = durationKey;
  keyCopy = key;
  v16 = [durationDictionaryCopy objectForKeyedSubscript:totalDurationKeyCopy];
  [v16 doubleValue];
  v18 = v17;

  v19 = [dictionaryCopy objectForKeyedSubscript:durationKeyCopy];

  [v19 doubleValue];
  v21 = v18 + v20;
  v22 = [dictionaryCopy objectForKeyedSubscript:keyCopy];

  if (v22)
  {
    _isOnPower = [(IMLogDump *)self _isOnPower];
    _isWifiUsable = [(IMLogDump *)self _isWifiUsable];
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceReferenceDate];
    v27 = v26;
    [v22 timeIntervalSinceReferenceDate];
    v29 = v27 - v28;
    if ([totalDurationKeyCopy isEqualToString:@"totalPowerWifi"] && _isWifiUsable && _isOnPower || (objc_msgSend(totalDurationKeyCopy, "isEqualToString:", @"totalPower") & _isOnPower) == 1)
    {
      v21 = v21 + v29;
    }

    else
    {
      v30 = [totalDurationKeyCopy isEqualToString:@"totalWifi"];
      v31 = v21 + v29;
      if (!_isWifiUsable)
      {
        v31 = v21;
      }

      if (v30)
      {
        v21 = v31;
      }
    }
  }

  v32 = [MEMORY[0x1E696AD98] numberWithDouble:v21];
  [durationDictionaryCopy setObject:v32 forKeyedSubscript:totalDurationKeyCopy];
}

- (id)_calculatePowerAndWifiConnectedTimeInMinutesForDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([(IMLogDump *)self shouldCollectPowerWifiStats])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
    [v5 setObject:v6 forKeyedSubscript:@"totalPowerWifi"];

    v7 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
    [v5 setObject:v7 forKeyedSubscript:@"totalPower"];

    v8 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
    [v5 setObject:v8 forKeyedSubscript:@"totalWifi"];

    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = sub_1A864783C;
    v26 = &unk_1E78270A0;
    selfCopy = self;
    v9 = v5;
    v28 = v9;
    [dictionaryCopy enumerateKeysAndObjectsUsingBlock:&v23];
    v10 = [v9 objectForKeyedSubscript:{@"totalPowerWifi", v23, v24, v25, v26, selfCopy}];
    [v10 doubleValue];
    v12 = v11 / 60.0;

    v13 = [v9 objectForKeyedSubscript:@"totalPower"];
    [v13 doubleValue];
    v15 = v14 / 60.0;

    v16 = [v9 objectForKeyedSubscript:@"totalWifi"];
    [v16 doubleValue];
    v18 = v17 / 60.0;

    v19 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
    [v9 setObject:v19 forKeyedSubscript:@"totalPowerWifi"];

    v20 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
    [v9 setObject:v20 forKeyedSubscript:@"totalPower"];

    v21 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
    [v9 setObject:v21 forKeyedSubscript:@"totalWifi"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)printPowerAndWifiStats
{
  v25 = *MEMORY[0x1E69E9840];
  if ([(IMLogDump *)self shouldCollectPowerWifiStats])
  {
    v3 = IMGetCachedDomainValueForKey();
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v21 = 138412290;
        v22 = v3;
        _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "dictionaryOfDays %@", &v21, 0xCu);
      }
    }

    v5 = [(IMLogDump *)self _calculatePowerAndWifiConnectedTimeInMinutesForDictionary:v3];
    v6 = [v5 objectForKeyedSubscript:@"totalPowerWifi"];
    [v6 doubleValue];
    v8 = v7;

    v9 = [v5 objectForKeyedSubscript:@"totalPower"];
    [v9 doubleValue];
    v11 = v10;

    v12 = [v5 objectForKeyedSubscript:@"totalWifi"];
    [v12 doubleValue];
    v14 = v13;

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
        v21 = 134218242;
        v22 = v8;
        v23 = 2112;
        v24 = v16;
        _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "<StartPowerAndWifiConnectedStats> We were connected to POWER & WIFI for a total of %.04f minutes over the past %@ days <EndPowerAndWifiConnectedStats>", &v21, 0x16u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
        v21 = 134218242;
        v22 = v11;
        v23 = 2112;
        v24 = v18;
        _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "<StartPowerAndWifiConnectedStats> We were connected to POWER for a total of %.04f minutes over the past %@ days <EndPowerAndWifiConnectedStats>", &v21, 0x16u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
        v21 = 134218242;
        v22 = v14;
        v23 = 2112;
        v24 = v20;
        _os_log_impl(&dword_1A85E5000, v19, OS_LOG_TYPE_INFO, "<StartPowerAndWifiConnectedStats> We were connected to WIFI for a total of %.04f minutes over the past %@ days <EndPowerAndWifiConnectedStats>", &v21, 0x16u);
      }
    }
  }
}

- (void)_incrementSyncAttemptsWithKey:(id)key syncDateKey:(id)dateKey
{
  v18 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  dateKeyCopy = dateKey;
  if ([(IMLogDump *)self shouldCollectPowerWifiStats])
  {
    date = [MEMORY[0x1E695DF00] date];
    v9 = IMGetCachedDomainValueForKey();
    unsignedIntegerValue = [v9 unsignedIntegerValue];

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue + 1];
        v14 = 138412546;
        v15 = keyCopy;
        v16 = 2112;
        v17 = v12;
        _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Incrementing %@ | numberOfSyncAttempts %@", &v14, 0x16u);
      }
    }

    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue + 1];
    IMSetDomainValueForKey();

    IMSetDomainValueForKey();
  }
}

- (void)_noteSyncEndedForDurationKey:(id)key dateKey:(id)dateKey
{
  v20 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  dateKeyCopy = dateKey;
  if ([(IMLogDump *)self shouldCollectPowerWifiStats])
  {
    date = [MEMORY[0x1E695DF00] date];
    v9 = IMGetCachedDomainValueForKey();
    [v9 doubleValue];
    v11 = v10;

    v12 = IMGetCachedDomainValueForKey();
    if (v12)
    {
      [date timeIntervalSinceReferenceDate];
      v14 = v13;
      [v12 timeIntervalSinceReferenceDate];
      v16 = [MEMORY[0x1E696AD98] numberWithDouble:v11 + v14 - v15];
      IMSetDomainValueForKey();

      IMSetDomainValueForKey();
    }

    else if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = dateKeyCopy;
        _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "We for some reason did not have a %@, early returning as that would mess up our statistics", &v18, 0xCu);
      }
    }
  }
}

@end