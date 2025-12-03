@interface MobileCalDAVSubscribedCalendar
- (BOOL)hasAlarmFilter;
- (BOOL)hasAttachmentFilter;
- (BOOL)hasTaskFilter;
- (BOOL)isManagedByServer;
- (MobileCalDAVSubscribedCalendar)initWithCalendarURL:(id)l calendar:(void *)calendar properties:(id)properties principal:(id)principal;
- (NSURL)subscriptionURL;
- (double)refreshInterval;
- (id)properties;
- (void)setRefreshInterval:(double)interval;
- (void)setSubscriptionURL:(id)l;
- (void)setTitle:(id)title;
- (void)updatePropertiesFromCalCalendar;
@end

@implementation MobileCalDAVSubscribedCalendar

- (MobileCalDAVSubscribedCalendar)initWithCalendarURL:(id)l calendar:(void *)calendar properties:(id)properties principal:(id)principal
{
  propertiesCopy = properties;
  v11 = MEMORY[0x277D03970];
  principalCopy = principal;
  lCopy = l;
  subCalTitleKey = [v11 SubCalTitleKey];
  v15 = [propertiesCopy objectForKeyedSubscript:subCalTitleKey];

  v20.receiver = self;
  v20.super_class = MobileCalDAVSubscribedCalendar;
  v16 = [(MobileCalDAVCalendar *)&v20 initWithCalendarURL:lCopy calendar:calendar principal:principalCopy title:v15];

  if (v16)
  {
    if ([(MobileCalDAVCalendar *)v16 calCalendar])
    {
      [(MobileCalDAVCalendar *)v16 calCalendar];
      if ((CalCalendarCanContainEntityType() & 1) == 0)
      {
        [(MobileCalDAVCalendar *)v16 calCalendar];
        CalCalendarSetCanContainEntityType();
        [(MobileCalDAVCalendar *)v16 setIsDirty:1];
      }
    }

    if (propertiesCopy)
    {
      v17 = [propertiesCopy mutableCopy];
    }

    else
    {
      v17 = objc_opt_new();
    }

    v18 = v17;
    objc_storeStrong(&v16->_properties, v17);
  }

  return v16;
}

- (id)properties
{
  title = [(MobileCalDAVCalendar *)self title];

  if (title)
  {
    properties = self->_properties;
    title2 = [(MobileCalDAVCalendar *)self title];
    subCalTitleKey = [MEMORY[0x277D03970] SubCalTitleKey];
    [(NSMutableDictionary *)properties setValue:title2 forKey:subCalTitleKey];
  }

  v7 = self->_properties;

  return v7;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v9.receiver = self;
  v9.super_class = MobileCalDAVSubscribedCalendar;
  [(MobileCalDAVCalendar *)&v9 setTitle:titleCopy];
  title = [(MobileCalDAVCalendar *)self title];
  if (title == titleCopy)
  {
    goto LABEL_4;
  }

  title2 = [(MobileCalDAVCalendar *)self title];
  v7 = [titleCopy isEqualToString:title2];

  if ((v7 & 1) == 0)
  {
    properties = self->_properties;
    title = [MEMORY[0x277D03970] SubCalTitleKey];
    [(NSMutableDictionary *)properties setValue:titleCopy forKey:title];
LABEL_4:
  }
}

- (NSURL)subscriptionURL
{
  properties = self->_properties;
  subCalSubscriptionURLKey = [MEMORY[0x277D03970] SubCalSubscriptionURLKey];
  v4 = [(NSMutableDictionary *)properties objectForKeyedSubscript:subCalSubscriptionURLKey];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setSubscriptionURL:(id)l
{
  absoluteString = [l absoluteString];
  subscriptionURL = [(MobileCalDAVSubscribedCalendar *)self subscriptionURL];
  absoluteString2 = [subscriptionURL absoluteString];

  if (absoluteString != absoluteString2 && ([absoluteString isEqualToString:absoluteString2] & 1) == 0)
  {
    properties = self->_properties;
    subCalSubscriptionURLKey = [MEMORY[0x277D03970] SubCalSubscriptionURLKey];
    [(NSMutableDictionary *)properties setValue:absoluteString forKey:subCalSubscriptionURLKey];

    if ([(MobileCalDAVCalendar *)self getCalCalendar])
    {
      CalCalendarSetSubscriptionURL();
    }

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (BOOL)hasAlarmFilter
{
  properties = self->_properties;
  subCalFilterAlarmsKey = [MEMORY[0x277D03970] SubCalFilterAlarmsKey];
  v4 = [(NSMutableDictionary *)properties objectForKeyedSubscript:subCalFilterAlarmsKey];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (BOOL)hasAttachmentFilter
{
  v2 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:*MEMORY[0x277CF7AC8]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)hasTaskFilter
{
  v2 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:*MEMORY[0x277CF7AD0]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (double)refreshInterval
{
  v2 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:*MEMORY[0x277CF7AE8]];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setRefreshInterval:(double)interval
{
  [(MobileCalDAVSubscribedCalendar *)self refreshInterval];
  if (v5 != interval)
  {
    properties = self->_properties;
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:interval];
    [(NSMutableDictionary *)properties setValue:v7 forKey:*MEMORY[0x277CF7AE8]];

    if ([(MobileCalDAVCalendar *)self getCalCalendar])
    {
      CalCalendarSetRefreshInterval();
    }

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (BOOL)isManagedByServer
{
  v2 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:*MEMORY[0x277CF7AE0]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)updatePropertiesFromCalCalendar
{
  [(MobileCalDAVCalendar *)self getCalCalendar];
  v4 = CalCalendarCopySubscriptionURL();
  v3 = [MEMORY[0x277CBEBC0] URLWithString:?];
  if (v3)
  {
    [(MobileCalDAVSubscribedCalendar *)self setSubscriptionURL:v3];
  }

  [(MobileCalDAVSubscribedCalendar *)self setRefreshInterval:CalCalendarGetRefreshInterval()];
  [(MobileCalDAVSubscribedCalendar *)self setHasAlarmFilter:CalCalendarGetStripAlarms()];
  [(MobileCalDAVSubscribedCalendar *)self setHasAttachmentFilter:CalCalendarGetStripAttachments()];
}

@end