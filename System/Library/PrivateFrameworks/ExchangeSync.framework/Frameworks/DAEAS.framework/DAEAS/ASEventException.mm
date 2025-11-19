@interface ASEventException
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
+ (id)eventExceptionWithCalEvent:(void *)a3 originalEvent:(id)a4 account:(id)a5;
- (ASEvent)originalEvent;
- (ASEventException)initWithCalEvent:(void *)a3 originalEvent:(id)a4 account:(id)a5;
- (ASEventException)initWithCoder:(id)a3;
- (ASEventException)initWithExceptionStartTime:(id)a3;
- (BOOL)deleteFromCalendar;
- (BOOL)fillOutMissingExternalIdsForAccountID:(id)a3;
- (BOOL)hasOccurrenceInTheFuture;
- (BOOL)verifyExternalIdsForAccountID:(id)a3;
- (id)_transformedExceptionStartDateForActiveSync:(id)a3 isFloating:(BOOL)a4;
- (id)_transformedExceptionStartDateForCalFramework:(id)a3;
- (id)description;
- (id)serverIdForCalFrameworkWithParentEvent:(id)a3;
- (id)serverIdForCalFrameworkWithParentServerId:(id)a3;
- (id)uidGeneratedIfNecessaryWithLocalEvent:(void *)a3 forAccount:(id)a4;
- (void)_loadAttributesFromCalEvent:(void *)a3 withKnownExceptionDate:(id)a4 forAccount:(id)a5;
- (void)appendActiveSyncDataForTask:(id)a3 toWBXMLData:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)loadClientIDs;
- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8;
- (void)postProcessApplicationData;
- (void)saveToCalendarWithParentASEvent:(id)a3 existingRecord:(void *)a4 intoCalendar:(void *)a5 shouldMergeProperties:(BOOL)a6 outMergeDidChooseLocalProperties:(BOOL *)a7 account:(id)a8;
- (void)takeValuesFromParentForAccount:(id)a3;
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
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
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
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
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
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
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
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
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
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_28 = v2;
    notifyOfUnknownTokens___haveChecked_28 = 1;
  }

  return v2 & 1;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(a1);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v46.receiver = a1;
    v46.super_class = &OBJC_METACLASS___ASEventException;
    v6 = objc_msgSendSuper2(&v46, sel_asParseRules);
    v35 = [v6 mutableCopy];

    v39 = objc_alloc(MEMORY[0x277CBEAC0]);
    v45 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:29 objectClass:objc_opt_class() setterMethod:sel_setApplicationData_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v44 = [MEMORY[0x277CCABB0] numberWithInt:29];
    v7 = [ASParseRule alloc];
    v8 = objc_opt_class();
    v41 = a1;
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
    v22 = NSStringFromClass(v41);
    [v21 setObject:v35 forKey:v22];
  }

  return v5;
}

- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  [(ASChangedCollectionLeaf *)self setValidateOpeningTokens:0];
  v21.receiver = self;
  v21.super_class = ASEventException;
  [(ASEvent *)&v21 parseASParseContext:v19 root:v18 parent:v17 callbackDict:v16 streamCallbackDict:v15 account:v14];

  parsingState = self->super.super.super._parsingState;
  if ((parsingState - 3) <= 1)
  {
    self->super.super.super._parsingState = parsingState;
  }
}

- (id)_transformedExceptionStartDateForCalFramework:(id)a3
{
  v4 = a3;
  v5 = [(ASEventException *)self originalEvent];
  v6 = [v5 allDayEvent];
  v7 = [v6 intValue];

  if (v7)
  {
    v8 = [v4 nearestMidnight];
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  return v9;
}

- (id)_transformedExceptionStartDateForActiveSync:(id)a3 isFloating:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(ASEventException *)self originalEvent];
  v8 = [v7 allDayEvent];
  v9 = [v8 intValue];

  if (v9 || v4)
  {
    v11 = [(ASEventException *)self originalEvent];
    v12 = [v11 timeZone];
    v10 = [v6 gmtDateToDateInTimeZone:v12];
  }

  else
  {
    v10 = v6;
  }

  return v10;
}

- (id)serverIdForCalFrameworkWithParentEvent:(id)a3
{
  v4 = [a3 serverID];
  v5 = [(ASEventException *)self serverIdForCalFrameworkWithParentServerId:v4];

  return v5;
}

- (id)serverIdForCalFrameworkWithParentServerId:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [(ASEventException *)self exceptionStartTime];
  v7 = [v6 activeSyncStringWithoutSeparators];
  v8 = [v4 stringWithFormat:@"%@%@%@", v5, @"<!ExceptionDate!>", v7];

  return v8;
}

- (BOOL)verifyExternalIdsForAccountID:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASChangedCollectionLeaf *)self clientID];

  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = +[ASLocalDBHelper sharedInstance];
  [v6 calDatabaseForAccountID:v4];
  v7 = [(ASChangedCollectionLeaf *)self clientID];
  [v7 intValue];
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
        v17 = [(ASEvent *)self exceptions];
        v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
                objc_enumerationMutation(v17);
              }

              v14 |= [*(*(&v25 + 1) + 8 * i) verifyExternalIdsForAccountID:v4];
            }

            v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
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

- (BOOL)fillOutMissingExternalIdsForAccountID:(id)a3
{
  v3 = self;
  v7.receiver = self;
  v7.super_class = ASEventException;
  v4 = a3;
  v5 = [(ASEvent *)&v7 fillOutMissingExternalIdsForAccountID:v4];
  LOBYTE(v3) = [(ASEventException *)v3 verifyExternalIdsForAccountID:v4, v7.receiver, v7.super_class];

  return (v3 | v5) & 1;
}

- (void)saveToCalendarWithParentASEvent:(id)a3 existingRecord:(void *)a4 intoCalendar:(void *)a5 shouldMergeProperties:(BOOL)a6 outMergeDidChooseLocalProperties:(BOOL *)a7 account:(id)a8
{
  v20 = a6;
  v12 = a3;
  v13 = a8;
  [v12 calEvent];
  v14 = [(ASEventException *)self exceptionStartTime];
  v15 = [v12 timeZone];
  v16 = [v14 dateWithCalendarFormat:0 timeZone:v15];
  v17 = [(ASEventException *)self _transformedExceptionStartDateForCalFramework:v16];

  v18 = [(ASEventException *)self isDeleted];
  LOBYTE(v16) = [v18 BOOLValue];

  if ((v16 & 1) == 0)
  {
    v22.receiver = self;
    v22.super_class = ASEventException;
    [(ASEvent *)&v22 saveToCalendarWithExistingRecord:a4 intoCalendar:a5 shouldMergeProperties:v20 outMergeDidChooseLocalProperties:a7 account:v13];

    [(ASEvent *)self calEvent];
    CalEventAddDetachedEvent();
    [(ASEvent *)self calEvent];
    [v17 timeIntervalSinceReferenceDate];
    CalEventSetOriginalStartDate();
    [(ASEvent *)self calEvent];
    [(ASEventException *)self serverIdForCalFrameworkWithParentEvent:v12];
LABEL_7:
    CalCalendarItemSetExternalID();
    goto LABEL_8;
  }

  v19 = [v12 cachedOrganizerIsSelfWithAccount:v13];

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
  v3 = [(ASChangedCollectionLeaf *)self applicationData];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:1045];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v5, "intValue")}];
      [(ASEventException *)self setIsDeleted:v6];
    }
  }

  v7 = [(ASChangedCollectionLeaf *)self applicationData];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:4397];
  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = [MEMORY[0x277CBEAA8] dateWithActiveSyncStringWithoutSeparators:v9];
      [(ASEventException *)self setExceptionStartTime:v10];
    }
  }

  v11 = [(ASEventException *)self exceptionStartTime];

  if (!v11)
  {
    v12 = [(ASChangedCollectionLeaf *)self applicationData];
    v13 = [MEMORY[0x277CCABB0] numberWithInt:1046];
    v14 = [v12 objectForKey:v13];

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
  v16 = [(ASItem *)self parent];
  v17 = [v16 parent];
  v18 = [v17 parent];
  [(ASEventException *)self setOriginalEvent:v18];
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
        v11 = [(ASEventException *)self originalEvent];
        v12 = [(ASEventException *)self originalEvent];
        v10 = [v11 uidGeneratedIfNecessaryWithLocalEvent:objc_msgSend(v12 forAccount:{"calEvent"), v6}];

        if (!v10)
        {
          v10 = [MEMORY[0x277CCACA8] da_new64ByteGUID];
        }
      }

      v13 = [[ASEventUID alloc] initWithCalFrameworkString:v10];
      v14 = [(ASEventException *)self exceptionDate];

      if (v14)
      {
        v15 = [(ASEventException *)self exceptionDate];
        [(ASEventUID *)v13 setExceptionDate:v15];
      }

      [(ASEvent *)self setEventUID:v13];
      v16 = [(ASEvent *)self eventUID];
      v17 = [v16 uidForCalFramework];

      if (!v9)
      {
        CalCalendarItemSetUniqueIdentifier();
        v18 = +[ASLocalDBHelper sharedInstance];
        v19 = [v6 accountID];
        [v18 calSaveDatabaseForAccountID:v19];
      }

      v8 = v17;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)takeValuesFromParentForAccount:(id)a3
{
  v91 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASEventException *)self originalEvent];
  v6 = [v5 eventUID];

  v7 = [v6 copy];
  [(ASEvent *)self setEventUID:v7];
  v8 = [(ASEvent *)self eventUID];
  v9 = [(ASEventException *)self exceptionDate];
  [v8 setExceptionDate:v9];

  v10 = [(ASEvent *)self allDayEvent];

  if (!v10)
  {
    v11 = [(ASEventException *)self originalEvent];
    v12 = [v11 allDayEvent];
    [(ASEvent *)self setAllDayEvent:v12];
  }

  v13 = [(ASEvent *)self body];

  if (!v13)
  {
    v14 = [(ASEventException *)self originalEvent];
    v15 = [v14 body];
    [(ASEvent *)self setBody:v15];
  }

  if (![(ASEvent *)self bodyTruncated])
  {
    v16 = [(ASEventException *)self originalEvent];
    -[ASEvent setBodyTruncated:](self, "setBodyTruncated:", [v16 bodyTruncated]);
  }

  v17 = [(ASEvent *)self busyStatus];

  if (!v17)
  {
    v18 = [(ASEventException *)self originalEvent];
    v19 = [v18 busyStatus];
    [(ASEvent *)self setBusyStatus:v19];
  }

  v20 = [(ASEvent *)self location];

  if (!v20)
  {
    v21 = [(ASEventException *)self originalEvent];
    v22 = [v21 location];
    [(ASEvent *)self setLocation:v22];
  }

  v23 = [(ASEvent *)self reminderMinsBefore];

  if (!v23)
  {
    v24 = [(ASEventException *)self originalEvent];
    v25 = [v24 reminderMinsBefore];
    [(ASEvent *)self setReminderMinsBefore:v25];
  }

  v26 = [(ASEvent *)self subject];

  if (!v26)
  {
    v27 = [(ASEventException *)self originalEvent];
    v28 = [v27 subject];
    [(ASEvent *)self setSubject:v28];
  }

  v29 = [(ASEvent *)self startTime];

  if (!v29)
  {
    v30 = [(ASEventException *)self exceptionStartTime];

    if (v30)
    {
      v31 = [(ASEventException *)self exceptionStartTime];
      [(ASEvent *)self setStartTime:v31];
    }

    else
    {
      v32 = DALoggingwithCategory();
      v33 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v32, v33))
      {
        *buf = 138412290;
        v90 = self;
        _os_log_impl(&dword_24A0AC000, v32, v33, "Have an exception with no start date or exception start date.  Results are undefined, event is %@", buf, 0xCu);
      }

      v31 = [(ASEventException *)self originalEvent];
      v34 = [v31 startTime];
      [(ASEvent *)self setStartTime:v34];
    }
  }

  v35 = [(ASEvent *)self endTime];

  if (!v35)
  {
    v36 = [(ASEventException *)self originalEvent];
    v37 = [v36 endTime];

    v38 = [(ASEventException *)self originalEvent];
    v39 = [v38 startTime];

    [v37 timeIntervalSinceDate:v39];
    v41 = v40;
    v42 = [(ASEventException *)self exceptionStartTime];
    v43 = [v42 dateByAddingTimeInterval:v41];

    [(ASEvent *)self setEndTime:v43];
  }

  v44 = [(ASEvent *)self attendees];

  if (!v44)
  {
    v45 = [(ASEventException *)self originalEvent];
    v46 = [v45 attendees];

    v47 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v46, "count")}];
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v48 = v46;
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

          v53 = [*(*(&v84 + 1) + 8 * i) copyOfSelfWithoutLocalID];
          [v47 addObject:v53];
        }

        v50 = [v48 countByEnumeratingWithState:&v84 objects:v88 count:16];
      }

      while (v50);
    }

    [(ASEvent *)self setAttendees:v47];
  }

  v54 = [(ASEvent *)self organizerName];

  if (!v54)
  {
    v55 = [(ASEventException *)self originalEvent];
    v56 = [v55 organizerName];
    [(ASEvent *)self setOrganizerName:v56];
  }

  v57 = [(ASEvent *)self organizerEmail];

  if (!v57)
  {
    v58 = [(ASEventException *)self originalEvent];
    v59 = [v58 organizerEmail];
    [(ASEvent *)self setOrganizerEmail:v59];
  }

  v60 = [(ASEvent *)self timeZone];

  if (!v60)
  {
    v61 = [(ASEventException *)self originalEvent];
    v62 = [v61 timeZone];
    [(ASEvent *)self setTimeZone:v62];
  }

  v63 = [(ASEvent *)self dTStamp];

  if (!v63)
  {
    v64 = [(ASEventException *)self originalEvent];
    v65 = [v64 dTStamp];
    [(ASEvent *)self setDTStamp:v65];
  }

  v66 = [(ASEvent *)self responseRequested];

  if (!v66)
  {
    v67 = [(ASEventException *)self originalEvent];
    v68 = [v67 responseRequested];
    [(ASEvent *)self setResponseRequested:v68];
  }

  v69 = [(ASEvent *)self meetingStatus];

  if (!v69)
  {
    v70 = [(ASEventException *)self originalEvent];
    v71 = [v70 meetingStatus];
    [(ASEvent *)self setMeetingStatus:v71];
  }

  v72 = [(ASEvent *)self responseType];

  if (!v72)
  {
    v73 = [(ASEventException *)self originalEvent];
    v74 = [v73 responseType];
    [(ASEvent *)self setResponseType:v74];
  }

  [(ASEvent *)self _determineSelfnessWithLocalEvent:0 forAccount:v4];
  v75 = [(ASEventException *)self exceptionStartTime];

  if (v75)
  {
    v76 = MEMORY[0x277CCA8F8];
    v77 = [(ASEventException *)self exceptionStartTime];
    v78 = [(ASEventException *)self originalEvent];
    v79 = [v78 startTime];
    v80 = [(ASEventException *)self originalEvent];
    v81 = [v80 timeZone];
    v82 = [v76 combinedDateWithYMDFrom:v77 HMSFrom:v79 componentDatesTimezone:v81];

    [(ASEventException *)self setExceptionStartTime:v82];
  }

  v83 = *MEMORY[0x277D85DE8];
}

- (void)_loadAttributesFromCalEvent:(void *)a3 withKnownExceptionDate:(id)a4 forAccount:(id)a5
{
  v14.receiver = self;
  v14.super_class = ASEventException;
  v8 = a4;
  [(ASEvent *)&v14 _loadAttributesFromCalEvent:a3 forAccount:a5];
  [(ASEventException *)self setExceptionDate:v8, v14.receiver, v14.super_class];

  ModifiedDate = CalCalendarItemCopyLastModifiedDate();
  if (ModifiedDate)
  {
    CFRelease(ModifiedDate);
  }

  else
  {
    v10 = [(ASEventException *)self originalEvent];
    v11 = [v10 dTStamp];
    [(ASEvent *)self setDTStamp:v11];
  }

  v12 = [(ASEventException *)self originalEvent];
  v13 = [v12 responseRequested];
  [(ASEvent *)self setResponseRequested:v13];
}

- (ASEventException)initWithCalEvent:(void *)a3 originalEvent:(id)a4 account:(id)a5
{
  v8 = a4;
  v9 = a5;
  v22.receiver = self;
  v22.super_class = ASEventException;
  v10 = [(ASEvent *)&v22 init];
  v11 = v10;
  if (v10)
  {
    [(ASEventException *)v10 setOriginalEvent:v8];
    if (a3)
    {
      IsFloating = CalCalendarItemIsFloating();
      v13 = CalCalendarItemGetStatus() == 3 || ([v8 cachedOrganizerIsSelfWithAccount:v9] & 1) == 0 && (CalEventGetParticipationStatus() == 2 || CalEventGetPendingParticipationStatus() == 2);
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
      v18 = [v8 timeZone];
      v19 = [v17 dateWithCalendarFormat:0 timeZone:v18];
      v20 = [(ASEventException *)v11 _transformedExceptionStartDateForActiveSync:v19 isFloating:IsFloating];

      [(ASEventException *)v11 setExceptionDate:v20];
    }

    else
    {
      v20 = 0;
    }

    [(ASEventException *)v11 _loadAttributesFromCalEvent:a3 withKnownExceptionDate:v20 forAccount:v9];
    [(ASEvent *)v11 setCalEvent:a3];
  }

  return v11;
}

+ (id)eventExceptionWithCalEvent:(void *)a3 originalEvent:(id)a4 account:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[a1 alloc] initWithCalEvent:a3 originalEvent:v9 account:v8];

  return v10;
}

- (ASEventException)initWithExceptionStartTime:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ASEventException;
  v5 = [(ASEvent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ASEventException *)v5 setExceptionStartTime:v4];
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

- (void)appendActiveSyncDataForTask:(id)a3 toWBXMLData:(id)a4
{
  v122 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ASEventException *)self isDeleted];
  v9 = [v8 BOOLValue];

  if ([(ASEvent *)self calEvent])
  {
    [(ASEvent *)self calEvent];
    v9 |= CalCalendarItemGetStatus() == 3;
  }

  v10 = v9 & 1;
  v11 = [v6 taskManager];
  v12 = [v11 protocol];
  v13 = [v12 usesAirSyncBaseNamespace];

  v14 = [v6 taskManager];
  v15 = [v14 protocol];
  v116 = [v15 useStructuredLocation];

  v16 = [v6 taskManager];
  v17 = [v16 protocol];
  v18 = [v17 useInstanceIdForException];

  v19 = [v6 taskManager];
  v20 = [v19 protocol];
  v115 = [v20 useEmptyLocation];

  v21 = [(ASEvent *)self organizerEmail];
  if ([v21 length])
  {
    v22 = [v6 taskManager];
    v23 = [v22 account];
    v24 = [(ASEvent *)self cachedOrganizerIsSelfWithAccount:v23];

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

  v26 = [(ASEvent *)self doNotSendBody];
  v27 = v26;
  v28 = !v26;
  if ([(ASEvent *)self calEvent]&& !v27)
  {
    [(ASEvent *)self calEvent];
    v28 = (CalEventGetModifiedProperties() >> 5) & 1;
  }

  v25 = v28 ^ 1;
  if ((v28 & v13) == 1 && (v10 & 1) == 0)
  {
    v29 = [(ASEvent *)self body];
    [v7 switchToCodePage:17];
    [v7 openTag:10];
    [v7 appendTag:6 withIntContent:1];
    if ([v29 length])
    {
      [v7 appendTag:11 withStringContent:v29];
    }

    else
    {
      [v7 appendEmptyTag:11];
    }

    [v7 closeTag:10];
  }

LABEL_16:
  [v7 switchToCodePage:4];
  if ((v18 & 1) == 0)
  {
    [v7 appendTag:21 withIntContent:v10];
    v30 = [(ASEventException *)self exceptionStartTime];
    v31 = v30;
    if (v30)
    {
      v32 = [v30 activeSyncStringWithoutSeparators];
      [v7 appendTag:22 withStringContent:v32];
    }
  }

  if (v10)
  {
    goto LABEL_85;
  }

  v33 = [(ASEvent *)self startTime];
  v34 = v33;
  if (v33)
  {
    v35 = [v33 activeSyncStringWithoutSeparators];
    [v7 appendTag:39 withStringContent:v35];
  }

  v36 = [(ASEvent *)self endTime];
  v37 = v36;
  if (v36)
  {
    v38 = [v36 activeSyncStringWithoutSeparators];
    [v7 appendTag:18 withStringContent:v38];
  }

  v39 = [(ASEvent *)self subject];
  if (v39)
  {
    [v7 appendTag:38 withStringContent:v39];
  }

  v40 = [(ASEvent *)self busyStatus];

  if (v40)
  {
    v41 = [(ASEvent *)self busyStatus];
    [v7 appendTag:13 withIntContent:{objc_msgSend(v41, "intValue")}];
  }

  else
  {
    [v7 appendTag:13 withIntContent:2];
  }

  v42 = [(ASEvent *)self allDayEvent];
  v43 = v42;
  if (v42)
  {
    [v7 appendTag:6 withIntContent:{objc_msgSend(v42, "intValue")}];
  }

  if (((v25 | v13) & 1) == 0)
  {
    v44 = [(ASEvent *)self body];
    if (v44)
    {
      [v7 appendTag:11 withStringContent:v44];
    }
  }

  v45 = [(ASEvent *)self location];

  if (!v45)
  {
    if (!v115)
    {
      goto LABEL_68;
    }

    [v7 switchToCodePage:17];
    [v7 appendEmptyTag:32];
    goto LABEL_65;
  }

  if (v116)
  {
    [v7 switchToCodePage:17];
    [v7 openTag:32];
    v46 = [(ASEvent *)self location];
    v47 = [v46 displayName];

    if (v47)
    {
      v48 = [(ASEvent *)self location];
      v49 = [v48 displayName];
      [v7 appendTag:16 withStringContent:v49];
    }

    v50 = [(ASEvent *)self location];
    v51 = [v50 annotation];

    if (v51)
    {
      v52 = [(ASEvent *)self location];
      v53 = [v52 annotation];
      [v7 appendTag:33 withStringContent:v53];
    }

    v54 = [(ASEvent *)self location];
    v55 = [v54 street];

    if (v55)
    {
      v56 = [(ASEvent *)self location];
      v57 = [v56 street];
      [v7 appendTag:34 withStringContent:v57];
    }

    v58 = [(ASEvent *)self location];
    v59 = [v58 city];

    if (v59)
    {
      v60 = [(ASEvent *)self location];
      v61 = [v60 city];
      [v7 appendTag:35 withStringContent:v61];
    }

    v62 = [(ASEvent *)self location];
    v63 = [v62 state];

    if (v63)
    {
      v64 = [(ASEvent *)self location];
      v65 = [v64 state];
      [v7 appendTag:36 withStringContent:v65];
    }

    v66 = [(ASEvent *)self location];
    v67 = [v66 postalCode];

    if (v67)
    {
      v68 = [(ASEvent *)self location];
      v69 = [v68 postalCode];
      [v7 appendTag:38 withStringContent:v69];
    }

    v70 = [(ASEvent *)self location];
    v71 = [v70 country];

    if (v71)
    {
      v72 = [(ASEvent *)self location];
      v73 = [v72 country];
      [v7 appendTag:37 withStringContent:v73];
    }

    v74 = [(ASEvent *)self location];
    v75 = [v74 latitude];

    if (v75)
    {
      v76 = [(ASEvent *)self location];
      v77 = [v76 latitude];
      [v7 appendTag:39 withStringContent:v77];
    }

    v78 = [(ASEvent *)self location];
    v79 = [v78 longitude];

    if (v79)
    {
      v80 = [(ASEvent *)self location];
      v81 = [v80 longitude];
      [v7 appendTag:40 withStringContent:v81];
    }

    v82 = [(ASEvent *)self location];
    v83 = [v82 accuracy];

    if (v83)
    {
      v84 = [(ASEvent *)self location];
      v85 = [v84 accuracy];
      [v7 appendTag:41 withStringContent:v85];
    }

    v86 = [(ASEvent *)self location];
    v87 = [v86 altitude];

    if (v87)
    {
      v88 = [(ASEvent *)self location];
      v89 = [v88 altitude];
      [v7 appendTag:42 withStringContent:v89];
    }

    v90 = [(ASEvent *)self location];
    v91 = [v90 altitudeAccuracy];

    if (v91)
    {
      v92 = [(ASEvent *)self location];
      v93 = [v92 altitudeAccuracy];
      [v7 appendTag:43 withStringContent:v93];
    }

    [v7 closeTag:32];
LABEL_65:
    [v7 switchToCodePage:4];
    goto LABEL_68;
  }

  v94 = [(ASEvent *)self location];
  v95 = [v94 displayName];

  if (v95)
  {
    v96 = [(ASEvent *)self location];
    v97 = [v96 displayName];
    [v7 appendTag:23 withStringContent:v97];
  }

LABEL_68:
  v98 = [(ASEvent *)self reminderMinsBefore];
  v99 = v98;
  if (v98)
  {
    [v7 appendTag:36 withIntContent:{objc_msgSend(v98, "intValue")}];
  }

  v100 = [v6 taskManager];
  v101 = [v100 protocol];
  v102 = [v101 supportsAttendeesInExceptions];

  if (v102)
  {
    v103 = [(ASEventException *)self originalEvent];
    v104 = [v103 attendees];
    v105 = [(ASEvent *)self attendees];
    v106 = [v104 isEqual:v105];

    if ((v106 & 1) == 0)
    {
      [v7 openProspectiveTag:7];
      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v107 = [(ASEvent *)self attendees];
      v108 = [v107 countByEnumeratingWithState:&v117 objects:v121 count:16];
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
              objc_enumerationMutation(v107);
            }

            v113 = *(*(&v117 + 1) + 8 * i);
            if ([v113 status] != 6)
            {
              [v7 openTag:8];
              [v113 appendActiveSyncDataForTask:v6 toData:v7];
              [v7 closeTag:8];
              v110 = 1;
            }
          }

          v109 = [v107 countByEnumeratingWithState:&v117 objects:v121 count:16];
        }

        while (v109);

        [v7 closeProspectiveTag:7];
        if (v110)
        {
          goto LABEL_85;
        }
      }

      else
      {

        [v7 closeProspectiveTag:7];
      }

      [v7 appendEmptyTag:7];
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
  v5 = [(ASEventException *)self exceptionStartTime];
  v6 = [(ASEventException *)self isDeleted];
  v7 = [v6 intValue];
  v8 = @"YES";
  if (!v7)
  {
    v8 = @"NO";
  }

  v9 = [v3 stringWithFormat:@"%@: exceptionStartTime %@ isDeleted %@", v4, v5, v8];

  return v9;
}

- (ASEventException)initWithCoder:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v14.receiver = self;
  v14.super_class = ASEventException;
  v6 = [(ASEvent *)&v14 initWithCoder:v5];
  if (v6)
  {
    if (([v5 allowsKeyedCoding] & 1) == 0)
    {
      [(ASEventException *)a2 initWithCoder:v6];
    }

    v7 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"isDeleted"];
    [(ASEventException *)v6 setIsDeleted:v7];

    v8 = MEMORY[0x277CBEB98];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [v5 decodeObjectOfClasses:v10 forKey:@"exceptionStartTime"];
    [(ASEventException *)v6 setExceptionStartTime:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = ASEventException;
  [(ASEvent *)&v8 encodeWithCoder:v5];
  if (([v5 allowsKeyedCoding] & 1) == 0)
  {
    [(ASEventException *)a2 encodeWithCoder:?];
  }

  v6 = [(ASEventException *)self isDeleted];
  [v5 encodeObject:v6 forKey:@"isDeleted"];

  v7 = [(ASEventException *)self exceptionStartTime];
  [v5 encodeObject:v7 forKey:@"exceptionStartTime"];
}

- (BOOL)hasOccurrenceInTheFuture
{
  if (!-[ASEvent calEvent](self, "calEvent") && (-[ASEventException originalEvent](self, "originalEvent"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5) && (-[ASEventException originalEvent](self, "originalEvent"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 calEvent], v6, v7))
  {
    Duration = CalEventGetDuration();
    v9 = [(ASEventException *)self exceptionDate];
    v10 = [v9 dateByAddingTimeInterval:Duration];

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