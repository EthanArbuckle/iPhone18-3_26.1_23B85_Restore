@interface ASRecurrence
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (ASEvent)parentEvent;
- (ASRecurrence)initWithCoder:(id)coder;
- (BOOL)_loadAttributesFromCalRecurrence:(void *)recurrence parentStartDate:(id)date parentItem:(id)item useFloatingTimeForAllDayEvents:(BOOL)events;
- (id)_transformedUntilDateForActiveSync:(id)sync;
- (id)_untilDateForCalFrameworkWithParentStartDate:(id)date;
- (void)_newRecurrenceWithParentStartDate:(id)date useFloatingTimeForAllDayEvents:(BOOL)events account:(id)account;
- (void)appendActiveSyncDataForTask:(id)task toWBXMLData:(id)data;
- (void)encodeWithCoder:(id)coder;
- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account;
- (void)setUntilString:(id)string;
@end

@implementation ASRecurrence

+ (BOOL)acceptsTopLevelLeaves
{
  if (acceptsTopLevelLeaves___haveChecked_37 == 1)
  {
    v2 = acceptsTopLevelLeaves___result_37;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64D60];
    acceptsTopLevelLeaves___result_37 = v2;
    acceptsTopLevelLeaves___haveChecked_37 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingLeafNode
{
  if (parsingLeafNode___haveChecked_37 == 1)
  {
    v2 = parsingLeafNode___result_37;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5E660];
    parsingLeafNode___result_37 = v2;
    parsingLeafNode___haveChecked_37 = 1;
  }

  return v2 & 1;
}

+ (BOOL)parsingWithSubItems
{
  if (parsingWithSubItems___haveChecked_37 == 1)
  {
    v2 = parsingWithSubItems___result_37;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D64A10];
    parsingWithSubItems___result_37 = v2;
    parsingWithSubItems___haveChecked_37 = 1;
  }

  return v2 & 1;
}

+ (BOOL)frontingBasicTypes
{
  if (frontingBasicTypes___haveChecked_37 == 1)
  {
    v2 = frontingBasicTypes___result_37;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D5F9B0];
    frontingBasicTypes___result_37 = v2;
    frontingBasicTypes___haveChecked_37 = 1;
  }

  return v2 & 1;
}

+ (BOOL)notifyOfUnknownTokens
{
  if (notifyOfUnknownTokens___haveChecked_37 == 1)
  {
    v2 = notifyOfUnknownTokens___result_37;
  }

  else
  {
    v2 = [self conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_37 = v2;
    notifyOfUnknownTokens___haveChecked_37 = 1;
  }

  return v2 & 1;
}

- (id)_untilDateForCalFrameworkWithParentStartDate:(id)date
{
  dateCopy = date;
  until = [(ASRecurrence *)self until];
  parentEvent = [(ASRecurrence *)self parentEvent];
  timeZone = [parentEvent timeZone];
  v8 = [timeZone secondsFromGMTForDate:until];
  timeZone2 = [dateCopy timeZone];
  v10 = (v8 - [timeZone2 secondsFromGMTForDate:until]);

  v11 = [until dateByAddingTimeInterval:v10];
  v12 = MEMORY[0x277CCA8F8];
  timeZone3 = [dateCopy timeZone];
  v14 = [v12 combinedDateWithYMDFrom:v11 HMSFrom:dateCopy componentDatesTimezone:timeZone3];

  timeZone4 = [dateCopy timeZone];

  [v14 setTimeZone:timeZone4];
  v16 = [v14 dateByAddingYears:0 months:0 days:objc_msgSend(v14 hours:"compare:" minutes:v11) != 1 seconds:{0, 0, -1}];

  return v16;
}

- (id)_transformedUntilDateForActiveSync:(id)sync
{
  syncCopy = sync;
  parentEvent = [(ASRecurrence *)self parentEvent];
  startDateForCalFramework = [parentEvent startDateForCalFramework];

  timeZone = [startDateForCalFramework timeZone];
  v8 = [timeZone secondsFromGMTForDate:syncCopy];
  parentEvent2 = [(ASRecurrence *)self parentEvent];
  timeZone2 = [parentEvent2 timeZone];
  v11 = [timeZone2 secondsFromGMTForDate:syncCopy];

  v12 = MEMORY[0x277CCA8F8];
  timeZone3 = [startDateForCalFramework timeZone];
  v14 = [v12 combinedDateWithYMDFrom:syncCopy HMSFrom:startDateForCalFramework componentDatesTimezone:timeZone3];

  v15 = [syncCopy compare:v14];
  v16 = v14;
  v17 = v16;
  v18 = v16;
  if (v15 == -1)
  {
    v18 = [v16 dateByAddingYears:0 months:0 days:-1 hours:0 minutes:0 seconds:0];
  }

  if (v8 != v11)
  {
    v19 = [v18 dateByAddingTimeInterval:(v8 - v11)];

    v18 = v19;
  }

  return v18;
}

+ (id)asParseRules
{
  v3 = +[ASItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v22 = MEMORY[0x277CBEAC0];
    selfCopy = self;
    v32 = [[ASParseRule alloc] initWithMinimumNumber:1 maximumNumber:1 codePage:4 token:28 objectClass:objc_opt_class() setterMethod:sel_setType_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v31 = [MEMORY[0x277CCABB0] numberWithInt:1052];
    v30 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:4 token:31 objectClass:objc_opt_class() setterMethod:sel_setInterval_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v29 = [MEMORY[0x277CCABB0] numberWithInt:1055];
    v28 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:4 token:32 objectClass:objc_opt_class() setterMethod:sel_setDayOfWeek_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v27 = [MEMORY[0x277CCABB0] numberWithInt:1056];
    v25 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:4 token:33 objectClass:objc_opt_class() setterMethod:sel_setDayOfMonth_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v26 = [MEMORY[0x277CCABB0] numberWithInt:1057];
    v24 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:4 token:34 objectClass:objc_opt_class() setterMethod:sel_setWeekOfMonth_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v21 = [MEMORY[0x277CCABB0] numberWithInt:1058];
    v20 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:4 token:35 objectClass:objc_opt_class() setterMethod:sel_setMonthOfYear_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v19 = [MEMORY[0x277CCABB0] numberWithInt:1059];
    v18 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:4 token:29 objectClass:objc_opt_class() setterMethod:sel_setUntilString_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v6 = [MEMORY[0x277CCABB0] numberWithInt:1053];
    v17 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:4 token:30 objectClass:objc_opt_class() setterMethod:sel_setOccurrences_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v16 = [MEMORY[0x277CCABB0] numberWithInt:1054];
    v15 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:4 token:55 objectClass:objc_opt_class() setterMethod:sel_setCalendarType_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v14 = [MEMORY[0x277CCABB0] numberWithInt:1079];
    v7 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:4 token:56 objectClass:objc_opt_class() setterMethod:sel_ignoreThisContent_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:1080];
    v9 = [[ASParseRule alloc] initWithMinimumNumber:0 maximumNumber:1 codePage:4 token:57 objectClass:objc_opt_class() setterMethod:sel_setFirstDayOfWeek_ dataclass:0 callbackDict:0 streamCallbackDict:0 subclassRuleSet:0];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:1081];
    v5 = [v22 dictionaryWithObjectsAndKeys:{v32, v31, v30, v29, v28, v27, v25, v26, v24, v21, v20, v19, v18, v6, v17, v16, v15, v14, v7, v8, v9, v10, 0}];

    v11 = +[ASItem parseRuleCache];
    v12 = NSStringFromClass(selfCopy);
    [v11 setObject:v5 forKey:v12];
  }

  return v5;
}

- (void)parseASParseContext:(id)context root:(id)root parent:(id)parent callbackDict:(id)dict streamCallbackDict:(id)callbackDict account:(id)account
{
  v30 = *MEMORY[0x277D85DE8];
  parentCopy = parent;
  v27.receiver = self;
  v27.super_class = ASRecurrence;
  [(ASItem *)&v27 parseASParseContext:context root:root parent:parentCopy callbackDict:dict streamCallbackDict:callbackDict account:account];
  parsingState = self->super._parsingState;
  v17 = parentCopy;
  if (parsingState >= 2)
  {
    if (parsingState == 3 || parsingState == 4)
    {
      self->super._parsingState = parsingState;
      v17 = parentCopy;
    }

    else
    {
      if (parentCopy)
      {
        v17 = parentCopy;
        do
        {
          parentEvent = [(ASRecurrence *)self parentEvent];

          if (parentEvent)
          {
            break;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(ASRecurrence *)self setParentEvent:v17];
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

      if ([(ASRecurrence *)self _requiresParentEvent])
      {
        parentEvent2 = [(ASRecurrence *)self parentEvent];

        if (!parentEvent2)
        {
          [ASRecurrence parseASParseContext:a2 root:self parent:? callbackDict:? streamCallbackDict:? account:?];
        }
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

        [(ASRecurrence *)self setInterval:&unk_285D57EE8];
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_newRecurrenceWithParentStartDate:(id)date useFloatingTimeForAllDayEvents:(BOOL)events account:(id)account
{
  eventsCopy = events;
  v65[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  accountCopy = account;
  v10 = +[ASLocalDBHelper sharedInstance];
  accountID = [accountCopy accountID];
  [v10 calDatabaseForAccountID:accountID];
  Recurrence = CalDatabaseCreateRecurrence();

  interval = [(ASRecurrence *)self interval];
  [interval intValue];
  CalRecurrenceSetInterval();

  firstDayOfWeek = [(ASRecurrence *)self firstDayOfWeek];

  if (firstDayOfWeek)
  {
    firstDayOfWeek2 = [(ASRecurrence *)self firstDayOfWeek];
    [firstDayOfWeek2 intValue];
  }

  else
  {
    v16 = CFCalendarCopyCurrent();
    v17 = v16;
    if (v16)
    {
      v18 = MEMORY[0x24C210300](v16);
      CFRelease(v17);
      if (v18 <= 0)
      {
        LODWORD(v17) = 0;
      }

      else
      {
        LODWORD(v17) = v18 - 1;
      }
    }

    v19 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v19, v20))
    {
      LODWORD(v65[0]) = 67109120;
      HIDWORD(v65[0]) = v17;
      _os_log_impl(&dword_24A0AC000, v19, v20, "Setting arbitrary week start to %d", v65, 8u);
    }
  }

  CalRecurrenceSetWeekStart();
  type = [(ASRecurrence *)self type];
  intValue = [type intValue];

  if (intValue > 2)
  {
    if (intValue == 3)
    {
      CalRecurrenceSetFrequency();
      weekOfMonth = [(ASRecurrence *)self weekOfMonth];
      intValue2 = [weekOfMonth intValue];

      if (intValue2 == 5)
      {
        v44 = -1;
      }

      else
      {
        v44 = intValue2;
      }

      dayOfWeek = [(ASRecurrence *)self dayOfWeek];
      intValue3 = [dayOfWeek intValue];

      if (!intValue3)
      {
        goto LABEL_56;
      }

      v47 = v44 >= 1 ? 0 : -1;
      v48 = _DACreateByDayDaysArrayFromASDayOfWeek(intValue3, v47);
      if (!v48)
      {
        goto LABEL_56;
      }

      v41 = v48;
      v65[0] = v44;
      v49 = CFArrayCreate(*MEMORY[0x277CBECE8], v65, 1, 0);
      CalRecurrenceSetBySetPos();
      if (v49)
      {
        CFRelease(v49);
      }

      goto LABEL_49;
    }

    if (intValue != 5)
    {
      if (intValue == 6)
      {
        CalRecurrenceSetFrequency();
        weekOfMonth2 = [(ASRecurrence *)self weekOfMonth];
        intValue4 = [weekOfMonth2 intValue];

        dayOfWeek2 = [(ASRecurrence *)self dayOfWeek];
        intValue5 = [dayOfWeek2 intValue];

        if (intValue5)
        {
          v33 = intValue4 == 5 ? -1 : intValue4;
          v34 = _DACreateByDayDaysArrayFromASDayOfWeek(intValue5, v33);
          if (v34)
          {
            v35 = v34;
            CalRecurrenceSetByDayDays();
            CFRelease(v35);
          }
        }

        monthOfYear = [(ASRecurrence *)self monthOfYear];
        intValue6 = [monthOfYear intValue];

        if (intValue6 >= 4 || (intValue6 - 1) < 2 || intValue6)
        {
          CalRecurrenceSetByMonthMonths();
        }
      }

      goto LABEL_56;
    }

LABEL_54:
    CalRecurrenceSetFrequency();
    goto LABEL_56;
  }

  switch(intValue)
  {
    case 0:
      dayOfWeek3 = [(ASRecurrence *)self dayOfWeek];
      intValue7 = [dayOfWeek3 intValue];

      if (intValue7)
      {
        CalRecurrenceSetFrequency();
        dayOfWeek4 = [(ASRecurrence *)self dayOfWeek];
        v41 = _DACreateByDayDaysArrayFromASDayOfWeek([dayOfWeek4 intValue], 0);

        CalRecurrenceSetByDayDays();
        if (!v41)
        {
          break;
        }

LABEL_50:
        v28 = v41;
        goto LABEL_51;
      }

      goto LABEL_54;
    case 1:
      CalRecurrenceSetFrequency();
      dayOfWeek5 = [(ASRecurrence *)self dayOfWeek];
      intValue8 = [dayOfWeek5 intValue];

      if (!intValue8)
      {
        break;
      }

      v52 = _DACreateByDayDaysArrayFromASDayOfWeek(intValue8, 0);
      if (!v52)
      {
        break;
      }

      v41 = v52;
LABEL_49:
      CalRecurrenceSetByDayDays();
      goto LABEL_50;
    case 2:
      CalRecurrenceSetFrequency();
      dayOfMonth = [(ASRecurrence *)self dayOfMonth];
      intValue9 = [dayOfMonth intValue];

      if (intValue9)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 1, 0);
        v26 = Mutable;
        v27 = intValue9 == 127 ? -1 : intValue9;
        CFArrayAppendValue(Mutable, v27);
        CalRecurrenceSetByMonthDayDays();
        if (v26)
        {
          v28 = v26;
LABEL_51:
          CFRelease(v28);
        }
      }

      break;
  }

LABEL_56:
  occurrences = [(ASRecurrence *)self occurrences];
  intValue10 = [occurrences intValue];

  until = [(ASRecurrence *)self until];
  v56 = until;
  if (intValue10)
  {
    CalRecurrenceSetCount();
LABEL_65:

    goto LABEL_66;
  }

  if (until)
  {
    if (!eventsCopy)
    {
      goto LABEL_63;
    }

    parentEvent = [(ASRecurrence *)self parentEvent];

    if (!parentEvent)
    {
      goto LABEL_63;
    }

    parentEvent2 = [(ASRecurrence *)self parentEvent];
    allDayEvent = [parentEvent2 allDayEvent];
    intValue11 = [allDayEvent intValue];

    if (intValue11)
    {
      v61 = [v56 dateByAddingTimeInterval:86399.0];
    }

    else
    {
LABEL_63:
      v61 = [(ASRecurrence *)self _untilDateForCalFrameworkWithParentStartDate:dateCopy];
    }

    v62 = v61;

    [v62 timeIntervalSinceReferenceDate];
    CalRecurrenceSetEndDate();
    v56 = v62;
    goto LABEL_65;
  }

LABEL_66:

  v63 = *MEMORY[0x277D85DE8];
  return Recurrence;
}

- (BOOL)_loadAttributesFromCalRecurrence:(void *)recurrence parentStartDate:(id)date parentItem:(id)item useFloatingTimeForAllDayEvents:(BOOL)events
{
  eventsCopy = events;
  v67 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  itemCopy = item;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:CalRecurrenceGetInterval()];
  [(ASRecurrence *)self setInterval:v11];

  Frequency = CalRecurrenceGetFrequency();
  if (Frequency > 2)
  {
    if (Frequency != 3)
    {
      if (Frequency != 4)
      {
        goto LABEL_78;
      }

      v14 = CalRecurrenceCopyByMonthDayDays();
      v16 = CalRecurrenceGetByMonthMonths();
      v17 = CalRecurrenceCopyByDayDays();
      v18 = v17;
      if (v14 && v16 && !v17)
      {
        [(ASRecurrence *)self setType:&unk_285D57F48];
        ValueAtIndex = CFArrayGetValueAtIndex(v14, 0);
        if (ValueAtIndex == -1)
        {
          v20 = 127;
        }

        else
        {
          v20 = ValueAtIndex;
        }

        v21 = [MEMORY[0x277CCABB0] numberWithInt:v20];
        [(ASRecurrence *)self setDayOfMonth:v21];

        monthOfYear2 = _asMonthOfYearFromCalMonthOfYear(v16);
        v23 = MEMORY[0x277CCABB0];
LABEL_15:
        v15 = [v23 numberWithUnsignedInt:monthOfYear2];
        [(ASRecurrence *)self setMonthOfYear:v15];
        goto LABEL_23;
      }

      if (!v14 && v16 && v17)
      {
        [(ASRecurrence *)self setType:&unk_285D57F60];
        v64 = -1;
        v28 = [MEMORY[0x277CCABB0] numberWithInt:{_dayOfWeekFromByDayDaysArray(v18, &v64)}];
        [(ASRecurrence *)self setDayOfWeek:v28];

        CFRelease(v18);
        if (v64 == -2)
        {
          v29 = DALoggingwithCategory();
          v30 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v29, v30))
          {
            *buf = 138412290;
            v66 = itemCopy;
            v31 = "Malformed Yearly recurrence coming from Cal framework (byDayDays has multiple weekOfMonths).  Parent is %@";
LABEL_37:
            _os_log_impl(&dword_24A0AC000, v29, v30, v31, buf, 0xCu);
            goto LABEL_38;
          }

          goto LABEL_38;
        }

        if ((v64 - 1) >= 5)
        {
          goto LABEL_107;
        }

        v45 = [MEMORY[0x277CCABB0] numberWithInt:?];
        [(ASRecurrence *)self setWeekOfMonth:v45];

        monthOfYear = _asMonthOfYearFromCalMonthOfYear(v16);
        v40 = MEMORY[0x277CCABB0];
LABEL_64:
        v41 = [v40 numberWithUnsignedInt:monthOfYear];
        [(ASRecurrence *)self setMonthOfYear:v41];
        goto LABEL_77;
      }

      if (!v14 && !v16 && !v17)
      {
        [(ASRecurrence *)self setType:&unk_285D57F48];
        v38 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(dateCopy, "dayOfMonth")}];
        [(ASRecurrence *)self setDayOfMonth:v38];

        monthOfYear = [dateCopy monthOfYear];
        v40 = MEMORY[0x277CCABB0];
        goto LABEL_64;
      }

      if (v14 && !v16 && !v17)
      {
        [(ASRecurrence *)self setType:&unk_285D57F48];
        v42 = CFArrayGetValueAtIndex(v14, 0);
        if (v42 == -1)
        {
          v43 = 127;
        }

        else
        {
          v43 = v42;
        }

        v44 = [MEMORY[0x277CCABB0] numberWithInt:v43];
        [(ASRecurrence *)self setDayOfMonth:v44];

        monthOfYear2 = [dateCopy monthOfYear];
        v23 = MEMORY[0x277CCABB0];
        goto LABEL_15;
      }

      v48 = DALoggingwithCategory();
      v49 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v48, v49))
      {
        *buf = 138412290;
        v66 = itemCopy;
        _os_log_impl(&dword_24A0AC000, v48, v49, "Malformed Monthly recurrence coming from Cal framework (need either (byMonthDayDays && byMonthMonths && !byDayDays) OR (!byMonthDayDays && byMonthMonths && byDayDays) OR (!byMonthDayDays && !byMonthMonths && !byDayDays).  Parent is %@", buf, 0xCu);
      }

      if (v14)
      {
        CFRelease(v14);
      }

      if (v18)
      {
        v37 = v18;
        goto LABEL_106;
      }

LABEL_107:
      v60 = 0;
      goto LABEL_104;
    }

    v14 = CalRecurrenceCopyByMonthDayDays();
    v24 = CalRecurrenceCopyByDayDays();
    v25 = v24;
    if (v14 && !v24)
    {
      [(ASRecurrence *)self setType:&unk_285D57F18];
      v26 = CFArrayGetValueAtIndex(v14, 0);
      if (v26 == -1)
      {
        v27 = 127;
      }

      else
      {
        v27 = v26;
      }

      v15 = [MEMORY[0x277CCABB0] numberWithInt:v27];
      [(ASRecurrence *)self setDayOfMonth:v15];
      goto LABEL_23;
    }

    if (v14 || !v24)
    {
      if (!(v14 | v24))
      {
        [(ASRecurrence *)self setType:&unk_285D57F18];
        v41 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(dateCopy, "dayOfMonth")}];
        [(ASRecurrence *)self setDayOfMonth:v41];
        goto LABEL_77;
      }

      v35 = DALoggingwithCategory();
      v36 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v35, v36))
      {
        *buf = 138412290;
        v66 = itemCopy;
        _os_log_impl(&dword_24A0AC000, v35, v36, "Malformed Monthly recurrence coming from Cal framework (both byMonthDayDays and byDayDays are set).  Parent is %@", buf, 0xCu);
      }

      if (v14)
      {
        CFRelease(v14);
      }

      if (!v25)
      {
        goto LABEL_107;
      }

      v37 = v25;
    }

    else
    {
      [(ASRecurrence *)self setType:&unk_285D57F30];
      v64 = -1;
      v32 = [MEMORY[0x277CCABB0] numberWithInt:{_dayOfWeekFromByDayDaysArray(v25, &v64)}];
      [(ASRecurrence *)self setDayOfWeek:v32];

      CFRelease(v25);
      if (v64 == 5)
      {
        v41 = [MEMORY[0x277CCABB0] numberWithInt:5];
        [(ASRecurrence *)self setWeekOfMonth:v41];
        goto LABEL_77;
      }

      if (v64)
      {
        if (v64 == -2)
        {
          v29 = DALoggingwithCategory();
          v30 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v29, v30))
          {
            *buf = 138412290;
            v66 = itemCopy;
            v31 = "Malformed Monthly recurrence coming from Cal framework (byDayDays has multiple weekOfMonths).  Parent is %@";
            goto LABEL_37;
          }

LABEL_38:

          goto LABEL_107;
        }

        goto LABEL_107;
      }

      v46 = CalRecurrenceCopyBySetPos();
      if (!v46)
      {
        goto LABEL_107;
      }

      v14 = v46;
      if (CFArrayGetCount(v46) == 1)
      {
        v47 = CFArrayGetValueAtIndex(v14, 0);
        if (v47 >= 1 && v47 < 5)
        {
          v15 = [MEMORY[0x277CCABB0] numberWithInteger:v47];
          [(ASRecurrence *)self setWeekOfMonth:v15];
          goto LABEL_23;
        }
      }

      v37 = v14;
    }

LABEL_106:
    CFRelease(v37);
    goto LABEL_107;
  }

  if (Frequency == 1)
  {
    [(ASRecurrence *)self setType:&unk_285D57F00];
    goto LABEL_78;
  }

  if (Frequency != 2)
  {
    goto LABEL_78;
  }

  [(ASRecurrence *)self setType:&unk_285D57EE8];
  v13 = CalRecurrenceCopyByDayDays();
  if (v13)
  {
    v14 = v13;
    v15 = [MEMORY[0x277CCABB0] numberWithInt:{_dayOfWeekFromByDayDaysArray(v13, 0)}];
    [(ASRecurrence *)self setDayOfWeek:v15];
LABEL_23:

    CFRelease(v14);
    goto LABEL_78;
  }

  dayOfWeek = [dateCopy dayOfWeek];
  if (dayOfWeek > 6)
  {
    v34 = 0;
  }

  else
  {
    v34 = dword_24A14E0B8[dayOfWeek];
  }

  v41 = [MEMORY[0x277CCABB0] numberWithInt:v34];
  [(ASRecurrence *)self setDayOfWeek:v41];
LABEL_77:

LABEL_78:
  Count = CalRecurrenceGetCount();
  CalRecurrenceGetEndDate();
  if (Count)
  {
    v52 = [MEMORY[0x277CCABB0] numberWithInt:Count];
    [(ASRecurrence *)self setOccurrences:v52];
  }

  else
  {
    if (v51 == *MEMORY[0x277CF78F0])
    {
      goto LABEL_88;
    }

    v52 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v51];
    if (!eventsCopy)
    {
      goto LABEL_85;
    }

    parentEvent = [(ASRecurrence *)self parentEvent];

    if (!parentEvent)
    {
      goto LABEL_85;
    }

    parentEvent2 = [(ASRecurrence *)self parentEvent];
    allDayEvent = [parentEvent2 allDayEvent];
    intValue = [allDayEvent intValue];

    if (intValue)
    {
      v57 = [v52 dateByAddingTimeInterval:-86399.0];
    }

    else
    {
LABEL_85:
      v57 = [(ASRecurrence *)self _transformedUntilDateForActiveSync:v52];
    }

    v58 = v57;
    [(ASRecurrence *)self setUntil:v57];
  }

LABEL_88:
  WeekStart = CalRecurrenceGetWeekStart();
  v60 = 1;
  if (WeekStart <= 2)
  {
    switch(WeekStart)
    {
      case 0:
        v61 = &unk_285D57F00;
        goto LABEL_103;
      case 1:
        v61 = &unk_285D57EE8;
        goto LABEL_103;
      case 2:
        v61 = &unk_285D57F18;
LABEL_103:
        [(ASRecurrence *)self setFirstDayOfWeek:v61];
        break;
    }
  }

  else
  {
    if (WeekStart <= 4)
    {
      if (WeekStart == 3)
      {
        v61 = &unk_285D57F30;
      }

      else
      {
        v61 = &unk_285D57F78;
      }

      goto LABEL_103;
    }

    if (WeekStart == 5)
    {
      v61 = &unk_285D57F48;
      goto LABEL_103;
    }

    if (WeekStart == 6)
    {
      v61 = &unk_285D57F60;
      goto LABEL_103;
    }
  }

LABEL_104:

  v62 = *MEMORY[0x277D85DE8];
  return v60;
}

- (void)appendActiveSyncDataForTask:(id)task toWBXMLData:(id)data
{
  taskCopy = task;
  dataCopy = data;
  [dataCopy openTag:27];
  type = [(ASRecurrence *)self type];
  v8 = type;
  if (type)
  {
    [dataCopy appendTag:28 withIntContent:{objc_msgSend(type, "intValue")}];
  }

  interval = [(ASRecurrence *)self interval];
  v10 = interval;
  if (interval)
  {
    [dataCopy appendTag:31 withIntContent:{objc_msgSend(interval, "intValue")}];
  }

  dayOfWeek = [(ASRecurrence *)self dayOfWeek];
  v12 = dayOfWeek;
  if (dayOfWeek)
  {
    [dataCopy appendTag:32 withIntContent:{objc_msgSend(dayOfWeek, "intValue")}];
  }

  dayOfMonth = [(ASRecurrence *)self dayOfMonth];
  v14 = dayOfMonth;
  if (dayOfMonth)
  {
    [dataCopy appendTag:33 withIntContent:{objc_msgSend(dayOfMonth, "intValue")}];
  }

  weekOfMonth = [(ASRecurrence *)self weekOfMonth];
  v16 = weekOfMonth;
  if (weekOfMonth)
  {
    [dataCopy appendTag:34 withIntContent:{objc_msgSend(weekOfMonth, "intValue")}];
  }

  monthOfYear = [(ASRecurrence *)self monthOfYear];
  v18 = monthOfYear;
  if (monthOfYear)
  {
    [dataCopy appendTag:35 withIntContent:{objc_msgSend(monthOfYear, "intValue")}];
  }

  until = [(ASRecurrence *)self until];
  v20 = until;
  if (until)
  {
    activeSyncStringWithoutSeparators = [until activeSyncStringWithoutSeparators];
    [dataCopy appendTag:29 withStringContent:activeSyncStringWithoutSeparators];
  }

  occurrences = [(ASRecurrence *)self occurrences];
  v23 = occurrences;
  if (occurrences)
  {
    [dataCopy appendTag:30 withIntContent:{objc_msgSend(occurrences, "intValue")}];
  }

  taskManager = [taskCopy taskManager];
  protocol = [taskManager protocol];
  sendCalendarInfoInRecurrence = [protocol sendCalendarInfoInRecurrence];

  if (sendCalendarInfoInRecurrence)
  {
    calendarType = [(ASRecurrence *)self calendarType];
    v28 = calendarType;
    if (calendarType)
    {
      [dataCopy appendTag:55 withIntContent:{objc_msgSend(calendarType, "intValue")}];
    }
  }

  taskManager2 = [taskCopy taskManager];
  protocol2 = [taskManager2 protocol];
  sendFirstDayOfWeekInRecurrence = [protocol2 sendFirstDayOfWeekInRecurrence];

  if (sendFirstDayOfWeekInRecurrence)
  {
    firstDayOfWeek = [(ASRecurrence *)self firstDayOfWeek];
    v33 = firstDayOfWeek;
    if (firstDayOfWeek)
    {
      [dataCopy appendTag:57 withIntContent:{objc_msgSend(firstDayOfWeek, "intValue")}];
    }
  }

  [dataCopy closeTag:27];
}

- (void)setUntilString:(id)string
{
  v4 = [MEMORY[0x277CBEAA8] dateWithActiveSyncStringWithoutSeparators:string];
  [(ASRecurrence *)self setUntil:v4];
}

- (ASRecurrence)initWithCoder:(id)coder
{
  v23[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = ASRecurrence;
  v6 = [(ASItem *)&v22 init];
  if (v6)
  {
    if (([coderCopy allowsKeyedCoding] & 1) == 0)
    {
      [(ASRecurrence *)a2 initWithCoder:v6];
    }

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    [(ASRecurrence *)v6 setType:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interval"];
    [(ASRecurrence *)v6 setInterval:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dayOfWeek"];
    [(ASRecurrence *)v6 setDayOfWeek:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dayOfMonth"];
    [(ASRecurrence *)v6 setDayOfMonth:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"weekOfMonth"];
    [(ASRecurrence *)v6 setWeekOfMonth:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"monthOfYear"];
    [(ASRecurrence *)v6 setMonthOfYear:v12];

    v13 = MEMORY[0x277CBEB98];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v15 = [v13 setWithArray:v14];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"until"];
    [(ASRecurrence *)v6 setUntil:v16];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"occurrences"];
    [(ASRecurrence *)v6 setOccurrences:v17];

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstDayOfWeek"];
    [(ASRecurrence *)v6 setFirstDayOfWeek:v18];

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"calendarType"];
    [(ASRecurrence *)v6 setCalendarType:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [(ASRecurrence *)a2 encodeWithCoder:?];
  }

  type = [(ASRecurrence *)self type];
  [coderCopy encodeObject:type forKey:@"type"];

  interval = [(ASRecurrence *)self interval];
  [coderCopy encodeObject:interval forKey:@"interval"];

  dayOfWeek = [(ASRecurrence *)self dayOfWeek];
  [coderCopy encodeObject:dayOfWeek forKey:@"dayOfWeek"];

  dayOfMonth = [(ASRecurrence *)self dayOfMonth];
  [coderCopy encodeObject:dayOfMonth forKey:@"dayOfMonth"];

  weekOfMonth = [(ASRecurrence *)self weekOfMonth];
  [coderCopy encodeObject:weekOfMonth forKey:@"weekOfMonth"];

  monthOfYear = [(ASRecurrence *)self monthOfYear];
  [coderCopy encodeObject:monthOfYear forKey:@"monthOfYear"];

  until = [(ASRecurrence *)self until];
  [coderCopy encodeObject:until forKey:@"until"];

  occurrences = [(ASRecurrence *)self occurrences];
  [coderCopy encodeObject:occurrences forKey:@"occurrences"];

  firstDayOfWeek = [(ASRecurrence *)self firstDayOfWeek];
  [coderCopy encodeObject:firstDayOfWeek forKey:@"firstDayOfWeek"];

  calendarType = [(ASRecurrence *)self calendarType];
  [coderCopy encodeObject:calendarType forKey:@"calendarType"];
}

- (ASEvent)parentEvent
{
  WeakRetained = objc_loadWeakRetained(&self->_parentEvent);

  return WeakRetained;
}

- (void)parseASParseContext:(uint64_t)a1 root:(uint64_t)a2 parent:callbackDict:streamCallbackDict:account:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASRecurrence.m" lineNumber:161 description:@"Could not find an event in our recurrence's parent chain"];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASRecurrence.m" lineNumber:737 description:@"We can't unarchive a recurrence if the coder doesn't allow keyed coding"];
}

- (void)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASRecurrence.m" lineNumber:758 description:@"We can't archive a recurrence if the coder doesn't allow keyed coding"];
}

@end