@interface ASToDoRecurrence
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (ASToDo)parentToDo;
- (ASToDoRecurrence)initWithCalRecurrence:(void *)a3 parentToDo:(id)a4;
- (ASToDoRecurrence)initWithCoder:(id)a3;
- (ASToDoRecurrence)initWithParentToDo:(id)a3;
- (id)_transformedUntilDateForActiveSync:(id)a3;
- (id)_untilDateForCalFrameworkWithParentStartDate:(id)a3;
- (void)appendActiveSyncDataForTask:(id)a3 toWBXMLData:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8;
- (void)saveToCalendarWithParentASToDo:(id)a3 existingRecord:(void *)a4 shouldMergeProperties:(BOOL)a5 outMergeDidChooseLocalProperties:(BOOL *)a6 account:(id)a7;
- (void)setStartTimeString:(id)a3;
- (void)setUntilString:(id)a3;
@end

@implementation ASToDoRecurrence

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_9 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_9;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_9 = v2;
    acceptsTopLevelLeaves___haveChecked_9 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_9 == 1)
  {
    v2 = parsingLeafNode___result_9;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_9 = v2;
    parsingLeafNode___haveChecked_9 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_9 == 1)
  {
    v2 = parsingWithSubItems___result_9;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_9 = v2;
    parsingWithSubItems___haveChecked_9 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_9 == 1)
  {
    v2 = frontingBasicTypes___result_9;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_9 = v2;
    frontingBasicTypes___haveChecked_9 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_9 == 1)
  {
    v2 = notifyOfUnknownTokens___result_9;
  }

  else
  {
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_9 = v2;
    notifyOfUnknownTokens___haveChecked_9 = 1;
  }

  return v2 & 1;
}

- (ASToDoRecurrence)initWithParentToDo:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ASToDoRecurrence;
  v5 = [(ASItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ASToDoRecurrence *)v5 setParentToDo:v4];
  }

  return v6;
}

- (ASToDoRecurrence)initWithCalRecurrence:(void *)a3 parentToDo:(id)a4
{
  v6 = a4;
  v7 = [(ASToDoRecurrence *)self initWithParentToDo:v6];
  if (v7)
  {
    v8 = [v6 startTime];
    if (!v8)
    {
      v8 = [v6 dueDate];
      if (!v8)
      {
        v8 = [MEMORY[0x277CBEAA8] date];
      }
    }

    v9 = v8;
    v10 = [MEMORY[0x277CBEBB0] gmt];
    v11 = [v9 dateWithCalendarFormat:0 timeZone:v10];

    if ([(ASRecurrence *)v7 _loadAttributesFromCalRecurrence:a3 parentStartDate:v11 parentItem:v6 useFloatingTimeForAllDayEvents:0])
    {
      [(ASToDoRecurrence *)v7 setStartTime:v9];
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

- (void)saveToCalendarWithParentASToDo:(id)a3 existingRecord:(void *)a4 shouldMergeProperties:(BOOL)a5 outMergeDidChooseLocalProperties:(BOOL *)a6 account:(id)a7
{
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v7, v8))
  {
    *v9 = 0;
    _os_log_impl(&dword_24A0AC000, v7, v8, "The saveToCalendarWithParentASToDo method should not be called for ASToDoRecurrence", v9, 2u);
  }
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(a1);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v21 = MEMORY[0x277CBEAC0];
    v37 = [[ASParseRule alloc] initWithMinimumNumber:1 maximumNumber:1 codePage:9 token:16 objectClass:objc_opt_class() setterMethod:sel_setType_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v36 = [MEMORY[0x277CCABB0] numberWithInt:2320];
    v35 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:9 token:20 objectClass:objc_opt_class() setterMethod:sel_setInterval_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v34 = [MEMORY[0x277CCABB0] numberWithInt:2324];
    v33 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:9 token:22 objectClass:objc_opt_class() setterMethod:sel_setDayOfWeek_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v32 = [MEMORY[0x277CCABB0] numberWithInt:2326];
    v30 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:9 token:21 objectClass:objc_opt_class() setterMethod:sel_setDayOfMonth_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v31 = [MEMORY[0x277CCABB0] numberWithInt:2325];
    v29 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:9 token:23 objectClass:objc_opt_class() setterMethod:sel_setWeekOfMonth_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v28 = [MEMORY[0x277CCABB0] numberWithInt:2327];
    v26 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:9 token:24 objectClass:objc_opt_class() setterMethod:sel_setMonthOfYear_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v27 = [MEMORY[0x277CCABB0] numberWithInt:2328];
    v20 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:9 token:18 objectClass:objc_opt_class() setterMethod:sel_setUntilString_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v25 = [MEMORY[0x277CCABB0] numberWithInt:2322];
    v19 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:9 token:19 objectClass:objc_opt_class() setterMethod:sel_setOccurrences_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v18 = [MEMORY[0x277CCABB0] numberWithInt:2323];
    v24 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:9 token:17 objectClass:objc_opt_class() setterMethod:sel_setStartTimeString_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v23 = [MEMORY[0x277CCABB0] numberWithInt:2321];
    v22 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:9 token:25 objectClass:objc_opt_class() setterMethod:sel_setRegenerate_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v16 = [MEMORY[0x277CCABB0] numberWithInt:2329];
    v15 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:9 token:26 objectClass:objc_opt_class() setterMethod:sel_setDeadOccur_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v17 = [MEMORY[0x277CCABB0] numberWithInt:2330];
    v14 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:9 token:36 objectClass:objc_opt_class() setterMethod:sel_setCalendarType_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v6 = [MEMORY[0x277CCABB0] numberWithInt:2340];
    v7 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:9 token:37 objectClass:objc_opt_class() setterMethod:sel_ignoreThisContent_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:2341];
    v9 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:9 token:38 objectClass:objc_opt_class() setterMethod:sel_setFirstDayOfWeek_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:2342];
    v5 = [v21 dictionaryWithObjectsAndKeys:{v37, v36, v35, v34, v33, v32, v30, v31, v29, v28, v26, v27, v20, v25, v19, v18, v24, v23, v22, v16, v15, v17, v14, v6, v7, v8, v9, v10, 0}];

    v11 = +[ASItem parseRuleCache];
    v12 = NSStringFromClass(a1);
    [v11 setObject:v5 forKey:v12];
  }

  return v5;
}

- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8
{
  v30 = *MEMORY[0x277D85DE8];
  v15 = a5;
  v27.receiver = self;
  v27.super_class = ASToDoRecurrence;
  [(ASRecurrence *)&v27 parseASParseContext:a3 root:a4 parent:v15 callbackDict:a6 streamCallbackDict:a7 account:a8];
  parsingState = self->super.super._parsingState;
  v17 = v15;
  if (parsingState >= 2)
  {
    if (parsingState == 3 || parsingState == 4)
    {
      self->super.super._parsingState = parsingState;
      v17 = v15;
    }

    else
    {
      if (v15)
      {
        v17 = v15;
        do
        {
          v18 = [(ASToDoRecurrence *)self parentToDo];

          if (v18)
          {
            break;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(ASToDoRecurrence *)self setParentToDo:v17];
          }

          v19 = [v17 parent];

          v17 = v19;
        }

        while (v19);
      }

      else
      {
        v17 = 0;
      }

      v20 = [(ASToDoRecurrence *)self parentToDo];

      if (!v20)
      {
        [ASToDoRecurrence parseASParseContext:a2 root:self parent:? callbackDict:? streamCallbackDict:? account:?];
      }

      v21 = [(ASRecurrence *)self interval];

      if (!v21)
      {
        v22 = DALoggingwithCategory();
        v23 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v22, v23))
        {
          v24 = [(ASRecurrence *)self type];
          v25 = [v24 intValue];
          *buf = 67109120;
          v29 = v25;
          _os_log_impl(&dword_24A0AC000, v22, v23, "A recurrence with type %d didn't have an interval set, but we're being lenient, and assuming an interval of 1", buf, 8u);
        }

        [(ASRecurrence *)self setInterval:&unk_285D57B28];
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)appendActiveSyncDataForTask:(id)a3 toWBXMLData:(id)a4
{
  v41 = a3;
  v6 = a4;
  [v6 openTag:15];
  v7 = [(ASRecurrence *)self type];
  v8 = v7;
  if (v7)
  {
    [v6 appendTag:16 withIntContent:{objc_msgSend(v7, "intValue")}];
  }

  v9 = [(ASToDoRecurrence *)self startTime];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 activeSyncString];
    [v6 appendTag:17 withStringContent:v11];
  }

  v12 = [(ASRecurrence *)self until];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 activeSyncString];
    [v6 appendTag:18 withStringContent:v14];
  }

  v15 = [(ASRecurrence *)self occurrences];
  v16 = v15;
  if (v15)
  {
    [v6 appendTag:19 withIntContent:{objc_msgSend(v15, "intValue")}];
  }

  v17 = [(ASRecurrence *)self interval];
  v18 = v17;
  if (v17)
  {
    [v6 appendTag:20 withIntContent:{objc_msgSend(v17, "intValue")}];
  }

  v19 = [(ASRecurrence *)self dayOfWeek];
  v20 = v19;
  if (v19)
  {
    [v6 appendTag:22 withIntContent:{objc_msgSend(v19, "intValue")}];
  }

  v21 = [(ASRecurrence *)self dayOfMonth];
  v22 = v21;
  if (v21)
  {
    [v6 appendTag:21 withIntContent:{objc_msgSend(v21, "intValue")}];
  }

  v23 = [(ASRecurrence *)self weekOfMonth];
  v24 = v23;
  if (v23)
  {
    [v6 appendTag:23 withIntContent:{objc_msgSend(v23, "intValue")}];
  }

  v25 = [(ASRecurrence *)self monthOfYear];
  v26 = v25;
  if (v25)
  {
    [v6 appendTag:24 withIntContent:{objc_msgSend(v25, "intValue")}];
  }

  v27 = [(ASToDoRecurrence *)self regenerate];
  v28 = v27;
  if (v27)
  {
    [v6 appendTag:25 withIntContent:{objc_msgSend(v27, "intValue")}];
  }

  v29 = [(ASToDoRecurrence *)self deadOccur];
  v30 = v29;
  if (v29)
  {
    [v6 appendTag:26 withIntContent:{objc_msgSend(v29, "intValue")}];
  }

  v31 = [v41 taskManager];
  v32 = [v31 protocol];
  v33 = [v32 sendCalendarInfoInRecurrence];

  if (v33)
  {
    v34 = [(ASRecurrence *)self calendarType];
    v35 = v34;
    if (v34)
    {
      [v6 appendTag:36 withIntContent:{objc_msgSend(v34, "intValue")}];
    }
  }

  v36 = [v41 taskManager];
  v37 = [v36 protocol];
  v38 = [v37 sendFirstDayOfWeekInRecurrence];

  if (v38)
  {
    v39 = [(ASRecurrence *)self firstDayOfWeek];
    v40 = v39;
    if (v39)
    {
      [v6 appendTag:38 withIntContent:{objc_msgSend(v39, "intValue")}];
    }
  }

  [v6 closeTag:15];
}

- (void)setStartTimeString:(id)a3
{
  v4 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:a3];
  [(ASToDoRecurrence *)self setStartTime:v4];
}

- (void)setUntilString:(id)a3
{
  v4 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:a3];
  [(ASRecurrence *)self setUntil:v4];
}

- (id)_untilDateForCalFrameworkWithParentStartDate:(id)a3
{
  v4 = [(ASToDoRecurrence *)self parentToDo];
  v5 = [v4 dueDateTimeZone];

  v6 = [(ASRecurrence *)self until];
  v7 = [MEMORY[0x277CBEBB0] gmt];
  v8 = [v6 dateWithCalendarFormat:0 timeZone:v7];

  v9 = [v8 gmtDateToDateInTimeZone:v5];
  v10 = [objc_alloc(MEMORY[0x277CCA8F8]) initWithYear:objc_msgSend(v9 month:"yearOfCommonEra") day:objc_msgSend(v9 hour:"monthOfYear") minute:objc_msgSend(v9 second:"dayOfMonth") timeZone:{23, 59, 59, v5}];

  return v10;
}

- (id)_transformedUntilDateForActiveSync:(id)a3
{
  v4 = a3;
  v5 = [(ASToDoRecurrence *)self parentToDo];
  v6 = [v5 dueDateTimeZone];

  v7 = [v4 dateWithCalendarFormat:0 timeZone:v6];

  v8 = [v7 tzDateToDateInGMT:v6];
  v9 = objc_alloc(MEMORY[0x277CCA8F8]);
  v10 = [v8 yearOfCommonEra];
  v11 = [v8 monthOfYear];
  v12 = [v8 dayOfMonth];
  v13 = [MEMORY[0x277CBEBB0] gmt];
  v14 = [v9 initWithYear:v10 month:v11 day:v12 hour:0 minute:0 second:0 timeZone:v13];

  return v14;
}

- (ASToDoRecurrence)initWithCoder:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ASToDoRecurrence;
  v6 = [(ASRecurrence *)&v11 initWithCoder:v5];
  if (v6)
  {
    if (([v5 allowsKeyedCoding] & 1) == 0)
    {
      [(ASToDoRecurrence *)a2 initWithCoder:v6];
    }

    v7 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"startTime"];
    [(ASToDoRecurrence *)v6 setStartTime:v7];

    v8 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"regenerate"];
    [(ASToDoRecurrence *)v6 setRegenerate:v8];

    v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"deadOccur"];
    [(ASToDoRecurrence *)v6 setDeadOccur:v9];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if (([v5 allowsKeyedCoding] & 1) == 0)
  {
    [(ASToDoRecurrence *)a2 encodeWithCoder:?];
  }

  v9.receiver = self;
  v9.super_class = ASToDoRecurrence;
  [(ASRecurrence *)&v9 encodeWithCoder:v5];
  v6 = [(ASToDoRecurrence *)self startTime];
  [v5 encodeObject:v6 forKey:@"startTime"];

  v7 = [(ASToDoRecurrence *)self regenerate];
  [v5 encodeObject:v7 forKey:@"regenerate"];

  v8 = [(ASToDoRecurrence *)self deadOccur];
  [v5 encodeObject:v8 forKey:@"deadOccur"];
}

- (ASToDo)parentToDo
{
  WeakRetained = objc_loadWeakRetained(&self->_parentToDo);

  return WeakRetained;
}

- (void)parseASParseContext:(uint64_t)a1 root:(uint64_t)a2 parent:callbackDict:streamCallbackDict:account:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASToDoRecurrence.m" lineNumber:125 description:@"Could not find a todo in our recurrence's parent chain"];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASToDoRecurrence.m" lineNumber:214 description:@"We can't unarchive a recurrence if the coder doesn't allow keyed coding"];
}

- (void)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASToDoRecurrence.m" lineNumber:224 description:@"We can't archive a recurrence if the coder doesn't allow keyed coding"];
}

@end