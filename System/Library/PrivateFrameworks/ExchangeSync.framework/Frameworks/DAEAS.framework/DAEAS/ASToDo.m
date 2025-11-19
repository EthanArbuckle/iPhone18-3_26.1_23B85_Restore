@interface ASToDo
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
+ (id)toDoWithCalTask:(void *)a3 serverID:(id)a4 account:(id)a5;
- (ASToDo)initWithCalTask:(void *)a3 serverID:(id)a4 account:(id)a5;
- (ASToDo)initWithCoder:(id)a3;
- (BOOL)deleteFromCalendar;
- (BOOL)loadCalRecordForAccount:(id)a3;
- (BOOL)saveServerIDToCalendar;
- (BOOL)saveServerIDToExistingItem;
- (BOOL)saveToCalendarWithExistingRecord:(void *)a3 intoCalendar:(void *)a4 shouldMergeProperties:(BOOL)a5 outMergeDidChooseLocalProperties:(BOOL *)a6 account:(id)a7;
- (BOOL)saveWithLocalObject:(void *)a3 toContainer:(void *)a4 shouldMergeProperties:(BOOL)a5 outMergeDidChooseLocalProperties:(BOOL *)a6 account:(id)a7;
- (NSString)description;
- (id)bestGuessTimeZoneWithLocalDate:(id)a3 utcDate:(id)a4;
- (void)_loadAttributesFromCalTask:(void *)a3 forAccount:(id)a4;
- (void)appendActiveSyncDataForTask:(id)a3 toWBXMLData:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)loadClientIDs;
- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8;
- (void)postProcessApplicationData;
- (void)setBody:(id)a3;
- (void)setCalTask:(void *)a3;
- (void)setLocalItem:(void *)a3;
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
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
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
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
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
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
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
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
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
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_8 = v2;
    notifyOfUnknownTokens___haveChecked_8 = 1;
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
    v30.receiver = a1;
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
    v18 = NSStringFromClass(a1);
    [v17 setObject:v5 forKey:v18];
  }

  return v5;
}

- (void)_loadAttributesFromCalTask:(void *)a3 forAccount:(id)a4
{
  v4 = DALoggingwithCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [ASToDo _loadAttributesFromCalTask:forAccount:];
  }
}

- (ASToDo)initWithCalTask:(void *)a3 serverID:(id)a4 account:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = ASToDo;
  v10 = [(ASChangedCollectionLeaf *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(ASChangedCollectionLeaf *)v10 setServerID:v8];
    [(ASToDo *)v11 setCalTask:a3];
    [(ASToDo *)v11 _loadAttributesFromCalTask:a3 forAccount:v9];
  }

  return v11;
}

+ (id)toDoWithCalTask:(void *)a3 serverID:(id)a4 account:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[a1 alloc] initWithCalTask:a3 serverID:v9 account:v8];

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
  v5 = [(ASChangedCollectionLeaf *)self serverID];
  v6 = [(ASToDo *)self subject];
  v7 = [(ASToDo *)self startTime];
  v8 = [v3 stringWithFormat:@"<%@: [%@] [%@] [%@]>", v4, v5, v6, v7];

  return v8;
}

- (id)bestGuessTimeZoneWithLocalDate:(id)a3 utcDate:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    [v5 timeIntervalSinceDate:v6];
    v9 = v8;
    v10 = [MEMORY[0x277CBEBB0] localTimeZone];
    v11 = [v10 secondsFromGMTForDate:v5];

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
    v13 = ;
    v14 = DALoggingwithCategory();
    v15 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v14, v15))
    {
      v18 = 138413314;
      v19 = v5;
      v20 = 2112;
      v21 = v7;
      v22 = 2048;
      v23 = v9;
      v24 = 2048;
      v25 = v11;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_24A0AC000, v14, v15, "localDate %@ utc date %@ offset %lf myTZDiff %ld.  Returning %@", &v18, 0x34u);
    }
  }

  else
  {
    v13 = [MEMORY[0x277CBEBB0] localTimeZone];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)saveToCalendarWithExistingRecord:(void *)a3 intoCalendar:(void *)a4 shouldMergeProperties:(BOOL)a5 outMergeDidChooseLocalProperties:(BOOL *)a6 account:(id)a7
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
  v3 = [(ASChangedCollectionLeaf *)self applicationData];
  v55 = [v3 objectForKeyedSubscript:&unk_285D57AF8];

  if (v55)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:4363];
    v5 = [v55 objectForKey:v4];
  }

  else
  {
    v4 = [(ASChangedCollectionLeaf *)self applicationData];
    v6 = [MEMORY[0x277CCABB0] numberWithInt:2309];
    v5 = [v4 objectForKey:v6];
  }

  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASToDo *)self setBody:v5];
    }
  }

  v7 = [(ASChangedCollectionLeaf *)self applicationData];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:2312];
  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASToDo *)self setCategories:v9];
    }
  }

  v10 = [(ASChangedCollectionLeaf *)self applicationData];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:2314];
  v12 = [v10 objectForKey:v11];

  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v12, "intValue")}];
      [(ASToDo *)self setComplete:v13];
    }
  }

  v14 = [(ASChangedCollectionLeaf *)self applicationData];
  v15 = [MEMORY[0x277CCABB0] numberWithInt:2315];
  v16 = [v14 objectForKey:v15];

  if (v16)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:v16];
      [(ASToDo *)self setDateCompleted:v17];
    }
  }

  v18 = [(ASChangedCollectionLeaf *)self applicationData];
  v19 = [MEMORY[0x277CCABB0] numberWithInt:2316];
  v20 = [v18 objectForKey:v19];

  if (v20)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:v20];
      [(ASToDo *)self setDueDate:v21];
    }
  }

  v22 = [(ASChangedCollectionLeaf *)self applicationData];
  v23 = [MEMORY[0x277CCABB0] numberWithInt:2317];
  v24 = [v22 objectForKey:v23];

  if (v24)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v25 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:v24];
      [(ASToDo *)self setUTCDueDate:v25];
    }
  }

  v26 = [(ASChangedCollectionLeaf *)self applicationData];
  v27 = [MEMORY[0x277CCABB0] numberWithInt:2318];
  v28 = [v26 objectForKey:v27];

  if (v28)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v29 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v28, "intValue")}];
      [(ASToDo *)self setImportance:v29];
    }
  }

  v30 = [(ASChangedCollectionLeaf *)self applicationData];
  v31 = [MEMORY[0x277CCABB0] numberWithInt:2331];
  v32 = [v30 objectForKey:v31];

  if (v32)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v33 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v32, "intValue")}];
      [(ASToDo *)self setReminderIsSet:v33];
    }
  }

  v34 = [(ASChangedCollectionLeaf *)self applicationData];
  v35 = [MEMORY[0x277CCABB0] numberWithInt:2332];
  v36 = [v34 objectForKey:v35];

  if (v36)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v37 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:v36];
      [(ASToDo *)self setReminderDateTime:v37];
    }
  }

  v38 = [(ASChangedCollectionLeaf *)self applicationData];
  v39 = [MEMORY[0x277CCABB0] numberWithInt:2333];
  v40 = [v38 objectForKey:v39];

  if (v40)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v41 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v40, "intValue")}];
      [(ASToDo *)self setSensitivity:v41];
    }
  }

  v42 = [(ASChangedCollectionLeaf *)self applicationData];
  v43 = [MEMORY[0x277CCABB0] numberWithInt:2334];
  v44 = [v42 objectForKey:v43];

  if (v44)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v45 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:v44];
      [(ASToDo *)self setStartTime:v45];
    }
  }

  v46 = [(ASChangedCollectionLeaf *)self applicationData];
  v47 = [MEMORY[0x277CCABB0] numberWithInt:2335];
  v48 = [v46 objectForKey:v47];

  if (v48)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v49 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:v48];
      [(ASToDo *)self setUTCStartTime:v49];
    }
  }

  v50 = [(ASChangedCollectionLeaf *)self applicationData];
  v51 = [MEMORY[0x277CCABB0] numberWithInt:2336];
  v52 = [v50 objectForKey:v51];

  if (v52)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(ASToDo *)self setSubject:v52];
    }
  }

  v53 = [(ASChangedCollectionLeaf *)self applicationData];
  v54 = [v53 objectForKeyedSubscript:&unk_285D57B10];

  [(ASToDo *)self setRecurrence:v54];
  [(ASChangedCollectionLeaf *)self setApplicationData:0];
}

- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8
{
  v10.receiver = self;
  v10.super_class = ASToDo;
  [(ASChangedCollectionLeaf *)&v10 parseASParseContext:a3 root:a4 parent:a5 callbackDict:a6 streamCallbackDict:a7 account:a8];
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

- (void)appendActiveSyncDataForTask:(id)a3 toWBXMLData:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 taskManager];
  v9 = [v8 protocol];
  v10 = [v9 usesAirSyncBaseNamespace];

  v11 = [(ASToDo *)self body];
  if (v10)
  {
    [v7 switchToCodePage:17];
    [v7 openTag:10];
    [v7 appendTag:6 withIntContent:1];
    if ([v11 length])
    {
      [v7 appendTag:11 withStringContent:v11];
    }

    else
    {
      [v7 appendEmptyTag:11];
    }

    [v7 closeTag:10];
    [v7 switchToCodePage:9];
  }

  else
  {
    [v7 switchToCodePage:9];
    v12 = [(ASToDo *)self body];
    if (v12)
    {
      [v7 appendTag:5 withStringContent:v12];
    }
  }

  v13 = [(ASToDo *)self subject];
  if (v13)
  {
    [v7 appendTag:32 withStringContent:v13];
  }

  v14 = [(ASToDo *)self importance];
  v15 = v14;
  if (v14)
  {
    [v7 appendTag:14 withIntContent:{objc_msgSend(v14, "intValue")}];
  }

  v16 = [(ASToDo *)self utcStartTime];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 activeSyncString];
    [v7 appendTag:31 withStringContent:v18];
  }

  v19 = [(ASToDo *)self startTime];
  v20 = v19;
  if (v19)
  {
    v21 = [v19 activeSyncString];
    [v7 appendTag:30 withStringContent:v21];
  }

  v22 = [(ASToDo *)self utcDueDate];
  v23 = v22;
  if (v22)
  {
    v24 = [v22 activeSyncString];
    [v7 appendTag:13 withStringContent:v24];
  }

  v25 = [(ASToDo *)self dueDate];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 activeSyncString];
    [v7 appendTag:12 withStringContent:v27];
  }

  v28 = [(ASToDo *)self categories];
  v29 = [v28 count];

  if (v29)
  {
    [v7 openTag:8];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v30 = [(ASToDo *)self categories];
    v31 = [v30 countByEnumeratingWithState:&v49 objects:v53 count:16];
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
            objc_enumerationMutation(v30);
          }

          [v7 appendTag:9 withStringContent:*(*(&v49 + 1) + 8 * i)];
        }

        v32 = [v30 countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v32);
    }

    [v7 closeTag:8];
  }

  v35 = [(ASToDo *)self recurrence];
  [v35 appendActiveSyncDataForTask:v6 toWBXMLData:v7];

  v36 = [(ASToDo *)self complete];
  v37 = v36;
  if (v36)
  {
    [v7 appendTag:10 withIntContent:{objc_msgSend(v36, "intValue")}];
  }

  v38 = [(ASToDo *)self dateCompleted];
  v39 = v38;
  if (v38)
  {
    v40 = [v38 activeSyncString];
    [v7 appendTag:11 withStringContent:v40];
  }

  v41 = [(ASToDo *)self sensitivity];
  v42 = v41;
  if (v41)
  {
    [v7 appendTag:29 withIntContent:{objc_msgSend(v41, "intValue")}];
  }

  v43 = [(ASToDo *)self reminderDateTime];
  v44 = v43;
  if (v43)
  {
    v45 = [v43 activeSyncString];
    [v7 appendTag:28 withStringContent:v45];
  }

  v46 = [(ASToDo *)self reminderIsSet];
  v47 = v46;
  if (v46)
  {
    [v7 appendTag:27 withIntContent:{objc_msgSend(v46, "intValue")}];
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (void)setCalTask:(void *)a3
{
  v3 = DALoggingwithCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [ASToDo setCalTask:];
  }
}

- (BOOL)loadCalRecordForAccount:(id)a3
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

- (void)setBody:(id)a3
{
  v4 = [a3 stringByTrimmingNotesJunk];
  if (self->_body != v4)
  {
    objc_storeStrong(&self->_body, v4);
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)saveWithLocalObject:(void *)a3 toContainer:(void *)a4 shouldMergeProperties:(BOOL)a5 outMergeDidChooseLocalProperties:(BOOL *)a6 account:(id)a7
{
  v7 = DALoggingwithCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    [ASToDo saveWithLocalObject:toContainer:shouldMergeProperties:outMergeDidChooseLocalProperties:account:];
  }

  return 0;
}

- (void)setLocalItem:(void *)a3
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

- (ASToDo)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASToDo.m" lineNumber:588 description:{@"Yes, I know ASToDo is a subclass of ASChangedCollectionLeaf, and should handle initWithCoder:.  But I'm lazy, and no one needs this yet"}];

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ASToDo.m" lineNumber:593 description:{@"Yes, I know ASToDo is a subclass of ASChangedCollectionLeaf, and should handle encodeWithCoder:.  But I'm lazy, and no one needs this yet"}];
}

@end