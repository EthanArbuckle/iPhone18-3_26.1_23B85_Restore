@interface ASEvent
+ (ASEvent)eventWithCalEvent:(void *)event serverID:(id)d account:(id)account;
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
+ (id)attendeeExternalRepClasses;
+ (id)calendarItemExternalRepClasses;
+ (void)_setFakeDTStampDateForUnitTests:(id)tests;
+ (void)setSystemTimeZoneNameForUnitTests:(id)tests;
- (ASEvent)init;
- (ASEvent)initWithCalEvent:(void *)event serverID:(id)d account:(id)account;
- (ASEvent)initWithCoder:(id)coder;
- (BOOL)_selfIsMoreCorrectThanOtherEvent:(id)event account:(id)account;
- (BOOL)cachedOrganizerIsSelfWithAccount:(id)account;
- (BOOL)deleteFromCalendar;
- (BOOL)fillOutMissingExternalIdsForAccountID:(id)d;
- (BOOL)hasOccurrenceInTheFuture;
- (BOOL)isEqualToEvent:(id)event;
- (BOOL)isTombstoneEndTimeInFuture;
- (BOOL)loadCalRecordForAccount:(id)account;
- (BOOL)purgeAttendeesPendingDeletionForAccountID:(id)d;
- (BOOL)saveServerIDAndUidToCalendar;
- (BOOL)setCalEventWithExistingRecord:(void *)record intoCalendar:(void *)calendar;
- (BOOL)verifyExternalIdsForAccountID:(id)d;
- (NSCalendarDate)endDateForCalFramework;
- (NSCalendarDate)startDateForCalFramework;
- (NSString)description;
- (id)_attachmentFromAttachmentRef:(void *)ref;
- (id)_transformedEndDateForActiveSync:(id)sync isFloating:(BOOL)floating;
- (id)_transformedEndDateForCalFramework:(id)framework startDate:(id)date;
- (id)_transformedStartDateForActiveSync:(id)sync isFloating:(BOOL)floating;
- (id)_transformedStartDateForCalFramework:(id)framework;
- (id)eventByMergingInEvent:(id)event account:(id)account;
- (id)eventByMergingInLosingEvent:(id)event account:(id)account;
- (id)timeZoneForCalFramework;
- (id)timeZoneNameForCalFramework;
- (id)uidGeneratedIfNecessaryWithLocalEvent:(void *)event forAccount:(id)account;
- (int)CalCalendarItemStatus;
- (int)_meetingResponseShouldUseEmail:(BOOL)email shouldFilterForEmail:(BOOL)forEmail;
- (int)_nextAttendeeStatusWithOldStatus:(int)status meetingClassType:(int)type account:(id)account;
- (int)_nextEventStatusWithOldStatus:(int)status meetingClassType:(int)type account:(id)account;
- (int)calAttendeePendingStatus;
- (int)calAttendeeStatus;
- (int)meetingResponseForAccount:(id)account;
- (int)meetingResponseForEmail;
- (int)selfAttendeeMeetingResponse;
- (void)_determineSelfnessWithLocalEvent:(void *)event forAccount:(id)account;
- (void)_loadAttachmentsChangesForEvent:(void *)event account:(id)account;
- (void)_loadAttributesFromCalEvent:(void *)event forAccount:(id)account;
- (void)_sanitizeLocalExceptionsForAccount:(id)account;
- (void)appendActiveSyncDataForTask:(id)task toWBXMLData:(id)data;
- (void)copySelfAttendeeGeneratedIfNecessaryWithLocalEvent:(void *)event forAccount:(id)account;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)informExceptionsThatParentIsReadyForAccount:(id)account;
- (void)loadClientIDs;
- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account;
- (void)postProcessApplicationData;
- (void)setBody:(id)body;
- (void)setCalEvent:(void *)event;
- (void)setExceptions:(id)exceptions;
- (void)setRecurrence:(id)recurrence;
- (void)updateAttachmentsForAccountID:(id)d;
@end

@implementation ASEvent

+ (void)setSystemTimeZoneNameForUnitTests:(id)tests
{
  testsCopy = tests;
  if (kUnitTestTimeZoneName != testsCopy)
  {
    v5 = testsCopy;
    objc_storeStrong(&kUnitTestTimeZoneName, tests);
    testsCopy = v5;
  }
}

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_27 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_27;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_27 = v2;
    acceptsTopLevelLeaves___haveChecked_27 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_27 == 1)
  {
    v2 = parsingLeafNode___result_27;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_27 = v2;
    parsingLeafNode___haveChecked_27 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_27 == 1)
  {
    v2 = parsingWithSubItems___result_27;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_27 = v2;
    parsingWithSubItems___haveChecked_27 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_27 == 1)
  {
    v2 = frontingBasicTypes___result_27;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_27 = v2;
    frontingBasicTypes___haveChecked_27 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_27 == 1)
  {
    v2 = notifyOfUnknownTokens___result_27;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_27 = v2;
    notifyOfUnknownTokens___haveChecked_27 = 1;
  }

  return v2 & 1;
}

- (id)_transformedStartDateForCalFramework:(id)framework
{
  frameworkCopy = framework;
  allDayEvent = [(ASEvent *)self allDayEvent];
  intValue = [allDayEvent intValue];

  if (intValue)
  {
    nearestMidnight = [frameworkCopy nearestMidnight];
  }

  else
  {
    nearestMidnight = frameworkCopy;
  }

  v8 = nearestMidnight;

  return v8;
}

- (id)_transformedEndDateForCalFramework:(id)framework startDate:(id)date
{
  frameworkCopy = framework;
  dateCopy = date;
  allDayEvent = [(ASEvent *)self allDayEvent];
  intValue = [allDayEvent intValue];

  if (intValue)
  {
    timeZone = [(ASEvent *)self timeZone];
    v11 = [dateCopy tzDateToDateInGMT:timeZone];

    timeZone2 = [(ASEvent *)self timeZone];
    v13 = [frameworkCopy tzDateToDateInGMT:timeZone2];

    v14 = [(ASEvent *)self _transformedStartDateForCalFramework:dateCopy];
    [v13 timeIntervalSinceDate:v11];
    v16 = [v14 dateByAddingTimeInterval:v15 + -1.0];
  }

  else
  {
    v16 = frameworkCopy;
  }

  return v16;
}

- (id)_transformedStartDateForActiveSync:(id)sync isFloating:(BOOL)floating
{
  floatingCopy = floating;
  syncCopy = sync;
  allDayEvent = [(ASEvent *)self allDayEvent];
  intValue = [allDayEvent intValue];

  if (intValue || floatingCopy)
  {
    timeZone = [(ASEvent *)self timeZone];
    v9 = [syncCopy gmtDateToDateInTimeZone:timeZone];
  }

  else
  {
    v9 = syncCopy;
  }

  return v9;
}

- (id)_transformedEndDateForActiveSync:(id)sync isFloating:(BOOL)floating
{
  floatingCopy = floating;
  syncCopy = sync;
  allDayEvent = [(ASEvent *)self allDayEvent];
  intValue = [allDayEvent intValue];

  v9 = syncCopy;
  if (intValue)
  {
    v9 = [syncCopy dateByAddingYears:0 months:0 days:0 hours:0 minutes:0 seconds:1];
  }

  allDayEvent2 = [(ASEvent *)self allDayEvent];
  intValue2 = [allDayEvent2 intValue];

  if (intValue2 || floatingCopy)
  {
    timeZone = [(ASEvent *)self timeZone];
    v12 = [v9 gmtDateToDateInTimeZone:timeZone];
  }

  else
  {
    v12 = v9;
  }

  return v12;
}

- (id)timeZoneNameForCalFramework
{
  allDayEvent = [(ASEvent *)self allDayEvent];
  intValue = [allDayEvent intValue];

  if (intValue)
  {
    name2 = @"_float";
  }

  else
  {
    timeZone = [(ASEvent *)self timeZone];
    name = [timeZone name];

    if (name)
    {
      [(ASEvent *)self timeZone];
    }

    else
    {
      [MEMORY[0x277CBEBB0] defaultTimeZone];
    }
    v8 = ;
    name2 = [v8 name];
  }

  return name2;
}

- (id)timeZoneForCalFramework
{
  allDayEvent = [(ASEvent *)self allDayEvent];
  intValue = [allDayEvent intValue];

  if (intValue)
  {
    v5 = 0;
  }

  else
  {
    timeZone = [(ASEvent *)self timeZone];

    if (timeZone)
    {
      [(ASEvent *)self timeZone];
    }

    else
    {
      [MEMORY[0x277CBEBB0] defaultTimeZone];
    }
    v5 = ;
  }

  return v5;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v60.receiver = self;
    v60.super_class = &OBJC_METACLASS___ASEvent;
    v6 = objc_msgSendSuper2(&v60, sel_asParseRules);
    v51 = [v6 mutableCopy];

    v47 = objc_alloc(MEMORY[0x277CBEAC0]);
    v45 = [ASParseRule alloc];
    v44 = objc_opt_class();
    v43 = MEMORY[0x277CBEAC0];
    v58 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:4 token:27 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    selfCopy = self;
    v59 = [MEMORY[0x277CCABB0] numberWithInt:1051];
    v7 = [ASParseRule alloc];
    v8 = objc_opt_class();
    v9 = MEMORY[0x277CBEAC0];
    v50 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:4 token:19 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v49 = [MEMORY[0x277CCABB0] numberWithInt:1043];
    v46 = [v9 dictionaryWithObjectsAndKeys:{v50, v49, 0}];
    v57 = [(ASParseRule *)v7 initWithMinimumNumber:0 maximumNumber:1 codePage:4 token:20 objectClass:v8 setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v46];
    v56 = [MEMORY[0x277CCABB0] numberWithInt:1044];
    v10 = [ASParseRule alloc];
    v11 = objc_opt_class();
    v12 = MEMORY[0x277CBEAC0];
    v42 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:4 token:8 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v41 = [MEMORY[0x277CCABB0] numberWithInt:1032];
    v40 = [v12 dictionaryWithObjectsAndKeys:{v42, v41, 0}];
    v55 = [(ASParseRule *)v10 initWithMinimumNumber:0 maximumNumber:1 codePage:4 token:7 objectClass:v11 setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v40];
    v36 = [MEMORY[0x277CCABB0] numberWithInt:1031];
    v13 = [ASParseRule alloc];
    v14 = objc_opt_class();
    v15 = MEMORY[0x277CBEAC0];
    v39 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:4 token:15 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v38 = [MEMORY[0x277CCABB0] numberWithInt:1039];
    v37 = [v15 dictionaryWithObjectsAndKeys:{v39, v38, 0}];
    v54 = [(ASParseRule *)v13 initWithMinimumNumber:0 maximumNumber:1 codePage:4 token:14 objectClass:v14 setterMethod:sel_setCategories_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v37];
    v35 = [MEMORY[0x277CCABB0] numberWithInt:1038];
    v53 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:10 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v33 = [MEMORY[0x277CCABB0] numberWithInt:4362];
    v32 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:32 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v31 = [MEMORY[0x277CCABB0] numberWithInt:4384];
    v30 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:4 token:5 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v29 = [MEMORY[0x277CCABB0] numberWithInt:1029];
    v16 = [ASParseRule alloc];
    v17 = objc_opt_class();
    v18 = MEMORY[0x277CBEAC0];
    v34 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:17 token:15 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v19 = [MEMORY[0x277CCABB0] numberWithInt:4367];
    v20 = [v18 dictionaryWithObjectsAndKeys:{v34, v19, 0}];
    v21 = [(ASParseRule *)v16 initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:14 objectClass:v17 setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v20];
    v22 = [MEMORY[0x277CCABB0] numberWithInt:4366];
    v23 = [v43 dictionaryWithObjectsAndKeys:{v58, v59, v57, v56, v55, v36, v54, v35, v53, v33, v32, v31, v30, v29, v21, v22, 0}];
    v24 = [(ASParseRule *)v45 initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:29 objectClass:v44 setterMethod:sel_setApplicationData_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v23];
    v25 = [MEMORY[0x277CCABB0] numberWithInt:29];
    v48 = [v47 initWithObjectsAndKeys:{v24, v25, 0}];

    v5 = v51;
    [v51 addEntriesFromDictionary:v48];
    v26 = +[ASItem parseRuleCache];
    v27 = NSStringFromClass(selfCopy);
    [v26 setObject:v51 forKey:v27];
  }

  return v5;
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
        da_new64ByteGUID = [MEMORY[0x277CCACA8] da_new64ByteGUID];
      }

      v11 = [[ASEventUID alloc] initWithCalFrameworkString:da_new64ByteGUID];
      exceptionDate = [(ASEvent *)self exceptionDate];

      if (exceptionDate)
      {
        exceptionDate2 = [(ASEvent *)self exceptionDate];
        [(ASEventUID *)v11 setExceptionDate:exceptionDate2];
      }

      [(ASEvent *)self setEventUID:v11];
      eventUID2 = [(ASEvent *)self eventUID];
      uidForCalFramework2 = [eventUID2 uidForCalFramework];

      if (!v9)
      {
        CalCalendarItemSetUniqueIdentifier();
        v16 = +[ASLocalDBHelper sharedInstance];
        accountID = [accountCopy accountID];
        [v16 calSaveDatabaseForAccountID:accountID];
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

- (void)copySelfAttendeeGeneratedIfNecessaryWithLocalEvent:(void *)event forAccount:(id)account
{
  v33 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    subject = self->_subject;
    serverID = [(ASChangedCollectionLeaf *)self serverID];
    v27 = 138412546;
    v28 = subject;
    v29 = 2112;
    v30 = serverID;
    _os_log_impl(&dword_24A0AC000, v6, v7, "Event %@ %@ is looking for a self attendee", &v27, 0x16u);
  }

  Attendee = CalCalendarItemCopySelfAttendee();
  if (!Attendee)
  {
    v11 = CalCalendarItemCopyAttendees();
    if (-[ASEvent cachedOrganizerIsSelfWithAccount:](self, "cachedOrganizerIsSelfWithAccount:", accountCopy) && ![v11 count])
    {
      Attendee = 0;
    }

    else
    {
      if (![v11 count])
      {
        goto LABEL_15;
      }

      v12 = 1;
      do
      {
        Attendee = [v11 objectAtIndexedSubscript:v12 - 1];

        v13 = MEMORY[0x24C210570](Attendee);
        if (v13 && [accountCopy accountContainsEmailAddress:v13])
        {
          CFRetain(Attendee);
          CalCalendarItemSetSelfAttendee();
        }

        else
        {
          Attendee = 0;
        }

        if (v12 >= [v11 count])
        {
          break;
        }

        ++v12;
      }

      while (!Attendee);
      if (!Attendee)
      {
LABEL_15:
        v14 = DALoggingwithCategory();
        if (os_log_type_enabled(v14, v7))
        {
          v15 = self->_subject;
          serverID2 = [(ASChangedCollectionLeaf *)self serverID];
          v27 = 138412546;
          v28 = v15;
          v29 = 2112;
          v30 = serverID2;
          _os_log_impl(&dword_24A0AC000, v14, v7, "Adding self attendee to event %@ %@", &v27, 0x16u);
        }

        v17 = +[ASLocalDBHelper sharedInstance];
        accountID = [accountCopy accountID];
        [v17 calDatabaseForAccountID:accountID];
        Attendee = CalDatabaseCreateAttendee();

        MEMORY[0x24C210620](Attendee, [accountCopy emailAddress]);
        CalAttendeeSetType();
        CalAttendeeSetStatus();
        v19 = DALoggingwithCategory();
        if (os_log_type_enabled(v19, v7))
        {
          emailAddress = [accountCopy emailAddress];
          v21 = self->_subject;
          serverID3 = [(ASChangedCollectionLeaf *)self serverID];
          v27 = 138412802;
          v28 = emailAddress;
          v29 = 2112;
          v30 = v21;
          v31 = 2112;
          v32 = serverID3;
          _os_log_impl(&dword_24A0AC000, v19, v7, "Marking attendee %@ as DA-added self attendee for event %@ %@ ", &v27, 0x20u);
        }

        v23 = objc_opt_new();
        [v23 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"addedSelfAttendee"];
        v24 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v23];
        MEMORY[0x24C210630](Attendee, v24);
        CalCalendarItemAddAttendee();
        CalCalendarItemSetSelfAttendee();
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return Attendee;
}

+ (id)attendeeExternalRepClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
}

+ (id)calendarItemExternalRepClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
}

- (id)_attachmentFromAttachmentRef:(void *)ref
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v6 = CalAttachmentCopyExternalID();
  [v5 setName:v6];

  v7 = CalAttachmentCopyFilename();
  [v5 setDisplayName:v7];

  v8 = MEMORY[0x24C210510](ref);
  [v5 setSize:v8];

  v9 = CalAttachmentCopyUUID();
  [v5 setClientId:v9];

  v10 = CalAttachmentCopyLocalURL();
  [v5 setLocalPath:v10];

  localPath = [v5 localPath];

  if (!localPath)
  {
    v12 = DALoggingwithCategory();
    v13 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v12, v13))
    {
      subject = self->_subject;
      clientId = [v5 clientId];
      v18 = 138412546;
      v19 = subject;
      v20 = 2112;
      v21 = clientId;
      _os_log_impl(&dword_24A0AC000, v12, v13, "Local URL not found for event %@, attachment client Id %@", &v18, 0x16u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_loadAttachmentsChangesForEvent:(void *)event account:(id)account
{
  accountCopy = account;
  v5 = +[ASLocalDBHelper sharedInstance];
  accountID = [accountCopy accountID];
  v7 = [v5 calDatabaseForAccountID:accountID];

  if (v7)
  {
    theDict = 0;
    v8 = CalCalendarItemCopyCalendar();
    if (CalDatabaseCopyAttachmentChangesInCalendar() != -1 && theDict != 0)
    {
      v32 = v8;
      v33 = accountCopy;
      array = [MEMORY[0x277CBEB18] array];
      array2 = [MEMORY[0x277CBEB18] array];
      Value = CFDictionaryGetValue(theDict, *MEMORY[0x277CF7608]);
      v11 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF7620]);
      v12 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF7618]);
      v13 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF75E8]);
      theArray = v11;
      Count = CFArrayGetCount(v11);
      v15 = CFArrayGetCount(v12);
      v16 = CFArrayGetCount(Value);
      v36 = v13;
      v17 = v13;
      v18 = Value;
      v19 = CFArrayGetCount(v17);
      if (Count == v15 && Count == v16 && Count == v19 && v16 >= 1)
      {
        v20 = 0;
        v21 = *MEMORY[0x277CF7640];
        type = *(MEMORY[0x277D03988] + 6);
        v22 = *MEMORY[0x277CF7648];
        v34 = v18;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v18, v20);
          if (CalCalendarItemGetRowID() == ValueAtIndex)
          {
            v24 = CFArrayGetValueAtIndex(v12, v20);
            if (v21 == v24)
            {
              v25 = v12;
              CFArrayGetValueAtIndex(theArray, v20);
              v26 = v7;
              v27 = CalDatabaseCopyAttachmentWithUUID();
              if (v27)
              {
                v28 = v27;
                v29 = [(ASEvent *)self _attachmentFromAttachmentRef:v27];
                [array addObject:v29];
                CFRelease(v28);
              }

              else
              {
                v29 = DALoggingwithCategory();
                if (os_log_type_enabled(v29, type))
                {
                  *buf = 0;
                  _os_log_impl(&dword_24A0AC000, v29, type, "CalDatabaseCopyAttachmentWithUUID returned NULL", buf, 2u);
                }
              }

              v7 = v26;
              v12 = v25;
              v18 = v34;
            }

            if (v22 == v24)
            {
              v30 = [CFArrayGetValueAtIndex(v36 v20)];
              [array2 addObject:v30];
            }
          }

          ++v20;
        }

        while (Count != v20);
      }

      [(ASEvent *)self setAttachments:array];
      [(ASEvent *)self setDeletedAttachmentsIDs:array2];
      CFRelease(theDict);

      v8 = v32;
      accountCopy = v33;
    }

    CFRelease(v8);
  }
}

- (void)_loadAttributesFromCalEvent:(void *)event forAccount:(id)account
{
  v132 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  protocol = [accountCopy protocol];
  useFloatingTimeForAllDayEvents = [protocol useFloatingTimeForAllDayEvents];

  if (!event)
  {
    goto LABEL_97;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", CalCalendarItemGetRowID()];
  [(ASChangedCollectionLeaf *)self setClientID:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:CalEventIsAllDay()];
  [(ASEvent *)self setAllDayEvent:v8];

  v9 = [(ASEvent *)self uidGeneratedIfNecessaryWithLocalEvent:event forAccount:accountCopy];
  [(ASEvent *)self setLocalMask:CalEventGetModifiedProperties()];
  [(ASEvent *)self setItemStatus:CalCalendarItemGetStatus()];
  v113 = CalCalendarItemCopyDescription();
  if (v113)
  {
    v10 = [v113 stringByConvertingLineEndingsTo:@"\r\n"];
    [(ASEvent *)self setBody:v10];
  }

  v11 = CalCalendarItemCopyLocation();
  if (v11)
  {
    v12 = v11;
    v13 = [ASLocation locationWithCalLocation:v11];
    [(ASEvent *)self setLocation:v13];

    CFRelease(v12);
  }

  v14 = CalCalendarItemCopyAlarms();
  v118 = v14;
  if ([v14 count] && objc_msgSend(v14, "count"))
  {
    v15 = 0;
    while (1)
    {
      [v14 objectAtIndexedSubscript:v15];

      if ((CalAlarmIsDefaultAlarm() & 1) == 0)
      {
        break;
      }

      ++v15;
      v14 = v118;
      if (v15 >= [v118 count])
      {
        goto LABEL_13;
      }
    }

    TriggerInterval = CalAlarmGetTriggerInterval();
    v17 = [MEMORY[0x277CCABB0] numberWithInt:((((2004318071 * TriggerInterval) >> 32) - TriggerInterval) >> 5) + ((((2004318071 * TriggerInterval) >> 32) - TriggerInterval) >> 31)];
    [(ASEvent *)self setReminderMinsBefore:v17];
  }

LABEL_13:
  v18 = CalCalendarItemCopySummary();
  if (v18)
  {
    [(ASEvent *)self setSubject:v18];
  }

  v110 = v18;
  v19 = CalCalendarItemCopyOrganizer();
  if (v19)
  {
    v20 = v19;
    v21 = MEMORY[0x24C210E50]();
    if (v21)
    {
      [(ASEvent *)self setOrganizerName:v21];
    }

    v22 = MEMORY[0x24C210E60](v20);
    if (v22)
    {
      [(ASEvent *)self setOrganizerEmail:v22];
    }

    CFRelease(v20);
  }

  IsFloating = CalCalendarItemIsFloating();
  if (!IsFloating)
  {
    started = CalCalendarItemCopyStartTimeZone();
    name = [started name];

    if (name)
    {
      v27 = [ASTimeZone alloc];
      name2 = [started name];
      v24 = [(ASTimeZone *)v27 initWithTZNameFromCalDB:name2];
    }

    else
    {
      v24 = 0;
    }

    if (v24)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v23 = [ASTimeZone alloc];
  v24 = [(ASTimeZone *)v23 initWithTZNameFromCalDB:kUnitTestTimeZoneName];
  if (!v24)
  {
LABEL_28:
    defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
    v30 = [ASTimeZone alloc];
    name3 = [defaultTimeZone name];
    v24 = [(ASTimeZone *)v30 initWithTZNameFromCalDB:name3];
  }

LABEL_29:
  v108 = v24;
  [(ASEvent *)self setTimeZone:v24];
  v32 = CalCalendarItemCopyStartDate();
  v111 = v32;
  if (useFloatingTimeForAllDayEvents)
  {
    v33 = v32;
  }

  else
  {
    timeZone = [(ASEvent *)self timeZone];
    v35 = [v111 dateWithCalendarFormat:0 timeZone:timeZone];
    v36 = [(ASEvent *)self _transformedStartDateForActiveSync:v35 isFloating:IsFloating];

    v33 = v36;
  }

  v109 = v33;
  [(ASEvent *)self setStartTime:?];
  v37 = MEMORY[0x277CBEAA8];
  CalEventGetEndDate();
  v115 = [v37 dateWithTimeIntervalSinceReferenceDate:?];
  if (useFloatingTimeForAllDayEvents)
  {
    allDayEvent = [(ASEvent *)self allDayEvent];
    intValue = [allDayEvent intValue];

    if (intValue)
    {
      v114 = [v115 dateByAddingTimeInterval:1.0];
    }

    else
    {
      v114 = v115;
    }

    [(ASEvent *)self setEndTime:v114];
  }

  else
  {
    timeZone2 = [(ASEvent *)self timeZone];
    v41 = [v115 dateWithCalendarFormat:0 timeZone:timeZone2];
    v114 = [(ASEvent *)self _transformedEndDateForActiveSync:v41 isFloating:IsFloating];

    [(ASEvent *)self setEndTime:v114];
  }

  v112 = CalCalendarItemCopyRecurrences();
  if ([v112 count])
  {
    v42 = [v112 objectAtIndexedSubscript:0];

    v43 = [[ASRecurrence alloc] initWithCalRecurrence:v42 parentEvent:self useFloatingTimeForAllDayEvents:useFloatingTimeForAllDayEvents];
    [(ASEvent *)self setRecurrence:v43];
  }

  v123 = objc_opt_new();
  v125 = CalCalendarItemCopyAttendees();
  if ([v125 count])
  {
    v44 = 0;
    type = *(MEMORY[0x277D03988] + 6);
    v116 = *(MEMORY[0x277D03988] + 4);
    do
    {
      v45 = [v125 objectAtIndexedSubscript:v44];

      v46 = MEMORY[0x24C210580](v45);
      if (v46)
      {
        v47 = MEMORY[0x277CCAAC8];
        v48 = +[ASEvent attendeeExternalRepClasses];
        v127 = 0;
        v49 = [v47 unarchivedObjectOfClasses:v48 fromData:v46 error:&v127];
        v50 = v127;

        if (v49)
        {
          v51 = [v49 objectForKeyedSubscript:@"addedSelfAttendee"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v52 = v51;
            if ([v52 BOOLValue])
            {
              v53 = DALoggingwithCategory();
              if (os_log_type_enabled(v53, type))
              {
                subject = self->_subject;
                serverID = [(ASChangedCollectionLeaf *)self serverID];
                *buf = 138412546;
                v129 = subject;
                v130 = 2112;
                v131 = serverID;
                _os_log_impl(&dword_24A0AC000, v53, type, "Event %@ %@ contains DA added self attendee", buf, 0x16u);
              }

              v56 = DALoggingwithCategory();
              if (os_log_type_enabled(&v56->super.super, type))
              {
                *buf = 0;
                _os_log_impl(&dword_24A0AC000, &v56->super.super, type, "Not adding DA added self attendee to the attendee list", buf, 2u);
              }

              goto LABEL_56;
            }
          }

          else
          {
          }
        }

        else
        {
          v49 = v50;
          v50 = DALoggingwithCategory();
          if (os_log_type_enabled(v50, v116))
          {
            *buf = 138412290;
            v129 = v49;
            _os_log_impl(&dword_24A0AC000, v50, v116, "Unable to decode attendee properties: %@", buf, 0xCu);
          }
        }
      }

      v56 = [[ASAttendee alloc] initWithCalAttendee:v45 parentEvent:self];
      [v123 addObject:v56];
LABEL_56:

      ++v44;
    }

    while (v44 < [v125 count]);
  }

  typea = CalCalendarItemCopyAttendeesPendingDeletion();
  if ([typea count])
  {
    v57 = objc_opt_new();
    if ([typea count])
    {
      v58 = 0;
      do
      {
        v59 = [typea objectAtIndexedSubscript:v58];

        v60 = [[ASAttendee alloc] initWithCalAttendee:v59 parentEvent:self];
        [v123 addObject:v60];
        [v57 addObject:v60];

        ++v58;
      }

      while (v58 < [typea count]);
    }

    [(ASEvent *)self setAttendeesPendingDeletion:v57];
  }

  [(ASEvent *)self setAttendees:v123];
  v61 = CalCalendarItemCopyExceptionDatesAsCFDates();
  v62 = CalEventCopyDetachedEvents();
  if ([v61 count] || objc_msgSend(v62, "count"))
  {
    v63 = objc_opt_new();
    v64 = objc_opt_new();
    if ([v62 count])
    {
      v65 = 0;
      do
      {
        v66 = [v62 objectAtIndexedSubscript:v65];

        if (v66 != event)
        {
          v67 = [[ASEventException alloc] initWithCalEvent:v66 originalEvent:self account:accountCopy];
          v68 = v67;
          if (v67)
          {
            exceptionStartTime = [(ASEventException *)v67 exceptionStartTime];
            [v64 addObject:exceptionStartTime];

            [v63 addObject:v68];
          }
        }

        ++v65;
      }

      while (v65 < [v62 count]);
    }

    if ([v61 count])
    {
      v70 = 0;
      do
      {
        v71 = [v61 objectAtIndexedSubscript:v70];
        timeZone3 = [(ASEvent *)self timeZone];
        v73 = [v71 dateWithCalendarFormat:0 timeZone:timeZone3];
        v74 = [(ASEvent *)self _transformedStartDateForActiveSync:v73 isFloating:IsFloating];

        if (([v64 containsObject:v74] & 1) == 0)
        {
          v75 = [[ASEventException alloc] initWithExceptionStartTime:v74];
          v76 = v75;
          if (v75)
          {
            exceptionStartTime2 = [(ASEventException *)v75 exceptionStartTime];
            [v64 addObject:exceptionStartTime2];

            [v63 addObject:v76];
          }
        }

        ++v70;
      }

      while (v70 < [v61 count]);
    }

    [(ASEvent *)self setExceptions:v63];
  }

  Availability = CalCalendarItemGetAvailability();
  if (Availability <= 3)
  {
    [(ASEvent *)self setBusyStatus:qword_278FC7F20[Availability]];
  }

  PrivacyLevel = CalCalendarItemGetPrivacyLevel();
  if (PrivacyLevel <= 3)
  {
    [(ASEvent *)self setSensitivity:qword_278FC7F40[PrivacyLevel]];
  }

  ModifiedDate = CalCalendarItemCopyLastModifiedDate();
  if (ModifiedDate)
  {
    [(ASEvent *)self setDTStamp:?];
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(ASEvent *)self setDTStamp:date];
  }

  v81 = CalEventCopyResponseComment();
  [(ASEvent *)self setResponseComment:v81];

  CalEventGetProposedStartDate();
  if (v82 != *MEMORY[0x277CF78F0])
  {
    v83 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
    [(ASEvent *)self setProposedStartTime:v83];
    endTime = [(ASEvent *)self endTime];
    startTime = [(ASEvent *)self startTime];
    [endTime timeIntervalSinceDate:startTime];
    v87 = v86;

    v88 = MEMORY[0x277CBEAA8];
    proposedStartTime = [(ASEvent *)self proposedStartTime];
    v90 = [v88 dateWithTimeInterval:proposedStartTime sinceDate:v87];
    [(ASEvent *)self setProposedEndTime:v90];
  }

  v91 = CalCalendarItemCopyExternalRepresentation();
  if (v91)
  {
    v92 = MEMORY[0x277CCAAC8];
    v93 = +[ASEvent calendarItemExternalRepClasses];
    v126 = 0;
    v94 = [v92 unarchivedObjectOfClasses:v93 fromData:v91 error:&v126];
    v95 = v126;

    if (!v94)
    {
      v96 = DALoggingwithCategory();
      v97 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v96, v97))
      {
        *buf = 138412290;
        v129 = v95;
        _os_log_impl(&dword_24A0AC000, v96, v97, "Unable to decode calendar item properties: %@", buf, 0xCu);
      }
    }

    v98 = [v94 objectForKeyedSubscript:@"easExtraProperties"];
    v99 = [v98 objectForKeyedSubscript:&unk_285D57D38];
    [(ASEvent *)self setMeetingStatus:v99];

    v100 = [v98 objectForKeyedSubscript:&unk_285D57D50];
    [(ASEvent *)self setResponseRequested:v100];

    v101 = [v98 objectForKeyedSubscript:&unk_285D57D68];
    [(ASEvent *)self setCategories:v101];
  }

  [(ASEvent *)self _loadAttachmentsChangesForEvent:event account:accountCopy];
  v102 = MEMORY[0x277CBEAA8];
  CalEventGetOriginalStartDate();
  v103 = [v102 dateWithTimeIntervalSinceReferenceDate:?];
  if (v103)
  {
    timeZone4 = [(ASEvent *)self timeZone];
    v105 = [v103 dateWithCalendarFormat:0 timeZone:timeZone4];
    v106 = [(ASEvent *)self _transformedStartDateForActiveSync:v105 isFloating:IsFloating];

    [(ASEvent *)self setExceptionDate:v106];
  }

  [(ASEvent *)self _determineSelfnessWithLocalEvent:event forAccount:accountCopy];

LABEL_97:
  v107 = *MEMORY[0x277D85DE8];
}

- (ASEvent)init
{
  v3.receiver = self;
  v3.super_class = ASEvent;
  result = [(ASChangedCollectionLeaf *)&v3 init];
  if (result)
  {
    result->_calculateNextStatusAsIfMeetingRequest = 0;
    result->_shouldUpdateStatus = 1;
    result->_meetingResponseToEmailAbout = -1;
    result->_haveCheckedOrganizerEmail = 0;
  }

  return result;
}

- (ASEvent)initWithCalEvent:(void *)event serverID:(id)d account:(id)account
{
  dCopy = d;
  accountCopy = account;
  v13.receiver = self;
  v13.super_class = ASEvent;
  v10 = [(ASChangedCollectionLeaf *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_calculateNextStatusAsIfMeetingRequest = 0;
    v10->_shouldUpdateStatus = 1;
    v10->_haveCheckedOrganizerEmail = 0;
    [(ASChangedCollectionLeaf *)v10 setServerID:dCopy];
    [(ASEvent *)v11 _loadAttributesFromCalEvent:event forAccount:accountCopy];
    [(ASEvent *)v11 setCalEvent:event];
    v11->_meetingResponseToEmailAbout = -1;
  }

  return v11;
}

+ (ASEvent)eventWithCalEvent:(void *)event serverID:(id)d account:(id)account
{
  accountCopy = account;
  dCopy = d;
  v10 = [[self alloc] initWithCalEvent:event serverID:dCopy account:accountCopy];

  return v10;
}

- (void)dealloc
{
  calEvent = self->_calEvent;
  if (calEvent)
  {
    CFRelease(calEvent);
    self->_calEvent = 0;
  }

  v4.receiver = self;
  v4.super_class = ASEvent;
  [(ASEvent *)&v4 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  serverID = [(ASChangedCollectionLeaf *)self serverID];
  clientID = [(ASChangedCollectionLeaf *)self clientID];
  subject = self->_subject;
  v8 = [v3 stringWithFormat:@"<%@: [%@] [%@] [%@] [%@]>", v4, serverID, clientID, subject, self->_startTime];

  return v8;
}

- (int)calAttendeeStatus
{
  if (![(ASEvent *)self calEvent])
  {
    return 7;
  }

  [(ASEvent *)self calEvent];
  v3 = CalCalendarItemCopySelfAttendee();
  if (!v3)
  {
    return 7;
  }

  v4 = v3;
  Status = CalAttendeeGetStatus();
  CFRelease(v4);
  return Status;
}

- (int)calAttendeePendingStatus
{
  if (![(ASEvent *)self calEvent])
  {
    return 7;
  }

  [(ASEvent *)self calEvent];
  v3 = CalCalendarItemCopySelfAttendee();
  if (!v3)
  {
    return 7;
  }

  v4 = v3;
  PendingStatus = CalAttendeeGetPendingStatus();
  CFRelease(v4);
  return PendingStatus;
}

- (int)CalCalendarItemStatus
{
  calEvent = [(ASEvent *)self calEvent];
  if (calEvent)
  {
    [(ASEvent *)self calEvent];

    LODWORD(calEvent) = CalCalendarItemGetStatus();
  }

  return calEvent;
}

- (int)_nextEventStatusWithOldStatus:(int)status meetingClassType:(int)type account:(id)account
{
  accountCopy = account;
  if (self->_calculateNextStatusAsIfMeetingRequest)
  {
    if (type == 2)
    {
      status = 3;
    }

    else
    {
      status = 1;
    }
  }

  else
  {
    meetingStatus = self->_meetingStatus;
    if (meetingStatus && ([(NSNumber *)meetingStatus intValue]& 4) != 0)
    {
      status = 3;
    }
  }

  return status;
}

- (int)_nextAttendeeStatusWithOldStatus:(int)status meetingClassType:(int)type account:(id)account
{
  accountCopy = account;
  v8 = accountCopy;
  if (self->_calculateNextStatusAsIfMeetingRequest)
  {
    protocol = [accountCopy protocol];
    serverUpdatesAttendeeStatusOnEvents = [protocol serverUpdatesAttendeeStatusOnEvents];

    if (status == 7)
    {
      statusCopy = 0;
    }

    else
    {
      statusCopy = status;
    }

    if (serverUpdatesAttendeeStatusOnEvents)
    {
      status = statusCopy;
    }

    else
    {
      status = 0;
    }
  }

  else
  {
    responseType = self->_responseType;
    if (responseType)
    {
      v13 = [(NSNumber *)responseType intValue]- 2;
      if (v13 <= 3)
      {
        status = dword_24A14DDC0[v13];
      }
    }
  }

  return status;
}

- (int)_meetingResponseShouldUseEmail:(BOOL)email shouldFilterForEmail:(BOOL)forEmail
{
  forEmailCopy = forEmail;
  emailCopy = email;
  if (![(ASEvent *)self calEvent])
  {
    return 0;
  }

  [(ASEvent *)self calEvent];
  v7 = CalEventGetPendingParticipationStatus() - 1;
  if (v7 >= 3)
  {
    [(ASEvent *)self calEvent];
    v9 = CalEventCopyResponseComment();
    [(ASEvent *)self calEvent];
    v8 = 0;
    if (CalEventCommentHasChanged() && v9)
    {
      v10 = DALoggingwithCategory();
      v11 = *(MEMORY[0x277D03988] + 7);
      v12 = os_log_type_enabled(v10, v11);
      if (emailCopy)
      {
        if (v12)
        {
          *buf = 0;
          _os_log_impl(&dword_24A0AC000, v10, v11, "Use email to send user comments", buf, 2u);
        }

        v8 = 4;
      }

      else
      {
        if (v12)
        {
          *v17 = 0;
          _os_log_impl(&dword_24A0AC000, v10, v11, "Use MeetingResponse to send user comments", v17, 2u);
        }

        v13 = [(ASEvent *)self calAttendeeStatus]- 1;
        if (v13 > 2)
        {
          v8 = 0;
        }

        else
        {
          v8 = dword_24A14DDD0[v13];
        }
      }
    }
  }

  else
  {
    v8 = dword_24A14DDD0[v7];
  }

  if (v8)
  {
    v14 = !forEmailCopy;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    [(ASEvent *)self calEvent];
    v15 = CalEventCopyEventActions();
    if (![v15 count])
    {
      v8 = 4;
    }
  }

  return v8;
}

- (int)meetingResponseForAccount:(id)account
{
  accountCopy = account;
  protocol = [accountCopy protocol];
  sendEmailForMeetingInvitationAndResponse = [protocol sendEmailForMeetingInvitationAndResponse];
  protocol2 = [accountCopy protocol];

  LODWORD(self) = -[ASEvent _meetingResponseShouldUseEmail:shouldFilterForEmail:](self, "_meetingResponseShouldUseEmail:shouldFilterForEmail:", sendEmailForMeetingInvitationAndResponse, [protocol2 useEventIdsInMeetingResponse] ^ 1);
  return self;
}

- (int)selfAttendeeMeetingResponse
{
  v2 = [(ASEvent *)self calAttendeeStatus]- 1;
  if (v2 > 2)
  {
    return 0;
  }

  else
  {
    return dword_24A14DDD0[v2];
  }
}

- (int)meetingResponseForEmail
{
  if (self->_meetingResponseToEmailAbout == -1)
  {
    return [(ASEvent *)self _meetingResponseShouldUseEmail:1 shouldFilterForEmail:0];
  }

  else
  {
    return self->_meetingResponseToEmailAbout;
  }
}

- (BOOL)setCalEventWithExistingRecord:(void *)record intoCalendar:(void *)calendar
{
  if (record)
  {
    [(ASEvent *)self setCalEvent:record, calendar];
  }

  return record != 0;
}

- (void)updateAttachmentsForAccountID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  attachments = [(ASEvent *)self attachments];
  v6 = [attachments countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(attachments);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = +[ASLocalDBHelper sharedInstance];
        [v11 calDatabaseForAccountID:dCopy];

        clientId = [v10 clientId];
        v13 = CalDatabaseCopyAttachmentWithUUID();

        if (v13)
        {
          name = [v10 name];
          CalAttachmentSetExternalID();
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [attachments countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_sanitizeLocalExceptionsForAccount:(id)account
{
  v38 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSArray count](self->_exceptions, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  selfCopy = self;
  v5 = self->_exceptions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    v9 = *(MEMORY[0x277D03988] + 3);
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        exceptionStartTime = [(ASEventException *)v11 exceptionStartTime];
        if (exceptionStartTime)
        {
          exceptionStartTime2 = [(ASEventException *)v11 exceptionStartTime];
          [v4 setObject:v11 forKeyedSubscript:exceptionStartTime2];
        }

        else
        {
          exceptionStartTime2 = DALoggingwithCategory();
          if (os_log_type_enabled(exceptionStartTime2, v9))
          {
            *buf = 138412546;
            v34 = v11;
            v35 = 2112;
            v36 = selfCopy;
            _os_log_impl(&dword_24A0AC000, exceptionStartTime2, v9, "Exception %@ with parent %@ has no start time.  Ignoring it", buf, 0x16u);
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v7);
  }

  v14 = selfCopy;
  [(ASEvent *)selfCopy calEvent];
  v15 = CalEventCopyDetachedEvents();
  if ([v15 count])
  {
    v16 = 0;
    v17 = *(MEMORY[0x277D03988] + 6);
    do
    {
      v18 = [v15 objectAtIndexedSubscript:v16];

      if (v18 != [(ASEvent *)v14 calEvent])
      {
        v19 = [[ASEventException alloc] initWithCalEvent:v18 originalEvent:v14 account:accountCopy];
        exceptionStartTime3 = [(ASEventException *)v19 exceptionStartTime];
        v21 = [v4 objectForKeyedSubscript:exceptionStartTime3];

        if (v21)
        {
          [v21 setCalEvent:v18];
        }

        else
        {
          v22 = DALoggingwithCategory();
          if (os_log_type_enabled(v22, v17))
          {
            *buf = 138412290;
            v34 = v19;
            _os_log_impl(&dword_24A0AC000, v22, v17, "Removing a local exception %@", buf, 0xCu);
          }

          CalRemoveEvent();
        }

        v14 = selfCopy;
      }

      ++v16;
    }

    while (v16 < [v15 count]);
  }

  [(ASEvent *)v14 calEvent];
  v23 = CalCalendarItemCopyExceptionDatesAsCFDates();
  if ([v23 count])
  {
    v24 = 0;
    do
    {
      [v23 objectAtIndexedSubscript:v24];

      [(ASEvent *)v14 calEvent];
      CalCalendarItemRemoveExceptionDateWithCFDate();
      ++v24;
    }

    while (v24 < [v23 count]);
  }

  allValues = [v4 allValues];
  [(ASEvent *)v14 setExceptions:allValues];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)informExceptionsThatParentIsReadyForAccount:(id)account
{
  v16 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_exceptions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) takeValuesFromParentForAccount:{accountCopy, v11}];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_determineSelfnessWithLocalEvent:(void *)event forAccount:(id)account
{
  accountCopy = account;
  self->_haveCheckedOrganizerEmail = 1;
  self->_cachedOrganizerIsSelf = 0;
  meetingStatus = self->_meetingStatus;
  if (meetingStatus)
  {
    v8 = ([(NSNumber *)meetingStatus intValue]& 2) == 0;
LABEL_3:
    self->_cachedOrganizerIsSelf = v8;
    goto LABEL_4;
  }

  responseType = self->_responseType;
  if (responseType)
  {
    if ([(NSNumber *)responseType intValue]== 1)
    {
      v8 = 1;
      goto LABEL_3;
    }
  }

  else
  {
    organizerEmail = [(ASEvent *)self organizerEmail];
    v21 = [organizerEmail length];

    if (v21)
    {
      organizerEmail2 = [(ASEvent *)self organizerEmail];
      self->_cachedOrganizerIsSelf = [accountCopy accountContainsEmailAddress:organizerEmail2];
    }
  }

LABEL_4:
  organizerEmail3 = [(ASEvent *)self organizerEmail];
  if ([organizerEmail3 length])
  {
LABEL_5:

    goto LABEL_6;
  }

  attendees = [(ASEvent *)self attendees];
  if (![attendees count])
  {

    goto LABEL_5;
  }

  cachedOrganizerIsSelf = self->_cachedOrganizerIsSelf;

  if (event && cachedOrganizerIsSelf)
  {
    Organizer = CalCalendarItemCopyOrganizer();
    if (Organizer)
    {
      goto LABEL_17;
    }

    v14 = +[ASLocalDBHelper sharedInstance];
    accountID = [accountCopy accountID];
    [v14 calDatabaseForAccountID:accountID];
    Organizer = CalDatabaseCreateOrganizer();

    CalOrganizerSetIsSelf();
    MEMORY[0x24C210E70](Organizer, [accountCopy usernameWithoutDomain]);
    MEMORY[0x24C210E80](Organizer, [accountCopy emailAddress]);
    CalCalendarItemSetOrganizer();
    v16 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v16, v17))
    {
      *v23 = 0;
      _os_log_impl(&dword_24A0AC000, v16, v17, "Saving cal DB for an event without organizer. The organizer is set to self.", v23, 2u);
    }

    v18 = +[ASLocalDBHelper sharedInstance];
    accountID2 = [accountCopy accountID];
    [v18 calDatabaseForAccountID:accountID2];
    CalDatabaseSave();

    if (Organizer)
    {
LABEL_17:
      CFRelease(Organizer);
    }
  }

LABEL_6:
}

- (void)postProcessApplicationData
{
  applicationData = [(ASChangedCollectionLeaf *)self applicationData];
  v105 = [applicationData objectForKeyedSubscript:&unk_285D57D80];

  applicationData2 = [(ASChangedCollectionLeaf *)self applicationData];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:1041];
  v6 = [applicationData2 objectForKey:v5];

  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [MEMORY[0x277CBEAA8] dateWithActiveSyncStringWithoutSeparators:v6];
      [(ASEvent *)self setDTStamp:v7];
    }
  }

  applicationData3 = [(ASChangedCollectionLeaf *)self applicationData];
  v9 = [applicationData3 count];

  dTStamp = self->_dTStamp;
  if (v9 - (v105 != 0) == (dTStamp != 0) && (v105 | dTStamp) != 0)
  {
    v12 = &OBJC_IVAR___ASEvent__isDTStampUpdateOnly;
    if (v105)
    {
      v12 = &OBJC_IVAR___ASEvent__isAttendeeUpdateOnly;
    }

    *(&self->super.super.super.isa + *v12) = 1;
  }

  applicationData4 = [(ASChangedCollectionLeaf *)self applicationData];
  v14 = [MEMORY[0x277CCABB0] numberWithInt:1030];
  v15 = [applicationData4 objectForKey:v14];

  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v15, "intValue")}];
      [(ASEvent *)self setAllDayEvent:v16];
    }
  }

  applicationData5 = [(ASChangedCollectionLeaf *)self applicationData];
  v18 = [applicationData5 objectForKeyedSubscript:&unk_285D57D98];

  if (v18)
  {
    applicationData6 = [MEMORY[0x277CCABB0] numberWithInt:4363];
    v20 = [v18 objectForKey:applicationData6];
  }

  else
  {
    applicationData6 = [(ASChangedCollectionLeaf *)self applicationData];
    v21 = [MEMORY[0x277CCABB0] numberWithInt:1035];
    v20 = [applicationData6 objectForKey:v21];
  }

  if (v20)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEvent *)self setBody:v20];
    }
  }

  applicationData7 = [(ASChangedCollectionLeaf *)self applicationData];
  v23 = [MEMORY[0x277CCABB0] numberWithInt:1038];
  v24 = [applicationData7 objectForKey:v23];

  if (v24)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEvent *)self setCategories:v24];
    }
  }

  applicationData8 = [(ASChangedCollectionLeaf *)self applicationData];
  v26 = [MEMORY[0x277CCABB0] numberWithInt:1042];
  v27 = [applicationData8 objectForKey:v26];

  if (v27)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v28 = [MEMORY[0x277CBEAA8] dateWithActiveSyncStringWithoutSeparators:v27];
      [(ASEvent *)self setEndTime:v28];
    }
  }

  applicationData9 = [(ASChangedCollectionLeaf *)self applicationData];
  v30 = [applicationData9 objectForKeyedSubscript:&unk_285D57DB0];

  if (v30)
  {
    v31 = [[ASLocation alloc] initWithApplicationData:v30];
    [(ASEvent *)self setLocation:v31];
  }

  else
  {
    applicationData10 = [(ASChangedCollectionLeaf *)self applicationData];
    v56 = [MEMORY[0x277CCABB0] numberWithInt:1047];
    v31 = [applicationData10 objectForKey:v56];

    if (v31)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v57 = [[ASLocation alloc] initWithTitle:v31];
        [(ASEvent *)self setLocation:v57];
      }
    }
  }

  applicationData11 = [(ASChangedCollectionLeaf *)self applicationData];
  v33 = [MEMORY[0x277CCABB0] numberWithInt:1060];
  v34 = [applicationData11 objectForKey:v33];

  if (v34)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v35 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v34, "intValue")}];
      [(ASEvent *)self setReminderMinsBefore:v35];
    }
  }

  applicationData12 = [(ASChangedCollectionLeaf *)self applicationData];
  v37 = [MEMORY[0x277CCABB0] numberWithInt:1062];
  v38 = [applicationData12 objectForKey:v37];

  if (v38)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEvent *)self setSubject:v38];
    }
  }

  applicationData13 = [(ASChangedCollectionLeaf *)self applicationData];
  v40 = [MEMORY[0x277CCABB0] numberWithInt:1063];
  v41 = [applicationData13 objectForKey:v40];

  if (v41)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v42 = [MEMORY[0x277CBEAA8] dateWithActiveSyncStringWithoutSeparators:v41];
      [(ASEvent *)self setStartTime:v42];
    }
  }

  applicationData14 = [(ASChangedCollectionLeaf *)self applicationData];
  v44 = [MEMORY[0x277CCABB0] numberWithInt:1029];
  v45 = [applicationData14 objectForKey:v44];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ASEvent *)self setTimeZone:v45];
  }

  applicationData15 = [(ASChangedCollectionLeaf *)self applicationData];
  v47 = [MEMORY[0x277CCABB0] numberWithInt:4397];
  v48 = [applicationData15 objectForKey:v47];

  if (v48)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASChangedCollectionLeaf *)self setInstanceID:v48];
    }
  }

  applicationData16 = [(ASChangedCollectionLeaf *)self applicationData];
  v50 = [applicationData16 objectForKeyedSubscript:&unk_285D57DC8];

  if (v50)
  {
    v51 = [[ASEventUID alloc] initWithUidString:v50];
    [(ASEvent *)self setEventUID:v51];

    exceptionDate = [(ASEvent *)self exceptionDate];

    if (exceptionDate)
    {
      eventUID = [(ASEvent *)self eventUID];
      exceptionDate2 = [(ASEvent *)self exceptionDate];
      [eventUID setExceptionDate:exceptionDate2];
LABEL_50:

      goto LABEL_51;
    }

    instanceID = [(ASChangedCollectionLeaf *)self instanceID];

    if (instanceID)
    {
      eventUID = [(ASEvent *)self eventUID];
      v59 = MEMORY[0x277CBEAA8];
      exceptionDate2 = [(ASChangedCollectionLeaf *)self instanceID];
      v60 = [v59 dateWithActiveSyncStringWithoutSeparators:exceptionDate2];
      [eventUID setExceptionDate:v60];

      goto LABEL_50;
    }
  }

LABEL_51:
  applicationData17 = [(ASChangedCollectionLeaf *)self applicationData];
  v62 = [MEMORY[0x277CCABB0] numberWithInt:1050];
  v63 = [applicationData17 objectForKey:v62];

  if (v63)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEvent *)self setOrganizerName:v63];
    }
  }

  v104 = v30;

  applicationData18 = [(ASChangedCollectionLeaf *)self applicationData];
  v65 = [MEMORY[0x277CCABB0] numberWithInt:1049];
  v66 = [applicationData18 objectForKey:v65];

  if (v66)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEvent *)self setOrganizerEmail:v66, v30];
    }
  }

  applicationData19 = [(ASChangedCollectionLeaf *)self applicationData];
  v68 = [MEMORY[0x277CCABB0] numberWithInt:1083];
  v69 = [applicationData19 objectForKey:v68];

  if (v69)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEvent *)self setOnlineMeetingExternalLink:v69];
    }
  }

  applicationData20 = [(ASChangedCollectionLeaf *)self applicationData];
  v71 = [applicationData20 objectForKeyedSubscript:&unk_285D57DE0];

  [(ASEvent *)self setRecurrence:v71];
  applicationData21 = [(ASChangedCollectionLeaf *)self applicationData];
  v73 = [applicationData21 objectForKeyedSubscript:&unk_285D57DF8];

  [(ASEvent *)self setExceptions:v73];
  [(ASEvent *)self setAttendees:v105];
  applicationData22 = [(ASChangedCollectionLeaf *)self applicationData];
  v75 = [MEMORY[0x277CCABB0] numberWithInt:1037];
  v76 = [applicationData22 objectForKey:v75];

  if (v76)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v77 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v76, "intValue")}];
      [(ASEvent *)self setBusyStatus:v77];
    }
  }

  applicationData23 = [(ASChangedCollectionLeaf *)self applicationData];
  v79 = [MEMORY[0x277CCABB0] numberWithInt:1048];
  v80 = [applicationData23 objectForKey:v79];

  if (v80)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v81 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v80, "intValue")}];
      [(ASEvent *)self setMeetingStatus:v81];
    }
  }

  applicationData24 = [(ASChangedCollectionLeaf *)self applicationData];
  v83 = [MEMORY[0x277CCABB0] numberWithInt:1061];
  v84 = [applicationData24 objectForKey:v83];

  if (v84)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v85 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v84, "intValue")}];
      [(ASEvent *)self setSensitivity:v85];
    }
  }

  applicationData25 = [(ASChangedCollectionLeaf *)self applicationData];
  v87 = [MEMORY[0x277CCABB0] numberWithInt:1076];
  v88 = [applicationData25 objectForKey:v87];

  if (v88)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v89 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v88, "intValue")}];
      [(ASEvent *)self setResponseRequested:v89];
    }
  }

  applicationData26 = [(ASChangedCollectionLeaf *)self applicationData];
  v91 = [MEMORY[0x277CCABB0] numberWithInt:1078];
  v92 = [applicationData26 objectForKey:v91];

  if (v92)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v93 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v92, "intValue")}];
      [(ASEvent *)self setResponseType:v93];
    }
  }

  applicationData27 = [(ASChangedCollectionLeaf *)self applicationData];
  v95 = [MEMORY[0x277CCABB0] numberWithInt:1077];
  v96 = [applicationData27 objectForKey:v95];

  if (v96)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v97 = [MEMORY[0x277CBEAA8] dateWithActiveSyncStringWithoutSeparators:v96];
      [(ASEvent *)self setAppointmentReplyTime:v97];
    }
  }

  applicationData28 = [(ASChangedCollectionLeaf *)self applicationData];
  v99 = [MEMORY[0x277CCABB0] numberWithInt:1075];
  v100 = [applicationData28 objectForKey:v99];

  if (v100)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v101 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v100, "intValue")}];
      [(ASEvent *)self setDisallowNewTimeProposal:v101];
    }
  }

  applicationData29 = [(ASChangedCollectionLeaf *)self applicationData];
  v103 = [applicationData29 objectForKeyedSubscript:&unk_285D57E10];

  [(ASEvent *)self setAttachments:v103];
  [(ASChangedCollectionLeaf *)self setApplicationData:0];
}

- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account
{
  accountCopy = account;
  v16.receiver = self;
  v16.super_class = ASEvent;
  [(ASChangedCollectionLeaf *)&v16 parseASParseContext:context root:root parent:parent callbackDict:dict streamCallbackDict:callbackDict account:accountCopy];
  parsingState = self->super.super._parsingState;
  if (parsingState >= 2)
  {
    if (parsingState == 4 || parsingState == 3)
    {
      self->super.super._parsingState = parsingState;
    }

    else if (![(ASChangedCollectionLeaf *)self changeType]|| [(ASChangedCollectionLeaf *)self changeType]== 1)
    {
      [(ASEvent *)self postProcessApplicationData];
      [(ASEvent *)self informExceptionsThatParentIsReadyForAccount:accountCopy];
      [(ASEvent *)self _determineSelfnessWithLocalEvent:0 forAccount:accountCopy];
    }
  }
}

- (BOOL)deleteFromCalendar
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_exceptions;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7++) deleteFromCalendar];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  if ([(ASEvent *)self calEvent])
  {
    [(ASEvent *)self calEvent];
    CalRemoveEventAndDetachedEvents();
  }

  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (void)_setFakeDTStampDateForUnitTests:(id)tests
{
  testsCopy = tests;
  if (__fakeDTStampDateForUnitTests != testsCopy)
  {
    v5 = testsCopy;
    objc_storeStrong(&__fakeDTStampDateForUnitTests, tests);
    testsCopy = v5;
  }
}

- (void)appendActiveSyncDataForTask:(id)task toWBXMLData:(id)data
{
  v229 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  dataCopy = data;
  taskManager = [taskCopy taskManager];
  protocol = [taskManager protocol];
  usesAirSyncBaseNamespace = [protocol usesAirSyncBaseNamespace];

  taskManager2 = [taskCopy taskManager];
  protocol2 = [taskManager2 protocol];
  sendDTStamp = [protocol2 sendDTStamp];

  taskManager3 = [taskCopy taskManager];
  protocol3 = [taskManager3 protocol];
  sendUID = [protocol3 sendUID];

  taskManager4 = [taskCopy taskManager];
  protocol4 = [taskManager4 protocol];
  useStructuredLocation = [protocol4 useStructuredLocation];

  taskManager5 = [taskCopy taskManager];
  protocol5 = [taskManager5 protocol];
  includeExceptionsInParent = [protocol5 includeExceptionsInParent];

  taskManager6 = [taskCopy taskManager];
  protocol6 = [taskManager6 protocol];
  useFloatingTimeForAllDayEvents = [protocol6 useFloatingTimeForAllDayEvents];

  taskManager7 = [taskCopy taskManager];
  protocol7 = [taskManager7 protocol];
  useEmptyRecurrence = [protocol7 useEmptyRecurrence];

  taskManager8 = [taskCopy taskManager];
  protocol8 = [taskManager8 protocol];
  useEmptyReminderMinutes = [protocol8 useEmptyReminderMinutes];

  taskManager9 = [taskCopy taskManager];
  protocol9 = [taskManager9 protocol];
  useEmptyLocation = [protocol9 useEmptyLocation];

  taskManager10 = [taskCopy taskManager];
  protocol10 = [taskManager10 protocol];
  alwaysSendTimezone = [protocol10 alwaysSendTimezone];

  taskManager11 = [taskCopy taskManager];
  protocol11 = [taskManager11 protocol];
  useEmptyAttendees = [protocol11 useEmptyAttendees];

  taskManager12 = [taskCopy taskManager];
  protocol12 = [taskManager12 protocol];
  supportsAttachments = [protocol12 supportsAttachments];

  organizerEmail = [(ASEvent *)self organizerEmail];
  selfCopy = self;
  if ([organizerEmail length])
  {
    taskManager13 = [taskCopy taskManager];
    account = [taskManager13 account];
    v38 = [(ASEvent *)self cachedOrganizerIsSelfWithAccount:account];

    if (!v38)
    {
      v39 = 1;
      goto LABEL_15;
    }
  }

  else
  {
  }

  if (![(ASEvent *)self doNotSendBody]&& ([(ASEvent *)self localMask]& 0x20) != 0)
  {
    body = [(ASEvent *)self body];
    if (usesAirSyncBaseNamespace)
    {
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

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v38 = 1;
LABEL_15:
  [dataCopy switchToCodePage:4];
  if ((includeExceptionsInParent & 1) != 0 || ([(ASChangedCollectionLeaf *)self serverID], v41 = objc_claimAutoreleasedReturnValue(), v41, !v41))
  {
    v44 = 1;
  }

  else
  {
    serverID = [(ASChangedCollectionLeaf *)self serverID];
    v43 = [serverID rangeOfString:@"<!ExceptionDate!>"];

    v44 = v43 == 0x7FFFFFFFFFFFFFFFLL;
  }

  v45 = v44 & useFloatingTimeForAllDayEvents;
  selfCopy3 = self;
  if (v45 == 1)
  {
    allDayEvent = [(ASEvent *)self allDayEvent];
    intValue = [allDayEvent intValue];

    v44 = intValue == 0;
  }

  if ((alwaysSendTimezone | (v38 && v44)))
  {
    timeZone = [(ASEvent *)self timeZone];

    if (timeZone)
    {
      timeZone2 = [(ASEvent *)self timeZone];
      startTime = [(ASEvent *)self startTime];
      v52 = [timeZone2 mallocTZIForDate:startTime];

      v53 = DALoggingwithCategory();
      v54 = *(MEMORY[0x277D03988] + 7);
      if (os_log_type_enabled(v53, v54))
      {
        timeZone3 = [(ASEvent *)self timeZone];
        *buf = 138412290;
        v228 = timeZone3;
        _os_log_impl(&dword_24A0AC000, v53, v54, "Setting timeZone to Exchange equivalent of %@", buf, 0xCu);
      }

      selfCopy3 = self;
      if (v52)
      {
        v56 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v52 length:172];
        v57 = [v56 base64EncodedStringWithOptions:0];
        [dataCopy appendTag:5 withStringContent:v57];
        free(v52);
      }
    }
  }

  allDayEvent2 = [(ASEvent *)selfCopy3 allDayEvent];
  v59 = allDayEvent2;
  if (allDayEvent2)
  {
    [dataCopy appendTag:6 withIntContent:{objc_msgSend(allDayEvent2, "intValue")}];
  }

  if (((v39 | usesAirSyncBaseNamespace) & 1) == 0)
  {
    body2 = [(ASEvent *)selfCopy3 body];
    if (body2)
    {
      [dataCopy appendTag:11 withStringContent:body2];
    }
  }

  busyStatus = [(ASEvent *)selfCopy3 busyStatus];

  if (busyStatus)
  {
    busyStatus2 = [(ASEvent *)selfCopy3 busyStatus];
    [dataCopy appendTag:13 withIntContent:{objc_msgSend(busyStatus2, "intValue")}];
  }

  else
  {
    [dataCopy appendTag:13 withIntContent:2];
  }

  dTStamp = [(ASEvent *)selfCopy3 dTStamp];
  if (!dTStamp)
  {
    dTStamp = [MEMORY[0x277CBEAA8] date];
  }

  if ((sendDTStamp & v38) == 1)
  {
    activeSyncStringWithoutSeparators = [dTStamp activeSyncStringWithoutSeparators];
    [dataCopy appendTag:17 withStringContent:activeSyncStringWithoutSeparators];
  }

  if (v38)
  {
    endTime = [(ASEvent *)selfCopy3 endTime];
    v66 = endTime;
    if (endTime)
    {
      activeSyncStringWithoutSeparators2 = [endTime activeSyncStringWithoutSeparators];
      [dataCopy appendTag:18 withStringContent:activeSyncStringWithoutSeparators2];
    }
  }

  location = [(ASEvent *)selfCopy3 location];

  if (!location)
  {
    if (!useEmptyLocation)
    {
      goto LABEL_76;
    }

    [dataCopy switchToCodePage:17];
    [dataCopy appendEmptyTag:32];
    goto LABEL_73;
  }

  if (useStructuredLocation)
  {
    [dataCopy switchToCodePage:17];
    [dataCopy openTag:32];
    location2 = [(ASEvent *)selfCopy3 location];
    displayName = [location2 displayName];

    if (displayName)
    {
      location3 = [(ASEvent *)selfCopy3 location];
      displayName2 = [location3 displayName];
      [dataCopy appendTag:16 withStringContent:displayName2];
    }

    location4 = [(ASEvent *)selfCopy3 location];
    annotation = [location4 annotation];

    if (annotation)
    {
      location5 = [(ASEvent *)selfCopy3 location];
      annotation2 = [location5 annotation];
      [dataCopy appendTag:33 withStringContent:annotation2];
    }

    location6 = [(ASEvent *)selfCopy3 location];
    street = [location6 street];

    if (street)
    {
      location7 = [(ASEvent *)selfCopy3 location];
      street2 = [location7 street];
      [dataCopy appendTag:34 withStringContent:street2];
    }

    location8 = [(ASEvent *)selfCopy3 location];
    city = [location8 city];

    if (city)
    {
      location9 = [(ASEvent *)selfCopy3 location];
      city2 = [location9 city];
      [dataCopy appendTag:35 withStringContent:city2];
    }

    location10 = [(ASEvent *)selfCopy3 location];
    state = [location10 state];

    if (state)
    {
      location11 = [(ASEvent *)selfCopy3 location];
      state2 = [location11 state];
      [dataCopy appendTag:36 withStringContent:state2];
    }

    location12 = [(ASEvent *)selfCopy3 location];
    postalCode = [location12 postalCode];

    if (postalCode)
    {
      location13 = [(ASEvent *)selfCopy3 location];
      postalCode2 = [location13 postalCode];
      [dataCopy appendTag:38 withStringContent:postalCode2];
    }

    location14 = [(ASEvent *)selfCopy3 location];
    country = [location14 country];

    if (country)
    {
      location15 = [(ASEvent *)selfCopy3 location];
      country2 = [location15 country];
      [dataCopy appendTag:37 withStringContent:country2];
    }

    location16 = [(ASEvent *)selfCopy3 location];
    latitude = [location16 latitude];

    if (latitude)
    {
      location17 = [(ASEvent *)selfCopy3 location];
      latitude2 = [location17 latitude];
      [dataCopy appendTag:39 withStringContent:latitude2];
    }

    location18 = [(ASEvent *)selfCopy3 location];
    longitude = [location18 longitude];

    if (longitude)
    {
      location19 = [(ASEvent *)selfCopy3 location];
      longitude2 = [location19 longitude];
      [dataCopy appendTag:40 withStringContent:longitude2];
    }

    location20 = [(ASEvent *)selfCopy3 location];
    accuracy = [location20 accuracy];

    if (accuracy)
    {
      location21 = [(ASEvent *)selfCopy3 location];
      accuracy2 = [location21 accuracy];
      [dataCopy appendTag:41 withStringContent:accuracy2];
    }

    location22 = [(ASEvent *)selfCopy3 location];
    altitude = [location22 altitude];

    if (altitude)
    {
      location23 = [(ASEvent *)selfCopy3 location];
      altitude2 = [location23 altitude];
      [dataCopy appendTag:42 withStringContent:altitude2];
    }

    location24 = [(ASEvent *)selfCopy3 location];
    altitudeAccuracy = [location24 altitudeAccuracy];

    if (altitudeAccuracy)
    {
      location25 = [(ASEvent *)selfCopy3 location];
      altitudeAccuracy2 = [location25 altitudeAccuracy];
      [dataCopy appendTag:43 withStringContent:altitudeAccuracy2];
    }

    [dataCopy closeTag:32];
LABEL_73:
    [dataCopy switchToCodePage:4];
    goto LABEL_76;
  }

  location26 = [(ASEvent *)selfCopy3 location];
  displayName3 = [location26 displayName];

  if (displayName3)
  {
    location27 = [(ASEvent *)selfCopy3 location];
    displayName4 = [location27 displayName];
    [dataCopy appendTag:23 withStringContent:displayName4];
  }

LABEL_76:
  reminderMinsBefore = [(ASEvent *)selfCopy3 reminderMinsBefore];

  if (reminderMinsBefore)
  {
    reminderMinsBefore2 = [(ASEvent *)selfCopy3 reminderMinsBefore];
    [dataCopy appendTag:36 withIntContent:{objc_msgSend(reminderMinsBefore2, "intValue")}];
  }

  else if (useEmptyReminderMinutes)
  {
    [dataCopy appendEmptyTag:36];
  }

  sensitivity = [(ASEvent *)selfCopy3 sensitivity];

  if (sensitivity)
  {
    sensitivity2 = [(ASEvent *)selfCopy3 sensitivity];
    [dataCopy appendTag:37 withIntContent:{objc_msgSend(sensitivity2, "intValue")}];
  }

  else
  {
    [dataCopy appendTag:37 withIntContent:0];
  }

  subject = [(ASEvent *)selfCopy3 subject];
  if (subject)
  {
    [dataCopy appendTag:38 withStringContent:subject];
  }

  if (v38)
  {
    startTime2 = [(ASEvent *)selfCopy3 startTime];
    v127 = startTime2;
    if (startTime2)
    {
      activeSyncStringWithoutSeparators3 = [startTime2 activeSyncStringWithoutSeparators];
      [dataCopy appendTag:39 withStringContent:activeSyncStringWithoutSeparators3];
    }
  }

  eventUID = [(ASEvent *)selfCopy3 eventUID];
  timeZone4 = [(ASEvent *)selfCopy3 timeZone];
  v131 = [eventUID uidForActiveSyncWithTimeZone:timeZone4];

  if (v131)
  {
    if (sendUID)
    {
      v132 = 40;
    }

    else
    {
      serverID2 = [(ASChangedCollectionLeaf *)selfCopy3 serverID];

      if (serverID2)
      {
        goto LABEL_95;
      }

      v132 = 60;
    }

    [dataCopy appendTag:v132 withStringContent:v131];
  }

LABEL_95:
  v193 = dTStamp;
  if ([(ASEvent *)selfCopy3 itemStatus]== 3)
  {
    intValue3 = 4;
  }

  else
  {
    meetingStatus = [(ASEvent *)selfCopy3 meetingStatus];
    intValue2 = [meetingStatus intValue];

    if (intValue2)
    {
      meetingStatus2 = [(ASEvent *)selfCopy3 meetingStatus];
      intValue3 = [meetingStatus2 intValue];
    }

    else if ([(NSArray *)selfCopy3->_attendees count])
    {
      taskManager14 = [taskCopy taskManager];
      account2 = [taskManager14 account];
      v140 = [(ASEvent *)selfCopy3 cachedOrganizerIsSelfWithAccount:account2];

      if (v140)
      {
        intValue3 = 1;
      }

      else
      {
        intValue3 = 3;
      }
    }

    else
    {
      intValue3 = 0;
    }
  }

  [dataCopy appendTag:24 withIntContent:intValue3];
  if ([(NSArray *)selfCopy3->_attendees count])
  {
    v219 = 0u;
    v220 = 0u;
    v217 = 0u;
    v218 = 0u;
    v141 = selfCopy3->_attendees;
    v142 = [(NSArray *)v141 countByEnumeratingWithState:&v217 objects:v226 count:16];
    if (v142)
    {
      v143 = v142;
      v144 = 0;
      v145 = *v218;
      do
      {
        for (i = 0; i != v143; ++i)
        {
          if (*v218 != v145)
          {
            objc_enumerationMutation(v141);
          }

          if ([*(*(&v217 + 1) + 8 * i) status] != 6)
          {
            ++v144;
          }
        }

        v143 = [(NSArray *)v141 countByEnumeratingWithState:&v217 objects:v226 count:16];
      }

      while (v143);

      selfCopy3 = selfCopy;
      if (v144)
      {
        [dataCopy openProspectiveTag:7];
        v215 = 0u;
        v216 = 0u;
        v213 = 0u;
        v214 = 0u;
        v147 = selfCopy->_attendees;
        v148 = [(NSArray *)v147 countByEnumeratingWithState:&v213 objects:v225 count:16];
        if (v148)
        {
          v149 = v148;
          v150 = *v214;
          do
          {
            for (j = 0; j != v149; ++j)
            {
              if (*v214 != v150)
              {
                objc_enumerationMutation(v147);
              }

              v152 = *(*(&v213 + 1) + 8 * j);
              if ([v152 status] != 6)
              {
                [dataCopy openTag:8];
                [v152 appendActiveSyncDataForTask:taskCopy toData:dataCopy];
                [dataCopy closeTag:8];
              }
            }

            v149 = [(NSArray *)v147 countByEnumeratingWithState:&v213 objects:v225 count:16];
          }

          while (v149);
        }

        [dataCopy closeProspectiveTag:7];
        goto LABEL_128;
      }
    }

    else
    {
    }
  }

  if (useEmptyAttendees)
  {
    [dataCopy appendEmptyTag:7];
  }

LABEL_128:
  if (!supportsAttachments)
  {
    goto LABEL_152;
  }

  attachments = [(ASEvent *)selfCopy3 attachments];
  if ([attachments count])
  {
  }

  else
  {
    deletedAttachmentsIDs = [(ASEvent *)selfCopy3 deletedAttachmentsIDs];
    v155 = [deletedAttachmentsIDs count];

    if (!v155)
    {
      goto LABEL_152;
    }
  }

  [dataCopy switchToCodePage:17];
  [dataCopy openProspectiveTag:14];
  v211 = 0u;
  v212 = 0u;
  v209 = 0u;
  v210 = 0u;
  attachments2 = [(ASEvent *)selfCopy3 attachments];
  v157 = [attachments2 countByEnumeratingWithState:&v209 objects:v224 count:16];
  if (v157)
  {
    v158 = v157;
    v159 = *v210;
    do
    {
      for (k = 0; k != v158; ++k)
      {
        if (*v210 != v159)
        {
          objc_enumerationMutation(attachments2);
        }

        v161 = *(*(&v209 + 1) + 8 * k);
        [dataCopy openProspectiveTag:28];
        [v161 appendActiveSyncDataForTask:taskCopy toData:dataCopy];
        [dataCopy closeProspectiveTag:28];
      }

      v158 = [attachments2 countByEnumeratingWithState:&v209 objects:v224 count:16];
    }

    while (v158);
  }

  v207 = 0u;
  v208 = 0u;
  v205 = 0u;
  v206 = 0u;
  deletedAttachmentsIDs2 = [(ASEvent *)selfCopy3 deletedAttachmentsIDs];
  v163 = [deletedAttachmentsIDs2 countByEnumeratingWithState:&v205 objects:v223 count:16];
  if (v163)
  {
    v164 = v163;
    v165 = *v206;
    v166 = *(MEMORY[0x277D03988] + 4);
    do
    {
      for (m = 0; m != v164; ++m)
      {
        if (*v206 != v165)
        {
          objc_enumerationMutation(deletedAttachmentsIDs2);
        }

        v168 = *(*(&v205 + 1) + 8 * m);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [dataCopy openProspectiveTag:29];
          [dataCopy appendTag:17 withStringContent:v168];
          [dataCopy closeProspectiveTag:29];
        }

        else
        {
          v169 = DALoggingwithCategory();
          if (os_log_type_enabled(v169, v166))
          {
            v170 = objc_opt_class();
            v171 = NSStringFromClass(v170);
            *buf = 138412290;
            v228 = v171;
            _os_log_impl(&dword_24A0AC000, v169, v166, "The attachment ID is not a string, but %@", buf, 0xCu);
          }
        }
      }

      v164 = [deletedAttachmentsIDs2 countByEnumeratingWithState:&v205 objects:v223 count:16];
    }

    while (v164);
  }

  [dataCopy closeProspectiveTag:14];
  [dataCopy switchToCodePage:4];
  selfCopy3 = selfCopy;
LABEL_152:
  if ([(NSArray *)selfCopy3->_categories count])
  {
    [dataCopy openTag:14];
    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    v172 = selfCopy3->_categories;
    v173 = [(NSArray *)v172 countByEnumeratingWithState:&v201 objects:v222 count:16];
    if (v173)
    {
      v174 = v173;
      v175 = *v202;
      do
      {
        for (n = 0; n != v174; ++n)
        {
          if (*v202 != v175)
          {
            objc_enumerationMutation(v172);
          }

          [dataCopy appendTag:15 withStringContent:*(*(&v201 + 1) + 8 * n)];
        }

        v174 = [(NSArray *)v172 countByEnumeratingWithState:&v201 objects:v222 count:16];
      }

      while (v174);
    }

    [dataCopy closeTag:14];
  }

  recurrence = [(ASEvent *)selfCopy3 recurrence];

  if (recurrence)
  {
    recurrence2 = [(ASEvent *)selfCopy3 recurrence];
    [recurrence2 appendActiveSyncDataForTask:taskCopy toWBXMLData:dataCopy];
  }

  else if (useEmptyRecurrence)
  {
    [dataCopy appendEmptyTag:27];
  }

  if ((([(NSArray *)selfCopy3->_exceptions count]!= 0) & includeExceptionsInParent) == 1)
  {
    [dataCopy openTag:20];
    v199 = 0u;
    v200 = 0u;
    v197 = 0u;
    v198 = 0u;
    v179 = selfCopy3->_exceptions;
    v180 = [(NSArray *)v179 countByEnumeratingWithState:&v197 objects:v221 count:16];
    if (v180)
    {
      v181 = v180;
      v182 = *v198;
      do
      {
        for (ii = 0; ii != v181; ++ii)
        {
          if (*v198 != v182)
          {
            objc_enumerationMutation(v179);
          }

          v184 = *(*(&v197 + 1) + 8 * ii);
          [dataCopy openTag:19];
          [v184 appendActiveSyncDataForTask:taskCopy toWBXMLData:dataCopy];
          [dataCopy closeTag:19];
        }

        v181 = [(NSArray *)v179 countByEnumeratingWithState:&v197 objects:v221 count:16];
      }

      while (v181);
    }

    [dataCopy closeTag:20];
  }

  v185 = *MEMORY[0x277D85DE8];
}

- (void)setCalEvent:(void *)event
{
  v17 = *MEMORY[0x277D85DE8];
  calEvent = self->_calEvent;
  if (calEvent != event)
  {
    if (calEvent)
    {
      CFRelease(calEvent);
    }

    self->_calEvent = event;
    if (!event || (CFRetain(event), !self->_calEvent))
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v6 = self->_exceptions;
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v13;
        do
        {
          v10 = 0;
          do
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [*(*(&v12 + 1) + 8 * v10++) setCalEvent:{0, v12}];
          }

          while (v8 != v10);
          v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v8);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)loadCalRecordForAccount:(id)account
{
  accountCopy = account;
  if ([(ASEvent *)self calEvent])
  {
    [ASEvent loadCalRecordForAccount:];
  }

  clientID = [(ASChangedCollectionLeaf *)self clientID];

  if (!clientID)
  {
    [ASEvent loadCalRecordForAccount:];
  }

  v6 = +[ASLocalDBHelper sharedInstance];
  accountID = [accountCopy accountID];
  [v6 calDatabaseForAccountID:accountID];
  clientID2 = [(ASChangedCollectionLeaf *)self clientID];
  [clientID2 intValue];
  v9 = CalDatabaseCopyCalendarItemWithRowID();

  [(ASEvent *)self _loadAttributesFromCalEvent:v9 forAccount:accountCopy];
  [(ASEvent *)self setCalEvent:v9];
  if (v9)
  {
    CFRelease(v9);
  }

  return v9 != 0;
}

- (BOOL)saveServerIDAndUidToCalendar
{
  calEvent = [(ASEvent *)self calEvent];
  if (calEvent)
  {
    [(ASEvent *)self calEvent];
    serverID = [(ASChangedCollectionLeaf *)self serverID];
    CalCalendarItemSetExternalID();

    eventUID = [(ASEvent *)self eventUID];

    if (eventUID)
    {
      [(ASEvent *)self calEvent];
      eventUID2 = [(ASEvent *)self eventUID];
      [eventUID2 uidForCalFramework];
      CalCalendarItemSetUniqueIdentifier();
    }
  }

  return calEvent != 0;
}

- (BOOL)verifyExternalIdsForAccountID:(id)d
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  clientID = [(ASChangedCollectionLeaf *)self clientID];

  if (!clientID)
  {
    goto LABEL_7;
  }

  v6 = +[ASLocalDBHelper sharedInstance];
  [v6 calDatabaseForAccountID:dCopy];
  clientID2 = [(ASChangedCollectionLeaf *)self clientID];
  [clientID2 intValue];
  v8 = CalDatabaseCopyCalendarItemWithRowID();

  if (!v8)
  {
LABEL_7:
    LOBYTE(v14) = 0;
    goto LABEL_18;
  }

  v9 = CalCalendarItemCopyExternalID();
  serverID = [(ASChangedCollectionLeaf *)self serverID];
  if (!serverID)
  {
    goto LABEL_6;
  }

  v11 = serverID;
  if (!v9)
  {

    goto LABEL_9;
  }

  serverID2 = [(ASChangedCollectionLeaf *)self serverID];
  v13 = [v9 isEqualToString:serverID2];

  if ((v13 & 1) == 0)
  {
LABEL_9:
    serverID3 = [(ASChangedCollectionLeaf *)self serverID];
    CalCalendarItemSetExternalID();

    v14 = 1;
    goto LABEL_10;
  }

LABEL_6:
  v14 = 0;
LABEL_10:
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = self->_exceptions;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      v20 = 0;
      do
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v14 |= [*(*(&v23 + 1) + 8 * v20++) verifyExternalIdsForAccountID:{dCopy, v23}];
      }

      while (v18 != v20);
      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v18);
  }

  CFRelease(v8);
LABEL_18:

  v21 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

- (BOOL)fillOutMissingExternalIdsForAccountID:(id)d
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 0;
    _os_log_impl(&dword_24A0AC000, v5, v6, "Entering [ASEvent fillOutMissingExternalIdsForAccountID:]", buf, 2u);
  }

  clientID = [(ASChangedCollectionLeaf *)self clientID];

  if (!clientID)
  {
    goto LABEL_23;
  }

  v8 = +[ASLocalDBHelper sharedInstance];
  [v8 calDatabaseForAccountID:dCopy];

  clientID2 = [(ASChangedCollectionLeaf *)self clientID];
  [clientID2 intValue];
  v10 = CalDatabaseCopyCalendarItemWithRowID();

  if (v10)
  {
    v11 = CalCalendarItemCopyExternalID();
    serverID = [(ASChangedCollectionLeaf *)self serverID];
    if (serverID)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14 == 1)
    {
      v15 = DALoggingwithCategory();
      if (os_log_type_enabled(v15, v6))
      {
        serverID2 = [(ASChangedCollectionLeaf *)self serverID];
        *buf = 138412290;
        v31 = serverID2;
        _os_log_impl(&dword_24A0AC000, v15, v6, "Missing ServerID! Use the server id in pushedActions to set external ID: %@", buf, 0xCu);
      }

      serverID3 = [(ASChangedCollectionLeaf *)self serverID];
      CalCalendarItemSetExternalID();
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = self->_exceptions;
    v19 = [(NSArray *)v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v14 |= [*(*(&v25 + 1) + 8 * i) verifyExternalIdsForAccountID:{dCopy, v25}];
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v20);
    }

    CFRelease(v10);
  }

  else
  {
LABEL_23:
    LOBYTE(v14) = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

- (void)loadClientIDs
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(ASEvent *)self calEvent])
  {
    v3 = MEMORY[0x277CCACA8];
    [(ASEvent *)self calEvent];
    v4 = [v3 stringWithFormat:@"%d", CalCalendarItemGetRowID()];
    [(ASChangedCollectionLeaf *)self setClientID:v4];
  }

  else
  {
    v4 = 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_exceptions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [v10 loadClientIDs];
        [v10 setParentClientID:v4];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (NSCalendarDate)startDateForCalFramework
{
  startTime = [(ASEvent *)self startTime];
  timeZone = [(ASEvent *)self timeZone];
  v5 = [startTime dateWithCalendarFormat:0 timeZone:timeZone];
  v6 = [(ASEvent *)self _transformedStartDateForCalFramework:v5];

  return v6;
}

- (NSCalendarDate)endDateForCalFramework
{
  endTime = [(ASEvent *)self endTime];
  timeZone = [(ASEvent *)self timeZone];
  v5 = [endTime dateWithCalendarFormat:0 timeZone:timeZone];
  startTime = [(ASEvent *)self startTime];
  timeZone2 = [(ASEvent *)self timeZone];
  v8 = [startTime dateWithCalendarFormat:0 timeZone:timeZone2];
  v9 = [(ASEvent *)self _transformedEndDateForCalFramework:v5 startDate:v8];

  return v9;
}

- (ASEvent)initWithCoder:(id)coder
{
  v103[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v99.receiver = self;
  v99.super_class = ASEvent;
  v5 = [(ASChangedCollectionLeaf *)&v99 initWithCoder:coderCopy];
  if (v5)
  {
    if (([coderCopy allowsKeyedCoding] & 1) == 0)
    {
      [ASEvent initWithCoder:];
    }

    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"timeZoneDict"];

    if (v11)
    {
      v12 = [[ASTimeZone alloc] initWithCodingDict:v11];
      timeZone = v5->_timeZone;
      v5->_timeZone = v12;
    }

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"allDayEvent"];
    allDayEvent = v5->_allDayEvent;
    v5->_allDayEvent = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"body"];
    body = v5->_body;
    v5->_body = v16;

    v5->_bodyTruncated = [coderCopy decodeBoolForKey:@"bodyTruncated"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"busyStatus"];
    busyStatus = v5->_busyStatus;
    v5->_busyStatus = v18;

    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"categories"];
    categories = v5->_categories;
    v5->_categories = v23;

    v25 = MEMORY[0x277CBEB98];
    v103[0] = objc_opt_class();
    v103[1] = objc_opt_class();
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:2];
    v27 = [v25 setWithArray:v26];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"dTStamp"];
    dTStamp = v5->_dTStamp;
    v5->_dTStamp = v28;

    v30 = MEMORY[0x277CBEB98];
    v102[0] = objc_opt_class();
    v102[1] = objc_opt_class();
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:2];
    v32 = [v30 setWithArray:v31];
    v33 = [coderCopy decodeObjectOfClasses:v32 forKey:@"endTime"];
    endTime = v5->_endTime;
    v5->_endTime = v33;

    v35 = MEMORY[0x277CBEB98];
    v101[0] = objc_opt_class();
    v101[1] = objc_opt_class();
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v101 count:2];
    v37 = [v35 setWithArray:v36];
    v38 = [coderCopy decodeObjectOfClasses:v37 forKey:@"startTime"];
    startTime = v5->_startTime;
    v5->_startTime = v38;

    v40 = MEMORY[0x277CBEB98];
    v100[0] = objc_opt_class();
    v100[1] = objc_opt_class();
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:2];
    v42 = [v40 setWithArray:v41];
    v43 = [coderCopy decodeObjectOfClasses:v42 forKey:@"appointmentReplyTime"];
    appointmentReplyTime = v5->_appointmentReplyTime;
    v5->_appointmentReplyTime = v43;

    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v45;

    v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"meetingStatus"];
    meetingStatus = v5->_meetingStatus;
    v5->_meetingStatus = v47;

    v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"organizerEmail"];
    organizerEmail = v5->_organizerEmail;
    v5->_organizerEmail = v49;

    v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"organizerName"];
    organizerName = v5->_organizerName;
    v5->_organizerName = v51;

    v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reminderMinsBefore"];
    reminderMinsBefore = v5->_reminderMinsBefore;
    v5->_reminderMinsBefore = v53;

    v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sensitivity"];
    sensitivity = v5->_sensitivity;
    v5->_sensitivity = v55;

    v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subject"];
    subject = v5->_subject;
    v5->_subject = v57;

    v59 = MEMORY[0x277CBEB98];
    v60 = objc_opt_class();
    v61 = [v59 setWithObjects:{v60, objc_opt_class(), 0}];
    v62 = [coderCopy decodeObjectOfClasses:v61 forKey:@"from"];
    from = v5->_from;
    v5->_from = v62;

    v64 = [ASEventUID alloc];
    v65 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventUID"];
    v66 = [(ASEventUID *)v64 initWithCalFrameworkString:v65];
    eventUID = v5->_eventUID;
    v5->_eventUID = v66;

    v68 = MEMORY[0x277CBEB98];
    v69 = objc_opt_class();
    v70 = [v68 setWithObjects:{v69, objc_opt_class(), 0}];
    v71 = [coderCopy decodeObjectOfClasses:v70 forKey:@"attendees"];
    attendees = v5->_attendees;
    v5->_attendees = v71;

    v73 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recurrence"];
    recurrence = v5->_recurrence;
    v5->_recurrence = v73;

    v75 = MEMORY[0x277CBEB98];
    v76 = objc_opt_class();
    v77 = [v75 setWithObjects:{v76, objc_opt_class(), 0}];
    v78 = [coderCopy decodeObjectOfClasses:v77 forKey:@"exceptions"];
    exceptions = v5->_exceptions;
    v5->_exceptions = v78;

    v80 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"responseRequested"];
    responseRequested = v5->_responseRequested;
    v5->_responseRequested = v80;

    v5->_cachedOrganizerIsSelf = [coderCopy decodeBoolForKey:@"cachedOrganizerIsSelf"];
    v5->_haveCheckedOrganizerEmail = [coderCopy decodeBoolForKey:@"haveCheckedOrganizerEmail"];
    v82 = MEMORY[0x277CBEB98];
    v83 = objc_opt_class();
    v84 = [v82 setWithObjects:{v83, objc_opt_class(), 0}];
    v85 = [coderCopy decodeObjectOfClasses:v84 forKey:@"attendeesPendingDeletion"];
    attendeesPendingDeletion = v5->_attendeesPendingDeletion;
    v5->_attendeesPendingDeletion = v85;

    v87 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"responseType"];
    responseType = v5->_responseType;
    v5->_responseType = v87;

    v89 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"disallowNewTimeProposal"];
    disallowNewTimeProposal = v5->_disallowNewTimeProposal;
    v5->_disallowNewTimeProposal = v89;

    v91 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"onlineMeetingExternalLink"];
    onlineMeetingExternalLink = v5->_onlineMeetingExternalLink;
    v5->_onlineMeetingExternalLink = v91;

    v93 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proposedStartTime"];
    proposedStartTime = v5->_proposedStartTime;
    v5->_proposedStartTime = v93;

    v95 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proposedEndTime"];
    proposedEndTime = v5->_proposedEndTime;
    v5->_proposedEndTime = v95;
  }

  v97 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [ASEvent encodeWithCoder:];
  }

  v8.receiver = self;
  v8.super_class = ASEvent;
  [(ASChangedCollectionLeaf *)&v8 encodeWithCoder:coderCopy];
  dictForCoding = [(ASTimeZone *)self->_timeZone dictForCoding];
  [coderCopy encodeObject:dictForCoding forKey:@"timeZoneDict"];
  [coderCopy encodeObject:self->_allDayEvent forKey:@"allDayEvent"];
  [coderCopy encodeObject:self->_body forKey:@"body"];
  [coderCopy encodeBool:self->_bodyTruncated forKey:@"bodyTruncated"];
  [coderCopy encodeObject:self->_busyStatus forKey:@"busyStatus"];
  [coderCopy encodeObject:self->_dTStamp forKey:@"dTStamp"];
  [coderCopy encodeObject:self->_categories forKey:@"categories"];
  [coderCopy encodeObject:self->_endTime forKey:@"endTime"];
  [coderCopy encodeObject:self->_location forKey:@"location"];
  [coderCopy encodeObject:self->_meetingStatus forKey:@"meetingStatus"];
  [coderCopy encodeObject:self->_organizerEmail forKey:@"organizerEmail"];
  [coderCopy encodeObject:self->_organizerName forKey:@"organizerName"];
  [coderCopy encodeObject:self->_reminderMinsBefore forKey:@"reminderMinsBefore"];
  [coderCopy encodeObject:self->_sensitivity forKey:@"sensitivity"];
  subject = [(ASEvent *)self subject];
  [coderCopy encodeObject:subject forKey:@"subject"];

  [coderCopy encodeObject:self->_startTime forKey:@"startTime"];
  [coderCopy encodeObject:self->_from forKey:@"from"];
  uidForCalFramework = [(ASEventUID *)self->_eventUID uidForCalFramework];
  [coderCopy encodeObject:uidForCalFramework forKey:@"eventUID"];

  [coderCopy encodeObject:self->_attendees forKey:@"attendees"];
  [coderCopy encodeObject:self->_recurrence forKey:@"recurrence"];
  [coderCopy encodeObject:self->_exceptions forKey:@"exceptions"];
  [coderCopy encodeObject:self->_responseRequested forKey:@"responseRequested"];
  [coderCopy encodeBool:self->_cachedOrganizerIsSelf forKey:@"cachedOrganizerIsSelf"];
  [coderCopy encodeBool:self->_haveCheckedOrganizerEmail forKey:@"haveCheckedOrganizerEmail"];
  [coderCopy encodeObject:self->_attendeesPendingDeletion forKey:@"attendeesPendingDeletion"];
  [coderCopy encodeObject:self->_responseType forKey:@"responseType"];
  [coderCopy encodeObject:self->_appointmentReplyTime forKey:@"appointmentReplyTime"];
  [coderCopy encodeObject:self->_disallowNewTimeProposal forKey:@"disallowNewTimeProposal"];
  [coderCopy encodeObject:self->_onlineMeetingExternalLink forKey:@"onlineMeetingExternalLink"];
  [coderCopy encodeObject:self->_proposedStartTime forKey:@"proposedStartTime"];
  [coderCopy encodeObject:self->_proposedEndTime forKey:@"proposedEndTime"];
}

- (void)setBody:(id)body
{
  stringByTrimmingNotesJunk = [body stringByTrimmingNotesJunk];
  if (self->_body != stringByTrimmingNotesJunk)
  {
    objc_storeStrong(&self->_body, stringByTrimmingNotesJunk);
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)cachedOrganizerIsSelfWithAccount:(id)account
{
  if (!self->_haveCheckedOrganizerEmail)
  {
    accountCopy = account;
    [(ASEvent *)self _determineSelfnessWithLocalEvent:[(ASEvent *)self calEvent] forAccount:accountCopy];
  }

  return self->_cachedOrganizerIsSelf;
}

- (BOOL)purgeAttendeesPendingDeletionForAccountID:(id)d
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([(ASEvent *)self calEvent])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = self->_attendeesPendingDeletion;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v6)
    {
      v8 = v6;
      selfCopy = self;
      v9 = 0;
      v10 = *v24;
      v11 = *(MEMORY[0x277D03988] + 3);
      *&v7 = 67109120;
      v21 = v7;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v5);
          }

          localId = [*(*(&v23 + 1) + 8 * i) localId];
          if (localId == -1)
          {
            v17 = DALoggingwithCategory();
            if (os_log_type_enabled(v17, v11))
            {
              *buf = 0;
              _os_log_impl(&dword_24A0AC000, v17, v11, "Asked to purge an attendee that doesn't have a local attendee id", buf, 2u);
            }
          }

          else
          {
            v14 = localId;
            v15 = +[ASLocalDBHelper sharedInstance];
            v16 = MEMORY[0x24C210A30]([v15 calDatabaseForAccountID:dCopy], v14);

            if (v16)
            {
              [(ASEvent *)selfCopy calEvent];
              CalCalendarItemRemoveAttendee();
              CFRelease(v16);
              v9 = 1;
            }

            else
            {
              v18 = DALoggingwithCategory();
              if (os_log_type_enabled(v18, v11))
              {
                *buf = v21;
                v28 = v14;
                _os_log_impl(&dword_24A0AC000, v18, v11, "Asked to purge an attendee with local id %d, but the db doesn't seem to have that one", buf, 8u);
              }
            }
          }
        }

        v8 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

- (BOOL)hasOccurrenceInTheFuture
{
  v32 = *MEMORY[0x277D85DE8];
  if ([(ASEvent *)self calEvent])
  {
    [(ASEvent *)self calEvent];
    CalEventCopyStartDate();
    v4 = v3;
    [(ASEvent *)self calEvent];
    v5 = CalCalendarItemCopyRecurrences();
    if ([v5 count])
    {
      v6 = [[ASTimeZone alloc] initWithTZNameFromCalDB:v4];
      if (!v6)
      {
        defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
        v8 = [ASTimeZone alloc];
        name = [defaultTimeZone name];
        v6 = [(ASTimeZone *)v8 initWithTZNameFromCalDB:name];
      }

      v30[0] = 0;
      v30[1] = 0;
      date = [MEMORY[0x277CCA8F8] date];
      [date setTimeZone:v6];
      [date getGregorianDate:v30];
      v29[0] = 0;
      v29[1] = 0;
      distantFuture = [MEMORY[0x277CCA8F8] distantFuture];

      [distantFuture setTimeZone:v6];
      [distantFuture getGregorianDate:v29];
      [(ASEvent *)self calEvent];
      if (CalEventOccurrencesExistForEventInDateRange())
      {
        LOBYTE(v12) = 1;
      }

      else
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v20 = self->_exceptions;
        v12 = [(NSArray *)v20 countByEnumeratingWithState:&v25 objects:v31 count:16];
        if (v12)
        {
          v21 = *v26;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v26 != v21)
              {
                objc_enumerationMutation(v20);
              }

              if ([*(*(&v25 + 1) + 8 * i) hasOccurrenceInTheFuture])
              {
                LOBYTE(v12) = 1;
                goto LABEL_22;
              }
            }

            v12 = [(NSArray *)v20 countByEnumeratingWithState:&v25 objects:v31 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

LABEL_22:
      }
    }

    else
    {
      [(ASEvent *)self calEvent];
      CalEventGetEndDate();
      v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
      [v17 timeIntervalSinceNow];
      v19 = v18;

      LOBYTE(v12) = v19 >= 0.0;
    }

    CalDateTimeRelease();
  }

  else
  {
    exceptionDate = [(ASEvent *)self exceptionDate];
    if (exceptionDate)
    {
      exceptionDate2 = [(ASEvent *)self exceptionDate];
      [exceptionDate2 timeIntervalSinceNow];
      v16 = v15;

      LOBYTE(v12) = v16 >= 0.0;
    }

    else
    {
      LOBYTE(v12) = 1;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)isTombstoneEndTimeInFuture
{
  tombstoneEndTime = self->_tombstoneEndTime;
  if (tombstoneEndTime)
  {
    [(NSDate *)tombstoneEndTime timeIntervalSinceNow];
    LOBYTE(tombstoneEndTime) = v3 >= 0.0;
  }

  return tombstoneEndTime;
}

- (BOOL)_selfIsMoreCorrectThanOtherEvent:(id)event account:(id)account
{
  v37 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  accountCopy = account;
  organizerEmail = [(ASEvent *)self organizerEmail];

  organizerEmail2 = [(ASEvent *)eventCopy organizerEmail];

  if (!organizerEmail || organizerEmail2)
  {
    if (!organizerEmail && organizerEmail2)
    {
      dTStamp = DALoggingwithCategory();
      v14 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(dTStamp, v14))
      {
        v33 = 138412546;
        selfCopy11 = eventCopy;
        v35 = 2112;
        selfCopy10 = self;
        v15 = "%@ beats %@ because it has an organizer";
LABEL_14:
        _os_log_impl(&dword_24A0AC000, dTStamp, v14, v15, &v33, 0x16u);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v16 = [(ASEvent *)self cachedOrganizerIsSelfWithAccount:accountCopy];
    v17 = [(ASEvent *)eventCopy cachedOrganizerIsSelfWithAccount:accountCopy];
    if (v16 && !v17)
    {
      dTStamp = DALoggingwithCategory();
      v14 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(dTStamp, v14))
      {
        v33 = 138412546;
        selfCopy11 = eventCopy;
        v35 = 2112;
        selfCopy10 = self;
        v15 = "%@ beats %@ because it has an organizer who isn't me";
        goto LABEL_14;
      }

LABEL_15:
      v10 = 0;
      goto LABEL_16;
    }

    if (!v16 && v17)
    {
      v10 = 1;
      dTStamp = DALoggingwithCategory();
      LOBYTE(v12) = *(MEMORY[0x277D03988] + 6);
      if (!os_log_type_enabled(dTStamp, v12))
      {
        goto LABEL_16;
      }

      v33 = 138412546;
      selfCopy11 = self;
      v35 = 2112;
      selfCopy10 = eventCopy;
      v13 = "%@ beats %@ because it has an organizer who isn't me";
      goto LABEL_5;
    }

    attendees = [(ASEvent *)self attendees];
    v21 = [attendees count];

    attendees2 = [(ASEvent *)eventCopy attendees];
    v23 = [attendees2 count];

    if (v21 && !v23)
    {
      v10 = 1;
      dTStamp = DALoggingwithCategory();
      v12 = *(MEMORY[0x277D03988] + 6);
      if (!os_log_type_enabled(dTStamp, *(MEMORY[0x277D03988] + 6)))
      {
        goto LABEL_16;
      }

      v33 = 138412546;
      selfCopy11 = self;
      v35 = 2112;
      selfCopy10 = eventCopy;
      v13 = "%@ beats %@ because it has attendees";
      goto LABEL_5;
    }

    if (!v21 && v23)
    {
      dTStamp = DALoggingwithCategory();
      v14 = *(MEMORY[0x277D03988] + 6);
      if (!os_log_type_enabled(dTStamp, v14))
      {
        goto LABEL_15;
      }

      v33 = 138412546;
      selfCopy11 = eventCopy;
      v35 = 2112;
      selfCopy10 = self;
      v15 = "%@ beats %@ because it has attendees";
      goto LABEL_14;
    }

    recurrence = [(ASEvent *)self recurrence];

    recurrence2 = [(ASEvent *)eventCopy recurrence];

    if (recurrence && !recurrence2)
    {
      v10 = 1;
      dTStamp = DALoggingwithCategory();
      v12 = *(MEMORY[0x277D03988] + 6);
      if (!os_log_type_enabled(dTStamp, *(MEMORY[0x277D03988] + 6)))
      {
        goto LABEL_16;
      }

      v33 = 138412546;
      selfCopy11 = self;
      v35 = 2112;
      selfCopy10 = eventCopy;
      v13 = "%@ beats %@ because it has a recurrence";
      goto LABEL_5;
    }

    if (!recurrence && recurrence2)
    {
      dTStamp = DALoggingwithCategory();
      v14 = *(MEMORY[0x277D03988] + 6);
      if (!os_log_type_enabled(dTStamp, v14))
      {
        goto LABEL_15;
      }

      v33 = 138412546;
      selfCopy11 = eventCopy;
      v35 = 2112;
      selfCopy10 = self;
      v15 = "%@ beats %@ because it has a recurrence";
      goto LABEL_14;
    }

    dTStamp = [(ASEvent *)self dTStamp];
    dTStamp2 = [(ASEvent *)eventCopy dTStamp];
    v27 = dTStamp2;
    if (dTStamp && dTStamp2)
    {
      v28 = [dTStamp compare:dTStamp2];
      if (v28 == -1)
      {
        v29 = DALoggingwithCategory();
        v31 = *(MEMORY[0x277D03988] + 6);
        if (!os_log_type_enabled(v29, v31))
        {
          goto LABEL_45;
        }

        v33 = 138412546;
        selfCopy11 = eventCopy;
        v35 = 2112;
        selfCopy10 = self;
        v32 = "%@ beats %@ because it has an later dTStamp";
        goto LABEL_44;
      }

      if (v28 == 1)
      {
        v10 = 1;
        v29 = DALoggingwithCategory();
        v30 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v29, v30))
        {
          v33 = 138412546;
          selfCopy11 = self;
          v35 = 2112;
          selfCopy10 = eventCopy;
          _os_log_impl(&dword_24A0AC000, v29, v30, "%@ beats %@ because it has a later dTStamp", &v33, 0x16u);
          v10 = 1;
        }

        goto LABEL_46;
      }
    }

    v29 = DALoggingwithCategory();
    v31 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v29, v31))
    {
LABEL_45:
      v10 = 0;
LABEL_46:

      goto LABEL_16;
    }

    v33 = 138412546;
    selfCopy11 = eventCopy;
    v35 = 2112;
    selfCopy10 = self;
    v32 = "%@ beats %@ because it's the new kid on the block";
LABEL_44:
    _os_log_impl(&dword_24A0AC000, v29, v31, v32, &v33, 0x16u);
    goto LABEL_45;
  }

  v10 = 1;
  dTStamp = DALoggingwithCategory();
  v12 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(dTStamp, *(MEMORY[0x277D03988] + 6)))
  {
    v33 = 138412546;
    selfCopy11 = self;
    v35 = 2112;
    selfCopy10 = eventCopy;
    v13 = "%@ beats %@ because it has an organizer";
LABEL_5:
    _os_log_impl(&dword_24A0AC000, dTStamp, v12, v13, &v33, 0x16u);
    v10 = 1;
  }

LABEL_16:

  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqualToEvent:(id)event
{
  v72 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = *(eventCopy + 21);
  if (v5 != self->_timeZone && ([(ASTimeZone *)v5 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v24 = *(eventCopy + 21);
    timeZone = self->_timeZone;
    v66 = 67109634;
    v67 = 2552;
    v68 = 2112;
    v69 = v24;
    v70 = 2112;
    v71 = timeZone;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
LABEL_84:
    _os_log_impl(&dword_24A0AC000, v22, v23, v26, &v66, 0x1Cu);
    goto LABEL_85;
  }

  v6 = *(eventCopy + 22);
  if (v6 != self->_allDayEvent && ([(NSNumber *)v6 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v27 = *(eventCopy + 22);
    allDayEvent = self->_allDayEvent;
    v66 = 67109634;
    v67 = 2553;
    v68 = 2112;
    v69 = v27;
    v70 = 2112;
    v71 = allDayEvent;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  v7 = *(eventCopy + 23);
  if (v7 != self->_body && ([(NSString *)v7 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v32 = *(eventCopy + 23);
    body = self->_body;
    v66 = 67109634;
    v67 = 2554;
    v68 = 2112;
    v69 = v32;
    v70 = 2112;
    v71 = body;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  if (eventCopy[136] != self->_bodyTruncated)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v22, v23))
    {
      v29 = @"NO";
      bodyTruncated = self->_bodyTruncated;
      if (eventCopy[136])
      {
        v31 = @"YES";
      }

      else
      {
        v31 = @"NO";
      }

      v66 = 67109634;
      v67 = 2556;
      v68 = 2112;
      if (bodyTruncated)
      {
        v29 = @"YES";
      }

      v69 = v31;
      v70 = 2112;
      v71 = v29;
      v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other _bodyTruncated of %@ vs. %@";
      goto LABEL_84;
    }

    goto LABEL_85;
  }

  v8 = *(eventCopy + 24);
  if (v8 != self->_busyStatus && ([(NSNumber *)v8 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v34 = *(eventCopy + 24);
    busyStatus = self->_busyStatus;
    v66 = 67109634;
    v67 = 2560;
    v68 = 2112;
    v69 = v34;
    v70 = 2112;
    v71 = busyStatus;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  v9 = *(eventCopy + 26);
  if (v9 != self->_dTStamp && ([(NSDate *)v9 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v36 = *(eventCopy + 26);
    dTStamp = self->_dTStamp;
    v66 = 67109634;
    v67 = 2561;
    v68 = 2112;
    v69 = v36;
    v70 = 2112;
    v71 = dTStamp;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  v10 = *(eventCopy + 27);
  if (v10 != self->_endTime && ([(NSDate *)v10 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v38 = *(eventCopy + 27);
    endTime = self->_endTime;
    v66 = 67109634;
    v67 = 2562;
    v68 = 2112;
    v69 = v38;
    v70 = 2112;
    v71 = endTime;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  v11 = *(eventCopy + 28);
  if (v11 != self->_location && ([(ASLocation *)v11 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v40 = *(eventCopy + 28);
    location = self->_location;
    v66 = 67109634;
    v67 = 2563;
    v68 = 2112;
    v69 = v40;
    v70 = 2112;
    v71 = location;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  v12 = *(eventCopy + 29);
  if (v12 != self->_meetingStatus && ([(NSNumber *)v12 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v42 = *(eventCopy + 29);
    meetingStatus = self->_meetingStatus;
    v66 = 67109634;
    v67 = 2564;
    v68 = 2112;
    v69 = v42;
    v70 = 2112;
    v71 = meetingStatus;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  v13 = *(eventCopy + 32);
  if (v13 != self->_reminderMinsBefore && ([(NSNumber *)v13 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v44 = *(eventCopy + 32);
    reminderMinsBefore = self->_reminderMinsBefore;
    v66 = 67109634;
    v67 = 2568;
    v68 = 2112;
    v69 = v44;
    v70 = 2112;
    v71 = reminderMinsBefore;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  v14 = *(eventCopy + 33);
  if (v14 != self->_sensitivity && ([(NSNumber *)v14 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v46 = *(eventCopy + 33);
    sensitivity = self->_sensitivity;
    v66 = 67109634;
    v67 = 2569;
    v68 = 2112;
    v69 = v46;
    v70 = 2112;
    v71 = sensitivity;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  v15 = *(eventCopy + 34);
  if (v15 != self->_subject && ([(NSString *)v15 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v48 = *(eventCopy + 34);
    subject = self->_subject;
    v66 = 67109634;
    v67 = 2570;
    v68 = 2112;
    v69 = v48;
    v70 = 2112;
    v71 = subject;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  v16 = *(eventCopy + 35);
  if (v16 != self->_startTime && ([(NSDate *)v16 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v50 = *(eventCopy + 35);
    startTime = self->_startTime;
    v66 = 67109634;
    v67 = 2571;
    v68 = 2112;
    v69 = v50;
    v70 = 2112;
    v71 = startTime;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  v17 = *(eventCopy + 40);
  if (v17 != self->_eventUID && ([(ASEventUID *)v17 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v52 = *(eventCopy + 40);
    eventUID = self->_eventUID;
    v66 = 67109634;
    v67 = 2572;
    v68 = 2112;
    v69 = v52;
    v70 = 2112;
    v71 = eventUID;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  v18 = *(eventCopy + 43);
  if (v18 != self->_recurrence && ([(ASRecurrence *)v18 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v54 = *(eventCopy + 43);
    recurrence = self->_recurrence;
    v66 = 67109634;
    v67 = 2574;
    v68 = 2112;
    v69 = v54;
    v70 = 2112;
    v71 = recurrence;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  if (([*(eventCopy + 41) count] || -[NSArray count](self->_attendees, "count")) && (objc_msgSend(*(eventCopy + 41), "isEqual:", self->_attendees) & 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v56 = *(eventCopy + 41);
    attendees = self->_attendees;
    v66 = 67109634;
    v67 = 2576;
    v68 = 2112;
    v69 = v56;
    v70 = 2112;
    v71 = attendees;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  if (([*(eventCopy + 44) count] || -[NSArray count](self->_exceptions, "count")) && (objc_msgSend(*(eventCopy + 44), "isEqual:", self->_exceptions) & 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v58 = *(eventCopy + 44);
    exceptions = self->_exceptions;
    v66 = 67109634;
    v67 = 2577;
    v68 = 2112;
    v69 = v58;
    v70 = 2112;
    v71 = exceptions;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  v19 = *(eventCopy + 47);
  if (v19 != self->_appointmentReplyTime && ([(NSDate *)v19 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v60 = *(eventCopy + 47);
    appointmentReplyTime = self->_appointmentReplyTime;
    v66 = 67109634;
    v67 = 2579;
    v68 = 2112;
    v69 = v60;
    v70 = 2112;
    v71 = appointmentReplyTime;
    v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
    goto LABEL_84;
  }

  v20 = *(eventCopy + 38);
  if (v20 != self->_onlineMeetingExternalLink && ([(NSString *)v20 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v22, v23))
    {
      v62 = *(eventCopy + 38);
      onlineMeetingExternalLink = self->_onlineMeetingExternalLink;
      v66 = 67109634;
      v67 = 2581;
      v68 = 2112;
      v69 = v62;
      v70 = 2112;
      v71 = onlineMeetingExternalLink;
      v26 = "Blowing out of isEqualToEvent on line %d , as I'm looking at other iVar of %@ vs. %@";
      goto LABEL_84;
    }

LABEL_85:

    v21 = 0;
    goto LABEL_86;
  }

  v21 = 1;
LABEL_86:

  v64 = *MEMORY[0x277D85DE8];
  return v21;
}

- (id)eventByMergingInLosingEvent:(id)event account:(id)account
{
  v85 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  accountCopy = account;
  selfCopy = self;
  v9 = objc_opt_new();
  calEvent = [(ASEvent *)selfCopy calEvent];
  if (!calEvent)
  {
    calEvent = [eventCopy calEvent];
  }

  [v9 setCalEvent:calEvent];
  [v9 loadClientIDs];
  serverID = [(ASChangedCollectionLeaf *)selfCopy serverID];
  if (serverID)
  {
    [v9 setServerID:serverID];
  }

  else
  {
    serverID2 = [eventCopy serverID];
    [v9 setServerID:serverID2];
  }

  timeZone = [(ASEvent *)selfCopy timeZone];
  [v9 setTimeZone:timeZone];

  allDayEvent = [(ASEvent *)selfCopy allDayEvent];
  [v9 setAllDayEvent:allDayEvent];

  body = [(ASEvent *)selfCopy body];
  if (![body length])
  {
    body2 = [eventCopy body];

    body = body2;
  }

  [v9 setBody:body];
  busyStatus = [(ASEvent *)selfCopy busyStatus];
  [v9 setBusyStatus:busyStatus];

  categories = [(ASEvent *)selfCopy categories];
  [v9 setCategories:categories];

  dTStamp = [(ASEvent *)selfCopy dTStamp];
  dTStamp2 = [eventCopy dTStamp];
  v21 = [dTStamp compare:dTStamp2];

  if (v21 == -1)
  {
    dTStamp3 = [eventCopy dTStamp];

    dTStamp = dTStamp3;
  }

  [v9 setDTStamp:dTStamp];
  endTime = [(ASEvent *)selfCopy endTime];
  [v9 setEndTime:endTime];

  location = [(ASEvent *)selfCopy location];
  if (!location)
  {
    location = [eventCopy location];
  }

  [v9 setLocation:{location, location}];
  meetingStatus = [(ASEvent *)selfCopy meetingStatus];
  [v9 setMeetingStatus:meetingStatus];

  organizerName = [(ASEvent *)selfCopy organizerName];
  [v9 setOrganizerName:organizerName];

  organizerEmail = [(ASEvent *)selfCopy organizerEmail];
  [v9 setOrganizerEmail:organizerEmail];

  reminderMinsBefore = [(ASEvent *)selfCopy reminderMinsBefore];
  [v9 setReminderMinsBefore:reminderMinsBefore];

  sensitivity = [(ASEvent *)selfCopy sensitivity];
  [v9 setSensitivity:sensitivity];

  subject = [(ASEvent *)selfCopy subject];
  [v9 setSubject:subject];

  startTime = [(ASEvent *)selfCopy startTime];
  [v9 setStartTime:startTime];

  eventUID = [(ASEvent *)selfCopy eventUID];
  [v9 setEventUID:eventUID];

  attendees = [(ASEvent *)selfCopy attendees];
  [v9 setAttendees:attendees];

  attendeesPendingDeletion = [(ASEvent *)selfCopy attendeesPendingDeletion];
  [v9 setAttendeesPendingDeletion:attendeesPendingDeletion];

  recurrence = [(ASEvent *)selfCopy recurrence];
  if (recurrence)
  {
    [v9 setRecurrence:recurrence];
  }

  else
  {
    recurrence2 = [eventCopy recurrence];
    [v9 setRecurrence:recurrence2];
  }

  appointmentReplyTime = [(ASEvent *)selfCopy appointmentReplyTime];
  v60 = dTStamp;
  v61 = body;
  if (appointmentReplyTime)
  {
    [v9 setAppointmentReplyTime:appointmentReplyTime];
  }

  else
  {
    appointmentReplyTime2 = [eventCopy appointmentReplyTime];
    [v9 setAppointmentReplyTime:appointmentReplyTime2];
  }

  v62 = accountCopy;
  [v9 _determineSelfnessWithLocalEvent:objc_msgSend(v9 forAccount:{"calEvent"), accountCopy}];
  v39 = objc_opt_new();
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  exceptions = [eventCopy exceptions];
  v41 = [exceptions countByEnumeratingWithState:&v67 objects:v84 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v68;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v68 != v43)
        {
          objc_enumerationMutation(exceptions);
        }

        v45 = *(*(&v67 + 1) + 8 * i);
        exceptionStartTime = [v45 exceptionStartTime];
        [v39 setObject:v45 forKeyedSubscript:exceptionStartTime];
      }

      v42 = [exceptions countByEnumeratingWithState:&v67 objects:v84 count:16];
    }

    while (v42);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  exceptions2 = [(ASEvent *)selfCopy exceptions];
  v48 = [exceptions2 countByEnumeratingWithState:&v63 objects:v83 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v64;
    do
    {
      for (j = 0; j != v49; ++j)
      {
        if (*v64 != v50)
        {
          objc_enumerationMutation(exceptions2);
        }

        v52 = *(*(&v63 + 1) + 8 * j);
        exceptionStartTime2 = [v52 exceptionStartTime];
        [v39 setObject:v52 forKeyedSubscript:exceptionStartTime2];
      }

      v49 = [exceptions2 countByEnumeratingWithState:&v63 objects:v83 count:16];
    }

    while (v49);
  }

  allValues = [v39 allValues];
  [v9 setExceptions:allValues];

  v55 = DALoggingwithCategory();
  v56 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v55, v56))
  {
    *buf = 134219266;
    v72 = selfCopy;
    v73 = 2112;
    v74 = selfCopy;
    v75 = 2048;
    v76 = eventCopy;
    v77 = 2112;
    v78 = eventCopy;
    v79 = 2048;
    v80 = v9;
    v81 = 2112;
    v82 = v9;
    _os_log_impl(&dword_24A0AC000, v55, v56, "Merged winner %p %@ and loser %p %@, and got %p %@", buf, 0x3Eu);
  }

  v57 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)eventByMergingInEvent:(id)event account:(id)account
{
  eventCopy = event;
  accountCopy = account;
  v8 = [(ASEvent *)self _selfIsMoreCorrectThanOtherEvent:eventCopy account:accountCopy];
  selfCopy = self;
  if (v8)
  {
    v10 = selfCopy;
  }

  else
  {
    v10 = eventCopy;
  }

  if (v8)
  {
    v11 = eventCopy;
  }

  else
  {
    v11 = selfCopy;
  }

  v12 = eventCopy;
  v13 = [(ASEvent *)v10 eventByMergingInLosingEvent:v11 account:accountCopy];

  return v13;
}

- (void)setExceptions:(id)exceptions
{
  v17 = *MEMORY[0x277D85DE8];
  exceptionsCopy = exceptions;
  if (self->_exceptions != exceptionsCopy)
  {
    objc_storeStrong(&self->_exceptions, exceptions);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = exceptionsCopy;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v12 + 1) + 8 * v10++) setOriginalEvent:{self, v12}];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setRecurrence:(id)recurrence
{
  recurrenceCopy = recurrence;
  if (self->_recurrence != recurrenceCopy)
  {
    v6 = recurrenceCopy;
    objc_storeStrong(&self->_recurrence, recurrence);
    [(ASRecurrence *)self->_recurrence setParentEvent:self];
    recurrenceCopy = v6;
  }
}

- (void)loadCalRecordForAccount:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)loadCalRecordForAccount:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)initWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)encodeWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end