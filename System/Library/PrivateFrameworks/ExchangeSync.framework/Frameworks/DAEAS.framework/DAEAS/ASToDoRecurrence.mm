@interface ASToDoRecurrence
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (ASToDo)parentToDo;
- (ASToDoRecurrence)initWithCalRecurrence:(void *)recurrence parentToDo:(id)do;
- (ASToDoRecurrence)initWithCoder:(id)coder;
- (ASToDoRecurrence)initWithParentToDo:(id)do;
- (id)_transformedUntilDateForActiveSync:(id)sync;
- (id)_untilDateForCalFrameworkWithParentStartDate:(id)date;
- (void)appendActiveSyncDataForTask:(id)task toWBXMLData:(id)data;
- (void)encodeWithCoder:(id)coder;
- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account;
- (void)saveToCalendarWithParentASToDo:(id)do existingRecord:(void *)record shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties account:(id)account;
- (void)setStartTimeString:(id)string;
- (void)setUntilString:(id)string;
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
    v2 = [self conformsToProtocol:&unk_285D64D60];
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
    v2 = [self conformsToProtocol:&unk_285D5E660];
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
    v2 = [self conformsToProtocol:&unk_285D64A10];
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
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
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
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_9 = v2;
    notifyOfUnknownTokens___haveChecked_9 = 1;
  }

  return v2 & 1;
}

- (ASToDoRecurrence)initWithParentToDo:(id)do
{
  doCopy = do;
  v8.receiver = self;
  v8.super_class = ASToDoRecurrence;
  v5 = [(ASItem *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ASToDoRecurrence *)v5 setParentToDo:doCopy];
  }

  return v6;
}

- (ASToDoRecurrence)initWithCalRecurrence:(void *)recurrence parentToDo:(id)do
{
  doCopy = do;
  v7 = [(ASToDoRecurrence *)self initWithParentToDo:doCopy];
  if (v7)
  {
    startTime = [doCopy startTime];
    if (!startTime)
    {
      startTime = [doCopy dueDate];
      if (!startTime)
      {
        startTime = [MEMORY[0x277CBEAA8] date];
      }
    }

    v9 = startTime;
    v10 = [MEMORY[0x277CBEBB0] gmt];
    v11 = [v9 dateWithCalendarFormat:0 timeZone:v10];

    if ([(ASRecurrence *)v7 _loadAttributesFromCalRecurrence:recurrence parentStartDate:v11 parentItem:doCopy useFloatingTimeForAllDayEvents:0])
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

- (void)saveToCalendarWithParentASToDo:(id)do existingRecord:(void *)record shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties account:(id)account
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
  v4 = NSStringFromClass(self);
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
    v12 = NSStringFromClass(self);
    [v11 setObject:v5 forKey:v12];
  }

  return v5;
}

- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account
{
  v30 = *MEMORY[0x277D85DE8];
  parentCopy = parent;
  v27.receiver = self;
  v27.super_class = ASToDoRecurrence;
  [(ASRecurrence *)&v27 parseASParseContext:context root:root parent:parentCopy callbackDict:dict streamCallbackDict:callbackDict account:account];
  parsingState = self->super.super._parsingState;
  v17 = parentCopy;
  if (parsingState >= 2)
  {
    if (parsingState == 3 || parsingState == 4)
    {
      self->super.super._parsingState = parsingState;
      v17 = parentCopy;
    }

    else
    {
      if (parentCopy)
      {
        v17 = parentCopy;
        do
        {
          parentToDo = [(ASToDoRecurrence *)self parentToDo];

          if (parentToDo)
          {
            break;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(ASToDoRecurrence *)self setParentToDo:v17];
          }

          parent = [v17 parent];

          v17 = parent;
        }

        while (parent);
      }

      else
      {
        v17 = 0;
      }

      parentToDo2 = [(ASToDoRecurrence *)self parentToDo];

      if (!parentToDo2)
      {
        [ASToDoRecurrence parseASParseContext:a2 root:self parent:? callbackDict:? streamCallbackDict:? account:?];
      }

      interval = [(ASRecurrence *)self interval];

      if (!interval)
      {
        v22 = DALoggingwithCategory();
        v23 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v22, v23))
        {
          type = [(ASRecurrence *)self type];
          intValue = [type intValue];
          *buf = 67109120;
          v29 = intValue;
          _os_log_impl(&dword_24A0AC000, v22, v23, "A recurrence with type %d didn't have an interval set, but we're being lenient, and assuming an interval of 1", buf, 8u);
        }

        [(ASRecurrence *)self setInterval:&unk_285D57B28];
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)appendActiveSyncDataForTask:(id)task toWBXMLData:(id)data
{
  taskCopy = task;
  dataCopy = data;
  [dataCopy openTag:15];
  type = [(ASRecurrence *)self type];
  v8 = type;
  if (type)
  {
    [dataCopy appendTag:16 withIntContent:{objc_msgSend(type, "intValue")}];
  }

  startTime = [(ASToDoRecurrence *)self startTime];
  v10 = startTime;
  if (startTime)
  {
    activeSyncString = [startTime activeSyncString];
    [dataCopy appendTag:17 withStringContent:activeSyncString];
  }

  until = [(ASRecurrence *)self until];
  v13 = until;
  if (until)
  {
    activeSyncString2 = [until activeSyncString];
    [dataCopy appendTag:18 withStringContent:activeSyncString2];
  }

  occurrences = [(ASRecurrence *)self occurrences];
  v16 = occurrences;
  if (occurrences)
  {
    [dataCopy appendTag:19 withIntContent:{objc_msgSend(occurrences, "intValue")}];
  }

  interval = [(ASRecurrence *)self interval];
  v18 = interval;
  if (interval)
  {
    [dataCopy appendTag:20 withIntContent:{objc_msgSend(interval, "intValue")}];
  }

  dayOfWeek = [(ASRecurrence *)self dayOfWeek];
  v20 = dayOfWeek;
  if (dayOfWeek)
  {
    [dataCopy appendTag:22 withIntContent:{objc_msgSend(dayOfWeek, "intValue")}];
  }

  dayOfMonth = [(ASRecurrence *)self dayOfMonth];
  v22 = dayOfMonth;
  if (dayOfMonth)
  {
    [dataCopy appendTag:21 withIntContent:{objc_msgSend(dayOfMonth, "intValue")}];
  }

  weekOfMonth = [(ASRecurrence *)self weekOfMonth];
  v24 = weekOfMonth;
  if (weekOfMonth)
  {
    [dataCopy appendTag:23 withIntContent:{objc_msgSend(weekOfMonth, "intValue")}];
  }

  monthOfYear = [(ASRecurrence *)self monthOfYear];
  v26 = monthOfYear;
  if (monthOfYear)
  {
    [dataCopy appendTag:24 withIntContent:{objc_msgSend(monthOfYear, "intValue")}];
  }

  regenerate = [(ASToDoRecurrence *)self regenerate];
  v28 = regenerate;
  if (regenerate)
  {
    [dataCopy appendTag:25 withIntContent:{objc_msgSend(regenerate, "intValue")}];
  }

  deadOccur = [(ASToDoRecurrence *)self deadOccur];
  v30 = deadOccur;
  if (deadOccur)
  {
    [dataCopy appendTag:26 withIntContent:{objc_msgSend(deadOccur, "intValue")}];
  }

  taskManager = [taskCopy taskManager];
  protocol = [taskManager protocol];
  sendCalendarInfoInRecurrence = [protocol sendCalendarInfoInRecurrence];

  if (sendCalendarInfoInRecurrence)
  {
    calendarType = [(ASRecurrence *)self calendarType];
    v35 = calendarType;
    if (calendarType)
    {
      [dataCopy appendTag:36 withIntContent:{objc_msgSend(calendarType, "intValue")}];
    }
  }

  taskManager2 = [taskCopy taskManager];
  protocol2 = [taskManager2 protocol];
  sendFirstDayOfWeekInRecurrence = [protocol2 sendFirstDayOfWeekInRecurrence];

  if (sendFirstDayOfWeekInRecurrence)
  {
    firstDayOfWeek = [(ASRecurrence *)self firstDayOfWeek];
    v40 = firstDayOfWeek;
    if (firstDayOfWeek)
    {
      [dataCopy appendTag:38 withIntContent:{objc_msgSend(firstDayOfWeek, "intValue")}];
    }
  }

  [dataCopy closeTag:15];
}

- (void)setStartTimeString:(id)string
{
  v4 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:string];
  [(ASToDoRecurrence *)self setStartTime:v4];
}

- (void)setUntilString:(id)string
{
  v4 = [MEMORY[0x277CBEAA8] dateWithActiveSyncString:string];
  [(ASRecurrence *)self setUntil:v4];
}

- (id)_untilDateForCalFrameworkWithParentStartDate:(id)date
{
  parentToDo = [(ASToDoRecurrence *)self parentToDo];
  dueDateTimeZone = [parentToDo dueDateTimeZone];

  until = [(ASRecurrence *)self until];
  v7 = [MEMORY[0x277CBEBB0] gmt];
  v8 = [until dateWithCalendarFormat:0 timeZone:v7];

  v9 = [v8 gmtDateToDateInTimeZone:dueDateTimeZone];
  v10 = [objc_alloc(MEMORY[0x277CCA8F8]) initWithYear:objc_msgSend(v9 month:"yearOfCommonEra") day:objc_msgSend(v9 hour:"monthOfYear") minute:objc_msgSend(v9 second:"dayOfMonth") timeZone:{23, 59, 59, dueDateTimeZone}];

  return v10;
}

- (id)_transformedUntilDateForActiveSync:(id)sync
{
  syncCopy = sync;
  parentToDo = [(ASToDoRecurrence *)self parentToDo];
  dueDateTimeZone = [parentToDo dueDateTimeZone];

  v7 = [syncCopy dateWithCalendarFormat:0 timeZone:dueDateTimeZone];

  v8 = [v7 tzDateToDateInGMT:dueDateTimeZone];
  v9 = objc_alloc(MEMORY[0x277CCA8F8]);
  yearOfCommonEra = [v8 yearOfCommonEra];
  monthOfYear = [v8 monthOfYear];
  dayOfMonth = [v8 dayOfMonth];
  v13 = [MEMORY[0x277CBEBB0] gmt];
  v14 = [v9 initWithYear:yearOfCommonEra month:monthOfYear day:dayOfMonth hour:0 minute:0 second:0 timeZone:v13];

  return v14;
}

- (ASToDoRecurrence)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ASToDoRecurrence;
  v6 = [(ASRecurrence *)&v11 initWithCoder:coderCopy];
  if (v6)
  {
    if (([coderCopy allowsKeyedCoding] & 1) == 0)
    {
      [(ASToDoRecurrence *)a2 initWithCoder:v6];
    }

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startTime"];
    [(ASToDoRecurrence *)v6 setStartTime:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"regenerate"];
    [(ASToDoRecurrence *)v6 setRegenerate:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deadOccur"];
    [(ASToDoRecurrence *)v6 setDeadOccur:v9];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [(ASToDoRecurrence *)a2 encodeWithCoder:?];
  }

  v9.receiver = self;
  v9.super_class = ASToDoRecurrence;
  [(ASRecurrence *)&v9 encodeWithCoder:coderCopy];
  startTime = [(ASToDoRecurrence *)self startTime];
  [coderCopy encodeObject:startTime forKey:@"startTime"];

  regenerate = [(ASToDoRecurrence *)self regenerate];
  [coderCopy encodeObject:regenerate forKey:@"regenerate"];

  deadOccur = [(ASToDoRecurrence *)self deadOccur];
  [coderCopy encodeObject:deadOccur forKey:@"deadOccur"];
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