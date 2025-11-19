@interface CALNUNNotificationContentMapper
+ (id)_calnNotificationSoundFromUNNotificationContent:(id)a3;
+ (id)_sectionIdentifierFromTopicIdentifiers:(id)a3;
+ (void)_setBodyForUNMutableNotificationContent:(id)a3 usingCALNNotificationContent:(id)a4;
+ (void)_setInterruptionLevelForCALNMutableNotificationContent:(id)a3 usingUNNotificationContent:(id)a4;
+ (void)_setInterruptionLevelForUNMutableNotificationContent:(id)a3 usingCALNNotificationContent:(id)a4;
+ (void)_setPeopleIdentifiersForUNMutableNotificationContent:(id)a3 usingCALNNotificationContent:(id)a4;
+ (void)_setSoundForUNMutableNotificationContent:(id)a3 usingCALNNotificationContent:(id)a4;
+ (void)_setSubtitleForUNMutableNotificationContent:(id)a3 usingCALNNotificationContent:(id)a4;
+ (void)_setThreadIdentifierForUNMutableNotificationContent:(id)a3 usingCALNNotificationContent:(id)a4;
+ (void)_setTitleForUNMutableNotificationContent:(id)a3 usingCALNNotificationContent:(id)a4;
+ (void)_setTopicIdentifiersForUNMutableNotificationContent:(id)a3 usingCALNNotificationContent:(id)a4;
+ (void)_setUserInfoForUNMutableNotificationContent:(id)a3 usingCALNNotificationContent:(id)a4;
- (CALNUNNotificationContentMapper)initWithNotificationIconMapper:(id)a3;
- (id)_iconIdentifierFromUNNotificationContent:(id)a3;
- (id)_unNotificationIconFromCALNNotificationContent:(id)a3;
- (id)calnNotificationContentFromUNNotificationContent:(id)a3;
- (id)unNotificationContentFromCALNNotificationContent:(id)a3;
@end

@implementation CALNUNNotificationContentMapper

- (CALNUNNotificationContentMapper)initWithNotificationIconMapper:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CALNUNNotificationContentMapper;
  v6 = [(CALNUNNotificationContentMapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notificationIconMapper, a3);
  }

  return v7;
}

- (id)unNotificationContentFromCALNNotificationContent:(id)a3
{
  v4 = MEMORY[0x277CE1F60];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [objc_opt_class() _setBodyForUNMutableNotificationContent:v6 usingCALNNotificationContent:v5];
  v7 = [v5 categoryIdentifier];
  [v6 setCategoryIdentifier:v7];

  v8 = [v5 date];
  [v6 setDate:v8];

  v9 = [v5 defaultActionURL];
  [v6 setDefaultActionURL:v9];

  v10 = [v5 expirationDate];
  [v6 setExpirationDate:v10];

  v11 = [(CALNUNNotificationContentMapper *)self _unNotificationIconFromCALNNotificationContent:v5];
  [v6 setIcon:v11];

  [objc_opt_class() _setPeopleIdentifiersForUNMutableNotificationContent:v6 usingCALNNotificationContent:v5];
  [v6 setShouldHideTime:{objc_msgSend(v5, "shouldHideTime")}];
  [v6 setShouldSuppressSyncDismissalWhenRemoved:{objc_msgSend(v5, "shouldSuppressSyncDismissalWhenRemoved")}];
  [objc_opt_class() _setSoundForUNMutableNotificationContent:v6 usingCALNNotificationContent:v5];
  [objc_opt_class() _setSubtitleForUNMutableNotificationContent:v6 usingCALNNotificationContent:v5];
  [objc_opt_class() _setThreadIdentifierForUNMutableNotificationContent:v6 usingCALNNotificationContent:v5];
  [objc_opt_class() _setTitleForUNMutableNotificationContent:v6 usingCALNNotificationContent:v5];
  [objc_opt_class() _setTopicIdentifiersForUNMutableNotificationContent:v6 usingCALNNotificationContent:v5];
  [objc_opt_class() _setUserInfoForUNMutableNotificationContent:v6 usingCALNNotificationContent:v5];
  [v6 setShouldBackgroundDefaultAction:1];
  [objc_opt_class() _setInterruptionLevelForUNMutableNotificationContent:v6 usingCALNNotificationContent:v5];
  v12 = [v5 filterCriteria];

  [v6 setFilterCriteria:v12];
  v13 = [v6 copy];

  return v13;
}

- (id)calnNotificationContentFromUNNotificationContent:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CALNMutableNotificationContent);
  v6 = [v4 body];
  [(CALNMutableNotificationContent *)v5 setBody:v6];

  v7 = [v4 categoryIdentifier];
  [(CALNMutableNotificationContent *)v5 setCategoryIdentifier:v7];

  v8 = [v4 date];
  [(CALNMutableNotificationContent *)v5 setDate:v8];

  v9 = [v4 defaultActionURL];
  [(CALNMutableNotificationContent *)v5 setDefaultActionURL:v9];

  v10 = [v4 expirationDate];
  [(CALNMutableNotificationContent *)v5 setExpirationDate:v10];

  v11 = [(CALNUNNotificationContentMapper *)self _iconIdentifierFromUNNotificationContent:v4];
  [(CALNMutableNotificationContent *)v5 setIconIdentifier:v11];

  v12 = [v4 peopleIdentifiers];
  [(CALNMutableNotificationContent *)v5 setPeopleIdentifiers:v12];

  v13 = objc_opt_class();
  v14 = [v4 topicIdentifiers];
  v15 = [v13 _sectionIdentifierFromTopicIdentifiers:v14];
  [(CALNMutableNotificationContent *)v5 setSectionIdentifier:v15];

  -[CALNMutableNotificationContent setShouldHideTime:](v5, "setShouldHideTime:", [v4 shouldHideTime]);
  -[CALNMutableNotificationContent setShouldSuppressSyncDismissalWhenRemoved:](v5, "setShouldSuppressSyncDismissalWhenRemoved:", [v4 shouldSuppressSyncDismissalWhenRemoved]);
  v16 = [objc_opt_class() _calnNotificationSoundFromUNNotificationContent:v4];
  [(CALNMutableNotificationContent *)v5 setSound:v16];

  v17 = [v4 subtitle];
  [(CALNMutableNotificationContent *)v5 setSubtitle:v17];

  v18 = [v4 threadIdentifier];
  [(CALNMutableNotificationContent *)v5 setThreadIdentifier:v18];

  v19 = [v4 title];
  [(CALNMutableNotificationContent *)v5 setTitle:v19];

  v20 = [v4 userInfo];
  [(CALNMutableNotificationContent *)v5 setUserInfo:v20];

  [objc_opt_class() _setInterruptionLevelForCALNMutableNotificationContent:v5 usingUNNotificationContent:v4];
  v21 = [v4 filterCriteria];

  [(CALNMutableNotificationContent *)v5 setFilterCriteria:v21];
  v22 = [(CALNMutableNotificationContent *)v5 copy];

  return v22;
}

+ (void)_setInterruptionLevelForCALNMutableNotificationContent:(id)a3 usingUNNotificationContent:(id)a4
{
  v6 = a3;
  v5 = [a4 interruptionLevel];
  if (v5 <= 3)
  {
    [v6 setInterruptionLevel:v5];
  }
}

+ (void)_setInterruptionLevelForUNMutableNotificationContent:(id)a3 usingCALNNotificationContent:(id)a4
{
  v6 = a3;
  v5 = [a4 interruptionLevel];
  if (v5 <= 3)
  {
    [v6 setInterruptionLevel:v5];
  }
}

+ (void)_setBodyForUNMutableNotificationContent:(id)a3 usingCALNNotificationContent:(id)a4
{
  v6 = a3;
  v5 = [a4 body];
  if (v5)
  {
    [v6 setBody:v5];
  }
}

+ (void)_setPeopleIdentifiersForUNMutableNotificationContent:(id)a3 usingCALNNotificationContent:(id)a4
{
  v6 = a3;
  v5 = [a4 peopleIdentifiers];
  if (v5)
  {
    [v6 setPeopleIdentifiers:v5];
  }
}

+ (void)_setSoundForUNMutableNotificationContent:(id)a3 usingCALNNotificationContent:(id)a4
{
  v7 = a3;
  v5 = [a4 sound];
  if (v5)
  {
    v6 = [CALNUNNotificationSoundMapper unNotificationSoundFromCALNNotificationSound:v5];
    [v7 setSound:v6];
  }
}

+ (void)_setSubtitleForUNMutableNotificationContent:(id)a3 usingCALNNotificationContent:(id)a4
{
  v6 = a3;
  v5 = [a4 subtitle];
  if (v5)
  {
    [v6 setSubtitle:v5];
  }
}

+ (void)_setThreadIdentifierForUNMutableNotificationContent:(id)a3 usingCALNNotificationContent:(id)a4
{
  v6 = a3;
  v5 = [a4 threadIdentifier];
  if (v5)
  {
    [v6 setThreadIdentifier:v5];
  }
}

+ (void)_setTitleForUNMutableNotificationContent:(id)a3 usingCALNNotificationContent:(id)a4
{
  v6 = a3;
  v5 = [a4 title];
  if (v5)
  {
    [v6 setTitle:v5];
  }
}

+ (void)_setTopicIdentifiersForUNMutableNotificationContent:(id)a3 usingCALNNotificationContent:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 sectionIdentifier];
  v7 = v6;
  v8 = MEMORY[0x277CBEB98];
  if (v6)
  {
    v12[0] = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v10 = [v8 setWithArray:v9];
  }

  else
  {
    v10 = [MEMORY[0x277CBEB98] set];
  }

  [v5 setTopicIdentifiers:v10];

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)_setUserInfoForUNMutableNotificationContent:(id)a3 usingCALNNotificationContent:(id)a4
{
  v6 = a3;
  v5 = [a4 userInfo];
  if (v5)
  {
    [v6 setUserInfo:v5];
  }
}

+ (id)_sectionIdentifierFromTopicIdentifiers:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 allObjects];
    v5 = [v4 firstObject];

    if ([v3 count] >= 2)
    {
      v6 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(CALNUNNotificationContentMapper *)v3 _sectionIdentifierFromTopicIdentifiers:v5, v6];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_unNotificationIconFromCALNNotificationContent:(id)a3
{
  v4 = [a3 iconIdentifier];
  if (v4)
  {
    v5 = [(CALNUNNotificationContentMapper *)self notificationIconMapper];
    v6 = [v5 unNotificationIconFromIconIdentifier:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_iconIdentifierFromUNNotificationContent:(id)a3
{
  v4 = [a3 icon];
  if (v4)
  {
    v5 = [(CALNUNNotificationContentMapper *)self notificationIconMapper];
    v6 = [v5 iconIdentifierFromUNNotificationIcon:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_calnNotificationSoundFromUNNotificationContent:(id)a3
{
  v3 = [a3 sound];
  if (v3)
  {
    v4 = [CALNUNNotificationSoundMapper calnNotificationSoundFromUNNotificationSound:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)_sectionIdentifierFromTopicIdentifiers:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = 134218498;
  v8 = [a1 count];
  v9 = 2114;
  v10 = a2;
  v11 = 2114;
  v12 = a1;
  _os_log_error_impl(&dword_242909000, a3, OS_LOG_TYPE_ERROR, "Unexpected number of topic identifiers. Expected: 1. Actual: %lu. Resolved section identifier: %{public}@. Topic identifiers: %{public}@.", &v7, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

@end