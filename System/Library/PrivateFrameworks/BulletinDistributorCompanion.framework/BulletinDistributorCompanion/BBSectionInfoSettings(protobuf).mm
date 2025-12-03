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
    [self setAnnounceSetting:{objc_msgSend(v4, "announceSetting")}];
  }

  if ([v4 hasScheduledDeliverySetting])
  {
    [self setScheduledDeliverySetting:{objc_msgSend(v4, "scheduledDeliverySetting")}];
  }

  if (![v4 hasMuteAssertion])
  {
    [self setMuteAssertion:0];
    goto LABEL_19;
  }

  muteAssertion = [v4 muteAssertion];
  hasExpirationDate = [muteAssertion hasExpirationDate];

  if (hasExpirationDate)
  {
    v7 = MEMORY[0x277CBEAA8];
    muteAssertion2 = [v4 muteAssertion];
    [muteAssertion2 expirationDate];
    threadsMuteAssertion = [v7 dateWithTimeIntervalSinceReferenceDate:?];

    v10 = [MEMORY[0x277CF3570] sectionMuteAssertionUntilDate:threadsMuteAssertion];
    [self setMuteAssertion:v10];
  }

  else
  {
    muteAssertion3 = [v4 muteAssertion];
    sectionBulletinLists = [muteAssertion3 sectionBulletinLists];
    v13 = [sectionBulletinLists count];

    if (!v13)
    {
      goto LABEL_19;
    }

    threadsMuteAssertion = [MEMORY[0x277CF3590] threadsMuteAssertion];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    muteAssertion4 = [v4 muteAssertion];
    sectionBulletinLists2 = [muteAssertion4 sectionBulletinLists];

    v16 = [sectionBulletinLists2 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(sectionBulletinLists2);
          }

          v20 = *(*(&v25 + 1) + 8 * i);
          v21 = MEMORY[0x277CBEAA8];
          [v20 expirationDate];
          v22 = [v21 dateWithTimeIntervalSinceReferenceDate:?];
          threadID = [v20 threadID];
          [threadsMuteAssertion setMutedUntilDate:v22 forThreadIdentifier:threadID];
        }

        v17 = [sectionBulletinLists2 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v17);
    }

    [self setMuteAssertion:threadsMuteAssertion];
  }

LABEL_19:
  if ([v4 hasTimeSensitiveSetting])
  {
    [self setTimeSensitiveSetting:{objc_msgSend(v4, "timeSensitiveSetting")}];
  }

  if ([v4 hasUserConfiguredTimeSensitiveSetting])
  {
    [self setUserConfiguredTimeSensitiveSetting:{objc_msgSend(v4, "userConfiguredTimeSensitiveSetting")}];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)blt_protobuf
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  [v2 setAnnounceSetting:{objc_msgSend(self, "announceSetting")}];
  [v2 setTimeSensitiveSetting:{objc_msgSend(self, "timeSensitiveSetting")}];
  [v2 setScheduledDeliverySetting:{objc_msgSend(self, "scheduledDeliverySetting")}];
  muteAssertion = [self muteAssertion];

  if (muteAssertion)
  {
    v4 = objc_opt_new();
    [v2 setMuteAssertion:v4];

    muteAssertion2 = [self muteAssertion];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    muteAssertion3 = [self muteAssertion];
    v8 = muteAssertion3;
    if (isKindOfClass)
    {
      expirationDate = [muteAssertion3 expirationDate];

      [expirationDate timeIntervalSinceReferenceDate];
      v11 = v10;
      muteAssertion4 = [v2 muteAssertion];
      [muteAssertion4 setExpirationDate:v11];
    }

    else
    {
      objc_opt_class();
      v13 = objc_opt_isKindOfClass();

      if (v13)
      {
        muteAssertion5 = [self muteAssertion];
        expirationDateByThreadID = [muteAssertion5 expirationDateByThreadID];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v16 = expirationDateByThreadID;
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

              muteAssertion6 = [v2 muteAssertion];
              [muteAssertion6 addSectionBulletinList:v22];
            }

            v18 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
          }

          while (v18);
        }
      }
    }
  }

  if ([self hasUserConfiguredTimeSensitiveSetting])
  {
    [v2 setUserConfiguredTimeSensitiveSetting:{objc_msgSend(self, "hasUserConfiguredTimeSensitiveSetting")}];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v2;
}

@end