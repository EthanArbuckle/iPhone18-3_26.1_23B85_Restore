@interface CalDAVContainer
+ (id)copyPropertyMappingsForParser;
- (BOOL)_isComponentSupportedForString:(id)a3;
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
- (void)_setTimeZoneFromProperties:(id)a3 onCalendar:(id)a4;
- (void)applyParsedProperties:(id)a3;
- (void)postProcessWithResponseHeaders:(id)a3;
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
  v8 = [(CalDAVContainer *)self calendarDescription];
  [v7 appendFormat:@"\n\tCalendar Description: %@", v8];

  v9 = [(CalDAVContainer *)self ctag];
  [v7 appendFormat:@"\n\tctag: %@", v9];

  v10 = [(CalDAVContainer *)self calendarColor];
  [v7 appendFormat:@"\n\tCalendar Color: %@", v10];

  v11 = [(CalDAVContainer *)self calendarOrder];
  [v7 appendFormat:@"\n\tCalendar Order: %@", v11];

  [v7 appendFormat:@"\n\tsubscribedStripAlarms: %d", -[CalDAVContainer subscribedStripAlarms](self, "subscribedStripAlarms")];
  [v7 appendFormat:@" subscribedStripTodos: %d", -[CalDAVContainer subscribedStripTodos](self, "subscribedStripTodos")];
  [v7 appendFormat:@" subscribedStripAttachments: %d", -[CalDAVContainer subscribedStripAttachments](self, "subscribedStripAttachments")];
  v12 = [(CalDAVContainer *)self subscribedRefreshRate];
  [v12 timeInterval];
  [v7 appendFormat:@"\n\tRefresh Rate: %f", v13];

  v14 = [(CalDAVContainer *)self publishURL];
  [v7 appendFormat:@"\n\tPublish URL: %@", v14];

  v15 = [(CalDAVContainer *)self prePublishURL];
  [v7 appendFormat:@"\n\tPre publish URL: %@", v15];

  v16 = [(CalDAVContainer *)self timeZone];
  [v7 appendFormat:@"\n\tTime Zone: %@", v16];

  v17 = [(CalDAVContainer *)self source];
  [v7 appendFormat:@"\n\tSource : %@", v17];

  v18 = [(CalDAVContainer *)self freeBusySet];
  [v7 appendFormat:@"\n\tFree Busy Set: %@", v18];

  v19 = [(CalDAVContainer *)self scheduleDefaultCalendarURL];
  [v7 appendFormat:@"\n\tSchedule Default URL: %@", v19];

  v20 = [(CalDAVContainer *)self defaultTimedAlarms];
  [v7 appendFormat:@"\n\tDefault Timed Alarms: %@", v20];

  v21 = [(CalDAVContainer *)self defaultAllDayAlarms];
  [v7 appendFormat:@"\n\tDefault All-Day Alarms: %@", v21];

  v22 = [(CalDAVContainer *)self sharees];
  [v7 appendFormat:@"\n\tSharees: %@", v22];

  v23 = [(CalDAVContainer *)self supportedCalendarComponentSets];
  [v7 appendFormat:@"\n\tSupported Calendar Components Sets: %@", v23];

  v24 = [(CalDAVContainer *)self locationCode];
  [v7 appendFormat:@"\n\tLocation Code: %@", v24];

  v25 = [(CalDAVContainer *)self languageCode];
  [v7 appendFormat:@"\n\tLanguage Code: %@", v25];

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

- (void)applyParsedProperties:(id)a3
{
  v4 = a3;
  v66.receiver = self;
  v66.super_class = CalDAVContainer;
  [(CoreDAVContainer *)&v66 applyParsedProperties:v4];
  v5 = *MEMORY[0x277CFDDC0];
  v6 = [v4 CDVObjectForKeyWithNameSpace:*MEMORY[0x277CFDDC0] andName:*MEMORY[0x277CFDDE0]];
  v7 = [v6 payloadAsString];
  [(CalDAVContainer *)self setCalendarDescription:v7];

  v8 = *MEMORY[0x277CFDE90];
  v9 = [v4 CDVObjectForKeyWithNameSpace:*MEMORY[0x277CFDE90] andName:*MEMORY[0x277CFDE30]];
  v10 = [v9 payloadAsString];
  [(CalDAVContainer *)self setCtag:v10];

  v11 = *MEMORY[0x277CFE050];
  v12 = [v4 CDVObjectForKeyWithNameSpace:*MEMORY[0x277CFE050] andName:*MEMORY[0x277CFDDD8]];
  v13 = [v12 symbolicColorName];
  [(CalDAVContainer *)self setSymbolicColorName:v13];

  v14 = [v12 colorString];
  [(CalDAVContainer *)self setCalendarColor:v14];

  v15 = [v4 CDVObjectForKeyWithNameSpace:v11 andName:*MEMORY[0x277CFDDF0]];
  v16 = [v15 payloadAsString];
  [(CalDAVContainer *)self setCalendarOrder:v16];

  v17 = [v4 CDVObjectForKeyWithNameSpace:v5 andName:*MEMORY[0x277CFE028]];
  v18 = [v17 compNames];
  [(CalDAVContainer *)self setSupportedCalendarComponentSet:v18];

  v19 = [v4 CDVObjectForKeyWithNameSpace:v8 andName:*MEMORY[0x277CFDE68]];
  [(CalDAVContainer *)self setSubscribedStripAlarms:v19 != 0];

  v20 = [v4 CDVObjectForKeyWithNameSpace:v8 andName:*MEMORY[0x277CFDE70]];
  [(CalDAVContainer *)self setSubscribedStripAttachments:v20 != 0];

  v21 = [v4 CDVObjectForKeyWithNameSpace:v8 andName:*MEMORY[0x277CFDE78]];
  [(CalDAVContainer *)self setSubscribedStripTodos:v21 != 0];

  v22 = [v4 CDVObjectForKeyWithNameSpace:v11 andName:*MEMORY[0x277CFDFD8]];
  v23 = [v22 payloadAsString];

  if (v23)
  {
    v24 = [MEMORY[0x277D7F110] generateDurationFromICSString:v23];
    [(CalDAVContainer *)self setSubscribedRefreshRate:v24];
  }

  v25 = [v4 CDVObjectForKeyWithNameSpace:v8 andName:*MEMORY[0x277CFDE50]];
  v26 = [v25 href];
  v27 = [v26 payloadAsFullURL];
  [(CalDAVContainer *)self setPublishURL:v27];

  v28 = [v4 CDVObjectForKeyWithNameSpace:v8 andName:@"pre-publish-url"];
  v29 = [v28 href];
  v30 = [v29 payloadAsFullURL];
  [(CalDAVContainer *)self setPrePublishURL:v30];

  v31 = [v4 CDVObjectForKeyWithNameSpace:v5 andName:*MEMORY[0x277CFDDE8]];
  v32 = [v31 hrefsAsOriginalURLs];
  [(CalDAVContainer *)self setFreeBusySet:v32];

  v33 = [v4 CDVObjectForKeyWithNameSpace:v5 andName:*MEMORY[0x277CFE000]];
  v34 = [v33 href];
  v35 = [v34 payloadAsFullURL];
  [(CalDAVContainer *)self setScheduleDefaultCalendarURL:v35];

  v36 = [v4 CDVObjectForKeyWithNameSpace:v5 andName:*MEMORY[0x277CFDFF8]];
  -[CalDAVContainer setIsScheduleTransparent:](self, "setIsScheduleTransparent:", [v36 isScheduleTransparent]);

  [(CalDAVContainer *)self _setTimeZoneFromProperties:v4 onCalendar:self];
  v37 = *MEMORY[0x277CFDE00];
  v38 = [v4 CDVObjectForKeyWithNameSpace:v8 andName:*MEMORY[0x277CFDE00]];
  v39 = [v38 canBePublished];
  [(CalDAVContainer *)self setCanBePublished:v39 != 0];

  v40 = [v4 CDVObjectForKeyWithNameSpace:v8 andName:v37];
  v41 = [v40 canBeShared];
  [(CalDAVContainer *)self setCanBeShared:v41 != 0];

  v42 = [v4 CDVObjectForKeyWithNameSpace:v8 andName:v37];
  v43 = [v42 isMarkedImmutableSharees];
  [(CalDAVContainer *)self setIsMarkedImmutableSharees:v43 != 0];

  v44 = [v4 CDVObjectForKeyWithNameSpace:v8 andName:v37];
  v45 = [v44 isMarkedUndeletable];
  [(CalDAVContainer *)self setIsMarkedUndeletable:v45 != 0];

  v46 = [v4 CDVObjectForKeyWithNameSpace:v5 andName:*MEMORY[0x277CFDF90]];
  -[CalDAVContainer setMaxAttendees:](self, "setMaxAttendees:", [v46 payloadAsNSInteger]);

  LODWORD(v43) = [(CalDAVContainer *)self isSubscribed];
  v47 = [v4 CDVObjectForKeyWithNameSpace:v8 andName:*MEMORY[0x277CFDE60]];
  v48 = [v47 href];
  v49 = v48;
  if (v43)
  {
    [v48 payloadAsOriginalURL];
  }

  else
  {
    [v48 payloadAsFullURL];
  }
  v50 = ;
  [(CalDAVContainer *)self setSource:v50];

  v51 = [v4 CDVObjectForKeyWithNameSpace:v5 andName:@"default-alarm-vevent-date"];
  v52 = [v51 payloadAsString];
  [(CalDAVContainer *)self setDefaultAllDayAlarms:v52];

  v53 = [v4 CDVObjectForKeyWithNameSpace:v5 andName:@"default-alarm-vevent-datetime"];
  v54 = [v53 payloadAsString];
  [(CalDAVContainer *)self setDefaultTimedAlarms:v54];

  v55 = [v4 CDVObjectForKeyWithNameSpace:v5 andName:@"calendar-alarm"];
  v56 = [v55 payloadAsString];
  [(CalDAVContainer *)self setAlarms:v56];

  v57 = [v4 CDVObjectForKeyWithNameSpace:v8 andName:@"invite"];
  v58 = [v57 users];
  [(CalDAVContainer *)self setSharees:v58];

  v59 = [v4 CDVObjectForKeyWithNameSpace:v5 andName:@"supported-calendar-component-sets"];
  v60 = [v59 componentsAsString];
  [(CalDAVContainer *)self setSupportedCalendarComponentSets:v60];

  v61 = [v4 CDVObjectForKeyWithNameSpace:v11 andName:@"language-code"];
  v62 = [v61 payloadAsString];
  [(CalDAVContainer *)self setLanguageCode:v62];

  v63 = [v4 CDVObjectForKeyWithNameSpace:v11 andName:@"location-code"];
  v64 = [v63 payloadAsString];
  [(CalDAVContainer *)self setLocationCode:v64];

  v65 = [v4 CDVObjectForKeyWithNameSpace:v11 andName:@"autoprovisioned"];
  [(CalDAVContainer *)self setAutoprovisioned:v65 != 0];
}

- (void)_setTimeZoneFromProperties:(id)a3 onCalendar:(id)a4
{
  v5 = a4;
  v6 = [a3 CDVObjectForKeyWithNameSpace:*MEMORY[0x277CFDDC0] andName:*MEMORY[0x277CFDE98]];
  v7 = [v6 payloadAsString];

  if (v7)
  {
    v24 = 0;
    v8 = [objc_alloc(MEMORY[0x277D7F108]) initWithICSString:v7 options:0 error:&v24];
    v9 = v24;
    if (v9)
    {
      v10 = [MEMORY[0x277CFDC18] sharedLogging];
      v11 = [v10 logHandleForAccountInfoProvider:0];
      v12 = v11;
      if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *v23 = 0;
        _os_log_impl(&dword_242742000, v12, OS_LOG_TYPE_DEBUG, "CalDAVCalendarInfoTaskGroup: Error trying to generate ICSDocument from calendar-timezone property", v23, 2u);
      }
    }

    else
    {
      v13 = [v8 calendar];
      v10 = v13;
      if (!v13)
      {
        goto LABEL_11;
      }

      v14 = [v13 components];
      v15 = [v14 count];

      if (v15 != 1)
      {
        goto LABEL_11;
      }

      v16 = [v10 components];
      v12 = [v16 objectAtIndex:0];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = MEMORY[0x277CBEA80];
        v12 = v12;
        v18 = [v17 currentCalendar];
        v19 = [MEMORY[0x277CBEAA8] date];
        v20 = [v18 components:28 fromDate:v19];

        v21 = [objc_alloc(MEMORY[0x277D7F0F8]) initWithYear:objc_msgSend(v20 month:"year") - 1 day:{objc_msgSend(v20, "month"), objc_msgSend(v20, "day")}];
        v22 = [v12 systemTimeZoneForDate:v21];

        [v5 setTimeZone:v22];
      }
    }

LABEL_11:
  }
}

- (void)postProcessWithResponseHeaders:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CalDAVContainer;
  [(CoreDAVContainer *)&v7 postProcessWithResponseHeaders:v4];
  if ([(CalDAVContainer *)self isScheduleOutbox])
  {
    v5 = [(CalDAVContainer *)self supportsFreebusy];
    if (v4)
    {
      if (!v5)
      {
        v6 = [CalDAVServerVersion versionWithHTTPHeaders:v4];
        if ([v6 alwaysSupportsFreebusyOnOutbox])
        {
          [(CalDAVContainer *)self setOverrideSupportsFreebusy:1];
        }
      }
    }
  }
}

- (BOOL)_isComponentSupportedForString:(id)a3
{
  v4 = a3;
  v5 = [(CalDAVContainer *)self supportedCalendarComponentSet];

  if (v5)
  {
    v6 = [(CalDAVContainer *)self supportedCalendarComponentSet];
    v7 = [v6 containsObject:v4];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)isCalendar
{
  v3 = [(CoreDAVContainer *)self resourceType];
  if (v3)
  {
    v4 = [(CoreDAVContainer *)self resourceType];
    v5 = [v4 calendar];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isScheduleInbox
{
  v3 = [(CoreDAVContainer *)self resourceType];
  if (v3)
  {
    v4 = [(CoreDAVContainer *)self resourceType];
    v5 = [v4 scheduleInbox];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isScheduleOutbox
{
  v3 = [(CoreDAVContainer *)self resourceType];
  if (v3)
  {
    v4 = [(CoreDAVContainer *)self resourceType];
    v5 = [v4 scheduleOutbox];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isNotification
{
  v3 = [(CoreDAVContainer *)self resourceType];
  if (v3)
  {
    v4 = [(CoreDAVContainer *)self resourceType];
    v5 = [v4 notification];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isSubscribed
{
  v3 = [(CoreDAVContainer *)self resourceType];
  if (v3)
  {
    v4 = [(CoreDAVContainer *)self resourceType];
    v5 = [v4 subscribed];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isSharedOwner
{
  v3 = [(CoreDAVContainer *)self resourceType];
  if (v3)
  {
    v4 = [(CoreDAVContainer *)self resourceType];
    v5 = [v4 sharedOwner];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isShared
{
  v3 = [(CoreDAVContainer *)self resourceType];
  if (v3)
  {
    v4 = [(CoreDAVContainer *)self resourceType];
    v5 = [v4 shared];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isFamilyCalendar
{
  v3 = [(CoreDAVContainer *)self resourceType];
  if (v3)
  {
    v4 = [(CoreDAVContainer *)self resourceType];
    v5 = [v4 isFamilyCalendar];
    v6 = v5 != 0;
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