@interface CalDAVContainer
+ (id)copyPropertyMappingsForParser;
- (BOOL)_isComponentSupportedForString:(id)string;
- (BOOL)isCalendar;
- (BOOL)isFamilyCalendar;
- (BOOL)isNotification;
- (BOOL)isScheduleInbox;
- (BOOL)isScheduleOutbox;
- (BOOL)isShared;
- (BOOL)isSharedOwner;
- (BOOL)isSubscribed;
- (BOOL)supportsFreebusy;
- (id)description;
- (void)_setTimeZoneFromProperties:(id)properties onCalendar:(id)calendar;
- (void)applyParsedProperties:(id)properties;
- (void)postProcessWithResponseHeaders:(id)headers;
@end

@implementation CalDAVContainer

- (id)description
{
  v27.receiver = self;
  v27.super_class = CalDAVContainer;
  v3 = [(CoreDAVContainer *)&v27 description];
  v4 = MEMORY[0x277CCAB68];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"%@ %p: ", v6, self];

  [v7 appendFormat:@" PARENT CLASS: %@", v3];
  [v7 appendFormat:@"\n\tisCalendar: %d", -[CalDAVContainer isCalendar](self, "isCalendar")];
  [v7 appendFormat:@" isScheduleInbox: %d", -[CalDAVContainer isScheduleInbox](self, "isScheduleInbox")];
  [v7 appendFormat:@" isScheduleOutbox: %d", -[CalDAVContainer isScheduleOutbox](self, "isScheduleOutbox")];
  [v7 appendFormat:@" isNotification: %d", -[CalDAVContainer isNotification](self, "isNotification")];
  [v7 appendFormat:@" isSubscribed: %d", -[CalDAVContainer isSubscribed](self, "isSubscribed")];
  [v7 appendFormat:@" isEventContainer: %d", -[CalDAVContainer isEventContainer](self, "isEventContainer")];
  [v7 appendFormat:@" isTaskContainer: %d", -[CalDAVContainer isTaskContainer](self, "isTaskContainer")];
  [v7 appendFormat:@" isSharedOwner: %d", -[CalDAVContainer isSharedOwner](self, "isSharedOwner")];
  [v7 appendFormat:@" isShared: %d", -[CalDAVContainer isShared](self, "isShared")];
  [v7 appendFormat:@"\n\tsupportsFreebusy: %d", -[CalDAVContainer supportsFreebusy](self, "supportsFreebusy")];
  [v7 appendFormat:@"\n\tSchedule Transparent: %d", -[CalDAVContainer isScheduleTransparent](self, "isScheduleTransparent")];
  [v7 appendFormat:@"\n\tCan Be Published: %d", -[CalDAVContainer canBePublished](self, "canBePublished")];
  [v7 appendFormat:@"\n\tIs Family: %d", -[CalDAVContainer isFamilyCalendar](self, "isFamilyCalendar")];
  [v7 appendFormat:@"\n\tIs Marked Undeletable: %d", -[CalDAVContainer isMarkedUndeletable](self, "isMarkedUndeletable")];
  [v7 appendFormat:@"\n\tIs Marked Immutable Sharees: %d", -[CalDAVContainer isMarkedImmutableSharees](self, "isMarkedImmutableSharees")];
  calendarDescription = [(CalDAVContainer *)self calendarDescription];
  [v7 appendFormat:@"\n\tCalendar Description: %@", calendarDescription];

  ctag = [(CalDAVContainer *)self ctag];
  [v7 appendFormat:@"\n\tctag: %@", ctag];

  calendarColor = [(CalDAVContainer *)self calendarColor];
  [v7 appendFormat:@"\n\tCalendar Color: %@", calendarColor];

  calendarOrder = [(CalDAVContainer *)self calendarOrder];
  [v7 appendFormat:@"\n\tCalendar Order: %@", calendarOrder];

  [v7 appendFormat:@"\n\tsubscribedStripAlarms: %d", -[CalDAVContainer subscribedStripAlarms](self, "subscribedStripAlarms")];
  [v7 appendFormat:@" subscribedStripTodos: %d", -[CalDAVContainer subscribedStripTodos](self, "subscribedStripTodos")];
  [v7 appendFormat:@" subscribedStripAttachments: %d", -[CalDAVContainer subscribedStripAttachments](self, "subscribedStripAttachments")];
  subscribedRefreshRate = [(CalDAVContainer *)self subscribedRefreshRate];
  [subscribedRefreshRate timeInterval];
  [v7 appendFormat:@"\n\tRefresh Rate: %f", v13];

  publishURL = [(CalDAVContainer *)self publishURL];
  [v7 appendFormat:@"\n\tPublish URL: %@", publishURL];

  prePublishURL = [(CalDAVContainer *)self prePublishURL];
  [v7 appendFormat:@"\n\tPre publish URL: %@", prePublishURL];

  timeZone = [(CalDAVContainer *)self timeZone];
  [v7 appendFormat:@"\n\tTime Zone: %@", timeZone];

  source = [(CalDAVContainer *)self source];
  [v7 appendFormat:@"\n\tSource : %@", source];

  freeBusySet = [(CalDAVContainer *)self freeBusySet];
  [v7 appendFormat:@"\n\tFree Busy Set: %@", freeBusySet];

  scheduleDefaultCalendarURL = [(CalDAVContainer *)self scheduleDefaultCalendarURL];
  [v7 appendFormat:@"\n\tSchedule Default URL: %@", scheduleDefaultCalendarURL];

  defaultTimedAlarms = [(CalDAVContainer *)self defaultTimedAlarms];
  [v7 appendFormat:@"\n\tDefault Timed Alarms: %@", defaultTimedAlarms];

  defaultAllDayAlarms = [(CalDAVContainer *)self defaultAllDayAlarms];
  [v7 appendFormat:@"\n\tDefault All-Day Alarms: %@", defaultAllDayAlarms];

  sharees = [(CalDAVContainer *)self sharees];
  [v7 appendFormat:@"\n\tSharees: %@", sharees];

  supportedCalendarComponentSets = [(CalDAVContainer *)self supportedCalendarComponentSets];
  [v7 appendFormat:@"\n\tSupported Calendar Components Sets: %@", supportedCalendarComponentSets];

  locationCode = [(CalDAVContainer *)self locationCode];
  [v7 appendFormat:@"\n\tLocation Code: %@", locationCode];

  languageCode = [(CalDAVContainer *)self languageCode];
  [v7 appendFormat:@"\n\tLanguage Code: %@", languageCode];

  [v7 appendFormat:@"\n\tAuto Provisioned: %d", -[CalDAVContainer autoprovisioned](self, "autoprovisioned")];
  [v7 appendFormat:@"\n\tMax Attendees: %ld", -[CalDAVContainer maxAttendees](self, "maxAttendees")];

  return v7;
}

+ (id)copyPropertyMappingsForParser
{
  v2 = objc_opt_new();
  [v2 CDVAddItemParserMappingWithNameSpace:*MEMORY[0x277CFDEF8] name:*MEMORY[0x277CFDFE0] parseClass:objc_opt_class()];
  v3 = *MEMORY[0x277CFDE90];
  [v2 CDVAddItemParserMappingWithNameSpace:*MEMORY[0x277CFDE90] name:*MEMORY[0x277CFDE30] parseClass:objc_opt_class()];
  v4 = *MEMORY[0x277CFDDC0];
  [v2 CDVAddItemParserMappingWithNameSpace:*MEMORY[0x277CFDDC0] name:*MEMORY[0x277CFDDE0] parseClass:objc_opt_class()];
  v5 = *MEMORY[0x277CFE050];
  [v2 CDVAddItemParserMappingWithNameSpace:*MEMORY[0x277CFE050] name:*MEMORY[0x277CFDDD8] parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:v5 name:*MEMORY[0x277CFDDF0] parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:v4 name:*MEMORY[0x277CFE028] parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:v3 name:*MEMORY[0x277CFDE68] parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:v3 name:*MEMORY[0x277CFDE70] parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:v3 name:*MEMORY[0x277CFDE78] parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:v5 name:*MEMORY[0x277CFDFD8] parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:v3 name:*MEMORY[0x277CFDE50] parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:v3 name:@"pre-publish-url" parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:v4 name:*MEMORY[0x277CFDDE8] parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:v4 name:*MEMORY[0x277CFDFF8] parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:v4 name:*MEMORY[0x277CFE000] parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:v4 name:*MEMORY[0x277CFDE98] parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:v3 name:*MEMORY[0x277CFDE00] parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:v3 name:*MEMORY[0x277CFDE60] parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:v4 name:@"supported-calendar-component-sets" parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:v4 name:@"default-alarm-vevent-date" parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:v4 name:@"default-alarm-vevent-datetime" parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:v4 name:@"calendar-alarm" parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:v5 name:@"language-code" parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:v5 name:@"location-code" parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:v5 name:@"autoprovisioned" parseClass:objc_opt_class()];
  [v2 CDVAddItemParserMappingWithNameSpace:v4 name:*MEMORY[0x277CFDF90] parseClass:objc_opt_class()];
  return v2;
}

- (void)applyParsedProperties:(id)properties
{
  propertiesCopy = properties;
  v66.receiver = self;
  v66.super_class = CalDAVContainer;
  [(CoreDAVContainer *)&v66 applyParsedProperties:propertiesCopy];
  v5 = *MEMORY[0x277CFDDC0];
  v6 = [propertiesCopy CDVObjectForKeyWithNameSpace:*MEMORY[0x277CFDDC0] andName:*MEMORY[0x277CFDDE0]];
  payloadAsString = [v6 payloadAsString];
  [(CalDAVContainer *)self setCalendarDescription:payloadAsString];

  v8 = *MEMORY[0x277CFDE90];
  v9 = [propertiesCopy CDVObjectForKeyWithNameSpace:*MEMORY[0x277CFDE90] andName:*MEMORY[0x277CFDE30]];
  payloadAsString2 = [v9 payloadAsString];
  [(CalDAVContainer *)self setCtag:payloadAsString2];

  v11 = *MEMORY[0x277CFE050];
  v12 = [propertiesCopy CDVObjectForKeyWithNameSpace:*MEMORY[0x277CFE050] andName:*MEMORY[0x277CFDDD8]];
  symbolicColorName = [v12 symbolicColorName];
  [(CalDAVContainer *)self setSymbolicColorName:symbolicColorName];

  colorString = [v12 colorString];
  [(CalDAVContainer *)self setCalendarColor:colorString];

  v15 = [propertiesCopy CDVObjectForKeyWithNameSpace:v11 andName:*MEMORY[0x277CFDDF0]];
  payloadAsString3 = [v15 payloadAsString];
  [(CalDAVContainer *)self setCalendarOrder:payloadAsString3];

  v17 = [propertiesCopy CDVObjectForKeyWithNameSpace:v5 andName:*MEMORY[0x277CFE028]];
  compNames = [v17 compNames];
  [(CalDAVContainer *)self setSupportedCalendarComponentSet:compNames];

  v19 = [propertiesCopy CDVObjectForKeyWithNameSpace:v8 andName:*MEMORY[0x277CFDE68]];
  [(CalDAVContainer *)self setSubscribedStripAlarms:v19 != 0];

  v20 = [propertiesCopy CDVObjectForKeyWithNameSpace:v8 andName:*MEMORY[0x277CFDE70]];
  [(CalDAVContainer *)self setSubscribedStripAttachments:v20 != 0];

  v21 = [propertiesCopy CDVObjectForKeyWithNameSpace:v8 andName:*MEMORY[0x277CFDE78]];
  [(CalDAVContainer *)self setSubscribedStripTodos:v21 != 0];

  v22 = [propertiesCopy CDVObjectForKeyWithNameSpace:v11 andName:*MEMORY[0x277CFDFD8]];
  payloadAsString4 = [v22 payloadAsString];

  if (payloadAsString4)
  {
    v24 = [MEMORY[0x277D7F110] generateDurationFromICSString:payloadAsString4];
    [(CalDAVContainer *)self setSubscribedRefreshRate:v24];
  }

  v25 = [propertiesCopy CDVObjectForKeyWithNameSpace:v8 andName:*MEMORY[0x277CFDE50]];
  href = [v25 href];
  payloadAsFullURL = [href payloadAsFullURL];
  [(CalDAVContainer *)self setPublishURL:payloadAsFullURL];

  v28 = [propertiesCopy CDVObjectForKeyWithNameSpace:v8 andName:@"pre-publish-url"];
  href2 = [v28 href];
  payloadAsFullURL2 = [href2 payloadAsFullURL];
  [(CalDAVContainer *)self setPrePublishURL:payloadAsFullURL2];

  v31 = [propertiesCopy CDVObjectForKeyWithNameSpace:v5 andName:*MEMORY[0x277CFDDE8]];
  hrefsAsOriginalURLs = [v31 hrefsAsOriginalURLs];
  [(CalDAVContainer *)self setFreeBusySet:hrefsAsOriginalURLs];

  v33 = [propertiesCopy CDVObjectForKeyWithNameSpace:v5 andName:*MEMORY[0x277CFE000]];
  href3 = [v33 href];
  payloadAsFullURL3 = [href3 payloadAsFullURL];
  [(CalDAVContainer *)self setScheduleDefaultCalendarURL:payloadAsFullURL3];

  v36 = [propertiesCopy CDVObjectForKeyWithNameSpace:v5 andName:*MEMORY[0x277CFDFF8]];
  -[CalDAVContainer setIsScheduleTransparent:](self, "setIsScheduleTransparent:", [v36 isScheduleTransparent]);

  [(CalDAVContainer *)self _setTimeZoneFromProperties:propertiesCopy onCalendar:self];
  v37 = *MEMORY[0x277CFDE00];
  v38 = [propertiesCopy CDVObjectForKeyWithNameSpace:v8 andName:*MEMORY[0x277CFDE00]];
  canBePublished = [v38 canBePublished];
  [(CalDAVContainer *)self setCanBePublished:canBePublished != 0];

  v40 = [propertiesCopy CDVObjectForKeyWithNameSpace:v8 andName:v37];
  canBeShared = [v40 canBeShared];
  [(CalDAVContainer *)self setCanBeShared:canBeShared != 0];

  v42 = [propertiesCopy CDVObjectForKeyWithNameSpace:v8 andName:v37];
  isMarkedImmutableSharees = [v42 isMarkedImmutableSharees];
  [(CalDAVContainer *)self setIsMarkedImmutableSharees:isMarkedImmutableSharees != 0];

  v44 = [propertiesCopy CDVObjectForKeyWithNameSpace:v8 andName:v37];
  isMarkedUndeletable = [v44 isMarkedUndeletable];
  [(CalDAVContainer *)self setIsMarkedUndeletable:isMarkedUndeletable != 0];

  v46 = [propertiesCopy CDVObjectForKeyWithNameSpace:v5 andName:*MEMORY[0x277CFDF90]];
  -[CalDAVContainer setMaxAttendees:](self, "setMaxAttendees:", [v46 payloadAsNSInteger]);

  LODWORD(isMarkedImmutableSharees) = [(CalDAVContainer *)self isSubscribed];
  v47 = [propertiesCopy CDVObjectForKeyWithNameSpace:v8 andName:*MEMORY[0x277CFDE60]];
  href4 = [v47 href];
  v49 = href4;
  if (isMarkedImmutableSharees)
  {
    [href4 payloadAsOriginalURL];
  }

  else
  {
    [href4 payloadAsFullURL];
  }
  v50 = ;
  [(CalDAVContainer *)self setSource:v50];

  v51 = [propertiesCopy CDVObjectForKeyWithNameSpace:v5 andName:@"default-alarm-vevent-date"];
  payloadAsString5 = [v51 payloadAsString];
  [(CalDAVContainer *)self setDefaultAllDayAlarms:payloadAsString5];

  v53 = [propertiesCopy CDVObjectForKeyWithNameSpace:v5 andName:@"default-alarm-vevent-datetime"];
  payloadAsString6 = [v53 payloadAsString];
  [(CalDAVContainer *)self setDefaultTimedAlarms:payloadAsString6];

  v55 = [propertiesCopy CDVObjectForKeyWithNameSpace:v5 andName:@"calendar-alarm"];
  payloadAsString7 = [v55 payloadAsString];
  [(CalDAVContainer *)self setAlarms:payloadAsString7];

  v57 = [propertiesCopy CDVObjectForKeyWithNameSpace:v8 andName:@"invite"];
  users = [v57 users];
  [(CalDAVContainer *)self setSharees:users];

  v59 = [propertiesCopy CDVObjectForKeyWithNameSpace:v5 andName:@"supported-calendar-component-sets"];
  componentsAsString = [v59 componentsAsString];
  [(CalDAVContainer *)self setSupportedCalendarComponentSets:componentsAsString];

  v61 = [propertiesCopy CDVObjectForKeyWithNameSpace:v11 andName:@"language-code"];
  payloadAsString8 = [v61 payloadAsString];
  [(CalDAVContainer *)self setLanguageCode:payloadAsString8];

  v63 = [propertiesCopy CDVObjectForKeyWithNameSpace:v11 andName:@"location-code"];
  payloadAsString9 = [v63 payloadAsString];
  [(CalDAVContainer *)self setLocationCode:payloadAsString9];

  v65 = [propertiesCopy CDVObjectForKeyWithNameSpace:v11 andName:@"autoprovisioned"];
  [(CalDAVContainer *)self setAutoprovisioned:v65 != 0];
}

- (void)_setTimeZoneFromProperties:(id)properties onCalendar:(id)calendar
{
  calendarCopy = calendar;
  v6 = [properties CDVObjectForKeyWithNameSpace:*MEMORY[0x277CFDDC0] andName:*MEMORY[0x277CFDE98]];
  payloadAsString = [v6 payloadAsString];

  if (payloadAsString)
  {
    v24 = 0;
    v8 = [objc_alloc(MEMORY[0x277D7F108]) initWithICSString:payloadAsString options:0 error:&v24];
    v9 = v24;
    if (v9)
    {
      mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
      v11 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:0];
      v12 = v11;
      if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *v23 = 0;
        _os_log_impl(&dword_242742000, v12, OS_LOG_TYPE_DEBUG, "CalDAVCalendarInfoTaskGroup: Error trying to generate ICSDocument from calendar-timezone property", v23, 2u);
      }
    }

    else
    {
      calendar = [v8 calendar];
      mEMORY[0x277CFDC18] = calendar;
      if (!calendar)
      {
        goto LABEL_11;
      }

      components = [calendar components];
      v15 = [components count];

      if (v15 != 1)
      {
        goto LABEL_11;
      }

      components2 = [mEMORY[0x277CFDC18] components];
      v12 = [components2 objectAtIndex:0];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = MEMORY[0x277CBEA80];
        v12 = v12;
        currentCalendar = [v17 currentCalendar];
        date = [MEMORY[0x277CBEAA8] date];
        v20 = [currentCalendar components:28 fromDate:date];

        v21 = [objc_alloc(MEMORY[0x277D7F0F8]) initWithYear:objc_msgSend(v20 month:"year") - 1 day:{objc_msgSend(v20, "month"), objc_msgSend(v20, "day")}];
        v22 = [v12 systemTimeZoneForDate:v21];

        [calendarCopy setTimeZone:v22];
      }
    }

LABEL_11:
  }
}

- (void)postProcessWithResponseHeaders:(id)headers
{
  headersCopy = headers;
  v7.receiver = self;
  v7.super_class = CalDAVContainer;
  [(CoreDAVContainer *)&v7 postProcessWithResponseHeaders:headersCopy];
  if ([(CalDAVContainer *)self isScheduleOutbox])
  {
    supportsFreebusy = [(CalDAVContainer *)self supportsFreebusy];
    if (headersCopy)
    {
      if (!supportsFreebusy)
      {
        v6 = [CalDAVServerVersion versionWithHTTPHeaders:headersCopy];
        if ([v6 alwaysSupportsFreebusyOnOutbox])
        {
          [(CalDAVContainer *)self setOverrideSupportsFreebusy:1];
        }
      }
    }
  }
}

- (BOOL)_isComponentSupportedForString:(id)string
{
  stringCopy = string;
  supportedCalendarComponentSet = [(CalDAVContainer *)self supportedCalendarComponentSet];

  if (supportedCalendarComponentSet)
  {
    supportedCalendarComponentSet2 = [(CalDAVContainer *)self supportedCalendarComponentSet];
    v7 = [supportedCalendarComponentSet2 containsObject:stringCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)isCalendar
{
  resourceType = [(CoreDAVContainer *)self resourceType];
  if (resourceType)
  {
    resourceType2 = [(CoreDAVContainer *)self resourceType];
    calendar = [resourceType2 calendar];
    v6 = calendar != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isScheduleInbox
{
  resourceType = [(CoreDAVContainer *)self resourceType];
  if (resourceType)
  {
    resourceType2 = [(CoreDAVContainer *)self resourceType];
    scheduleInbox = [resourceType2 scheduleInbox];
    v6 = scheduleInbox != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isScheduleOutbox
{
  resourceType = [(CoreDAVContainer *)self resourceType];
  if (resourceType)
  {
    resourceType2 = [(CoreDAVContainer *)self resourceType];
    scheduleOutbox = [resourceType2 scheduleOutbox];
    v6 = scheduleOutbox != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isNotification
{
  resourceType = [(CoreDAVContainer *)self resourceType];
  if (resourceType)
  {
    resourceType2 = [(CoreDAVContainer *)self resourceType];
    notification = [resourceType2 notification];
    v6 = notification != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isSubscribed
{
  resourceType = [(CoreDAVContainer *)self resourceType];
  if (resourceType)
  {
    resourceType2 = [(CoreDAVContainer *)self resourceType];
    subscribed = [resourceType2 subscribed];
    v6 = subscribed != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isSharedOwner
{
  resourceType = [(CoreDAVContainer *)self resourceType];
  if (resourceType)
  {
    resourceType2 = [(CoreDAVContainer *)self resourceType];
    sharedOwner = [resourceType2 sharedOwner];
    v6 = sharedOwner != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isShared
{
  resourceType = [(CoreDAVContainer *)self resourceType];
  if (resourceType)
  {
    resourceType2 = [(CoreDAVContainer *)self resourceType];
    shared = [resourceType2 shared];
    v6 = shared != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isFamilyCalendar
{
  resourceType = [(CoreDAVContainer *)self resourceType];
  if (resourceType)
  {
    resourceType2 = [(CoreDAVContainer *)self resourceType];
    isFamilyCalendar = [resourceType2 isFamilyCalendar];
    v6 = isFamilyCalendar != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)supportsFreebusy
{
  if ([(CalDAVContainer *)self overrideSupportsFreebusy])
  {
    return 1;
  }

  return [(CalDAVContainer *)self _isComponentSupportedForString:@"VFREEBUSY"];
}

@end