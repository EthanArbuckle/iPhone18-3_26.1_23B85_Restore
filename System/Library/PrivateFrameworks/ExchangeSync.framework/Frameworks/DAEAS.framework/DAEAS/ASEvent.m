@interface ASEvent
+ (ASEvent)eventWithCalEvent:(void *)a3 serverID:(id)a4 account:(id)a5;
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
+ (id)attendeeExternalRepClasses;
+ (id)calendarItemExternalRepClasses;
+ (void)_setFakeDTStampDateForUnitTests:(id)a3;
+ (void)setSystemTimeZoneNameForUnitTests:(id)a3;
- (ASEvent)init;
- (ASEvent)initWithCalEvent:(void *)a3 serverID:(id)a4 account:(id)a5;
- (ASEvent)initWithCoder:(id)a3;
- (BOOL)_selfIsMoreCorrectThanOtherEvent:(id)a3 account:(id)a4;
- (BOOL)cachedOrganizerIsSelfWithAccount:(id)a3;
- (BOOL)deleteFromCalendar;
- (BOOL)fillOutMissingExternalIdsForAccountID:(id)a3;
- (BOOL)hasOccurrenceInTheFuture;
- (BOOL)isEqualToEvent:(id)a3;
- (BOOL)isTombstoneEndTimeInFuture;
- (BOOL)loadCalRecordForAccount:(id)a3;
- (BOOL)purgeAttendeesPendingDeletionForAccountID:(id)a3;
- (BOOL)saveServerIDAndUidToCalendar;
- (BOOL)setCalEventWithExistingRecord:(void *)a3 intoCalendar:(void *)a4;
- (BOOL)verifyExternalIdsForAccountID:(id)a3;
- (NSCalendarDate)endDateForCalFramework;
- (NSCalendarDate)startDateForCalFramework;
- (NSString)description;
- (id)_attachmentFromAttachmentRef:(void *)a3;
- (id)_transformedEndDateForActiveSync:(id)a3 isFloating:(BOOL)a4;
- (id)_transformedEndDateForCalFramework:(id)a3 startDate:(id)a4;
- (id)_transformedStartDateForActiveSync:(id)a3 isFloating:(BOOL)a4;
- (id)_transformedStartDateForCalFramework:(id)a3;
- (id)eventByMergingInEvent:(id)a3 account:(id)a4;
- (id)eventByMergingInLosingEvent:(id)a3 account:(id)a4;
- (id)timeZoneForCalFramework;
- (id)timeZoneNameForCalFramework;
- (id)uidGeneratedIfNecessaryWithLocalEvent:(void *)a3 forAccount:(id)a4;
- (int)CalCalendarItemStatus;
- (int)_meetingResponseShouldUseEmail:(BOOL)a3 shouldFilterForEmail:(BOOL)a4;
- (int)_nextAttendeeStatusWithOldStatus:(int)a3 meetingClassType:(int)a4 account:(id)a5;
- (int)_nextEventStatusWithOldStatus:(int)a3 meetingClassType:(int)a4 account:(id)a5;
- (int)calAttendeePendingStatus;
- (int)calAttendeeStatus;
- (int)meetingResponseForAccount:(id)a3;
- (int)meetingResponseForEmail;
- (int)selfAttendeeMeetingResponse;
- (void)_determineSelfnessWithLocalEvent:(void *)a3 forAccount:(id)a4;
- (void)_loadAttachmentsChangesForEvent:(void *)a3 account:(id)a4;
- (void)_loadAttributesFromCalEvent:(void *)a3 forAccount:(id)a4;
- (void)_sanitizeLocalExceptionsForAccount:(id)a3;
- (void)appendActiveSyncDataForTask:(id)a3 toWBXMLData:(id)a4;
- (void)copySelfAttendeeGeneratedIfNecessaryWithLocalEvent:(void *)a3 forAccount:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)informExceptionsThatParentIsReadyForAccount:(id)a3;
- (void)loadClientIDs;
- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8;
- (void)postProcessApplicationData;
- (void)setBody:(id)a3;
- (void)setCalEvent:(void *)a3;
- (void)setExceptions:(id)a3;
- (void)setRecurrence:(id)a3;
- (void)updateAttachmentsForAccountID:(id)a3;
@end

@implementation ASEvent

+ (void)setSystemTimeZoneNameForUnitTests:(id)a3
{
  v4 = a3;
  if (kUnitTestTimeZoneName != v4)
  {
    v5 = v4;
    objc_storeStrong(&kUnitTestTimeZoneName, a3);
    v4 = v5;
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
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
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
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
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
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
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
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
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
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_27 = v2;
    notifyOfUnknownTokens___haveChecked_27 = 1;
  }

  return v2 & 1;
}

- (id)_transformedStartDateForCalFramework:(id)a3
{
  v4 = a3;
  v5 = [(ASEvent *)self allDayEvent];
  v6 = [v5 intValue];

  if (v6)
  {
    v7 = [v4 nearestMidnight];
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

- (id)_transformedEndDateForCalFramework:(id)a3 startDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ASEvent *)self allDayEvent];
  v9 = [v8 intValue];

  if (v9)
  {
    v10 = [(ASEvent *)self timeZone];
    v11 = [v7 tzDateToDateInGMT:v10];

    v12 = [(ASEvent *)self timeZone];
    v13 = [v6 tzDateToDateInGMT:v12];

    v14 = [(ASEvent *)self _transformedStartDateForCalFramework:v7];
    [v13 timeIntervalSinceDate:v11];
    v16 = [v14 dateByAddingTimeInterval:v15 + -1.0];
  }

  else
  {
    v16 = v6;
  }

  return v16;
}

- (id)_transformedStartDateForActiveSync:(id)a3 isFloating:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(ASEvent *)self allDayEvent];
  v8 = [v7 intValue];

  if (v8 || v4)
  {
    v10 = [(ASEvent *)self timeZone];
    v9 = [v6 gmtDateToDateInTimeZone:v10];
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

- (id)_transformedEndDateForActiveSync:(id)a3 isFloating:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(ASEvent *)self allDayEvent];
  v8 = [v7 intValue];

  v9 = v6;
  if (v8)
  {
    v9 = [v6 dateByAddingYears:0 months:0 days:0 hours:0 minutes:0 seconds:1];
  }

  v10 = [(ASEvent *)self allDayEvent];
  v11 = [v10 intValue];

  if (v11 || v4)
  {
    v13 = [(ASEvent *)self timeZone];
    v12 = [v9 gmtDateToDateInTimeZone:v13];
  }

  else
  {
    v12 = v9;
  }

  return v12;
}

- (id)timeZoneNameForCalFramework
{
  v3 = [(ASEvent *)self allDayEvent];
  v4 = [v3 intValue];

  if (v4)
  {
    v5 = @"_float";
  }

  else
  {
    v6 = [(ASEvent *)self timeZone];
    v7 = [v6 name];

    if (v7)
    {
      [(ASEvent *)self timeZone];
    }

    else
    {
      [MEMORY[0x277CBEBB0] defaultTimeZone];
    }
    v8 = ;
    v5 = [v8 name];
  }

  return v5;
}

- (id)timeZoneForCalFramework
{
  v3 = [(ASEvent *)self allDayEvent];
  v4 = [v3 intValue];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(ASEvent *)self timeZone];

    if (v6)
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
  v4 = NSStringFromClass(a1);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v60.receiver = a1;
    v60.super_class = &OBJC_METACLASS___ASEvent;
    v6 = objc_msgSendSuper2(&v60, sel_asParseRules);
    v51 = [v6 mutableCopy];

    v47 = objc_alloc(MEMORY[0x277CBEAC0]);
    v45 = [ASParseRule alloc];
    v44 = objc_opt_class();
    v43 = MEMORY[0x277CBEAC0];
    v58 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:4 token:27 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v52 = a1;
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
    v27 = NSStringFromClass(v52);
    [v26 setObject:v51 forKey:v27];
  }

  return v5;
}

- (id)uidGeneratedIfNecessaryWithLocalEvent:(void *)a3 forAccount:(id)a4
{
  v6 = a4;
  v7 = [(ASEvent *)self eventUID];
  v8 = [v7 uidForCalFramework];

  if (!v8)
  {
    if (a3)
    {
      v9 = CalCalendarItemCopyUniqueIdentifier();
      v10 = v9;
      if (!v9)
      {
        v10 = [MEMORY[0x277CCACA8] da_new64ByteGUID];
      }

      v11 = [[ASEventUID alloc] initWithCalFrameworkString:v10];
      v12 = [(ASEvent *)self exceptionDate];

      if (v12)
      {
        v13 = [(ASEvent *)self exceptionDate];
        [(ASEventUID *)v11 setExceptionDate:v13];
      }

      [(ASEvent *)self setEventUID:v11];
      v14 = [(ASEvent *)self eventUID];
      v15 = [v14 uidForCalFramework];

      if (!v9)
      {
        CalCalendarItemSetUniqueIdentifier();
        v16 = +[ASLocalDBHelper sharedInstance];
        v17 = [v6 accountID];
        [v16 calSaveDatabaseForAccountID:v17];
      }

      v8 = v15;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)copySelfAttendeeGeneratedIfNecessaryWithLocalEvent:(void *)a3 forAccount:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    subject = self->_subject;
    v9 = [(ASChangedCollectionLeaf *)self serverID];
    v27 = 138412546;
    v28 = subject;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&dword_24A0AC000, v6, v7, "Event %@ %@ is looking for a self attendee", &v27, 0x16u);
  }

  Attendee = CalCalendarItemCopySelfAttendee();
  if (!Attendee)
  {
    v11 = CalCalendarItemCopyAttendees();
    if (-[ASEvent cachedOrganizerIsSelfWithAccount:](self, "cachedOrganizerIsSelfWithAccount:", v5) && ![v11 count])
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
        if (v13 && [v5 accountContainsEmailAddress:v13])
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
          v16 = [(ASChangedCollectionLeaf *)self serverID];
          v27 = 138412546;
          v28 = v15;
          v29 = 2112;
          v30 = v16;
          _os_log_impl(&dword_24A0AC000, v14, v7, "Adding self attendee to event %@ %@", &v27, 0x16u);
        }

        v17 = +[ASLocalDBHelper sharedInstance];
        v18 = [v5 accountID];
        [v17 calDatabaseForAccountID:v18];
        Attendee = CalDatabaseCreateAttendee();

        MEMORY[0x24C210620](Attendee, [v5 emailAddress]);
        CalAttendeeSetType();
        CalAttendeeSetStatus();
        v19 = DALoggingwithCategory();
        if (os_log_type_enabled(v19, v7))
        {
          v20 = [v5 emailAddress];
          v21 = self->_subject;
          v22 = [(ASChangedCollectionLeaf *)self serverID];
          v27 = 138412802;
          v28 = v20;
          v29 = 2112;
          v30 = v21;
          v31 = 2112;
          v32 = v22;
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

- (id)_attachmentFromAttachmentRef:(void *)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v6 = CalAttachmentCopyExternalID();
  [v5 setName:v6];

  v7 = CalAttachmentCopyFilename();
  [v5 setDisplayName:v7];

  v8 = MEMORY[0x24C210510](a3);
  [v5 setSize:v8];

  v9 = CalAttachmentCopyUUID();
  [v5 setClientId:v9];

  v10 = CalAttachmentCopyLocalURL();
  [v5 setLocalPath:v10];

  v11 = [v5 localPath];

  if (!v11)
  {
    v12 = DALoggingwithCategory();
    v13 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v12, v13))
    {
      subject = self->_subject;
      v15 = [v5 clientId];
      v18 = 138412546;
      v19 = subject;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_24A0AC000, v12, v13, "Local URL not found for event %@, attachment client Id %@", &v18, 0x16u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_loadAttachmentsChangesForEvent:(void *)a3 account:(id)a4
{
  v4 = a4;
  v5 = +[ASLocalDBHelper sharedInstance];
  v6 = [v4 accountID];
  v7 = [v5 calDatabaseForAccountID:v6];

  if (v7)
  {
    theDict = 0;
    v8 = CalCalendarItemCopyCalendar();
    if (CalDatabaseCopyAttachmentChangesInCalendar() != -1 && theDict != 0)
    {
      v32 = v8;
      v33 = v4;
      v35 = [MEMORY[0x277CBEB18] array];
      v38 = [MEMORY[0x277CBEB18] array];
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
                [v35 addObject:v29];
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
              [v38 addObject:v30];
            }
          }

          ++v20;
        }

        while (Count != v20);
      }

      [(ASEvent *)self setAttachments:v35];
      [(ASEvent *)self setDeletedAttachmentsIDs:v38];
      CFRelease(theDict);

      v8 = v32;
      v4 = v33;
    }

    CFRelease(v8);
  }
}

- (void)_loadAttributesFromCalEvent:(void *)a3 forAccount:(id)a4
{
  v132 = *MEMORY[0x277D85DE8];
  v119 = a4;
  v5 = [v119 protocol];
  v6 = [v5 useFloatingTimeForAllDayEvents];

  if (!a3)
  {
    goto LABEL_97;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", CalCalendarItemGetRowID()];
  [(ASChangedCollectionLeaf *)self setClientID:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:CalEventIsAllDay()];
  [(ASEvent *)self setAllDayEvent:v8];

  v9 = [(ASEvent *)self uidGeneratedIfNecessaryWithLocalEvent:a3 forAccount:v119];
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
    v26 = [started name];

    if (v26)
    {
      v27 = [ASTimeZone alloc];
      v28 = [started name];
      v24 = [(ASTimeZone *)v27 initWithTZNameFromCalDB:v28];
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
    v29 = [MEMORY[0x277CBEBB0] defaultTimeZone];
    v30 = [ASTimeZone alloc];
    v31 = [v29 name];
    v24 = [(ASTimeZone *)v30 initWithTZNameFromCalDB:v31];
  }

LABEL_29:
  v108 = v24;
  [(ASEvent *)self setTimeZone:v24];
  v32 = CalCalendarItemCopyStartDate();
  v111 = v32;
  if (v6)
  {
    v33 = v32;
  }

  else
  {
    v34 = [(ASEvent *)self timeZone];
    v35 = [v111 dateWithCalendarFormat:0 timeZone:v34];
    v36 = [(ASEvent *)self _transformedStartDateForActiveSync:v35 isFloating:IsFloating];

    v33 = v36;
  }

  v109 = v33;
  [(ASEvent *)self setStartTime:?];
  v37 = MEMORY[0x277CBEAA8];
  CalEventGetEndDate();
  v115 = [v37 dateWithTimeIntervalSinceReferenceDate:?];
  if (v6)
  {
    v38 = [(ASEvent *)self allDayEvent];
    v39 = [v38 intValue];

    if (v39)
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
    v40 = [(ASEvent *)self timeZone];
    v41 = [v115 dateWithCalendarFormat:0 timeZone:v40];
    v114 = [(ASEvent *)self _transformedEndDateForActiveSync:v41 isFloating:IsFloating];

    [(ASEvent *)self setEndTime:v114];
  }

  v112 = CalCalendarItemCopyRecurrences();
  if ([v112 count])
  {
    v42 = [v112 objectAtIndexedSubscript:0];

    v43 = [[ASRecurrence alloc] initWithCalRecurrence:v42 parentEvent:self useFloatingTimeForAllDayEvents:v6];
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
                v55 = [(ASChangedCollectionLeaf *)self serverID];
                *buf = 138412546;
                v129 = subject;
                v130 = 2112;
                v131 = v55;
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

        if (v66 != a3)
        {
          v67 = [[ASEventException alloc] initWithCalEvent:v66 originalEvent:self account:v119];
          v68 = v67;
          if (v67)
          {
            v69 = [(ASEventException *)v67 exceptionStartTime];
            [v64 addObject:v69];

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
        v72 = [(ASEvent *)self timeZone];
        v73 = [v71 dateWithCalendarFormat:0 timeZone:v72];
        v74 = [(ASEvent *)self _transformedStartDateForActiveSync:v73 isFloating:IsFloating];

        if (([v64 containsObject:v74] & 1) == 0)
        {
          v75 = [[ASEventException alloc] initWithExceptionStartTime:v74];
          v76 = v75;
          if (v75)
          {
            v77 = [(ASEventException *)v75 exceptionStartTime];
            [v64 addObject:v77];

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
    v80 = [MEMORY[0x277CBEAA8] date];
    [(ASEvent *)self setDTStamp:v80];
  }

  v81 = CalEventCopyResponseComment();
  [(ASEvent *)self setResponseComment:v81];

  CalEventGetProposedStartDate();
  if (v82 != *MEMORY[0x277CF78F0])
  {
    v83 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
    [(ASEvent *)self setProposedStartTime:v83];
    v84 = [(ASEvent *)self endTime];
    v85 = [(ASEvent *)self startTime];
    [v84 timeIntervalSinceDate:v85];
    v87 = v86;

    v88 = MEMORY[0x277CBEAA8];
    v89 = [(ASEvent *)self proposedStartTime];
    v90 = [v88 dateWithTimeInterval:v89 sinceDate:v87];
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

  [(ASEvent *)self _loadAttachmentsChangesForEvent:a3 account:v119];
  v102 = MEMORY[0x277CBEAA8];
  CalEventGetOriginalStartDate();
  v103 = [v102 dateWithTimeIntervalSinceReferenceDate:?];
  if (v103)
  {
    v104 = [(ASEvent *)self timeZone];
    v105 = [v103 dateWithCalendarFormat:0 timeZone:v104];
    v106 = [(ASEvent *)self _transformedStartDateForActiveSync:v105 isFloating:IsFloating];

    [(ASEvent *)self setExceptionDate:v106];
  }

  [(ASEvent *)self _determineSelfnessWithLocalEvent:a3 forAccount:v119];

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

- (ASEvent)initWithCalEvent:(void *)a3 serverID:(id)a4 account:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = ASEvent;
  v10 = [(ASChangedCollectionLeaf *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_calculateNextStatusAsIfMeetingRequest = 0;
    v10->_shouldUpdateStatus = 1;
    v10->_haveCheckedOrganizerEmail = 0;
    [(ASChangedCollectionLeaf *)v10 setServerID:v8];
    [(ASEvent *)v11 _loadAttributesFromCalEvent:a3 forAccount:v9];
    [(ASEvent *)v11 setCalEvent:a3];
    v11->_meetingResponseToEmailAbout = -1;
  }

  return v11;
}

+ (ASEvent)eventWithCalEvent:(void *)a3 serverID:(id)a4 account:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[a1 alloc] initWithCalEvent:a3 serverID:v9 account:v8];

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
  v5 = [(ASChangedCollectionLeaf *)self serverID];
  v6 = [(ASChangedCollectionLeaf *)self clientID];
  subject = self->_subject;
  v8 = [v3 stringWithFormat:@"<%@: [%@] [%@] [%@] [%@]>", v4, v5, v6, subject, self->_startTime];

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
  v3 = [(ASEvent *)self calEvent];
  if (v3)
  {
    [(ASEvent *)self calEvent];

    LODWORD(v3) = CalCalendarItemGetStatus();
  }

  return v3;
}

- (int)_nextEventStatusWithOldStatus:(int)a3 meetingClassType:(int)a4 account:(id)a5
{
  v8 = a5;
  if (self->_calculateNextStatusAsIfMeetingRequest)
  {
    if (a4 == 2)
    {
      a3 = 3;
    }

    else
    {
      a3 = 1;
    }
  }

  else
  {
    meetingStatus = self->_meetingStatus;
    if (meetingStatus && ([(NSNumber *)meetingStatus intValue]& 4) != 0)
    {
      a3 = 3;
    }
  }

  return a3;
}

- (int)_nextAttendeeStatusWithOldStatus:(int)a3 meetingClassType:(int)a4 account:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (self->_calculateNextStatusAsIfMeetingRequest)
  {
    v9 = [v7 protocol];
    v10 = [v9 serverUpdatesAttendeeStatusOnEvents];

    if (a3 == 7)
    {
      v11 = 0;
    }

    else
    {
      v11 = a3;
    }

    if (v10)
    {
      a3 = v11;
    }

    else
    {
      a3 = 0;
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
        a3 = dword_24A14DDC0[v13];
      }
    }
  }

  return a3;
}

- (int)_meetingResponseShouldUseEmail:(BOOL)a3 shouldFilterForEmail:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
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
      if (v5)
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
    v14 = !v4;
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

- (int)meetingResponseForAccount:(id)a3
{
  v4 = a3;
  v5 = [v4 protocol];
  v6 = [v5 sendEmailForMeetingInvitationAndResponse];
  v7 = [v4 protocol];

  LODWORD(self) = -[ASEvent _meetingResponseShouldUseEmail:shouldFilterForEmail:](self, "_meetingResponseShouldUseEmail:shouldFilterForEmail:", v6, [v7 useEventIdsInMeetingResponse] ^ 1);
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

- (BOOL)setCalEventWithExistingRecord:(void *)a3 intoCalendar:(void *)a4
{
  if (a3)
  {
    [(ASEvent *)self setCalEvent:a3, a4];
  }

  return a3 != 0;
}

- (void)updateAttachmentsForAccountID:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(ASEvent *)self attachments];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = +[ASLocalDBHelper sharedInstance];
        [v11 calDatabaseForAccountID:v4];

        v12 = [v10 clientId];
        v13 = CalDatabaseCopyAttachmentWithUUID();

        if (v13)
        {
          v14 = [v10 name];
          CalAttachmentSetExternalID();
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_sanitizeLocalExceptionsForAccount:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSArray count](self->_exceptions, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v28 = self;
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
        v12 = [(ASEventException *)v11 exceptionStartTime];
        if (v12)
        {
          v13 = [(ASEventException *)v11 exceptionStartTime];
          [v4 setObject:v11 forKeyedSubscript:v13];
        }

        else
        {
          v13 = DALoggingwithCategory();
          if (os_log_type_enabled(v13, v9))
          {
            *buf = 138412546;
            v34 = v11;
            v35 = 2112;
            v36 = v28;
            _os_log_impl(&dword_24A0AC000, v13, v9, "Exception %@ with parent %@ has no start time.  Ignoring it", buf, 0x16u);
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v7);
  }

  v14 = v28;
  [(ASEvent *)v28 calEvent];
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
        v19 = [[ASEventException alloc] initWithCalEvent:v18 originalEvent:v14 account:v27];
        v20 = [(ASEventException *)v19 exceptionStartTime];
        v21 = [v4 objectForKeyedSubscript:v20];

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

        v14 = v28;
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

  v25 = [v4 allValues];
  [(ASEvent *)v14 setExceptions:v25];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)informExceptionsThatParentIsReadyForAccount:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

        [*(*(&v11 + 1) + 8 * v9++) takeValuesFromParentForAccount:{v4, v11}];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_determineSelfnessWithLocalEvent:(void *)a3 forAccount:(id)a4
{
  v6 = a4;
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
    v20 = [(ASEvent *)self organizerEmail];
    v21 = [v20 length];

    if (v21)
    {
      v22 = [(ASEvent *)self organizerEmail];
      self->_cachedOrganizerIsSelf = [v6 accountContainsEmailAddress:v22];
    }
  }

LABEL_4:
  v9 = [(ASEvent *)self organizerEmail];
  if ([v9 length])
  {
LABEL_5:

    goto LABEL_6;
  }

  v11 = [(ASEvent *)self attendees];
  if (![v11 count])
  {

    goto LABEL_5;
  }

  cachedOrganizerIsSelf = self->_cachedOrganizerIsSelf;

  if (a3 && cachedOrganizerIsSelf)
  {
    Organizer = CalCalendarItemCopyOrganizer();
    if (Organizer)
    {
      goto LABEL_17;
    }

    v14 = +[ASLocalDBHelper sharedInstance];
    v15 = [v6 accountID];
    [v14 calDatabaseForAccountID:v15];
    Organizer = CalDatabaseCreateOrganizer();

    CalOrganizerSetIsSelf();
    MEMORY[0x24C210E70](Organizer, [v6 usernameWithoutDomain]);
    MEMORY[0x24C210E80](Organizer, [v6 emailAddress]);
    CalCalendarItemSetOrganizer();
    v16 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v16, v17))
    {
      *v23 = 0;
      _os_log_impl(&dword_24A0AC000, v16, v17, "Saving cal DB for an event without organizer. The organizer is set to self.", v23, 2u);
    }

    v18 = +[ASLocalDBHelper sharedInstance];
    v19 = [v6 accountID];
    [v18 calDatabaseForAccountID:v19];
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
  v3 = [(ASChangedCollectionLeaf *)self applicationData];
  v105 = [v3 objectForKeyedSubscript:&unk_285D57D80];

  v4 = [(ASChangedCollectionLeaf *)self applicationData];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:1041];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [MEMORY[0x277CBEAA8] dateWithActiveSyncStringWithoutSeparators:v6];
      [(ASEvent *)self setDTStamp:v7];
    }
  }

  v8 = [(ASChangedCollectionLeaf *)self applicationData];
  v9 = [v8 count];

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

  v13 = [(ASChangedCollectionLeaf *)self applicationData];
  v14 = [MEMORY[0x277CCABB0] numberWithInt:1030];
  v15 = [v13 objectForKey:v14];

  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v15, "intValue")}];
      [(ASEvent *)self setAllDayEvent:v16];
    }
  }

  v17 = [(ASChangedCollectionLeaf *)self applicationData];
  v18 = [v17 objectForKeyedSubscript:&unk_285D57D98];

  if (v18)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithInt:4363];
    v20 = [v18 objectForKey:v19];
  }

  else
  {
    v19 = [(ASChangedCollectionLeaf *)self applicationData];
    v21 = [MEMORY[0x277CCABB0] numberWithInt:1035];
    v20 = [v19 objectForKey:v21];
  }

  if (v20)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEvent *)self setBody:v20];
    }
  }

  v22 = [(ASChangedCollectionLeaf *)self applicationData];
  v23 = [MEMORY[0x277CCABB0] numberWithInt:1038];
  v24 = [v22 objectForKey:v23];

  if (v24)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEvent *)self setCategories:v24];
    }
  }

  v25 = [(ASChangedCollectionLeaf *)self applicationData];
  v26 = [MEMORY[0x277CCABB0] numberWithInt:1042];
  v27 = [v25 objectForKey:v26];

  if (v27)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v28 = [MEMORY[0x277CBEAA8] dateWithActiveSyncStringWithoutSeparators:v27];
      [(ASEvent *)self setEndTime:v28];
    }
  }

  v29 = [(ASChangedCollectionLeaf *)self applicationData];
  v30 = [v29 objectForKeyedSubscript:&unk_285D57DB0];

  if (v30)
  {
    v31 = [[ASLocation alloc] initWithApplicationData:v30];
    [(ASEvent *)self setLocation:v31];
  }

  else
  {
    v55 = [(ASChangedCollectionLeaf *)self applicationData];
    v56 = [MEMORY[0x277CCABB0] numberWithInt:1047];
    v31 = [v55 objectForKey:v56];

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

  v32 = [(ASChangedCollectionLeaf *)self applicationData];
  v33 = [MEMORY[0x277CCABB0] numberWithInt:1060];
  v34 = [v32 objectForKey:v33];

  if (v34)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v35 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v34, "intValue")}];
      [(ASEvent *)self setReminderMinsBefore:v35];
    }
  }

  v36 = [(ASChangedCollectionLeaf *)self applicationData];
  v37 = [MEMORY[0x277CCABB0] numberWithInt:1062];
  v38 = [v36 objectForKey:v37];

  if (v38)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEvent *)self setSubject:v38];
    }
  }

  v39 = [(ASChangedCollectionLeaf *)self applicationData];
  v40 = [MEMORY[0x277CCABB0] numberWithInt:1063];
  v41 = [v39 objectForKey:v40];

  if (v41)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v42 = [MEMORY[0x277CBEAA8] dateWithActiveSyncStringWithoutSeparators:v41];
      [(ASEvent *)self setStartTime:v42];
    }
  }

  v43 = [(ASChangedCollectionLeaf *)self applicationData];
  v44 = [MEMORY[0x277CCABB0] numberWithInt:1029];
  v45 = [v43 objectForKey:v44];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ASEvent *)self setTimeZone:v45];
  }

  v46 = [(ASChangedCollectionLeaf *)self applicationData];
  v47 = [MEMORY[0x277CCABB0] numberWithInt:4397];
  v48 = [v46 objectForKey:v47];

  if (v48)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASChangedCollectionLeaf *)self setInstanceID:v48];
    }
  }

  v49 = [(ASChangedCollectionLeaf *)self applicationData];
  v50 = [v49 objectForKeyedSubscript:&unk_285D57DC8];

  if (v50)
  {
    v51 = [[ASEventUID alloc] initWithUidString:v50];
    [(ASEvent *)self setEventUID:v51];

    v52 = [(ASEvent *)self exceptionDate];

    if (v52)
    {
      v53 = [(ASEvent *)self eventUID];
      v54 = [(ASEvent *)self exceptionDate];
      [v53 setExceptionDate:v54];
LABEL_50:

      goto LABEL_51;
    }

    v58 = [(ASChangedCollectionLeaf *)self instanceID];

    if (v58)
    {
      v53 = [(ASEvent *)self eventUID];
      v59 = MEMORY[0x277CBEAA8];
      v54 = [(ASChangedCollectionLeaf *)self instanceID];
      v60 = [v59 dateWithActiveSyncStringWithoutSeparators:v54];
      [v53 setExceptionDate:v60];

      goto LABEL_50;
    }
  }

LABEL_51:
  v61 = [(ASChangedCollectionLeaf *)self applicationData];
  v62 = [MEMORY[0x277CCABB0] numberWithInt:1050];
  v63 = [v61 objectForKey:v62];

  if (v63)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEvent *)self setOrganizerName:v63];
    }
  }

  v104 = v30;

  v64 = [(ASChangedCollectionLeaf *)self applicationData];
  v65 = [MEMORY[0x277CCABB0] numberWithInt:1049];
  v66 = [v64 objectForKey:v65];

  if (v66)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEvent *)self setOrganizerEmail:v66, v30];
    }
  }

  v67 = [(ASChangedCollectionLeaf *)self applicationData];
  v68 = [MEMORY[0x277CCABB0] numberWithInt:1083];
  v69 = [v67 objectForKey:v68];

  if (v69)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASEvent *)self setOnlineMeetingExternalLink:v69];
    }
  }

  v70 = [(ASChangedCollectionLeaf *)self applicationData];
  v71 = [v70 objectForKeyedSubscript:&unk_285D57DE0];

  [(ASEvent *)self setRecurrence:v71];
  v72 = [(ASChangedCollectionLeaf *)self applicationData];
  v73 = [v72 objectForKeyedSubscript:&unk_285D57DF8];

  [(ASEvent *)self setExceptions:v73];
  [(ASEvent *)self setAttendees:v105];
  v74 = [(ASChangedCollectionLeaf *)self applicationData];
  v75 = [MEMORY[0x277CCABB0] numberWithInt:1037];
  v76 = [v74 objectForKey:v75];

  if (v76)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v77 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v76, "intValue")}];
      [(ASEvent *)self setBusyStatus:v77];
    }
  }

  v78 = [(ASChangedCollectionLeaf *)self applicationData];
  v79 = [MEMORY[0x277CCABB0] numberWithInt:1048];
  v80 = [v78 objectForKey:v79];

  if (v80)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v81 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v80, "intValue")}];
      [(ASEvent *)self setMeetingStatus:v81];
    }
  }

  v82 = [(ASChangedCollectionLeaf *)self applicationData];
  v83 = [MEMORY[0x277CCABB0] numberWithInt:1061];
  v84 = [v82 objectForKey:v83];

  if (v84)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v85 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v84, "intValue")}];
      [(ASEvent *)self setSensitivity:v85];
    }
  }

  v86 = [(ASChangedCollectionLeaf *)self applicationData];
  v87 = [MEMORY[0x277CCABB0] numberWithInt:1076];
  v88 = [v86 objectForKey:v87];

  if (v88)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v89 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v88, "intValue")}];
      [(ASEvent *)self setResponseRequested:v89];
    }
  }

  v90 = [(ASChangedCollectionLeaf *)self applicationData];
  v91 = [MEMORY[0x277CCABB0] numberWithInt:1078];
  v92 = [v90 objectForKey:v91];

  if (v92)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v93 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v92, "intValue")}];
      [(ASEvent *)self setResponseType:v93];
    }
  }

  v94 = [(ASChangedCollectionLeaf *)self applicationData];
  v95 = [MEMORY[0x277CCABB0] numberWithInt:1077];
  v96 = [v94 objectForKey:v95];

  if (v96)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v97 = [MEMORY[0x277CBEAA8] dateWithActiveSyncStringWithoutSeparators:v96];
      [(ASEvent *)self setAppointmentReplyTime:v97];
    }
  }

  v98 = [(ASChangedCollectionLeaf *)self applicationData];
  v99 = [MEMORY[0x277CCABB0] numberWithInt:1075];
  v100 = [v98 objectForKey:v99];

  if (v100)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v101 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v100, "intValue")}];
      [(ASEvent *)self setDisallowNewTimeProposal:v101];
    }
  }

  v102 = [(ASChangedCollectionLeaf *)self applicationData];
  v103 = [v102 objectForKeyedSubscript:&unk_285D57E10];

  [(ASEvent *)self setAttachments:v103];
  [(ASChangedCollectionLeaf *)self setApplicationData:0];
}

- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8
{
  v14 = a8;
  v16.receiver = self;
  v16.super_class = ASEvent;
  [(ASChangedCollectionLeaf *)&v16 parseASParseContext:a3 root:a4 parent:a5 callbackDict:a6 streamCallbackDict:a7 account:v14];
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
      [(ASEvent *)self informExceptionsThatParentIsReadyForAccount:v14];
      [(ASEvent *)self _determineSelfnessWithLocalEvent:0 forAccount:v14];
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

+ (void)_setFakeDTStampDateForUnitTests:(id)a3
{
  v4 = a3;
  if (__fakeDTStampDateForUnitTests != v4)
  {
    v5 = v4;
    objc_storeStrong(&__fakeDTStampDateForUnitTests, a3);
    v4 = v5;
  }
}

- (void)appendActiveSyncDataForTask:(id)a3 toWBXMLData:(id)a4
{
  v229 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 taskManager];
  v9 = [v8 protocol];
  v10 = [v9 usesAirSyncBaseNamespace];

  v11 = [v6 taskManager];
  v12 = [v11 protocol];
  v192 = [v12 sendDTStamp];

  v13 = [v6 taskManager];
  v14 = [v13 protocol];
  v190 = [v14 sendUID];

  v15 = [v6 taskManager];
  v16 = [v15 protocol];
  v189 = [v16 useStructuredLocation];

  v17 = [v6 taskManager];
  v18 = [v17 protocol];
  v194 = [v18 includeExceptionsInParent];

  v19 = [v6 taskManager];
  v20 = [v19 protocol];
  v21 = [v20 useFloatingTimeForAllDayEvents];

  v22 = [v6 taskManager];
  v23 = [v22 protocol];
  v188 = [v23 useEmptyRecurrence];

  v24 = [v6 taskManager];
  v25 = [v24 protocol];
  v187 = [v25 useEmptyReminderMinutes];

  v26 = [v6 taskManager];
  v27 = [v26 protocol];
  v186 = [v27 useEmptyLocation];

  v28 = [v6 taskManager];
  v29 = [v28 protocol];
  v30 = [v29 alwaysSendTimezone];

  v31 = [v6 taskManager];
  v32 = [v31 protocol];
  v191 = [v32 useEmptyAttendees];

  v33 = [v6 taskManager];
  v34 = [v33 protocol];
  v196 = [v34 supportsAttachments];

  v35 = [(ASEvent *)self organizerEmail];
  v195 = self;
  if ([v35 length])
  {
    v36 = [v6 taskManager];
    v37 = [v36 account];
    v38 = [(ASEvent *)self cachedOrganizerIsSelfWithAccount:v37];

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
    v40 = [(ASEvent *)self body];
    if (v10)
    {
      [v7 switchToCodePage:17];
      [v7 openTag:10];
      [v7 appendTag:6 withIntContent:1];
      if ([v40 length])
      {
        [v7 appendTag:11 withStringContent:v40];
      }

      else
      {
        [v7 appendEmptyTag:11];
      }

      [v7 closeTag:10];
    }

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v38 = 1;
LABEL_15:
  [v7 switchToCodePage:4];
  if ((v194 & 1) != 0 || ([(ASChangedCollectionLeaf *)self serverID], v41 = objc_claimAutoreleasedReturnValue(), v41, !v41))
  {
    v44 = 1;
  }

  else
  {
    v42 = [(ASChangedCollectionLeaf *)self serverID];
    v43 = [v42 rangeOfString:@"<!ExceptionDate!>"];

    v44 = v43 == 0x7FFFFFFFFFFFFFFFLL;
  }

  v45 = v44 & v21;
  v46 = self;
  if (v45 == 1)
  {
    v47 = [(ASEvent *)self allDayEvent];
    v48 = [v47 intValue];

    v44 = v48 == 0;
  }

  if ((v30 | (v38 && v44)))
  {
    v49 = [(ASEvent *)self timeZone];

    if (v49)
    {
      v50 = [(ASEvent *)self timeZone];
      v51 = [(ASEvent *)self startTime];
      v52 = [v50 mallocTZIForDate:v51];

      v53 = DALoggingwithCategory();
      v54 = *(MEMORY[0x277D03988] + 7);
      if (os_log_type_enabled(v53, v54))
      {
        v55 = [(ASEvent *)self timeZone];
        *buf = 138412290;
        v228 = v55;
        _os_log_impl(&dword_24A0AC000, v53, v54, "Setting timeZone to Exchange equivalent of %@", buf, 0xCu);
      }

      v46 = self;
      if (v52)
      {
        v56 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v52 length:172];
        v57 = [v56 base64EncodedStringWithOptions:0];
        [v7 appendTag:5 withStringContent:v57];
        free(v52);
      }
    }
  }

  v58 = [(ASEvent *)v46 allDayEvent];
  v59 = v58;
  if (v58)
  {
    [v7 appendTag:6 withIntContent:{objc_msgSend(v58, "intValue")}];
  }

  if (((v39 | v10) & 1) == 0)
  {
    v60 = [(ASEvent *)v46 body];
    if (v60)
    {
      [v7 appendTag:11 withStringContent:v60];
    }
  }

  v61 = [(ASEvent *)v46 busyStatus];

  if (v61)
  {
    v62 = [(ASEvent *)v46 busyStatus];
    [v7 appendTag:13 withIntContent:{objc_msgSend(v62, "intValue")}];
  }

  else
  {
    [v7 appendTag:13 withIntContent:2];
  }

  v63 = [(ASEvent *)v46 dTStamp];
  if (!v63)
  {
    v63 = [MEMORY[0x277CBEAA8] date];
  }

  if ((v192 & v38) == 1)
  {
    v64 = [v63 activeSyncStringWithoutSeparators];
    [v7 appendTag:17 withStringContent:v64];
  }

  if (v38)
  {
    v65 = [(ASEvent *)v46 endTime];
    v66 = v65;
    if (v65)
    {
      v67 = [v65 activeSyncStringWithoutSeparators];
      [v7 appendTag:18 withStringContent:v67];
    }
  }

  v68 = [(ASEvent *)v46 location];

  if (!v68)
  {
    if (!v186)
    {
      goto LABEL_76;
    }

    [v7 switchToCodePage:17];
    [v7 appendEmptyTag:32];
    goto LABEL_73;
  }

  if (v189)
  {
    [v7 switchToCodePage:17];
    [v7 openTag:32];
    v69 = [(ASEvent *)v46 location];
    v70 = [v69 displayName];

    if (v70)
    {
      v71 = [(ASEvent *)v46 location];
      v72 = [v71 displayName];
      [v7 appendTag:16 withStringContent:v72];
    }

    v73 = [(ASEvent *)v46 location];
    v74 = [v73 annotation];

    if (v74)
    {
      v75 = [(ASEvent *)v46 location];
      v76 = [v75 annotation];
      [v7 appendTag:33 withStringContent:v76];
    }

    v77 = [(ASEvent *)v46 location];
    v78 = [v77 street];

    if (v78)
    {
      v79 = [(ASEvent *)v46 location];
      v80 = [v79 street];
      [v7 appendTag:34 withStringContent:v80];
    }

    v81 = [(ASEvent *)v46 location];
    v82 = [v81 city];

    if (v82)
    {
      v83 = [(ASEvent *)v46 location];
      v84 = [v83 city];
      [v7 appendTag:35 withStringContent:v84];
    }

    v85 = [(ASEvent *)v46 location];
    v86 = [v85 state];

    if (v86)
    {
      v87 = [(ASEvent *)v46 location];
      v88 = [v87 state];
      [v7 appendTag:36 withStringContent:v88];
    }

    v89 = [(ASEvent *)v46 location];
    v90 = [v89 postalCode];

    if (v90)
    {
      v91 = [(ASEvent *)v46 location];
      v92 = [v91 postalCode];
      [v7 appendTag:38 withStringContent:v92];
    }

    v93 = [(ASEvent *)v46 location];
    v94 = [v93 country];

    if (v94)
    {
      v95 = [(ASEvent *)v46 location];
      v96 = [v95 country];
      [v7 appendTag:37 withStringContent:v96];
    }

    v97 = [(ASEvent *)v46 location];
    v98 = [v97 latitude];

    if (v98)
    {
      v99 = [(ASEvent *)v46 location];
      v100 = [v99 latitude];
      [v7 appendTag:39 withStringContent:v100];
    }

    v101 = [(ASEvent *)v46 location];
    v102 = [v101 longitude];

    if (v102)
    {
      v103 = [(ASEvent *)v46 location];
      v104 = [v103 longitude];
      [v7 appendTag:40 withStringContent:v104];
    }

    v105 = [(ASEvent *)v46 location];
    v106 = [v105 accuracy];

    if (v106)
    {
      v107 = [(ASEvent *)v46 location];
      v108 = [v107 accuracy];
      [v7 appendTag:41 withStringContent:v108];
    }

    v109 = [(ASEvent *)v46 location];
    v110 = [v109 altitude];

    if (v110)
    {
      v111 = [(ASEvent *)v46 location];
      v112 = [v111 altitude];
      [v7 appendTag:42 withStringContent:v112];
    }

    v113 = [(ASEvent *)v46 location];
    v114 = [v113 altitudeAccuracy];

    if (v114)
    {
      v115 = [(ASEvent *)v46 location];
      v116 = [v115 altitudeAccuracy];
      [v7 appendTag:43 withStringContent:v116];
    }

    [v7 closeTag:32];
LABEL_73:
    [v7 switchToCodePage:4];
    goto LABEL_76;
  }

  v117 = [(ASEvent *)v46 location];
  v118 = [v117 displayName];

  if (v118)
  {
    v119 = [(ASEvent *)v46 location];
    v120 = [v119 displayName];
    [v7 appendTag:23 withStringContent:v120];
  }

LABEL_76:
  v121 = [(ASEvent *)v46 reminderMinsBefore];

  if (v121)
  {
    v122 = [(ASEvent *)v46 reminderMinsBefore];
    [v7 appendTag:36 withIntContent:{objc_msgSend(v122, "intValue")}];
  }

  else if (v187)
  {
    [v7 appendEmptyTag:36];
  }

  v123 = [(ASEvent *)v46 sensitivity];

  if (v123)
  {
    v124 = [(ASEvent *)v46 sensitivity];
    [v7 appendTag:37 withIntContent:{objc_msgSend(v124, "intValue")}];
  }

  else
  {
    [v7 appendTag:37 withIntContent:0];
  }

  v125 = [(ASEvent *)v46 subject];
  if (v125)
  {
    [v7 appendTag:38 withStringContent:v125];
  }

  if (v38)
  {
    v126 = [(ASEvent *)v46 startTime];
    v127 = v126;
    if (v126)
    {
      v128 = [v126 activeSyncStringWithoutSeparators];
      [v7 appendTag:39 withStringContent:v128];
    }
  }

  v129 = [(ASEvent *)v46 eventUID];
  v130 = [(ASEvent *)v46 timeZone];
  v131 = [v129 uidForActiveSyncWithTimeZone:v130];

  if (v131)
  {
    if (v190)
    {
      v132 = 40;
    }

    else
    {
      v133 = [(ASChangedCollectionLeaf *)v46 serverID];

      if (v133)
      {
        goto LABEL_95;
      }

      v132 = 60;
    }

    [v7 appendTag:v132 withStringContent:v131];
  }

LABEL_95:
  v193 = v63;
  if ([(ASEvent *)v46 itemStatus]== 3)
  {
    v134 = 4;
  }

  else
  {
    v135 = [(ASEvent *)v46 meetingStatus];
    v136 = [v135 intValue];

    if (v136)
    {
      v137 = [(ASEvent *)v46 meetingStatus];
      v134 = [v137 intValue];
    }

    else if ([(NSArray *)v46->_attendees count])
    {
      v138 = [v6 taskManager];
      v139 = [v138 account];
      v140 = [(ASEvent *)v46 cachedOrganizerIsSelfWithAccount:v139];

      if (v140)
      {
        v134 = 1;
      }

      else
      {
        v134 = 3;
      }
    }

    else
    {
      v134 = 0;
    }
  }

  [v7 appendTag:24 withIntContent:v134];
  if ([(NSArray *)v46->_attendees count])
  {
    v219 = 0u;
    v220 = 0u;
    v217 = 0u;
    v218 = 0u;
    v141 = v46->_attendees;
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

      v46 = v195;
      if (v144)
      {
        [v7 openProspectiveTag:7];
        v215 = 0u;
        v216 = 0u;
        v213 = 0u;
        v214 = 0u;
        v147 = v195->_attendees;
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
                [v7 openTag:8];
                [v152 appendActiveSyncDataForTask:v6 toData:v7];
                [v7 closeTag:8];
              }
            }

            v149 = [(NSArray *)v147 countByEnumeratingWithState:&v213 objects:v225 count:16];
          }

          while (v149);
        }

        [v7 closeProspectiveTag:7];
        goto LABEL_128;
      }
    }

    else
    {
    }
  }

  if (v191)
  {
    [v7 appendEmptyTag:7];
  }

LABEL_128:
  if (!v196)
  {
    goto LABEL_152;
  }

  v153 = [(ASEvent *)v46 attachments];
  if ([v153 count])
  {
  }

  else
  {
    v154 = [(ASEvent *)v46 deletedAttachmentsIDs];
    v155 = [v154 count];

    if (!v155)
    {
      goto LABEL_152;
    }
  }

  [v7 switchToCodePage:17];
  [v7 openProspectiveTag:14];
  v211 = 0u;
  v212 = 0u;
  v209 = 0u;
  v210 = 0u;
  v156 = [(ASEvent *)v46 attachments];
  v157 = [v156 countByEnumeratingWithState:&v209 objects:v224 count:16];
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
          objc_enumerationMutation(v156);
        }

        v161 = *(*(&v209 + 1) + 8 * k);
        [v7 openProspectiveTag:28];
        [v161 appendActiveSyncDataForTask:v6 toData:v7];
        [v7 closeProspectiveTag:28];
      }

      v158 = [v156 countByEnumeratingWithState:&v209 objects:v224 count:16];
    }

    while (v158);
  }

  v207 = 0u;
  v208 = 0u;
  v205 = 0u;
  v206 = 0u;
  v162 = [(ASEvent *)v46 deletedAttachmentsIDs];
  v163 = [v162 countByEnumeratingWithState:&v205 objects:v223 count:16];
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
          objc_enumerationMutation(v162);
        }

        v168 = *(*(&v205 + 1) + 8 * m);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 openProspectiveTag:29];
          [v7 appendTag:17 withStringContent:v168];
          [v7 closeProspectiveTag:29];
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

      v164 = [v162 countByEnumeratingWithState:&v205 objects:v223 count:16];
    }

    while (v164);
  }

  [v7 closeProspectiveTag:14];
  [v7 switchToCodePage:4];
  v46 = v195;
LABEL_152:
  if ([(NSArray *)v46->_categories count])
  {
    [v7 openTag:14];
    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    v172 = v46->_categories;
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

          [v7 appendTag:15 withStringContent:*(*(&v201 + 1) + 8 * n)];
        }

        v174 = [(NSArray *)v172 countByEnumeratingWithState:&v201 objects:v222 count:16];
      }

      while (v174);
    }

    [v7 closeTag:14];
  }

  v177 = [(ASEvent *)v46 recurrence];

  if (v177)
  {
    v178 = [(ASEvent *)v46 recurrence];
    [v178 appendActiveSyncDataForTask:v6 toWBXMLData:v7];
  }

  else if (v188)
  {
    [v7 appendEmptyTag:27];
  }

  if ((([(NSArray *)v46->_exceptions count]!= 0) & v194) == 1)
  {
    [v7 openTag:20];
    v199 = 0u;
    v200 = 0u;
    v197 = 0u;
    v198 = 0u;
    v179 = v46->_exceptions;
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
          [v7 openTag:19];
          [v184 appendActiveSyncDataForTask:v6 toWBXMLData:v7];
          [v7 closeTag:19];
        }

        v181 = [(NSArray *)v179 countByEnumeratingWithState:&v197 objects:v221 count:16];
      }

      while (v181);
    }

    [v7 closeTag:20];
  }

  v185 = *MEMORY[0x277D85DE8];
}

- (void)setCalEvent:(void *)a3
{
  v17 = *MEMORY[0x277D85DE8];
  calEvent = self->_calEvent;
  if (calEvent != a3)
  {
    if (calEvent)
    {
      CFRelease(calEvent);
    }

    self->_calEvent = a3;
    if (!a3 || (CFRetain(a3), !self->_calEvent))
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

- (BOOL)loadCalRecordForAccount:(id)a3
{
  v4 = a3;
  if ([(ASEvent *)self calEvent])
  {
    [ASEvent loadCalRecordForAccount:];
  }

  v5 = [(ASChangedCollectionLeaf *)self clientID];

  if (!v5)
  {
    [ASEvent loadCalRecordForAccount:];
  }

  v6 = +[ASLocalDBHelper sharedInstance];
  v7 = [v4 accountID];
  [v6 calDatabaseForAccountID:v7];
  v8 = [(ASChangedCollectionLeaf *)self clientID];
  [v8 intValue];
  v9 = CalDatabaseCopyCalendarItemWithRowID();

  [(ASEvent *)self _loadAttributesFromCalEvent:v9 forAccount:v4];
  [(ASEvent *)self setCalEvent:v9];
  if (v9)
  {
    CFRelease(v9);
  }

  return v9 != 0;
}

- (BOOL)saveServerIDAndUidToCalendar
{
  v3 = [(ASEvent *)self calEvent];
  if (v3)
  {
    [(ASEvent *)self calEvent];
    v4 = [(ASChangedCollectionLeaf *)self serverID];
    CalCalendarItemSetExternalID();

    v5 = [(ASEvent *)self eventUID];

    if (v5)
    {
      [(ASEvent *)self calEvent];
      v6 = [(ASEvent *)self eventUID];
      [v6 uidForCalFramework];
      CalCalendarItemSetUniqueIdentifier();
    }
  }

  return v3 != 0;
}

- (BOOL)verifyExternalIdsForAccountID:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASChangedCollectionLeaf *)self clientID];

  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = +[ASLocalDBHelper sharedInstance];
  [v6 calDatabaseForAccountID:v4];
  v7 = [(ASChangedCollectionLeaf *)self clientID];
  [v7 intValue];
  v8 = CalDatabaseCopyCalendarItemWithRowID();

  if (!v8)
  {
LABEL_7:
    LOBYTE(v14) = 0;
    goto LABEL_18;
  }

  v9 = CalCalendarItemCopyExternalID();
  v10 = [(ASChangedCollectionLeaf *)self serverID];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = v10;
  if (!v9)
  {

    goto LABEL_9;
  }

  v12 = [(ASChangedCollectionLeaf *)self serverID];
  v13 = [v9 isEqualToString:v12];

  if ((v13 & 1) == 0)
  {
LABEL_9:
    v15 = [(ASChangedCollectionLeaf *)self serverID];
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

        v14 |= [*(*(&v23 + 1) + 8 * v20++) verifyExternalIdsForAccountID:{v4, v23}];
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

- (BOOL)fillOutMissingExternalIdsForAccountID:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 0;
    _os_log_impl(&dword_24A0AC000, v5, v6, "Entering [ASEvent fillOutMissingExternalIdsForAccountID:]", buf, 2u);
  }

  v7 = [(ASChangedCollectionLeaf *)self clientID];

  if (!v7)
  {
    goto LABEL_23;
  }

  v8 = +[ASLocalDBHelper sharedInstance];
  [v8 calDatabaseForAccountID:v4];

  v9 = [(ASChangedCollectionLeaf *)self clientID];
  [v9 intValue];
  v10 = CalDatabaseCopyCalendarItemWithRowID();

  if (v10)
  {
    v11 = CalCalendarItemCopyExternalID();
    v12 = [(ASChangedCollectionLeaf *)self serverID];
    if (v12)
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
        v16 = [(ASChangedCollectionLeaf *)self serverID];
        *buf = 138412290;
        v31 = v16;
        _os_log_impl(&dword_24A0AC000, v15, v6, "Missing ServerID! Use the server id in pushedActions to set external ID: %@", buf, 0xCu);
      }

      v17 = [(ASChangedCollectionLeaf *)self serverID];
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

          v14 |= [*(*(&v25 + 1) + 8 * i) verifyExternalIdsForAccountID:{v4, v25}];
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
  v3 = [(ASEvent *)self startTime];
  v4 = [(ASEvent *)self timeZone];
  v5 = [v3 dateWithCalendarFormat:0 timeZone:v4];
  v6 = [(ASEvent *)self _transformedStartDateForCalFramework:v5];

  return v6;
}

- (NSCalendarDate)endDateForCalFramework
{
  v3 = [(ASEvent *)self endTime];
  v4 = [(ASEvent *)self timeZone];
  v5 = [v3 dateWithCalendarFormat:0 timeZone:v4];
  v6 = [(ASEvent *)self startTime];
  v7 = [(ASEvent *)self timeZone];
  v8 = [v6 dateWithCalendarFormat:0 timeZone:v7];
  v9 = [(ASEvent *)self _transformedEndDateForCalFramework:v5 startDate:v8];

  return v9;
}

- (ASEvent)initWithCoder:(id)a3
{
  v103[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v99.receiver = self;
  v99.super_class = ASEvent;
  v5 = [(ASChangedCollectionLeaf *)&v99 initWithCoder:v4];
  if (v5)
  {
    if (([v4 allowsKeyedCoding] & 1) == 0)
    {
      [ASEvent initWithCoder:];
    }

    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"timeZoneDict"];

    if (v11)
    {
      v12 = [[ASTimeZone alloc] initWithCodingDict:v11];
      timeZone = v5->_timeZone;
      v5->_timeZone = v12;
    }

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allDayEvent"];
    allDayEvent = v5->_allDayEvent;
    v5->_allDayEvent = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"body"];
    body = v5->_body;
    v5->_body = v16;

    v5->_bodyTruncated = [v4 decodeBoolForKey:@"bodyTruncated"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"busyStatus"];
    busyStatus = v5->_busyStatus;
    v5->_busyStatus = v18;

    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"categories"];
    categories = v5->_categories;
    v5->_categories = v23;

    v25 = MEMORY[0x277CBEB98];
    v103[0] = objc_opt_class();
    v103[1] = objc_opt_class();
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:2];
    v27 = [v25 setWithArray:v26];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"dTStamp"];
    dTStamp = v5->_dTStamp;
    v5->_dTStamp = v28;

    v30 = MEMORY[0x277CBEB98];
    v102[0] = objc_opt_class();
    v102[1] = objc_opt_class();
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:2];
    v32 = [v30 setWithArray:v31];
    v33 = [v4 decodeObjectOfClasses:v32 forKey:@"endTime"];
    endTime = v5->_endTime;
    v5->_endTime = v33;

    v35 = MEMORY[0x277CBEB98];
    v101[0] = objc_opt_class();
    v101[1] = objc_opt_class();
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v101 count:2];
    v37 = [v35 setWithArray:v36];
    v38 = [v4 decodeObjectOfClasses:v37 forKey:@"startTime"];
    startTime = v5->_startTime;
    v5->_startTime = v38;

    v40 = MEMORY[0x277CBEB98];
    v100[0] = objc_opt_class();
    v100[1] = objc_opt_class();
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:2];
    v42 = [v40 setWithArray:v41];
    v43 = [v4 decodeObjectOfClasses:v42 forKey:@"appointmentReplyTime"];
    appointmentReplyTime = v5->_appointmentReplyTime;
    v5->_appointmentReplyTime = v43;

    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    location = v5->_location;
    v5->_location = v45;

    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"meetingStatus"];
    meetingStatus = v5->_meetingStatus;
    v5->_meetingStatus = v47;

    v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"organizerEmail"];
    organizerEmail = v5->_organizerEmail;
    v5->_organizerEmail = v49;

    v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"organizerName"];
    organizerName = v5->_organizerName;
    v5->_organizerName = v51;

    v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reminderMinsBefore"];
    reminderMinsBefore = v5->_reminderMinsBefore;
    v5->_reminderMinsBefore = v53;

    v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sensitivity"];
    sensitivity = v5->_sensitivity;
    v5->_sensitivity = v55;

    v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subject"];
    subject = v5->_subject;
    v5->_subject = v57;

    v59 = MEMORY[0x277CBEB98];
    v60 = objc_opt_class();
    v61 = [v59 setWithObjects:{v60, objc_opt_class(), 0}];
    v62 = [v4 decodeObjectOfClasses:v61 forKey:@"from"];
    from = v5->_from;
    v5->_from = v62;

    v64 = [ASEventUID alloc];
    v65 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventUID"];
    v66 = [(ASEventUID *)v64 initWithCalFrameworkString:v65];
    eventUID = v5->_eventUID;
    v5->_eventUID = v66;

    v68 = MEMORY[0x277CBEB98];
    v69 = objc_opt_class();
    v70 = [v68 setWithObjects:{v69, objc_opt_class(), 0}];
    v71 = [v4 decodeObjectOfClasses:v70 forKey:@"attendees"];
    attendees = v5->_attendees;
    v5->_attendees = v71;

    v73 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recurrence"];
    recurrence = v5->_recurrence;
    v5->_recurrence = v73;

    v75 = MEMORY[0x277CBEB98];
    v76 = objc_opt_class();
    v77 = [v75 setWithObjects:{v76, objc_opt_class(), 0}];
    v78 = [v4 decodeObjectOfClasses:v77 forKey:@"exceptions"];
    exceptions = v5->_exceptions;
    v5->_exceptions = v78;

    v80 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"responseRequested"];
    responseRequested = v5->_responseRequested;
    v5->_responseRequested = v80;

    v5->_cachedOrganizerIsSelf = [v4 decodeBoolForKey:@"cachedOrganizerIsSelf"];
    v5->_haveCheckedOrganizerEmail = [v4 decodeBoolForKey:@"haveCheckedOrganizerEmail"];
    v82 = MEMORY[0x277CBEB98];
    v83 = objc_opt_class();
    v84 = [v82 setWithObjects:{v83, objc_opt_class(), 0}];
    v85 = [v4 decodeObjectOfClasses:v84 forKey:@"attendeesPendingDeletion"];
    attendeesPendingDeletion = v5->_attendeesPendingDeletion;
    v5->_attendeesPendingDeletion = v85;

    v87 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"responseType"];
    responseType = v5->_responseType;
    v5->_responseType = v87;

    v89 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"disallowNewTimeProposal"];
    disallowNewTimeProposal = v5->_disallowNewTimeProposal;
    v5->_disallowNewTimeProposal = v89;

    v91 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"onlineMeetingExternalLink"];
    onlineMeetingExternalLink = v5->_onlineMeetingExternalLink;
    v5->_onlineMeetingExternalLink = v91;

    v93 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proposedStartTime"];
    proposedStartTime = v5->_proposedStartTime;
    v5->_proposedStartTime = v93;

    v95 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proposedEndTime"];
    proposedEndTime = v5->_proposedEndTime;
    v5->_proposedEndTime = v95;
  }

  v97 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [ASEvent encodeWithCoder:];
  }

  v8.receiver = self;
  v8.super_class = ASEvent;
  [(ASChangedCollectionLeaf *)&v8 encodeWithCoder:v4];
  v5 = [(ASTimeZone *)self->_timeZone dictForCoding];
  [v4 encodeObject:v5 forKey:@"timeZoneDict"];
  [v4 encodeObject:self->_allDayEvent forKey:@"allDayEvent"];
  [v4 encodeObject:self->_body forKey:@"body"];
  [v4 encodeBool:self->_bodyTruncated forKey:@"bodyTruncated"];
  [v4 encodeObject:self->_busyStatus forKey:@"busyStatus"];
  [v4 encodeObject:self->_dTStamp forKey:@"dTStamp"];
  [v4 encodeObject:self->_categories forKey:@"categories"];
  [v4 encodeObject:self->_endTime forKey:@"endTime"];
  [v4 encodeObject:self->_location forKey:@"location"];
  [v4 encodeObject:self->_meetingStatus forKey:@"meetingStatus"];
  [v4 encodeObject:self->_organizerEmail forKey:@"organizerEmail"];
  [v4 encodeObject:self->_organizerName forKey:@"organizerName"];
  [v4 encodeObject:self->_reminderMinsBefore forKey:@"reminderMinsBefore"];
  [v4 encodeObject:self->_sensitivity forKey:@"sensitivity"];
  v6 = [(ASEvent *)self subject];
  [v4 encodeObject:v6 forKey:@"subject"];

  [v4 encodeObject:self->_startTime forKey:@"startTime"];
  [v4 encodeObject:self->_from forKey:@"from"];
  v7 = [(ASEventUID *)self->_eventUID uidForCalFramework];
  [v4 encodeObject:v7 forKey:@"eventUID"];

  [v4 encodeObject:self->_attendees forKey:@"attendees"];
  [v4 encodeObject:self->_recurrence forKey:@"recurrence"];
  [v4 encodeObject:self->_exceptions forKey:@"exceptions"];
  [v4 encodeObject:self->_responseRequested forKey:@"responseRequested"];
  [v4 encodeBool:self->_cachedOrganizerIsSelf forKey:@"cachedOrganizerIsSelf"];
  [v4 encodeBool:self->_haveCheckedOrganizerEmail forKey:@"haveCheckedOrganizerEmail"];
  [v4 encodeObject:self->_attendeesPendingDeletion forKey:@"attendeesPendingDeletion"];
  [v4 encodeObject:self->_responseType forKey:@"responseType"];
  [v4 encodeObject:self->_appointmentReplyTime forKey:@"appointmentReplyTime"];
  [v4 encodeObject:self->_disallowNewTimeProposal forKey:@"disallowNewTimeProposal"];
  [v4 encodeObject:self->_onlineMeetingExternalLink forKey:@"onlineMeetingExternalLink"];
  [v4 encodeObject:self->_proposedStartTime forKey:@"proposedStartTime"];
  [v4 encodeObject:self->_proposedEndTime forKey:@"proposedEndTime"];
}

- (void)setBody:(id)a3
{
  v4 = [a3 stringByTrimmingNotesJunk];
  if (self->_body != v4)
  {
    objc_storeStrong(&self->_body, v4);
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)cachedOrganizerIsSelfWithAccount:(id)a3
{
  if (!self->_haveCheckedOrganizerEmail)
  {
    v4 = a3;
    [(ASEvent *)self _determineSelfnessWithLocalEvent:[(ASEvent *)self calEvent] forAccount:v4];
  }

  return self->_cachedOrganizerIsSelf;
}

- (BOOL)purgeAttendeesPendingDeletionForAccountID:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
      v22 = self;
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

          v13 = [*(*(&v23 + 1) + 8 * i) localId];
          if (v13 == -1)
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
            v14 = v13;
            v15 = +[ASLocalDBHelper sharedInstance];
            v16 = MEMORY[0x24C210A30]([v15 calDatabaseForAccountID:v4], v14);

            if (v16)
            {
              [(ASEvent *)v22 calEvent];
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
        v7 = [MEMORY[0x277CBEBB0] defaultTimeZone];
        v8 = [ASTimeZone alloc];
        v9 = [v7 name];
        v6 = [(ASTimeZone *)v8 initWithTZNameFromCalDB:v9];
      }

      v30[0] = 0;
      v30[1] = 0;
      v10 = [MEMORY[0x277CCA8F8] date];
      [v10 setTimeZone:v6];
      [v10 getGregorianDate:v30];
      v29[0] = 0;
      v29[1] = 0;
      v11 = [MEMORY[0x277CCA8F8] distantFuture];

      [v11 setTimeZone:v6];
      [v11 getGregorianDate:v29];
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
    v13 = [(ASEvent *)self exceptionDate];
    if (v13)
    {
      v14 = [(ASEvent *)self exceptionDate];
      [v14 timeIntervalSinceNow];
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

- (BOOL)_selfIsMoreCorrectThanOtherEvent:(id)a3 account:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ASEvent *)self organizerEmail];

  v9 = [(ASEvent *)v6 organizerEmail];

  if (!v8 || v9)
  {
    if (!v8 && v9)
    {
      v11 = DALoggingwithCategory();
      v14 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v11, v14))
      {
        v33 = 138412546;
        v34 = v6;
        v35 = 2112;
        v36 = self;
        v15 = "%@ beats %@ because it has an organizer";
LABEL_14:
        _os_log_impl(&dword_24A0AC000, v11, v14, v15, &v33, 0x16u);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v16 = [(ASEvent *)self cachedOrganizerIsSelfWithAccount:v7];
    v17 = [(ASEvent *)v6 cachedOrganizerIsSelfWithAccount:v7];
    if (v16 && !v17)
    {
      v11 = DALoggingwithCategory();
      v14 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v11, v14))
      {
        v33 = 138412546;
        v34 = v6;
        v35 = 2112;
        v36 = self;
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
      v11 = DALoggingwithCategory();
      LOBYTE(v12) = *(MEMORY[0x277D03988] + 6);
      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_16;
      }

      v33 = 138412546;
      v34 = self;
      v35 = 2112;
      v36 = v6;
      v13 = "%@ beats %@ because it has an organizer who isn't me";
      goto LABEL_5;
    }

    v20 = [(ASEvent *)self attendees];
    v21 = [v20 count];

    v22 = [(ASEvent *)v6 attendees];
    v23 = [v22 count];

    if (v21 && !v23)
    {
      v10 = 1;
      v11 = DALoggingwithCategory();
      v12 = *(MEMORY[0x277D03988] + 6);
      if (!os_log_type_enabled(v11, *(MEMORY[0x277D03988] + 6)))
      {
        goto LABEL_16;
      }

      v33 = 138412546;
      v34 = self;
      v35 = 2112;
      v36 = v6;
      v13 = "%@ beats %@ because it has attendees";
      goto LABEL_5;
    }

    if (!v21 && v23)
    {
      v11 = DALoggingwithCategory();
      v14 = *(MEMORY[0x277D03988] + 6);
      if (!os_log_type_enabled(v11, v14))
      {
        goto LABEL_15;
      }

      v33 = 138412546;
      v34 = v6;
      v35 = 2112;
      v36 = self;
      v15 = "%@ beats %@ because it has attendees";
      goto LABEL_14;
    }

    v24 = [(ASEvent *)self recurrence];

    v25 = [(ASEvent *)v6 recurrence];

    if (v24 && !v25)
    {
      v10 = 1;
      v11 = DALoggingwithCategory();
      v12 = *(MEMORY[0x277D03988] + 6);
      if (!os_log_type_enabled(v11, *(MEMORY[0x277D03988] + 6)))
      {
        goto LABEL_16;
      }

      v33 = 138412546;
      v34 = self;
      v35 = 2112;
      v36 = v6;
      v13 = "%@ beats %@ because it has a recurrence";
      goto LABEL_5;
    }

    if (!v24 && v25)
    {
      v11 = DALoggingwithCategory();
      v14 = *(MEMORY[0x277D03988] + 6);
      if (!os_log_type_enabled(v11, v14))
      {
        goto LABEL_15;
      }

      v33 = 138412546;
      v34 = v6;
      v35 = 2112;
      v36 = self;
      v15 = "%@ beats %@ because it has a recurrence";
      goto LABEL_14;
    }

    v11 = [(ASEvent *)self dTStamp];
    v26 = [(ASEvent *)v6 dTStamp];
    v27 = v26;
    if (v11 && v26)
    {
      v28 = [v11 compare:v26];
      if (v28 == -1)
      {
        v29 = DALoggingwithCategory();
        v31 = *(MEMORY[0x277D03988] + 6);
        if (!os_log_type_enabled(v29, v31))
        {
          goto LABEL_45;
        }

        v33 = 138412546;
        v34 = v6;
        v35 = 2112;
        v36 = self;
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
          v34 = self;
          v35 = 2112;
          v36 = v6;
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
    v34 = v6;
    v35 = 2112;
    v36 = self;
    v32 = "%@ beats %@ because it's the new kid on the block";
LABEL_44:
    _os_log_impl(&dword_24A0AC000, v29, v31, v32, &v33, 0x16u);
    goto LABEL_45;
  }

  v10 = 1;
  v11 = DALoggingwithCategory();
  v12 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v11, *(MEMORY[0x277D03988] + 6)))
  {
    v33 = 138412546;
    v34 = self;
    v35 = 2112;
    v36 = v6;
    v13 = "%@ beats %@ because it has an organizer";
LABEL_5:
    _os_log_impl(&dword_24A0AC000, v11, v12, v13, &v33, 0x16u);
    v10 = 1;
  }

LABEL_16:

  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqualToEvent:(id)a3
{
  v72 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *(v4 + 21);
  if (v5 != self->_timeZone && ([(ASTimeZone *)v5 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v24 = *(v4 + 21);
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

  v6 = *(v4 + 22);
  if (v6 != self->_allDayEvent && ([(NSNumber *)v6 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v27 = *(v4 + 22);
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

  v7 = *(v4 + 23);
  if (v7 != self->_body && ([(NSString *)v7 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v32 = *(v4 + 23);
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

  if (v4[136] != self->_bodyTruncated)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v22, v23))
    {
      v29 = @"NO";
      bodyTruncated = self->_bodyTruncated;
      if (v4[136])
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

  v8 = *(v4 + 24);
  if (v8 != self->_busyStatus && ([(NSNumber *)v8 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v34 = *(v4 + 24);
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

  v9 = *(v4 + 26);
  if (v9 != self->_dTStamp && ([(NSDate *)v9 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v36 = *(v4 + 26);
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

  v10 = *(v4 + 27);
  if (v10 != self->_endTime && ([(NSDate *)v10 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v38 = *(v4 + 27);
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

  v11 = *(v4 + 28);
  if (v11 != self->_location && ([(ASLocation *)v11 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v40 = *(v4 + 28);
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

  v12 = *(v4 + 29);
  if (v12 != self->_meetingStatus && ([(NSNumber *)v12 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v42 = *(v4 + 29);
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

  v13 = *(v4 + 32);
  if (v13 != self->_reminderMinsBefore && ([(NSNumber *)v13 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v44 = *(v4 + 32);
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

  v14 = *(v4 + 33);
  if (v14 != self->_sensitivity && ([(NSNumber *)v14 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v46 = *(v4 + 33);
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

  v15 = *(v4 + 34);
  if (v15 != self->_subject && ([(NSString *)v15 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v48 = *(v4 + 34);
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

  v16 = *(v4 + 35);
  if (v16 != self->_startTime && ([(NSDate *)v16 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v50 = *(v4 + 35);
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

  v17 = *(v4 + 40);
  if (v17 != self->_eventUID && ([(ASEventUID *)v17 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v52 = *(v4 + 40);
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

  v18 = *(v4 + 43);
  if (v18 != self->_recurrence && ([(ASRecurrence *)v18 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v54 = *(v4 + 43);
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

  if (([*(v4 + 41) count] || -[NSArray count](self->_attendees, "count")) && (objc_msgSend(*(v4 + 41), "isEqual:", self->_attendees) & 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v56 = *(v4 + 41);
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

  if (([*(v4 + 44) count] || -[NSArray count](self->_exceptions, "count")) && (objc_msgSend(*(v4 + 44), "isEqual:", self->_exceptions) & 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v58 = *(v4 + 44);
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

  v19 = *(v4 + 47);
  if (v19 != self->_appointmentReplyTime && ([(NSDate *)v19 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_85;
    }

    v60 = *(v4 + 47);
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

  v20 = *(v4 + 38);
  if (v20 != self->_onlineMeetingExternalLink && ([(NSString *)v20 isEqual:?]& 1) == 0)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v22, v23))
    {
      v62 = *(v4 + 38);
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

- (id)eventByMergingInLosingEvent:(id)a3 account:(id)a4
{
  v85 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = objc_opt_new();
  v10 = [(ASEvent *)v8 calEvent];
  if (!v10)
  {
    v10 = [v6 calEvent];
  }

  [v9 setCalEvent:v10];
  [v9 loadClientIDs];
  v11 = [(ASChangedCollectionLeaf *)v8 serverID];
  if (v11)
  {
    [v9 setServerID:v11];
  }

  else
  {
    v12 = [v6 serverID];
    [v9 setServerID:v12];
  }

  v13 = [(ASEvent *)v8 timeZone];
  [v9 setTimeZone:v13];

  v14 = [(ASEvent *)v8 allDayEvent];
  [v9 setAllDayEvent:v14];

  v15 = [(ASEvent *)v8 body];
  if (![v15 length])
  {
    v16 = [v6 body];

    v15 = v16;
  }

  [v9 setBody:v15];
  v17 = [(ASEvent *)v8 busyStatus];
  [v9 setBusyStatus:v17];

  v18 = [(ASEvent *)v8 categories];
  [v9 setCategories:v18];

  v19 = [(ASEvent *)v8 dTStamp];
  v20 = [v6 dTStamp];
  v21 = [v19 compare:v20];

  if (v21 == -1)
  {
    v22 = [v6 dTStamp];

    v19 = v22;
  }

  [v9 setDTStamp:v19];
  v23 = [(ASEvent *)v8 endTime];
  [v9 setEndTime:v23];

  v24 = [(ASEvent *)v8 location];
  if (!v24)
  {
    v24 = [v6 location];
  }

  [v9 setLocation:{v24, v24}];
  v25 = [(ASEvent *)v8 meetingStatus];
  [v9 setMeetingStatus:v25];

  v26 = [(ASEvent *)v8 organizerName];
  [v9 setOrganizerName:v26];

  v27 = [(ASEvent *)v8 organizerEmail];
  [v9 setOrganizerEmail:v27];

  v28 = [(ASEvent *)v8 reminderMinsBefore];
  [v9 setReminderMinsBefore:v28];

  v29 = [(ASEvent *)v8 sensitivity];
  [v9 setSensitivity:v29];

  v30 = [(ASEvent *)v8 subject];
  [v9 setSubject:v30];

  v31 = [(ASEvent *)v8 startTime];
  [v9 setStartTime:v31];

  v32 = [(ASEvent *)v8 eventUID];
  [v9 setEventUID:v32];

  v33 = [(ASEvent *)v8 attendees];
  [v9 setAttendees:v33];

  v34 = [(ASEvent *)v8 attendeesPendingDeletion];
  [v9 setAttendeesPendingDeletion:v34];

  v35 = [(ASEvent *)v8 recurrence];
  if (v35)
  {
    [v9 setRecurrence:v35];
  }

  else
  {
    v36 = [v6 recurrence];
    [v9 setRecurrence:v36];
  }

  v37 = [(ASEvent *)v8 appointmentReplyTime];
  v60 = v19;
  v61 = v15;
  if (v37)
  {
    [v9 setAppointmentReplyTime:v37];
  }

  else
  {
    v38 = [v6 appointmentReplyTime];
    [v9 setAppointmentReplyTime:v38];
  }

  v62 = v7;
  [v9 _determineSelfnessWithLocalEvent:objc_msgSend(v9 forAccount:{"calEvent"), v7}];
  v39 = objc_opt_new();
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v40 = [v6 exceptions];
  v41 = [v40 countByEnumeratingWithState:&v67 objects:v84 count:16];
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
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v67 + 1) + 8 * i);
        v46 = [v45 exceptionStartTime];
        [v39 setObject:v45 forKeyedSubscript:v46];
      }

      v42 = [v40 countByEnumeratingWithState:&v67 objects:v84 count:16];
    }

    while (v42);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v47 = [(ASEvent *)v8 exceptions];
  v48 = [v47 countByEnumeratingWithState:&v63 objects:v83 count:16];
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
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v63 + 1) + 8 * j);
        v53 = [v52 exceptionStartTime];
        [v39 setObject:v52 forKeyedSubscript:v53];
      }

      v49 = [v47 countByEnumeratingWithState:&v63 objects:v83 count:16];
    }

    while (v49);
  }

  v54 = [v39 allValues];
  [v9 setExceptions:v54];

  v55 = DALoggingwithCategory();
  v56 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v55, v56))
  {
    *buf = 134219266;
    v72 = v8;
    v73 = 2112;
    v74 = v8;
    v75 = 2048;
    v76 = v6;
    v77 = 2112;
    v78 = v6;
    v79 = 2048;
    v80 = v9;
    v81 = 2112;
    v82 = v9;
    _os_log_impl(&dword_24A0AC000, v55, v56, "Merged winner %p %@ and loser %p %@, and got %p %@", buf, 0x3Eu);
  }

  v57 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)eventByMergingInEvent:(id)a3 account:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ASEvent *)self _selfIsMoreCorrectThanOtherEvent:v6 account:v7];
  v9 = self;
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  if (v8)
  {
    v11 = v6;
  }

  else
  {
    v11 = v9;
  }

  v12 = v6;
  v13 = [(ASEvent *)v10 eventByMergingInLosingEvent:v11 account:v7];

  return v13;
}

- (void)setExceptions:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_exceptions != v5)
  {
    objc_storeStrong(&self->_exceptions, a3);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v5;
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

- (void)setRecurrence:(id)a3
{
  v5 = a3;
  if (self->_recurrence != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_recurrence, a3);
    [(ASRecurrence *)self->_recurrence setParentEvent:self];
    v5 = v6;
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