@interface MobileCalDAVSubscribedCalendar
- (BOOL)hasAlarmFilter;
- (BOOL)hasAttachmentFilter;
- (BOOL)hasTaskFilter;
- (BOOL)isManagedByServer;
- (MobileCalDAVSubscribedCalendar)initWithCalendarURL:(id)a3 calendar:(void *)a4 properties:(id)a5 principal:(id)a6;
- (NSURL)subscriptionURL;
- (double)refreshInterval;
- (id)properties;
- (void)setRefreshInterval:(double)a3;
- (void)setSubscriptionURL:(id)a3;
- (void)setTitle:(id)a3;
- (void)updatePropertiesFromCalCalendar;
@end

@implementation MobileCalDAVSubscribedCalendar

- (MobileCalDAVSubscribedCalendar)initWithCalendarURL:(id)a3 calendar:(void *)a4 properties:(id)a5 principal:(id)a6
{
  v10 = a5;
  v11 = MEMORY[0x277D03970];
  v12 = a6;
  v13 = a3;
  v14 = [v11 SubCalTitleKey];
  v15 = [v10 objectForKeyedSubscript:v14];

  v20.receiver = self;
  v20.super_class = MobileCalDAVSubscribedCalendar;
  v16 = [(MobileCalDAVCalendar *)&v20 initWithCalendarURL:v13 calendar:a4 principal:v12 title:v15];

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

    if (v10)
    {
      v17 = [v10 mutableCopy];
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
  v3 = [(MobileCalDAVCalendar *)self title];

  if (v3)
  {
    properties = self->_properties;
    v5 = [(MobileCalDAVCalendar *)self title];
    v6 = [MEMORY[0x277D03970] SubCalTitleKey];
    [(NSMutableDictionary *)properties setValue:v5 forKey:v6];
  }

  v7 = self->_properties;

  return v7;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MobileCalDAVSubscribedCalendar;
  [(MobileCalDAVCalendar *)&v9 setTitle:v4];
  v5 = [(MobileCalDAVCalendar *)self title];
  if (v5 == v4)
  {
    goto LABEL_4;
  }

  v6 = [(MobileCalDAVCalendar *)self title];
  v7 = [v4 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    properties = self->_properties;
    v5 = [MEMORY[0x277D03970] SubCalTitleKey];
    [(NSMutableDictionary *)properties setValue:v4 forKey:v5];
LABEL_4:
  }
}

- (NSURL)subscriptionURL
{
  properties = self->_properties;
  v3 = [MEMORY[0x277D03970] SubCalSubscriptionURLKey];
  v4 = [(NSMutableDictionary *)properties objectForKeyedSubscript:v3];

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

- (void)setSubscriptionURL:(id)a3
{
  v8 = [a3 absoluteString];
  v4 = [(MobileCalDAVSubscribedCalendar *)self subscriptionURL];
  v5 = [v4 absoluteString];

  if (v8 != v5 && ([v8 isEqualToString:v5] & 1) == 0)
  {
    properties = self->_properties;
    v7 = [MEMORY[0x277D03970] SubCalSubscriptionURLKey];
    [(NSMutableDictionary *)properties setValue:v8 forKey:v7];

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
  v3 = [MEMORY[0x277D03970] SubCalFilterAlarmsKey];
  v4 = [(NSMutableDictionary *)properties objectForKeyedSubscript:v3];
  v5 = [v4 BOOLValue];

  return v5;
}

- (BOOL)hasAttachmentFilter
{
  v2 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:*MEMORY[0x277CF7AC8]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)hasTaskFilter
{
  v2 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:*MEMORY[0x277CF7AD0]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (double)refreshInterval
{
  v2 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:*MEMORY[0x277CF7AE8]];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setRefreshInterval:(double)a3
{
  [(MobileCalDAVSubscribedCalendar *)self refreshInterval];
  if (v5 != a3)
  {
    properties = self->_properties;
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
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
  v3 = [v2 BOOLValue];

  return v3;
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