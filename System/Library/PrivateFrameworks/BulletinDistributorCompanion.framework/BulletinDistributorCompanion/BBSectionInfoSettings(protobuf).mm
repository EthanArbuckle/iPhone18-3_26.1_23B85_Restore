@interface BBSectionInfoSettings(protobuf)
- (id)blt_protobuf;
- (void)applySectionInfoSettingsFromProtobuf:()protobuf;
@end

@implementation BBSectionInfoSettings(protobuf)

- (void)applySectionInfoSettingsFromProtobuf:()protobuf
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 hasAnnounceSetting])
  {
    [a1 setAnnounceSetting:{objc_msgSend(v4, "announceSetting")}];
  }

  if ([v4 hasScheduledDeliverySetting])
  {
    [a1 setScheduledDeliverySetting:{objc_msgSend(v4, "scheduledDeliverySetting")}];
  }

  if (![v4 hasMuteAssertion])
  {
    [a1 setMuteAssertion:0];
    goto LABEL_19;
  }

  v5 = [v4 muteAssertion];
  v6 = [v5 hasExpirationDate];

  if (v6)
  {
    v7 = MEMORY[0x277CBEAA8];
    v8 = [v4 muteAssertion];
    [v8 expirationDate];
    v9 = [v7 dateWithTimeIntervalSinceReferenceDate:?];

    v10 = [MEMORY[0x277CF3570] sectionMuteAssertionUntilDate:v9];
    [a1 setMuteAssertion:v10];
  }

  else
  {
    v11 = [v4 muteAssertion];
    v12 = [v11 sectionBulletinLists];
    v13 = [v12 count];

    if (!v13)
    {
      goto LABEL_19;
    }

    v9 = [MEMORY[0x277CF3590] threadsMuteAssertion];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = [v4 muteAssertion];
    v15 = [v14 sectionBulletinLists];

    v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v25 + 1) + 8 * i);
          v21 = MEMORY[0x277CBEAA8];
          [v20 expirationDate];
          v22 = [v21 dateWithTimeIntervalSinceReferenceDate:?];
          v23 = [v20 threadID];
          [v9 setMutedUntilDate:v22 forThreadIdentifier:v23];
        }

        v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v17);
    }

    [a1 setMuteAssertion:v9];
  }

LABEL_19:
  if ([v4 hasTimeSensitiveSetting])
  {
    [a1 setTimeSensitiveSetting:{objc_msgSend(v4, "timeSensitiveSetting")}];
  }

  if ([v4 hasUserConfiguredTimeSensitiveSetting])
  {
    [a1 setUserConfiguredTimeSensitiveSetting:{objc_msgSend(v4, "userConfiguredTimeSensitiveSetting")}];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)blt_protobuf
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  [v2 setAnnounceSetting:{objc_msgSend(a1, "announceSetting")}];
  [v2 setTimeSensitiveSetting:{objc_msgSend(a1, "timeSensitiveSetting")}];
  [v2 setScheduledDeliverySetting:{objc_msgSend(a1, "scheduledDeliverySetting")}];
  v3 = [a1 muteAssertion];

  if (v3)
  {
    v4 = objc_opt_new();
    [v2 setMuteAssertion:v4];

    v5 = [a1 muteAssertion];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v7 = [a1 muteAssertion];
    v8 = v7;
    if (isKindOfClass)
    {
      v9 = [v7 expirationDate];

      [v9 timeIntervalSinceReferenceDate];
      v11 = v10;
      v12 = [v2 muteAssertion];
      [v12 setExpirationDate:v11];
    }

    else
    {
      objc_opt_class();
      v13 = objc_opt_isKindOfClass();

      if (v13)
      {
        v14 = [a1 muteAssertion];
        v15 = [v14 expirationDateByThreadID];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v16 = v15;
        v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v28;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v28 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v27 + 1) + 8 * i);
              v22 = objc_opt_new();
              [v22 setThreadID:{v21, v27}];
              v23 = [v16 objectForKeyedSubscript:v21];
              [v23 timeIntervalSinceReferenceDate];
              [v22 setExpirationDate:?];

              v24 = [v2 muteAssertion];
              [v24 addSectionBulletinList:v22];
            }

            v18 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
          }

          while (v18);
        }
      }
    }
  }

  if ([a1 hasUserConfiguredTimeSensitiveSetting])
  {
    [v2 setUserConfiguredTimeSensitiveSetting:{objc_msgSend(a1, "hasUserConfiguredTimeSensitiveSetting")}];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v2;
}

@end