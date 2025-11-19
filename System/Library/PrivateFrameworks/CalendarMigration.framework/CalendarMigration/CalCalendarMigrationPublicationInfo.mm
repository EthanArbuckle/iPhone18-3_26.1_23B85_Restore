@interface CalCalendarMigrationPublicationInfo
- (CalCalendarMigrationPublicationInfo)initWithPublishedURL:(id)a3 calendarDirectory:(id)a4 calendarUUID:(id)a5;
- (id)dictionaryForAccountProperties;
@end

@implementation CalCalendarMigrationPublicationInfo

- (CalCalendarMigrationPublicationInfo)initWithPublishedURL:(id)a3 calendarDirectory:(id)a4 calendarUUID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CalCalendarMigrationPublicationInfo;
  v12 = [(CalCalendarMigrationPublicationInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_publishedURL, a3);
    objc_storeStrong(&v13->_calendarDirectory, a4);
    objc_storeStrong(&v13->_calendarUUID, a5);
  }

  return v13;
}

- (id)dictionaryForAccountProperties
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(NSURL *)self->_publishedURL lastPathComponent];
  v5 = [v4 stringByDeletingPathExtension];

  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x277CF7A68]];
  }

  v6 = [(NSURL *)self->_publishedURL scheme];
  v7 = [v6 caseInsensitiveCompare:@"http"] != 0;
  v8 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x277CF7938]];

  v9 = [(NSURL *)self->_publishedURL absoluteString];
  if ([v9 hasPrefix:@"http://"])
  {
    v10 = 7;
  }

  else
  {
    if (![v9 hasPrefix:@"https://"])
    {
      goto LABEL_8;
    }

    v10 = 8;
  }

  v11 = [v9 substringFromIndex:v10];

  v9 = v11;
LABEL_8:
  [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x277CF7928]];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[CalCalendarMigrationPublicationInfo automaticallyPublishChanges](self, "automaticallyPublishChanges")}];
  [v3 setObject:v12 forKeyedSubscript:*MEMORY[0x277CF7A60]];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[CalCalendarMigrationPublicationInfo filterAlarms](self, "filterAlarms")}];
  [v3 setObject:v13 forKeyedSubscript:*MEMORY[0x277CF7A70]];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[CalCalendarMigrationPublicationInfo filterAttachments](self, "filterAttachments")}];
  [v3 setObject:v14 forKeyedSubscript:*MEMORY[0x277CF7A78]];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[CalCalendarMigrationPublicationInfo filterTitleAndNotes](self, "filterTitleAndNotes")}];
  [v3 setObject:v15 forKeyedSubscript:*MEMORY[0x277CF7A88]];

  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CF7A80]];
  v16 = [(CalCalendarMigrationPublicationInfo *)self calendarUUID];
  [v3 setObject:v16 forKeyedSubscript:*MEMORY[0x277CF7A90]];

  return v3;
}

@end