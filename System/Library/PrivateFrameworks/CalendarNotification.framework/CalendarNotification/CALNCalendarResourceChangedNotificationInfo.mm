@interface CALNCalendarResourceChangedNotificationInfo
- (CALNCalendarResourceChangedNotificationInfo)initWithSourceClientIdentifier:(id)a3 calendarNotification:(id)a4 changeType:(unsigned int)a5 date:(id)a6 allDay:(BOOL)a7 timeZone:(id)a8 expirationDate:(id)a9 launchURL:(id)a10 isDelegate:(BOOL)a11 sourceTitle:(id)a12 sourceIdentifier:(id)a13;
- (id)description;
@end

@implementation CALNCalendarResourceChangedNotificationInfo

- (CALNCalendarResourceChangedNotificationInfo)initWithSourceClientIdentifier:(id)a3 calendarNotification:(id)a4 changeType:(unsigned int)a5 date:(id)a6 allDay:(BOOL)a7 timeZone:(id)a8 expirationDate:(id)a9 launchURL:(id)a10 isDelegate:(BOOL)a11 sourceTitle:(id)a12 sourceIdentifier:(id)a13
{
  v42 = a3;
  v41 = a4;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a12;
  v23 = a13;
  v43.receiver = self;
  v43.super_class = CALNCalendarResourceChangedNotificationInfo;
  v24 = [(CALNCalendarResourceChangedNotificationInfo *)&v43 init];
  if (v24)
  {
    v25 = [v42 copy];
    sourceClientIdentifier = v24->_sourceClientIdentifier;
    v24->_sourceClientIdentifier = v25;

    objc_storeStrong(&v24->_calendarNotification, a4);
    v24->_changeType = a5;
    v27 = [v18 copy];
    date = v24->_date;
    v24->_date = v27;

    v24->_allDay = a7;
    v29 = [v19 copy];
    timeZone = v24->_timeZone;
    v24->_timeZone = v29;

    v31 = [v20 copy];
    expirationDate = v24->_expirationDate;
    v24->_expirationDate = v31;

    v33 = [v21 copy];
    launchURL = v24->_launchURL;
    v24->_launchURL = v33;

    v24->_isDelegate = a11;
    v35 = [v22 copy];
    sourceTitle = v24->_sourceTitle;
    v24->_sourceTitle = v35;

    v37 = [v23 copy];
    sourceIdentifier = v24->_sourceIdentifier;
    v24->_sourceIdentifier = v37;
  }

  return v24;
}

- (id)description
{
  v17 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v15 = [(CALNCalendarResourceChangedNotificationInfo *)self sourceClientIdentifier];
  v14 = [(CALNCalendarResourceChangedNotificationInfo *)self calendarNotification];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[CALNCalendarResourceChangedNotificationInfo changeType](self, "changeType")}];
  v12 = [(CALNCalendarResourceChangedNotificationInfo *)self date];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[CALNCalendarResourceChangedNotificationInfo allDay](self, "allDay")}];
  v4 = [(CALNCalendarResourceChangedNotificationInfo *)self timeZone];
  v5 = [(CALNCalendarResourceChangedNotificationInfo *)self expirationDate];
  v6 = [(CALNCalendarResourceChangedNotificationInfo *)self launchURL];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[CALNCalendarResourceChangedNotificationInfo isDelegate](self, "isDelegate")}];
  v8 = [(CALNCalendarResourceChangedNotificationInfo *)self sourceTitle];
  v9 = [(CALNCalendarResourceChangedNotificationInfo *)self sourceIdentifier];
  v10 = [v17 stringWithFormat:@"<%@: %p>(sourceClientIdentifier = %@, calendarNotification = %@, changeType = %@, date = %@, allDay = %@, timeZone = %@, expirationDate = %@, launchURL = %@, isDelegate = %@, sourceTitle = %@, sourceIdentifier = %@)", v16, self, v15, v14, v13, v12, v3, v4, v5, v6, v7, v8, v9];

  return v10;
}

@end