@interface ASEventException
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
+ (id)eventExceptionWithCalEvent:(void *)event originalEvent:(id)originalEvent account:(id)account;
- (ASEvent)originalEvent;
- (ASEventException)initWithCalEvent:(void *)event originalEvent:(id)originalEvent account:(id)account;
- (ASEventException)initWithCoder:(id)coder;
- (ASEventException)initWithExceptionStartTime:(id)time;
- (BOOL)deleteFromCalendar;
- (BOOL)fillOutMissingExternalIdsForAccountID:(id)d;
- (BOOL)hasOccurrenceInTheFuture;
- (BOOL)verifyExternalIdsForAccountID:(id)d;
- (id)_transformedExceptionStartDateForActiveSync:(id)sync isFloating:(BOOL)floating;
- (id)_transformedExceptionStartDateForCalFramework:(id)framework;
- (id)description;
- (id)serverIdForCalFrameworkWithParentEvent:(id)event;
- (id)serverIdForCalFrameworkWithParentServerId:(id)id;
- (id)uidGeneratedIfNecessaryWithLocalEvent:(void *)event forAccount:(id)account;
- (void)_loadAttributesFromCalEvent:(void *)event withKnownExceptionDate:(id)date forAccount:(id)account;
- (void)appendActiveSyncDataForTask:(id)task toWBXMLData:(id)data;
- (void)encodeWithCoder:(id)coder;
- (void)loadClientIDs;
- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account;
- (void)postProcessApplicationData;
- (void)saveToCalendarWithParentASEvent:(id)event existingRecord:(void *)record intoCalendar:(void *)calendar shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties account:(id)account;
- (void)takeValuesFromParentForAccount:(id)account;
@end

@implementation ASEventException

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_28 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_28;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_28 = v2;
    acceptsTopLevelLeaves___haveChecked_28 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_28 == 1)
  {
    v2 = parsingLeafNode___result_28;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_28 = v2;
    parsingLeafNode___haveChecked_28 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_28 == 1)
  {
    v2 = parsingWithSubItems___result_28;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_28 = v2;
    parsingWithSubItems___haveChecked_28 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_28 == 1)
  {
    v2 = frontingBasicTypes___result_28;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_28 = v2;
    frontingBasicTypes___haveChecked_28 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_28 == 1)
  {
    v2 = notifyOfUnknownTokens___result_28;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_28 = v2;
    notifyOfUnknownTokens___haveChecked_28 = 1;
  }

  return v2 & 1;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v46.receiver = self;
    v46.super_class = &OBJC_METACLASS___ASEventException;
    v6 = objc_msgSendSuper2(&v46, sel_asParseRules);
    v35 = [v6 mutableCopy];

    v39 = objc_alloc(MEMORY[0x277CBEAC0]);
    v45 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:29 objectClass:objc_opt_class() setterMethod:sel_setApplicationData_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v44 = [MEMORY[0x277CCABB0] numberWithInt:29];
    v7 = [ASParseRule alloc];
    v8 = objc_opt_class();
    selfCopy = self;
    v9 = MEMORY[0x277CBEAC0];
    v38 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:4 token:15 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v37 = [MEMORY[0x277CCABB0] numberWithInt:1039];
    v36 = [v9 dictionaryWithObjectsAndKeys:{v38, v37, 0}];
    v42 = [(ASParseRule *)v7 initWithMinimumNumber:0 maximumNumber:1 codePage:4 token:14 objectClass:v8 setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v36];
    v43 = [MEMORY[0x277CCABB0] numberWithInt:1038];
    v10 = [ASParseRule alloc];
    v11 = objc_opt_class();
    v12 = MEMORY[0x277CBEAC0];
    v34 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:4 token:8 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v33 = [MEMORY[0x277CCABB0] numberWithInt:1032];
    v32 = [v12 dictionaryWithObjectsAndKeys:{v34, v33, 0}];
    v31 = [(ASParseRule *)v10 initWithMinimumNumber:0 maximumNumber:1 codePage:4 token:7 objectClass:v11 setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v32];
    v29 = [MEMORY[0x277CCABB0] numberWithInt:1031];
    v28 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:10 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v27 = [MEMORY[0x277CCABB0] numberWithInt:4362];
    v26 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:32 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v13 = [MEMORY[0x277CCABB0] numberWithInt:4384];
    v24 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:4 token:5 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v14 = [MEMORY[0x277CCABB0] numberWithInt:1029];
    v15 = [ASParseRule alloc];
    v16 = objc_opt_class();
    v17 = MEMORY[0x277CBEAC0];
    v30 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:17 token:15 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v25 = [MEMORY[0x277CCABB0] numberWithInt:4367];
    v18 = [v17 dictionaryWithObjectsAndKeys:{v30, v25, 0}];
    v19 = [(ASParseRule *)v15 initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:14 objectClass:v16 setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v18];
    v20 = [MEMORY[0x277CCABB0] numberWithInt:4366];
    v40 = [v39 initWithObjectsAndKeys:{v45, v44, v42, v43, v31, v29, v28, v27, v26, v13, v24, v14, v19, v20, 0}];

    v5 = v35;
    [v35 addEntriesFromDictionary:v40];
    v21 = +[ASItem parseRuleCache];
    v22 = NSStringFromClass(selfCopy);
    [v21 setObject:v35 forKey:v22];
  }

  return v5;
}

- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account
{
  accountCopy = account;
  callbackDictCopy = callbackDict;
  dictCopy = dict;
  parentCopy = parent;
  rootCopy = root;
  contextCopy = context;
  [(ASChangedCollectionLeaf *)self setValidateOpeningTokens:0];
  v21.receiver = self;
  v21.super_class = ASEventException;
  [(ASEvent *)&v21 parseASParseContext:contextCopy root:rootCopy parent:parentCopy callbackDict:dictCopy streamCallbackDict:callbackDictCopy account:accountCopy];

  parsingState = self->super.super.super._parsingState;
  if ((parsingState - 3) <= 1)
  {
    self->super.super.super._parsingState = parsingState;
  }
}

- (id)_transformedExceptionStartDateForCalFramework:(id)framework
{
  frameworkCopy = framework;
  originalEvent = [(ASEventException *)self originalEvent];
  allDayEvent = [originalEvent allDayEvent];
  intValue = [allDayEvent intValue];

  if (intValue)
  {
    nearestMidnight = [frameworkCopy nearestMidnight];
  }

  else
  {
    nearestMidnight = frameworkCopy;
  }

  v9 = nearestMidnight;

  return v9;
}

- (id)_transformedExceptionStartDateForActiveSync:(id)sync isFloating:(BOOL)floating
{
  floatingCopy = floating;
  syncCopy = sync;
  originalEvent = [(ASEventException *)self originalEvent];
  allDayEvent = [originalEvent allDayEvent];
  intValue = [allDayEvent intValue];

  if (intValue || floatingCopy)
  {
    originalEvent2 = [(ASEventException *)self originalEvent];
    timeZone = [originalEvent2 timeZone];
    v10 = [syncCopy gmtDateToDateInTimeZone:timeZone];
  }

  else
  {
    v10 = syncCopy;
  }

  return v10;
}

- (id)serverIdForCalFrameworkWithParentEvent:(id)event
{
  serverID = [event serverID];
  v5 = [(ASEventException *)self serverIdForCalFrameworkWithParentServerId:serverID];

  return v5;
}

- (id)serverIdForCalFrameworkWithParentServerId:(id)id
{
  v4 = MEMORY[0x277CCACA8];
  idCopy = id;
  exceptionStartTime = [(ASEventException *)self exceptionStartTime];
  activeSyncStringWithoutSeparators = [exceptionStartTime activeSyncStringWithoutSeparators];
  v8 = [v4 stringWithFormat:@"%@%@%@", idCopy, @"<!ExceptionDate!>", activeSyncStringWithoutSeparators];

  return v8;
}

- (BOOL)verifyExternalIdsForAccountID:(id)d
{
  v34 = *MEMORY[0x277D85DE8];
  dCopy = d;
  clientID = [(ASChangedCollectionLeaf *)self clientID];

  if (!clientID)
  {
    goto LABEL_9;
  }

  v6 = +[ASLocalDBHelper sharedInstance];
  [v6 calDatabaseForAccountID:dCopy];
  clientID2 = [(ASChangedCollectionLeaf *)self clientID];
  [clientID2 intValue];
  v8 = CalDatabaseCopyCalendarItemWithRowID();

  if (v8)
  {
    v9 = CalCalendarItemCopyExternalID();
    v10 = CalEventCopyOriginalEvent();
    if (v10)
    {
      v11 = v10;
      v12 = CalCalendarItemCopyExternalID();
      if (v12)
      {
        v13 = [(ASEventException *)self serverIdForCalFrameworkWithParentServerId:v12];
        if (!v13 || v9 && ([v9 isEqualToString:v13] & 1) != 0)
        {
          v14 = 0;
        }

        else
        {
          v15 = DALoggingwithCategory();
          v16 = *(MEMORY[0x277D03988] + 7);
          if (os_log_type_enabled(v15, v16))
          {
            *buf = 67109378;
            ID = CalEntityGetID();
            v32 = 2112;
            v33 = v13;
            _os_log_impl(&dword_24A0AC000, v15, v16, "Calling CalCalendarItemSetExternalID to set event with RowID: %d with external ID: %@", buf, 0x12u);
          }

          CalCalendarItemSetExternalID();
          v14 = 1;
        }

        v24 = v13;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        exceptions = [(ASEvent *)self exceptions];
        v18 = [exceptions countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v26;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v26 != v20)
              {
                objc_enumerationMutation(exceptions);
              }

              v14 |= [*(*(&v25 + 1) + 8 * i) verifyExternalIdsForAccountID:dCopy];
            }

            v19 = [exceptions countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v19);
        }
      }

      else
      {
        LOBYTE(v14) = 0;
      }

      CFRelease(v11);
    }

    else
    {
      LOBYTE(v14) = 0;
    }

    CFRelease(v8);
  }

  else
  {
LABEL_9:
    LOBYTE(v14) = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

- (BOOL)fillOutMissingExternalIdsForAccountID:(id)d
{
  selfCopy = self;
  v7.receiver = self;
  v7.super_class = ASEventException;
  dCopy = d;
  v5 = [(ASEvent *)&v7 fillOutMissingExternalIdsForAccountID:dCopy];
  LOBYTE(selfCopy) = [(ASEventException *)selfCopy verifyExternalIdsForAccountID:dCopy, v7.receiver, v7.super_class];

  return (selfCopy | v5) & 1;
}

- (void)saveToCalendarWithParentASEvent:(id)event existingRecord:(void *)record intoCalendar:(void *)calendar shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties account:(id)account
{
  propertiesCopy = properties;
  eventCopy = event;
  accountCopy = account;
  [eventCopy calEvent];
  exceptionStartTime = [(ASEventException *)self exceptionStartTime];
  timeZone = [eventCopy timeZone];
  v16 = [exceptionStartTime dateWithCalendarFormat:0 timeZone:timeZone];
  v17 = [(ASEventException *)self _transformedExceptionStartDateForCalFramework:v16];

  isDeleted = [(ASEventException *)self isDeleted];
  LOBYTE(v16) = [isDeleted BOOLValue];

  if ((v16 & 1) == 0)
  {
    v22.receiver = self;
    v22.super_class = ASEventException;
    [(ASEvent *)&v22 saveToCalendarWithExistingRecord:record intoCalendar:calendar shouldMergeProperties:propertiesCopy outMergeDidChooseLocalProperties:localProperties account:accountCopy];

    [(ASEvent *)self calEvent];
    CalEventAddDetachedEvent();
    [(ASEvent *)self calEvent];
    [v17 timeIntervalSinceReferenceDate];
    CalEventSetOriginalStartDate();
    [(ASEvent *)self calEvent];
    [(ASEventException *)self serverIdForCalFrameworkWithParentEvent:eventCopy];
LABEL_7:
    CalCalendarItemSetExternalID();
    goto LABEL_8;
  }

  v19 = [eventCopy cachedOrganizerIsSelfWithAccount:accountCopy];

  if ((v19 & 1) == 0 && (CalCalendarItemGetStatus() == 3 || CalEventGetParticipationStatus() == 2))
  {
    goto LABEL_7;
  }

  [(ASEventException *)self deleteFromCalendar];
LABEL_8:
  CalCalendarItemAddExceptionDateWithCFDate();
}

- (void)postProcessApplicationData
{
  applicationData = [(ASChangedCollectionLeaf *)self applicationData];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:1045];
  v5 = [applicationData objectForKey:v4];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "intValue")}];
      [(ASEventException *)self setIsDeleted:v6];
    }
  }

  applicationData2 = [(ASChangedCollectionLeaf *)self applicationData];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:4397];
  v9 = [applicationData2 objectForKey:v8];

  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = [MEMORY[0x277CBEAA8] dateWithActiveSyncStringWithoutSeparators:v9];
      [(ASEventException *)self setExceptionStartTime:v10];
    }
  }

  exceptionStartTime = [(ASEventException *)self exceptionStartTime];

  if (!exceptionStartTime)
  {
    applicationData3 = [(ASChangedCollectionLeaf *)self applicationData];
    v13 = [MEMORY[0x277CCABB0] numberWithInt:1046];
    v14 = [applicationData3 objectForKey:v13];

    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = [MEMORY[0x277CBEAA8] dateWithActiveSyncStringWithoutSeparators:v14];
        [(ASEventException *)self setExceptionStartTime:v15];
      }
    }
  }

  v19.receiver = self;
  v19.super_class = ASEventException;
  [(ASEvent *)&v19 postProcessApplicationData];
  parent = [(ASItem *)self parent];
  v16Parent = [parent parent];
  v17Parent = [v16Parent parent];
  [(ASEventException *)self setOriginalEvent:v17Parent];
}

- (id)uidGeneratedIfNecessaryWithLocalEvent:(void *)event forAccount:(id)account
{
  accountCopy = account;
  eventUID = [(ASEvent *)self eventUID];
  uidForCalFramework = [eventUID uidForCalFramework];

  if (!uidForCalFramework)
  {
    if (event)
    {
      v9 = CalCalendarItemCopyUniqueIdentifier();
      da_new64ByteGUID = v9;
      if (!v9)
      {
        originalEvent = [(ASEventException *)self originalEvent];
        originalEvent2 = [(ASEventException *)self originalEvent];
        da_new64ByteGUID = [originalEvent uidGeneratedIfNecessaryWithLocalEvent:objc_msgSend(originalEvent2 forAccount:{"calEvent"), accountCopy}];

        if (!da_new64ByteGUID)
        {
          da_new64ByteGUID = [MEMORY[0x277CCACA8] da_new64ByteGUID];
        }
      }

      v13 = [[ASEventUID alloc] initWithCalFrameworkString:da_new64ByteGUID];
      exceptionDate = [(ASEventException *)self exceptionDate];

      if (exceptionDate)
      {
        exceptionDate2 = [(ASEventException *)self exceptionDate];
        [(ASEventUID *)v13 setExceptionDate:exceptionDate2];
      }

      [(ASEvent *)self setEventUID:v13];
      eventUID2 = [(ASEvent *)self eventUID];
      uidForCalFramework2 = [eventUID2 uidForCalFramework];

      if (!v9)
      {
        CalCalendarItemSetUniqueIdentifier();
        v18 = +[ASLocalDBHelper sharedInstance];
        accountID = [accountCopy accountID];
        [v18 calSaveDatabaseForAccountID:accountID];
      }

      uidForCalFramework = uidForCalFramework2;
    }

    else
    {
      uidForCalFramework = 0;
    }
  }

  return uidForCalFramework;
}

- (void)takeValuesFromParentForAccount:(id)account
{
  v91 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  originalEvent = [(ASEventException *)self originalEvent];
  eventUID = [originalEvent eventUID];

  v7 = [eventUID copy];
  [(ASEvent *)self setEventUID:v7];
  eventUID2 = [(ASEvent *)self eventUID];
  exceptionDate = [(ASEventException *)self exceptionDate];
  [eventUID2 setExceptionDate:exceptionDate];

  allDayEvent = [(ASEvent *)self allDayEvent];

  if (!allDayEvent)
  {
    originalEvent2 = [(ASEventException *)self originalEvent];
    allDayEvent2 = [originalEvent2 allDayEvent];
    [(ASEvent *)self setAllDayEvent:allDayEvent2];
  }

  body = [(ASEvent *)self body];

  if (!body)
  {
    originalEvent3 = [(ASEventException *)self originalEvent];
    body2 = [originalEvent3 body];
    [(ASEvent *)self setBody:body2];
  }

  if (![(ASEvent *)self bodyTruncated])
  {
    originalEvent4 = [(ASEventException *)self originalEvent];
    -[ASEvent setBodyTruncated:](self, "setBodyTruncated:", [originalEvent4 bodyTruncated]);
  }

  busyStatus = [(ASEvent *)self busyStatus];

  if (!busyStatus)
  {
    originalEvent5 = [(ASEventException *)self originalEvent];
    busyStatus2 = [originalEvent5 busyStatus];
    [(ASEvent *)self setBusyStatus:busyStatus2];
  }

  location = [(ASEvent *)self location];

  if (!location)
  {
    originalEvent6 = [(ASEventException *)self originalEvent];
    location2 = [originalEvent6 location];
    [(ASEvent *)self setLocation:location2];
  }

  reminderMinsBefore = [(ASEvent *)self reminderMinsBefore];

  if (!reminderMinsBefore)
  {
    originalEvent7 = [(ASEventException *)self originalEvent];
    reminderMinsBefore2 = [originalEvent7 reminderMinsBefore];
    [(ASEvent *)self setReminderMinsBefore:reminderMinsBefore2];
  }

  subject = [(ASEvent *)self subject];

  if (!subject)
  {
    originalEvent8 = [(ASEventException *)self originalEvent];
    subject2 = [originalEvent8 subject];
    [(ASEvent *)self setSubject:subject2];
  }

  startTime = [(ASEvent *)self startTime];

  if (!startTime)
  {
    exceptionStartTime = [(ASEventException *)self exceptionStartTime];

    if (exceptionStartTime)
    {
      exceptionStartTime2 = [(ASEventException *)self exceptionStartTime];
      [(ASEvent *)self setStartTime:exceptionStartTime2];
    }

    else
    {
      v32 = DALoggingwithCategory();
      v33 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v32, v33))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_24A0AC000, v32, v33, "Have an exception with no start date or exception start date.  Results are undefined, event is %@", buf, 0xCu);
      }

      exceptionStartTime2 = [(ASEventException *)self originalEvent];
      startTime2 = [exceptionStartTime2 startTime];
      [(ASEvent *)self setStartTime:startTime2];
    }
  }

  endTime = [(ASEvent *)self endTime];

  if (!endTime)
  {
    originalEvent9 = [(ASEventException *)self originalEvent];
    endTime2 = [originalEvent9 endTime];

    originalEvent10 = [(ASEventException *)self originalEvent];
    startTime3 = [originalEvent10 startTime];

    [endTime2 timeIntervalSinceDate:startTime3];
    v41 = v40;
    exceptionStartTime3 = [(ASEventException *)self exceptionStartTime];
    v43 = [exceptionStartTime3 dateByAddingTimeInterval:v41];

    [(ASEvent *)self setEndTime:v43];
  }

  attendees = [(ASEvent *)self attendees];

  if (!attendees)
  {
    originalEvent11 = [(ASEventException *)self originalEvent];
    attendees2 = [originalEvent11 attendees];

    v47 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(attendees2, "count")}];
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v48 = attendees2;
    v49 = [v48 countByEnumeratingWithState:&v84 objects:v88 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v85;
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v85 != v51)
          {
            objc_enumerationMutation(v48);
          }

          copyOfSelfWithoutLocalID = [*(*(&v84 + 1) + 8 * i) copyOfSelfWithoutLocalID];
          [v47 addObject:copyOfSelfWithoutLocalID];
        }

        v50 = [v48 countByEnumeratingWithState:&v84 objects:v88 count:16];
      }

      while (v50);
    }

    [(ASEvent *)self setAttendees:v47];
  }

  organizerName = [(ASEvent *)self organizerName];

  if (!organizerName)
  {
    originalEvent12 = [(ASEventException *)self originalEvent];
    organizerName2 = [originalEvent12 organizerName];
    [(ASEvent *)self setOrganizerName:organizerName2];
  }

  organizerEmail = [(ASEvent *)self organizerEmail];

  if (!organizerEmail)
  {
    originalEvent13 = [(ASEventException *)self originalEvent];
    organizerEmail2 = [originalEvent13 organizerEmail];
    [(ASEvent *)self setOrganizerEmail:organizerEmail2];
  }

  timeZone = [(ASEvent *)self timeZone];

  if (!timeZone)
  {
    originalEvent14 = [(ASEventException *)self originalEvent];
    timeZone2 = [originalEvent14 timeZone];
    [(ASEvent *)self setTimeZone:timeZone2];
  }

  dTStamp = [(ASEvent *)self dTStamp];

  if (!dTStamp)
  {
    originalEvent15 = [(ASEventException *)self originalEvent];
    dTStamp2 = [originalEvent15 dTStamp];
    [(ASEvent *)self setDTStamp:dTStamp2];
  }

  responseRequested = [(ASEvent *)self responseRequested];

  if (!responseRequested)
  {
    originalEvent16 = [(ASEventException *)self originalEvent];
    responseRequested2 = [originalEvent16 responseRequested];
    [(ASEvent *)self setResponseRequested:responseRequested2];
  }

  meetingStatus = [(ASEvent *)self meetingStatus];

  if (!meetingStatus)
  {
    originalEvent17 = [(ASEventException *)self originalEvent];
    meetingStatus2 = [originalEvent17 meetingStatus];
    [(ASEvent *)self setMeetingStatus:meetingStatus2];
  }

  responseType = [(ASEvent *)self responseType];

  if (!responseType)
  {
    originalEvent18 = [(ASEventException *)self originalEvent];
    responseType2 = [originalEvent18 responseType];
    [(ASEvent *)self setResponseType:responseType2];
  }

  [(ASEvent *)self _determineSelfnessWithLocalEvent:0 forAccount:accountCopy];
  exceptionStartTime4 = [(ASEventException *)self exceptionStartTime];

  if (exceptionStartTime4)
  {
    v76 = MEMORY[0x277CCA8F8];
    exceptionStartTime5 = [(ASEventException *)self exceptionStartTime];
    originalEvent19 = [(ASEventException *)self originalEvent];
    startTime4 = [originalEvent19 startTime];
    originalEvent20 = [(ASEventException *)self originalEvent];
    timeZone3 = [originalEvent20 timeZone];
    v82 = [v76 combinedDateWithYMDFrom:exceptionStartTime5 HMSFrom:startTime4 componentDatesTimezone:timeZone3];

    [(ASEventException *)self setExceptionStartTime:v82];
  }

  v83 = *MEMORY[0x277D85DE8];
}

- (void)_loadAttributesFromCalEvent:(void *)event withKnownExceptionDate:(id)date forAccount:(id)account
{
  v14.receiver = self;
  v14.super_class = ASEventException;
  dateCopy = date;
  [(ASEvent *)&v14 _loadAttributesFromCalEvent:event forAccount:account];
  [(ASEventException *)self setExceptionDate:dateCopy, v14.receiver, v14.super_class];

  ModifiedDate = CalCalendarItemCopyLastModifiedDate();
  if (ModifiedDate)
  {
    CFRelease(ModifiedDate);
  }

  else
  {
    originalEvent = [(ASEventException *)self originalEvent];
    dTStamp = [originalEvent dTStamp];
    [(ASEvent *)self setDTStamp:dTStamp];
  }

  originalEvent2 = [(ASEventException *)self originalEvent];
  responseRequested = [originalEvent2 responseRequested];
  [(ASEvent *)self setResponseRequested:responseRequested];
}

- (ASEventException)initWithCalEvent:(void *)event originalEvent:(id)originalEvent account:(id)account
{
  originalEventCopy = originalEvent;
  accountCopy = account;
  v22.receiver = self;
  v22.super_class = ASEventException;
  v10 = [(ASEvent *)&v22 init];
  v11 = v10;
  if (v10)
  {
    [(ASEventException *)v10 setOriginalEvent:originalEventCopy];
    if (event)
    {
      IsFloating = CalCalendarItemIsFloating();
      v13 = CalCalendarItemGetStatus() == 3 || ([originalEventCopy cachedOrganizerIsSelfWithAccount:accountCopy] & 1) == 0 && (CalEventGetParticipationStatus() == 2 || CalEventGetPendingParticipationStatus() == 2);
    }

    else
    {
      v13 = 0;
      IsFloating = 0;
    }

    v14 = [MEMORY[0x277CCABB0] numberWithBool:v13];
    [(ASEventException *)v11 setIsDeleted:v14];

    v15 = MEMORY[0x277CBEAA8];
    CalEventGetOriginalStartDate();
    v16 = [v15 dateWithTimeIntervalSinceReferenceDate:?];
    if (v16)
    {
      v17 = v16;
      timeZone = [originalEventCopy timeZone];
      v19 = [v17 dateWithCalendarFormat:0 timeZone:timeZone];
      v20 = [(ASEventException *)v11 _transformedExceptionStartDateForActiveSync:v19 isFloating:IsFloating];

      [(ASEventException *)v11 setExceptionDate:v20];
    }

    else
    {
      v20 = 0;
    }

    [(ASEventException *)v11 _loadAttributesFromCalEvent:event withKnownExceptionDate:v20 forAccount:accountCopy];
    [(ASEvent *)v11 setCalEvent:event];
  }

  return v11;
}

+ (id)eventExceptionWithCalEvent:(void *)event originalEvent:(id)originalEvent account:(id)account
{
  accountCopy = account;
  originalEventCopy = originalEvent;
  v10 = [[self alloc] initWithCalEvent:event originalEvent:originalEventCopy account:accountCopy];

  return v10;
}

- (ASEventException)initWithExceptionStartTime:(id)time
{
  timeCopy = time;
  v8.receiver = self;
  v8.super_class = ASEventException;
  v5 = [(ASEvent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ASEventException *)v5 setExceptionStartTime:timeCopy];
    [(ASEventException *)v6 setIsDeleted:&unk_285D57E28];
  }

  return v6;
}

- (BOOL)deleteFromCalendar
{
  if ([(ASEvent *)self calEvent])
  {
    [(ASEvent *)self calEvent];
    CalRemoveEventAndDetachedEvents();
  }

  return 1;
}

- (void)appendActiveSyncDataForTask:(id)task toWBXMLData:(id)data
{
  v122 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  dataCopy = data;
  isDeleted = [(ASEventException *)self isDeleted];
  bOOLValue = [isDeleted BOOLValue];

  if ([(ASEvent *)self calEvent])
  {
    [(ASEvent *)self calEvent];
    bOOLValue |= CalCalendarItemGetStatus() == 3;
  }

  v10 = bOOLValue & 1;
  taskManager = [taskCopy taskManager];
  protocol = [taskManager protocol];
  usesAirSyncBaseNamespace = [protocol usesAirSyncBaseNamespace];

  taskManager2 = [taskCopy taskManager];
  protocol2 = [taskManager2 protocol];
  useStructuredLocation = [protocol2 useStructuredLocation];

  taskManager3 = [taskCopy taskManager];
  protocol3 = [taskManager3 protocol];
  useInstanceIdForException = [protocol3 useInstanceIdForException];

  taskManager4 = [taskCopy taskManager];
  protocol4 = [taskManager4 protocol];
  useEmptyLocation = [protocol4 useEmptyLocation];

  organizerEmail = [(ASEvent *)self organizerEmail];
  if ([organizerEmail length])
  {
    taskManager5 = [taskCopy taskManager];
    account = [taskManager5 account];
    v24 = [(ASEvent *)self cachedOrganizerIsSelfWithAccount:account];

    if (!v24)
    {
      [(ASEvent *)self calEvent];
      v25 = 1;
      goto LABEL_16;
    }
  }

  else
  {
  }

  doNotSendBody = [(ASEvent *)self doNotSendBody];
  v27 = doNotSendBody;
  v28 = !doNotSendBody;
  if ([(ASEvent *)self calEvent]&& !v27)
  {
    [(ASEvent *)self calEvent];
    v28 = (CalEventGetModifiedProperties() >> 5) & 1;
  }

  v25 = v28 ^ 1;
  if ((v28 & usesAirSyncBaseNamespace) == 1 && (v10 & 1) == 0)
  {
    body = [(ASEvent *)self body];
    [dataCopy switchToCodePage:17];
    [dataCopy openTag:10];
    [dataCopy appendTag:6 withIntContent:1];
    if ([body length])
    {
      [dataCopy appendTag:11 withStringContent:body];
    }

    else
    {
      [dataCopy appendEmptyTag:11];
    }

    [dataCopy closeTag:10];
  }

LABEL_16:
  [dataCopy switchToCodePage:4];
  if ((useInstanceIdForException & 1) == 0)
  {
    [dataCopy appendTag:21 withIntContent:v10];
    exceptionStartTime = [(ASEventException *)self exceptionStartTime];
    v31 = exceptionStartTime;
    if (exceptionStartTime)
    {
      activeSyncStringWithoutSeparators = [exceptionStartTime activeSyncStringWithoutSeparators];
      [dataCopy appendTag:22 withStringContent:activeSyncStringWithoutSeparators];
    }
  }

  if (v10)
  {
    goto LABEL_85;
  }

  startTime = [(ASEvent *)self startTime];
  v34 = startTime;
  if (startTime)
  {
    activeSyncStringWithoutSeparators2 = [startTime activeSyncStringWithoutSeparators];
    [dataCopy appendTag:39 withStringContent:activeSyncStringWithoutSeparators2];
  }

  endTime = [(ASEvent *)self endTime];
  v37 = endTime;
  if (endTime)
  {
    activeSyncStringWithoutSeparators3 = [endTime activeSyncStringWithoutSeparators];
    [dataCopy appendTag:18 withStringContent:activeSyncStringWithoutSeparators3];
  }

  subject = [(ASEvent *)self subject];
  if (subject)
  {
    [dataCopy appendTag:38 withStringContent:subject];
  }

  busyStatus = [(ASEvent *)self busyStatus];

  if (busyStatus)
  {
    busyStatus2 = [(ASEvent *)self busyStatus];
    [dataCopy appendTag:13 withIntContent:{objc_msgSend(busyStatus2, "intValue")}];
  }

  else
  {
    [dataCopy appendTag:13 withIntContent:2];
  }

  allDayEvent = [(ASEvent *)self allDayEvent];
  v43 = allDayEvent;
  if (allDayEvent)
  {
    [dataCopy appendTag:6 withIntContent:{objc_msgSend(allDayEvent, "intValue")}];
  }

  if (((v25 | usesAirSyncBaseNamespace) & 1) == 0)
  {
    body2 = [(ASEvent *)self body];
    if (body2)
    {
      [dataCopy appendTag:11 withStringContent:body2];
    }
  }

  location = [(ASEvent *)self location];

  if (!location)
  {
    if (!useEmptyLocation)
    {
      goto LABEL_68;
    }

    [dataCopy switchToCodePage:17];
    [dataCopy appendEmptyTag:32];
    goto LABEL_65;
  }

  if (useStructuredLocation)
  {
    [dataCopy switchToCodePage:17];
    [dataCopy openTag:32];
    location2 = [(ASEvent *)self location];
    displayName = [location2 displayName];

    if (displayName)
    {
      location3 = [(ASEvent *)self location];
      displayName2 = [location3 displayName];
      [dataCopy appendTag:16 withStringContent:displayName2];
    }

    location4 = [(ASEvent *)self location];
    annotation = [location4 annotation];

    if (annotation)
    {
      location5 = [(ASEvent *)self location];
      annotation2 = [location5 annotation];
      [dataCopy appendTag:33 withStringContent:annotation2];
    }

    location6 = [(ASEvent *)self location];
    street = [location6 street];

    if (street)
    {
      location7 = [(ASEvent *)self location];
      street2 = [location7 street];
      [dataCopy appendTag:34 withStringContent:street2];
    }

    location8 = [(ASEvent *)self location];
    city = [location8 city];

    if (city)
    {
      location9 = [(ASEvent *)self location];
      city2 = [location9 city];
      [dataCopy appendTag:35 withStringContent:city2];
    }

    location10 = [(ASEvent *)self location];
    state = [location10 state];

    if (state)
    {
      location11 = [(ASEvent *)self location];
      state2 = [location11 state];
      [dataCopy appendTag:36 withStringContent:state2];
    }

    location12 = [(ASEvent *)self location];
    postalCode = [location12 postalCode];

    if (postalCode)
    {
      location13 = [(ASEvent *)self location];
      postalCode2 = [location13 postalCode];
      [dataCopy appendTag:38 withStringContent:postalCode2];
    }

    location14 = [(ASEvent *)self location];
    country = [location14 country];

    if (country)
    {
      location15 = [(ASEvent *)self location];
      country2 = [location15 country];
      [dataCopy appendTag:37 withStringContent:country2];
    }

    location16 = [(ASEvent *)self location];
    latitude = [location16 latitude];

    if (latitude)
    {
      location17 = [(ASEvent *)self location];
      latitude2 = [location17 latitude];
      [dataCopy appendTag:39 withStringContent:latitude2];
    }

    location18 = [(ASEvent *)self location];
    longitude = [location18 longitude];

    if (longitude)
    {
      location19 = [(ASEvent *)self location];
      longitude2 = [location19 longitude];
      [dataCopy appendTag:40 withStringContent:longitude2];
    }

    location20 = [(ASEvent *)self location];
    accuracy = [location20 accuracy];

    if (accuracy)
    {
      location21 = [(ASEvent *)self location];
      accuracy2 = [location21 accuracy];
      [dataCopy appendTag:41 withStringContent:accuracy2];
    }

    location22 = [(ASEvent *)self location];
    altitude = [location22 altitude];

    if (altitude)
    {
      location23 = [(ASEvent *)self location];
      altitude2 = [location23 altitude];
      [dataCopy appendTag:42 withStringContent:altitude2];
    }

    location24 = [(ASEvent *)self location];
    altitudeAccuracy = [location24 altitudeAccuracy];

    if (altitudeAccuracy)
    {
      location25 = [(ASEvent *)self location];
      altitudeAccuracy2 = [location25 altitudeAccuracy];
      [dataCopy appendTag:43 withStringContent:altitudeAccuracy2];
    }

    [dataCopy closeTag:32];
LABEL_65:
    [dataCopy switchToCodePage:4];
    goto LABEL_68;
  }

  location26 = [(ASEvent *)self location];
  displayName3 = [location26 displayName];

  if (displayName3)
  {
    location27 = [(ASEvent *)self location];
    displayName4 = [location27 displayName];
    [dataCopy appendTag:23 withStringContent:displayName4];
  }

LABEL_68:
  reminderMinsBefore = [(ASEvent *)self reminderMinsBefore];
  v99 = reminderMinsBefore;
  if (reminderMinsBefore)
  {
    [dataCopy appendTag:36 withIntContent:{objc_msgSend(reminderMinsBefore, "intValue")}];
  }

  taskManager6 = [taskCopy taskManager];
  protocol5 = [taskManager6 protocol];
  supportsAttendeesInExceptions = [protocol5 supportsAttendeesInExceptions];

  if (supportsAttendeesInExceptions)
  {
    originalEvent = [(ASEventException *)self originalEvent];
    attendees = [originalEvent attendees];
    attendees2 = [(ASEvent *)self attendees];
    v106 = [attendees isEqual:attendees2];

    if ((v106 & 1) == 0)
    {
      [dataCopy openProspectiveTag:7];
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      attendees3 = [(ASEvent *)self attendees];
      v108 = [attendees3 countByEnumeratingWithState:&v117 objects:v121 count:16];
      if (v108)
      {
        v109 = v108;
        v110 = 0;
        v111 = *v118;
        do
        {
          for (i = 0; i != v109; ++i)
          {
            if (*v118 != v111)
            {
              objc_enumerationMutation(attendees3);
            }

            v113 = *(*(&v117 + 1) + 8 * i);
            if ([v113 status] != 6)
            {
              [dataCopy openTag:8];
              [v113 appendActiveSyncDataForTask:taskCopy toData:dataCopy];
              [dataCopy closeTag:8];
              v110 = 1;
            }
          }

          v109 = [attendees3 countByEnumeratingWithState:&v117 objects:v121 count:16];
        }

        while (v109);

        [dataCopy closeProspectiveTag:7];
        if (v110)
        {
          goto LABEL_85;
        }
      }

      else
      {

        [dataCopy closeProspectiveTag:7];
      }

      [dataCopy appendEmptyTag:7];
    }
  }

LABEL_85:

  v114 = *MEMORY[0x277D85DE8];
}

- (void)loadClientIDs
{
  if ([(ASEvent *)self calEvent])
  {
    v3 = MEMORY[0x277CCACA8];
    [(ASEvent *)self calEvent];
    v4 = [v3 stringWithFormat:@"%d", CalCalendarItemGetRowID()];
    [(ASChangedCollectionLeaf *)self setClientID:v4];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = ASEventException;
  v4 = [(ASEvent *)&v11 description];
  exceptionStartTime = [(ASEventException *)self exceptionStartTime];
  isDeleted = [(ASEventException *)self isDeleted];
  intValue = [isDeleted intValue];
  v8 = @"YES";
  if (!intValue)
  {
    v8 = @"NO";
  }

  v9 = [v3 stringWithFormat:@"%@: exceptionStartTime %@ isDeleted %@", v4, exceptionStartTime, v8];

  return v9;
}

- (ASEventException)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = ASEventException;
  v6 = [(ASEvent *)&v14 initWithCoder:coderCopy];
  if (v6)
  {
    if (([coderCopy allowsKeyedCoding] & 1) == 0)
    {
      [(ASEventException *)a2 initWithCoder:v6];
    }

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isDeleted"];
    [(ASEventException *)v6 setIsDeleted:v7];

    v8 = MEMORY[0x277CBEB98];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"exceptionStartTime"];
    [(ASEventException *)v6 setExceptionStartTime:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = ASEventException;
  [(ASEvent *)&v8 encodeWithCoder:coderCopy];
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [(ASEventException *)a2 encodeWithCoder:?];
  }

  isDeleted = [(ASEventException *)self isDeleted];
  [coderCopy encodeObject:isDeleted forKey:@"isDeleted"];

  exceptionStartTime = [(ASEventException *)self exceptionStartTime];
  [coderCopy encodeObject:exceptionStartTime forKey:@"exceptionStartTime"];
}

- (BOOL)hasOccurrenceInTheFuture
{
  if (!-[ASEvent calEvent](self, "calEvent") && (-[ASEventException originalEvent](self, "originalEvent"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5) && (-[ASEventException originalEvent](self, "originalEvent"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 calEvent], v6, v7))
  {
    Duration = CalEventGetDuration();
    exceptionDate = [(ASEventException *)self exceptionDate];
    v10 = [exceptionDate dateByAddingTimeInterval:Duration];

    [v10 timeIntervalSinceNow];
    v3 = v11 >= 0.0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = ASEventException;
    return [(ASEvent *)&v12 hasOccurrenceInTheFuture];
  }

  return v3;
}

- (ASEvent)originalEvent
{
  WeakRetained = objc_loadWeakRetained(&self->_originalEvent);

  return WeakRetained;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASEventException.m" lineNumber:599 description:@"We can't unarchive an event exception if the coder doesn't allow keyed coding"];
}

- (void)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASEventException.m" lineNumber:613 description:@"We can't archive an event exception if the coder doesn't allow keyed coding"];
}

@end