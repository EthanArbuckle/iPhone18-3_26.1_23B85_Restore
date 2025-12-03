@interface CalCalendarMigrationPublicationInfo
- (CalCalendarMigrationPublicationInfo)initWithPublishedURL:(id)l calendarDirectory:(id)directory calendarUUID:(id)d;
- (id)dictionaryForAccountProperties;
@end

@implementation CalCalendarMigrationPublicationInfo

- (CalCalendarMigrationPublicationInfo)initWithPublishedURL:(id)l calendarDirectory:(id)directory calendarUUID:(id)d
{
  lCopy = l;
  directoryCopy = directory;
  dCopy = d;
  v15.receiver = self;
  v15.super_class = CalCalendarMigrationPublicationInfo;
  v12 = [(CalCalendarMigrationPublicationInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_publishedURL, l);
    objc_storeStrong(&v13->_calendarDirectory, directory);
    objc_storeStrong(&v13->_calendarUUID, d);
  }

  return v13;
}

- (id)dictionaryForAccountProperties
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  lastPathComponent = [(NSURL *)self->_publishedURL lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

  if (stringByDeletingPathExtension)
  {
    [dictionary setObject:stringByDeletingPathExtension forKeyedSubscript:*MEMORY[0x277CF7A68]];
  }

  scheme = [(NSURL *)self->_publishedURL scheme];
  v7 = [scheme caseInsensitiveCompare:@"http"] != 0;
  v8 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  [dictionary setObject:v8 forKeyedSubscript:*MEMORY[0x277CF7938]];

  absoluteString = [(NSURL *)self->_publishedURL absoluteString];
  if ([absoluteString hasPrefix:@"http://"])
  {
    v10 = 7;
  }

  else
  {
    if (![absoluteString hasPrefix:@"https://"])
    {
      goto LABEL_8;
    }

    v10 = 8;
  }

  v11 = [absoluteString substringFromIndex:v10];

  absoluteString = v11;
LABEL_8:
  [dictionary setObject:absoluteString forKeyedSubscript:*MEMORY[0x277CF7928]];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[CalCalendarMigrationPublicationInfo automaticallyPublishChanges](self, "automaticallyPublishChanges")}];
  [dictionary setObject:v12 forKeyedSubscript:*MEMORY[0x277CF7A60]];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[CalCalendarMigrationPublicationInfo filterAlarms](self, "filterAlarms")}];
  [dictionary setObject:v13 forKeyedSubscript:*MEMORY[0x277CF7A70]];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[CalCalendarMigrationPublicationInfo filterAttachments](self, "filterAttachments")}];
  [dictionary setObject:v14 forKeyedSubscript:*MEMORY[0x277CF7A78]];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[CalCalendarMigrationPublicationInfo filterTitleAndNotes](self, "filterTitleAndNotes")}];
  [dictionary setObject:v15 forKeyedSubscript:*MEMORY[0x277CF7A88]];

  [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CF7A80]];
  calendarUUID = [(CalCalendarMigrationPublicationInfo *)self calendarUUID];
  [dictionary setObject:calendarUUID forKeyedSubscript:*MEMORY[0x277CF7A90]];

  return dictionary;
}

@end