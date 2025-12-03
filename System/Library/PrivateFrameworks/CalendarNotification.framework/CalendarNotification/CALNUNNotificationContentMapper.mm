@interface CALNUNNotificationContentMapper
+ (id)_calnNotificationSoundFromUNNotificationContent:(id)content;
+ (id)_sectionIdentifierFromTopicIdentifiers:(id)identifiers;
+ (void)_setBodyForUNMutableNotificationContent:(id)content usingCALNNotificationContent:(id)notificationContent;
+ (void)_setInterruptionLevelForCALNMutableNotificationContent:(id)content usingUNNotificationContent:(id)notificationContent;
+ (void)_setInterruptionLevelForUNMutableNotificationContent:(id)content usingCALNNotificationContent:(id)notificationContent;
+ (void)_setPeopleIdentifiersForUNMutableNotificationContent:(id)content usingCALNNotificationContent:(id)notificationContent;
+ (void)_setSoundForUNMutableNotificationContent:(id)content usingCALNNotificationContent:(id)notificationContent;
+ (void)_setSubtitleForUNMutableNotificationContent:(id)content usingCALNNotificationContent:(id)notificationContent;
+ (void)_setThreadIdentifierForUNMutableNotificationContent:(id)content usingCALNNotificationContent:(id)notificationContent;
+ (void)_setTitleForUNMutableNotificationContent:(id)content usingCALNNotificationContent:(id)notificationContent;
+ (void)_setTopicIdentifiersForUNMutableNotificationContent:(id)content usingCALNNotificationContent:(id)notificationContent;
+ (void)_setUserInfoForUNMutableNotificationContent:(id)content usingCALNNotificationContent:(id)notificationContent;
- (CALNUNNotificationContentMapper)initWithNotificationIconMapper:(id)mapper;
- (id)_iconIdentifierFromUNNotificationContent:(id)content;
- (id)_unNotificationIconFromCALNNotificationContent:(id)content;
- (id)calnNotificationContentFromUNNotificationContent:(id)content;
- (id)unNotificationContentFromCALNNotificationContent:(id)content;
@end

@implementation CALNUNNotificationContentMapper

- (CALNUNNotificationContentMapper)initWithNotificationIconMapper:(id)mapper
{
  mapperCopy = mapper;
  v9.receiver = self;
  v9.super_class = CALNUNNotificationContentMapper;
  v6 = [(CALNUNNotificationContentMapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notificationIconMapper, mapper);
  }

  return v7;
}

- (id)unNotificationContentFromCALNNotificationContent:(id)content
{
  v4 = MEMORY[0x277CE1F60];
  contentCopy = content;
  v6 = objc_alloc_init(v4);
  [objc_opt_class() _setBodyForUNMutableNotificationContent:v6 usingCALNNotificationContent:contentCopy];
  categoryIdentifier = [contentCopy categoryIdentifier];
  [v6 setCategoryIdentifier:categoryIdentifier];

  date = [contentCopy date];
  [v6 setDate:date];

  defaultActionURL = [contentCopy defaultActionURL];
  [v6 setDefaultActionURL:defaultActionURL];

  expirationDate = [contentCopy expirationDate];
  [v6 setExpirationDate:expirationDate];

  v11 = [(CALNUNNotificationContentMapper *)self _unNotificationIconFromCALNNotificationContent:contentCopy];
  [v6 setIcon:v11];

  [objc_opt_class() _setPeopleIdentifiersForUNMutableNotificationContent:v6 usingCALNNotificationContent:contentCopy];
  [v6 setShouldHideTime:{objc_msgSend(contentCopy, "shouldHideTime")}];
  [v6 setShouldSuppressSyncDismissalWhenRemoved:{objc_msgSend(contentCopy, "shouldSuppressSyncDismissalWhenRemoved")}];
  [objc_opt_class() _setSoundForUNMutableNotificationContent:v6 usingCALNNotificationContent:contentCopy];
  [objc_opt_class() _setSubtitleForUNMutableNotificationContent:v6 usingCALNNotificationContent:contentCopy];
  [objc_opt_class() _setThreadIdentifierForUNMutableNotificationContent:v6 usingCALNNotificationContent:contentCopy];
  [objc_opt_class() _setTitleForUNMutableNotificationContent:v6 usingCALNNotificationContent:contentCopy];
  [objc_opt_class() _setTopicIdentifiersForUNMutableNotificationContent:v6 usingCALNNotificationContent:contentCopy];
  [objc_opt_class() _setUserInfoForUNMutableNotificationContent:v6 usingCALNNotificationContent:contentCopy];
  [v6 setShouldBackgroundDefaultAction:1];
  [objc_opt_class() _setInterruptionLevelForUNMutableNotificationContent:v6 usingCALNNotificationContent:contentCopy];
  filterCriteria = [contentCopy filterCriteria];

  [v6 setFilterCriteria:filterCriteria];
  v13 = [v6 copy];

  return v13;
}

- (id)calnNotificationContentFromUNNotificationContent:(id)content
{
  contentCopy = content;
  v5 = objc_alloc_init(CALNMutableNotificationContent);
  body = [contentCopy body];
  [(CALNMutableNotificationContent *)v5 setBody:body];

  categoryIdentifier = [contentCopy categoryIdentifier];
  [(CALNMutableNotificationContent *)v5 setCategoryIdentifier:categoryIdentifier];

  date = [contentCopy date];
  [(CALNMutableNotificationContent *)v5 setDate:date];

  defaultActionURL = [contentCopy defaultActionURL];
  [(CALNMutableNotificationContent *)v5 setDefaultActionURL:defaultActionURL];

  expirationDate = [contentCopy expirationDate];
  [(CALNMutableNotificationContent *)v5 setExpirationDate:expirationDate];

  v11 = [(CALNUNNotificationContentMapper *)self _iconIdentifierFromUNNotificationContent:contentCopy];
  [(CALNMutableNotificationContent *)v5 setIconIdentifier:v11];

  peopleIdentifiers = [contentCopy peopleIdentifiers];
  [(CALNMutableNotificationContent *)v5 setPeopleIdentifiers:peopleIdentifiers];

  v13 = objc_opt_class();
  topicIdentifiers = [contentCopy topicIdentifiers];
  v15 = [v13 _sectionIdentifierFromTopicIdentifiers:topicIdentifiers];
  [(CALNMutableNotificationContent *)v5 setSectionIdentifier:v15];

  -[CALNMutableNotificationContent setShouldHideTime:](v5, "setShouldHideTime:", [contentCopy shouldHideTime]);
  -[CALNMutableNotificationContent setShouldSuppressSyncDismissalWhenRemoved:](v5, "setShouldSuppressSyncDismissalWhenRemoved:", [contentCopy shouldSuppressSyncDismissalWhenRemoved]);
  v16 = [objc_opt_class() _calnNotificationSoundFromUNNotificationContent:contentCopy];
  [(CALNMutableNotificationContent *)v5 setSound:v16];

  subtitle = [contentCopy subtitle];
  [(CALNMutableNotificationContent *)v5 setSubtitle:subtitle];

  threadIdentifier = [contentCopy threadIdentifier];
  [(CALNMutableNotificationContent *)v5 setThreadIdentifier:threadIdentifier];

  title = [contentCopy title];
  [(CALNMutableNotificationContent *)v5 setTitle:title];

  userInfo = [contentCopy userInfo];
  [(CALNMutableNotificationContent *)v5 setUserInfo:userInfo];

  [objc_opt_class() _setInterruptionLevelForCALNMutableNotificationContent:v5 usingUNNotificationContent:contentCopy];
  filterCriteria = [contentCopy filterCriteria];

  [(CALNMutableNotificationContent *)v5 setFilterCriteria:filterCriteria];
  v22 = [(CALNMutableNotificationContent *)v5 copy];

  return v22;
}

+ (void)_setInterruptionLevelForCALNMutableNotificationContent:(id)content usingUNNotificationContent:(id)notificationContent
{
  contentCopy = content;
  interruptionLevel = [notificationContent interruptionLevel];
  if (interruptionLevel <= 3)
  {
    [contentCopy setInterruptionLevel:interruptionLevel];
  }
}

+ (void)_setInterruptionLevelForUNMutableNotificationContent:(id)content usingCALNNotificationContent:(id)notificationContent
{
  contentCopy = content;
  interruptionLevel = [notificationContent interruptionLevel];
  if (interruptionLevel <= 3)
  {
    [contentCopy setInterruptionLevel:interruptionLevel];
  }
}

+ (void)_setBodyForUNMutableNotificationContent:(id)content usingCALNNotificationContent:(id)notificationContent
{
  contentCopy = content;
  body = [notificationContent body];
  if (body)
  {
    [contentCopy setBody:body];
  }
}

+ (void)_setPeopleIdentifiersForUNMutableNotificationContent:(id)content usingCALNNotificationContent:(id)notificationContent
{
  contentCopy = content;
  peopleIdentifiers = [notificationContent peopleIdentifiers];
  if (peopleIdentifiers)
  {
    [contentCopy setPeopleIdentifiers:peopleIdentifiers];
  }
}

+ (void)_setSoundForUNMutableNotificationContent:(id)content usingCALNNotificationContent:(id)notificationContent
{
  contentCopy = content;
  sound = [notificationContent sound];
  if (sound)
  {
    v6 = [CALNUNNotificationSoundMapper unNotificationSoundFromCALNNotificationSound:sound];
    [contentCopy setSound:v6];
  }
}

+ (void)_setSubtitleForUNMutableNotificationContent:(id)content usingCALNNotificationContent:(id)notificationContent
{
  contentCopy = content;
  subtitle = [notificationContent subtitle];
  if (subtitle)
  {
    [contentCopy setSubtitle:subtitle];
  }
}

+ (void)_setThreadIdentifierForUNMutableNotificationContent:(id)content usingCALNNotificationContent:(id)notificationContent
{
  contentCopy = content;
  threadIdentifier = [notificationContent threadIdentifier];
  if (threadIdentifier)
  {
    [contentCopy setThreadIdentifier:threadIdentifier];
  }
}

+ (void)_setTitleForUNMutableNotificationContent:(id)content usingCALNNotificationContent:(id)notificationContent
{
  contentCopy = content;
  title = [notificationContent title];
  if (title)
  {
    [contentCopy setTitle:title];
  }
}

+ (void)_setTopicIdentifiersForUNMutableNotificationContent:(id)content usingCALNNotificationContent:(id)notificationContent
{
  v12[1] = *MEMORY[0x277D85DE8];
  contentCopy = content;
  sectionIdentifier = [notificationContent sectionIdentifier];
  v7 = sectionIdentifier;
  v8 = MEMORY[0x277CBEB98];
  if (sectionIdentifier)
  {
    v12[0] = sectionIdentifier;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v10 = [v8 setWithArray:v9];
  }

  else
  {
    v10 = [MEMORY[0x277CBEB98] set];
  }

  [contentCopy setTopicIdentifiers:v10];

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)_setUserInfoForUNMutableNotificationContent:(id)content usingCALNNotificationContent:(id)notificationContent
{
  contentCopy = content;
  userInfo = [notificationContent userInfo];
  if (userInfo)
  {
    [contentCopy setUserInfo:userInfo];
  }
}

+ (id)_sectionIdentifierFromTopicIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    allObjects = [identifiersCopy allObjects];
    firstObject = [allObjects firstObject];

    if ([identifiersCopy count] >= 2)
    {
      v6 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(CALNUNNotificationContentMapper *)identifiersCopy _sectionIdentifierFromTopicIdentifiers:firstObject, v6];
      }
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)_unNotificationIconFromCALNNotificationContent:(id)content
{
  iconIdentifier = [content iconIdentifier];
  if (iconIdentifier)
  {
    notificationIconMapper = [(CALNUNNotificationContentMapper *)self notificationIconMapper];
    v6 = [notificationIconMapper unNotificationIconFromIconIdentifier:iconIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_iconIdentifierFromUNNotificationContent:(id)content
{
  icon = [content icon];
  if (icon)
  {
    notificationIconMapper = [(CALNUNNotificationContentMapper *)self notificationIconMapper];
    v6 = [notificationIconMapper iconIdentifierFromUNNotificationIcon:icon];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_calnNotificationSoundFromUNNotificationContent:(id)content
{
  sound = [content sound];
  if (sound)
  {
    v4 = [CALNUNNotificationSoundMapper calnNotificationSoundFromUNNotificationSound:sound];
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