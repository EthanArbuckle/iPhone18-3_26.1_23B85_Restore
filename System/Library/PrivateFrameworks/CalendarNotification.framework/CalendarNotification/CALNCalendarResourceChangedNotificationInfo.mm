@interface CALNCalendarResourceChangedNotificationInfo
- (CALNCalendarResourceChangedNotificationInfo)initWithSourceClientIdentifier:(id)identifier calendarNotification:(id)notification changeType:(unsigned int)type date:(id)date allDay:(BOOL)day timeZone:(id)zone expirationDate:(id)expirationDate launchURL:(id)self0 isDelegate:(BOOL)self1 sourceTitle:(id)self2 sourceIdentifier:(id)self3;
- (id)description;
@end

@implementation CALNCalendarResourceChangedNotificationInfo

- (CALNCalendarResourceChangedNotificationInfo)initWithSourceClientIdentifier:(id)identifier calendarNotification:(id)notification changeType:(unsigned int)type date:(id)date allDay:(BOOL)day timeZone:(id)zone expirationDate:(id)expirationDate launchURL:(id)self0 isDelegate:(BOOL)self1 sourceTitle:(id)self2 sourceIdentifier:(id)self3
{
  identifierCopy = identifier;
  notificationCopy = notification;
  dateCopy = date;
  zoneCopy = zone;
  expirationDateCopy = expirationDate;
  lCopy = l;
  titleCopy = title;
  sourceIdentifierCopy = sourceIdentifier;
  v43.receiver = self;
  v43.super_class = CALNCalendarResourceChangedNotificationInfo;
  v24 = [(CALNCalendarResourceChangedNotificationInfo *)&v43 init];
  if (v24)
  {
    v25 = [identifierCopy copy];
    sourceClientIdentifier = v24->_sourceClientIdentifier;
    v24->_sourceClientIdentifier = v25;

    objc_storeStrong(&v24->_calendarNotification, notification);
    v24->_changeType = type;
    v27 = [dateCopy copy];
    date = v24->_date;
    v24->_date = v27;

    v24->_allDay = day;
    v29 = [zoneCopy copy];
    timeZone = v24->_timeZone;
    v24->_timeZone = v29;

    v31 = [expirationDateCopy copy];
    expirationDate = v24->_expirationDate;
    v24->_expirationDate = v31;

    v33 = [lCopy copy];
    launchURL = v24->_launchURL;
    v24->_launchURL = v33;

    v24->_isDelegate = delegate;
    v35 = [titleCopy copy];
    sourceTitle = v24->_sourceTitle;
    v24->_sourceTitle = v35;

    v37 = [sourceIdentifierCopy copy];
    sourceIdentifier = v24->_sourceIdentifier;
    v24->_sourceIdentifier = v37;
  }

  return v24;
}

- (id)description
{
  v17 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  sourceClientIdentifier = [(CALNCalendarResourceChangedNotificationInfo *)self sourceClientIdentifier];
  calendarNotification = [(CALNCalendarResourceChangedNotificationInfo *)self calendarNotification];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[CALNCalendarResourceChangedNotificationInfo changeType](self, "changeType")}];
  date = [(CALNCalendarResourceChangedNotificationInfo *)self date];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[CALNCalendarResourceChangedNotificationInfo allDay](self, "allDay")}];
  timeZone = [(CALNCalendarResourceChangedNotificationInfo *)self timeZone];
  expirationDate = [(CALNCalendarResourceChangedNotificationInfo *)self expirationDate];
  launchURL = [(CALNCalendarResourceChangedNotificationInfo *)self launchURL];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[CALNCalendarResourceChangedNotificationInfo isDelegate](self, "isDelegate")}];
  sourceTitle = [(CALNCalendarResourceChangedNotificationInfo *)self sourceTitle];
  sourceIdentifier = [(CALNCalendarResourceChangedNotificationInfo *)self sourceIdentifier];
  v10 = [v17 stringWithFormat:@"<%@: %p>(sourceClientIdentifier = %@, calendarNotification = %@, changeType = %@, date = %@, allDay = %@, timeZone = %@, expirationDate = %@, launchURL = %@, isDelegate = %@, sourceTitle = %@, sourceIdentifier = %@)", v16, self, sourceClientIdentifier, calendarNotification, v13, date, v3, timeZone, expirationDate, launchURL, v7, sourceTitle, sourceIdentifier];

  return v10;
}

@end