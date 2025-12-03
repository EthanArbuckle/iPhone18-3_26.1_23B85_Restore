@interface ASToDo
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
+ (id)toDoWithCalTask:(void *)task serverID:(id)d account:(id)account;
- (ASToDo)initWithCalTask:(void *)task serverID:(id)d account:(id)account;
- (ASToDo)initWithCoder:(id)coder;
- (BOOL)deleteFromCalendar;
- (BOOL)loadCalRecordForAccount:(id)account;
- (BOOL)saveServerIDToCalendar;
- (BOOL)saveServerIDToExistingItem;
- (BOOL)saveToCalendarWithExistingRecord:(void *)record intoCalendar:(void *)calendar shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties account:(id)account;
- (BOOL)saveWithLocalObject:(void *)object toContainer:(void *)container shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties account:(id)account;
- (NSString)description;
- (id)bestGuessTimeZoneWithLocalDate:(id)date utcDate:(id)utcDate;
- (void)_loadAttributesFromCalTask:(void *)task forAccount:(id)account;
- (void)appendActiveSyncDataForTask:(id)task toWBXMLData:(id)data;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)loadClientIDs;
- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account;
- (void)postProcessApplicationData;
- (void)setBody:(id)body;
- (void)setCalTask:(void *)task;
- (void)setLocalItem:(void *)item;
@end

@implementation ASToDo

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_8 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_8;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_8 = v2;
    acceptsTopLevelLeaves___haveChecked_8 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_8 == 1)
  {
    v2 = parsingLeafNode___result_8;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_8 = v2;
    parsingLeafNode___haveChecked_8 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_8 == 1)
  {
    v2 = parsingWithSubItems___result_8;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_8 = v2;
    parsingWithSubItems___haveChecked_8 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_8 == 1)
  {
    v2 = frontingBasicTypes___result_8;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_8 = v2;
    frontingBasicTypes___haveChecked_8 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_8 == 1)
  {
    v2 = notifyOfUnknownTokens___result_8;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_8 = v2;
    notifyOfUnknownTokens___haveChecked_8 = 1;
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
    v30.receiver = self;
    v30.super_class = &OBJC_METACLASS___ASToDo;
    v6 = objc_msgSendSuper2(&v30, sel_asParseRules);
    v5 = [v6 mutableCopy];

    v29 = objc_alloc(MEMORY[0x277CBEAC0]);
    v28 = [ASParseRule alloc];
    v27 = objc_opt_class();
    aClass = MEMORY[0x277CBEAC0];
    v23 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:9 token:15 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v21 = [MEMORY[0x277CCABB0] numberWithInt:2319];
    v7 = [ASParseRule alloc];
    v8 = objc_opt_class();
    v9 = MEMORY[0x277CBEAC0];
    v25 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1209 codePage:9 token:9 objectClass:objc_opt_class() setterMethod:sel_addItem_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v24 = [MEMORY[0x277CCABB0] numberWithInt:2313];
    v22 = [v9 dictionaryWithObjectsAndKeys:{v25, v24, 0}];
    v20 = [(ASParseRule *)v7 initWithMinimumNumber:0 maximumNumber:1 codePage:9 token:8 objectClass:v8 setterMethod:sel_setCategories_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v22];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:2312];
    v11 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:17 token:10 objectClass:objc_opt_class() setterMethod:0 dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v12 = [MEMORY[0x277CCABB0] numberWithInt:4362];
    v13 = [(objc_class *)aClass dictionaryWithObjectsAndKeys:v23, v21, v20, v10, v11, v12, 0];
    v14 = [(ASParseRule *)v28 initWithMinimumNumber:0 maximumNumber:1 codePage:0 token:29 objectClass:v27 setterMethod:sel_setApplicationData_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:v13];
    v15 = [MEMORY[0x277CCABB0] numberWithInt:29];
    v16 = [v29 initWithObjectsAndKeys:{v14, v15, 0}];

    [v5 addEntriesFromDictionary:v16];
    v17 = +[ASItem parseRuleCache];
    v18 = NSStringFromClass(self);
    [v17 setObject:v5 forKey:v18];
  }

  return v5;
}

- (void)_loadAttributesFromCalTask:(void *)task forAccount:(id)account
{
  v4 = DALoggingwithCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [ASToDo _loadAttributesFromCalTask:forAccount:];
  }
}

- (ASToDo)initWithCalTask:(void *)task serverID:(id)d account:(id)account
{
  dCopy = d;
  accountCopy = account;
  v13.receiver = self;
  v13.super_class = ASToDo;
  v10 = [(ASChangedCollectionLeaf *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(ASChangedCollectionLeaf *)v10 setServerID:dCopy];
    [(ASToDo *)v11 setCalTask:task];
    [(ASToDo *)v11 _loadAttributesFromCalTask:task forAccount:accountCopy];
  }

  return v11;
}

+ (id)toDoWithCalTask:(void *)task serverID:(id)d account:(id)account
{
  accountCopy = account;
  dCopy = d;
  v10 = [[self alloc] initWithCalTask:task serverID:dCopy account:accountCopy];

  return v10;
}

- (void)dealloc
{
  calTask = self->_calTask;
  if (calTask)
  {
    CFRelease(calTask);
    self->_calTask = 0;
  }

  v4.receiver = self;
  v4.super_class = ASToDo;
  [(ASToDo *)&v4 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  serverID = [(ASChangedCollectionLeaf *)self serverID];
  subject = [(ASToDo *)self subject];
  startTime = [(ASToDo *)self startTime];
  v8 = [v3 stringWithFormat:@"<%@: [%@] [%@] [%@]>", v4, serverID, subject, startTime];

  return v8;
}

- (id)bestGuessTimeZoneWithLocalDate:(id)date utcDate:(id)utcDate
{
  v28 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  utcDateCopy = utcDate;
  v7 = utcDateCopy;
  if (dateCopy && utcDateCopy)
  {
    [dateCopy timeIntervalSinceDate:utcDateCopy];
    v9 = v8;
    localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
    v11 = [localTimeZone secondsFromGMTForDate:dateCopy];

    v12 = v9 - v11;
    if (v12 < 0.0)
    {
      v12 = -v12;
    }

    if (v12 >= 60.0)
    {
      [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:v9];
    }

    else
    {
      [MEMORY[0x277CBEBB0] localTimeZone];
    }
    localTimeZone2 = ;
    v14 = DALoggingwithCategory();
    v15 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v14, v15))
    {
      v18 = 138413314;
      v19 = dateCopy;
      v20 = 2112;
      v21 = v7;
      v22 = 2048;
      v23 = v9;
      v24 = 2048;
      v25 = v11;
      v26 = 2112;
      v27 = localTimeZone2;
      _os_log_impl(&dword_24A0AC000, v14, v15, "localDate %@ utc date %@ offset %lf myTZDiff %ld.  Returning %@", &v18, 0x34u);
    }
  }

  else
  {
    localTimeZone2 = [MEMORY[0x277CBEBB0] localTimeZone];
  }

  v16 = *MEMORY[0x277D85DE8];

  return localTimeZone2;
}

- (BOOL)saveToCalendarWithExistingRecord:(void *)record intoCalendar:(void *)calendar shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties account:(id)account
{
  v7 = DALoggingwithCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    [ASToDo saveToCalendarWithExistingRecord:intoCalendar:shouldMergeProperties:outMergeDidChooseLocalProperties:account:];
  }

  return 1;
}

- (void)postProcessApplicationData
{
  applicationData = [(ASChangedCollectionLeaf *)self applicationData];
  v55 = [applicationData objectForKeyedSubscript:&unk_285D57AF8];

  if (v55)
  {
    applicationData2 = [MEMORY[0x277CCABB0] numberWithInt:4363];
    v5 = [v55 objectForKey:applicationData2];
  }

  else
  {
    applicationData2 = [(ASChangedCollectionLeaf *)self applicationData];
    v6 = [MEMORY[0x277CCABB0] numberWithInt:2309];
    v5 = [applicationData2 objectForKey:v6];
  }

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASToDo *)self setBody:v5];
    }
  }

  applicationData3 = [(ASChangedCollectionLeaf *)self applicationData];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:2312];
  v9 = [applicationData3 objectForKey:v8];

  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASToDo *)self setCategories:v9];
    }
  }

  applicationData4 = [(ASChangedCollectionLeaf *)self applicationData];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:2314];
  v12 = [applicationData4 objectForKey:v11];

  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v12, "intValue")}];
      [(ASToDo *)self setComplete:v13];
    }
  }

  applicationData5 = [(ASChangedCollectionLeaf *)self applicationData];
  v15 = [MEMORY[0x277CCABB0] numberWithInt:2315];
  v16 = [applicationData5 objectForKey:v15];

  if (v16)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:v16];
      [(ASToDo *)self setDateCompleted:v17];
    }
  }

  applicationData6 = [(ASChangedCollectionLeaf *)self applicationData];
  v19 = [MEMORY[0x277CCABB0] numberWithInt:2316];
  v20 = [applicationData6 objectForKey:v19];

  if (v20)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:v20];
      [(ASToDo *)self setDueDate:v21];
    }
  }

  applicationData7 = [(ASChangedCollectionLeaf *)self applicationData];
  v23 = [MEMORY[0x277CCABB0] numberWithInt:2317];
  v24 = [applicationData7 objectForKey:v23];

  if (v24)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v25 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:v24];
      [(ASToDo *)self setUTCDueDate:v25];
    }
  }

  applicationData8 = [(ASChangedCollectionLeaf *)self applicationData];
  v27 = [MEMORY[0x277CCABB0] numberWithInt:2318];
  v28 = [applicationData8 objectForKey:v27];

  if (v28)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v29 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v28, "intValue")}];
      [(ASToDo *)self setImportance:v29];
    }
  }

  applicationData9 = [(ASChangedCollectionLeaf *)self applicationData];
  v31 = [MEMORY[0x277CCABB0] numberWithInt:2331];
  v32 = [applicationData9 objectForKey:v31];

  if (v32)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v33 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v32, "intValue")}];
      [(ASToDo *)self setReminderIsSet:v33];
    }
  }

  applicationData10 = [(ASChangedCollectionLeaf *)self applicationData];
  v35 = [MEMORY[0x277CCABB0] numberWithInt:2332];
  v36 = [applicationData10 objectForKey:v35];

  if (v36)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v37 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:v36];
      [(ASToDo *)self setReminderDateTime:v37];
    }
  }

  applicationData11 = [(ASChangedCollectionLeaf *)self applicationData];
  v39 = [MEMORY[0x277CCABB0] numberWithInt:2333];
  v40 = [applicationData11 objectForKey:v39];

  if (v40)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v41 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v40, "intValue")}];
      [(ASToDo *)self setSensitivity:v41];
    }
  }

  applicationData12 = [(ASChangedCollectionLeaf *)self applicationData];
  v43 = [MEMORY[0x277CCABB0] numberWithInt:2334];
  v44 = [applicationData12 objectForKey:v43];

  if (v44)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v45 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:v44];
      [(ASToDo *)self setStartTime:v45];
    }
  }

  applicationData13 = [(ASChangedCollectionLeaf *)self applicationData];
  v47 = [MEMORY[0x277CCABB0] numberWithInt:2335];
  v48 = [applicationData13 objectForKey:v47];

  if (v48)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v49 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:v48];
      [(ASToDo *)self setUTCStartTime:v49];
    }
  }

  applicationData14 = [(ASChangedCollectionLeaf *)self applicationData];
  v51 = [MEMORY[0x277CCABB0] numberWithInt:2336];
  v52 = [applicationData14 objectForKey:v51];

  if (v52)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASToDo *)self setSubject:v52];
    }
  }

  applicationData15 = [(ASChangedCollectionLeaf *)self applicationData];
  v54 = [applicationData15 objectForKeyedSubscript:&unk_285D57B10];

  [(ASToDo *)self setRecurrence:v54];
  [(ASChangedCollectionLeaf *)self setApplicationData:0];
}

- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account
{
  v10.receiver = self;
  v10.super_class = ASToDo;
  [(ASChangedCollectionLeaf *)&v10 parseASParseContext:context root:root parent:parent callbackDict:dict streamCallbackDict:callbackDict account:account];
  parsingState = self->super.super._parsingState;
  if (parsingState >= 2)
  {
    if (parsingState == 4 || parsingState == 3)
    {
      self->super.super._parsingState = parsingState;
    }

    else if (![(ASChangedCollectionLeaf *)self changeType]|| [(ASChangedCollectionLeaf *)self changeType]== 1)
    {
      [(ASToDo *)self postProcessApplicationData];
    }
  }
}

- (BOOL)deleteFromCalendar
{
  if ([(ASToDo *)self calTask])
  {
    [(ASToDo *)self calTask];
    CalRemoveTask();
  }

  return 1;
}

- (void)appendActiveSyncDataForTask:(id)task toWBXMLData:(id)data
{
  v54 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  dataCopy = data;
  taskManager = [taskCopy taskManager];
  protocol = [taskManager protocol];
  usesAirSyncBaseNamespace = [protocol usesAirSyncBaseNamespace];

  body = [(ASToDo *)self body];
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
    [dataCopy switchToCodePage:9];
  }

  else
  {
    [dataCopy switchToCodePage:9];
    body2 = [(ASToDo *)self body];
    if (body2)
    {
      [dataCopy appendTag:5 withStringContent:body2];
    }
  }

  subject = [(ASToDo *)self subject];
  if (subject)
  {
    [dataCopy appendTag:32 withStringContent:subject];
  }

  importance = [(ASToDo *)self importance];
  v15 = importance;
  if (importance)
  {
    [dataCopy appendTag:14 withIntContent:{objc_msgSend(importance, "intValue")}];
  }

  utcStartTime = [(ASToDo *)self utcStartTime];
  v17 = utcStartTime;
  if (utcStartTime)
  {
    activeSyncString = [utcStartTime activeSyncString];
    [dataCopy appendTag:31 withStringContent:activeSyncString];
  }

  startTime = [(ASToDo *)self startTime];
  v20 = startTime;
  if (startTime)
  {
    activeSyncString2 = [startTime activeSyncString];
    [dataCopy appendTag:30 withStringContent:activeSyncString2];
  }

  utcDueDate = [(ASToDo *)self utcDueDate];
  v23 = utcDueDate;
  if (utcDueDate)
  {
    activeSyncString3 = [utcDueDate activeSyncString];
    [dataCopy appendTag:13 withStringContent:activeSyncString3];
  }

  dueDate = [(ASToDo *)self dueDate];
  v26 = dueDate;
  if (dueDate)
  {
    activeSyncString4 = [dueDate activeSyncString];
    [dataCopy appendTag:12 withStringContent:activeSyncString4];
  }

  categories = [(ASToDo *)self categories];
  v29 = [categories count];

  if (v29)
  {
    [dataCopy openTag:8];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    categories2 = [(ASToDo *)self categories];
    v31 = [categories2 countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v50;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v50 != v33)
          {
            objc_enumerationMutation(categories2);
          }

          [dataCopy appendTag:9 withStringContent:*(*(&v49 + 1) + 8 * i)];
        }

        v32 = [categories2 countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v32);
    }

    [dataCopy closeTag:8];
  }

  recurrence = [(ASToDo *)self recurrence];
  [recurrence appendActiveSyncDataForTask:taskCopy toWBXMLData:dataCopy];

  complete = [(ASToDo *)self complete];
  v37 = complete;
  if (complete)
  {
    [dataCopy appendTag:10 withIntContent:{objc_msgSend(complete, "intValue")}];
  }

  dateCompleted = [(ASToDo *)self dateCompleted];
  v39 = dateCompleted;
  if (dateCompleted)
  {
    activeSyncString5 = [dateCompleted activeSyncString];
    [dataCopy appendTag:11 withStringContent:activeSyncString5];
  }

  sensitivity = [(ASToDo *)self sensitivity];
  v42 = sensitivity;
  if (sensitivity)
  {
    [dataCopy appendTag:29 withIntContent:{objc_msgSend(sensitivity, "intValue")}];
  }

  reminderDateTime = [(ASToDo *)self reminderDateTime];
  v44 = reminderDateTime;
  if (reminderDateTime)
  {
    activeSyncString6 = [reminderDateTime activeSyncString];
    [dataCopy appendTag:28 withStringContent:activeSyncString6];
  }

  reminderIsSet = [(ASToDo *)self reminderIsSet];
  v47 = reminderIsSet;
  if (reminderIsSet)
  {
    [dataCopy appendTag:27 withIntContent:{objc_msgSend(reminderIsSet, "intValue")}];
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (void)setCalTask:(void *)task
{
  v3 = DALoggingwithCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [ASToDo setCalTask:];
  }
}

- (BOOL)loadCalRecordForAccount:(id)account
{
  v3 = DALoggingwithCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [ASToDo loadCalRecordForAccount:];
  }

  return 0;
}

- (BOOL)saveServerIDToCalendar
{
  v2 = DALoggingwithCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    [ASToDo saveServerIDToCalendar];
  }

  return 0;
}

- (void)loadClientIDs
{
  v2 = DALoggingwithCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    [ASToDo loadClientIDs];
  }
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

- (BOOL)saveWithLocalObject:(void *)object toContainer:(void *)container shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties account:(id)account
{
  v7 = DALoggingwithCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    [ASToDo saveWithLocalObject:toContainer:shouldMergeProperties:outMergeDidChooseLocalProperties:account:];
  }

  return 0;
}

- (void)setLocalItem:(void *)item
{
  v3 = DALoggingwithCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [ASToDo setLocalItem:];
  }
}

- (BOOL)saveServerIDToExistingItem
{
  v2 = DALoggingwithCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    [ASToDo saveServerIDToExistingItem];
  }

  return 0;
}

- (ASToDo)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASToDo.m" lineNumber:588 description:{@"Yes, I know ASToDo is a subclass of ASChangedCollectionLeaf, and should handle initWithCoder:.  But I'm lazy, and no one needs this yet"}];

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ASToDo.m" lineNumber:593 description:{@"Yes, I know ASToDo is a subclass of ASChangedCollectionLeaf, and should handle encodeWithCoder:.  But I'm lazy, and no one needs this yet"}];
}

@end