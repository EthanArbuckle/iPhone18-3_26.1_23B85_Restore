@interface MKCalendarMigrator
- (MKCalendarMigrator)init;
- (void)import:(id)import;
- (void)importiCal:(id)cal;
@end

@implementation MKCalendarMigrator

- (MKCalendarMigrator)init
{
  v6.receiver = self;
  v6.super_class = MKCalendarMigrator;
  v2 = [(MKMigrator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CC5A40]);
    eventStore = v2->_eventStore;
    v2->_eventStore = v3;

    [(MKMigrator *)v2 setType:4];
  }

  return v2;
}

- (void)importiCal:(id)cal
{
  calCopy = cal;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_autoreleasePoolPush();
  [(MKCalendarMigrator *)selfCopy import:calCopy];
  objc_autoreleasePoolPop(v5);
  objc_sync_exit(selfCopy);
}

- (void)import:(id)import
{
  v27 = *MEMORY[0x277D85DE8];
  importCopy = import;
  date = [MEMORY[0x277CBEAA8] date];
  v6 = +[MKLog log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v25 = 138412290;
    selfCopy3 = self;
    _os_log_impl(&dword_2592D2000, v6, OS_LOG_TYPE_INFO, "%@ will import iCal.", &v25, 0xCu);
  }

  defaultCalendarForNewEvents = [(EKEventStore *)self->_eventStore defaultCalendarForNewEvents];
  v8 = [(EKEventStore *)self->_eventStore importICSData:importCopy intoCalendar:defaultCalendarForNewEvents options:0];
  [(EKEventStore *)self->_eventStore reset];
  if ([v8 count])
  {
    -[MKMigrator migratorDidImportWithCount:](self, "migratorDidImportWithCount:", [v8 count]);
    -[MKMigrator migratorDidAppendDataSize:](self, "migratorDidAppendDataSize:", [importCopy length]);
  }

  else
  {
    v9 = +[MKLog log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v25 = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_2592D2000, v9, OS_LOG_TYPE_INFO, "%@ EKEventStore was failed to import data.", &v25, 0xCu);
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MKCalendarError" code:1 userInfo:0];
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:importCopy encoding:4];
    if ([v11 length])
    {
      v12 = [v11 mk_occurrenceCountOfString:@"BEGIN:VCALENDAR"];
      if (v12 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      [(MKMigrator *)self migratorDidFailWithImportError:v10 count:v13];
    }

    else
    {
      [(MKMigrator *)self migratorDidFailWithImportError:v10];
    }
  }

  v14 = +[MKAnalytics sharedInstance];
  objc_sync_enter(v14);
  payload = [v14 payload];
  calendars = [payload calendars];

  date2 = [MEMORY[0x277CBEAA8] date];
  [date2 timeIntervalSinceDate:date];
  v19 = v18;

  v20 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v19];
  importElapsedTime = [calendars importElapsedTime];
  v22 = [importElapsedTime decimalNumberByAdding:v20];
  [calendars setImportElapsedTime:v22];

  objc_sync_exit(v14);
  v23 = +[MKLog log];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v25 = 138412290;
    selfCopy3 = self;
    _os_log_impl(&dword_2592D2000, v23, OS_LOG_TYPE_INFO, "%@ did import iCal.", &v25, 0xCu);
  }

  v24 = *MEMORY[0x277D85DE8];
}

@end