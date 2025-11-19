@interface ASRecurrence
+ (BOOL)acceptsTopLevelLeaves;
+ (BOOL)frontingBasicTypes;
+ (BOOL)notifyOfUnknownTokens;
+ (BOOL)parsingLeafNode;
+ (BOOL)parsingWithSubItems;
+ (id)asParseRules;
- (ASEvent)parentEvent;
- (ASRecurrence)initWithCoder:(id)a3;
- (BOOL)_loadAttributesFromCalRecurrence:(void *)a3 parentStartDate:(id)a4 parentItem:(id)a5 useFloatingTimeForAllDayEvents:(BOOL)a6;
- (id)_transformedUntilDateForActiveSync:(id)a3;
- (id)_untilDateForCalFrameworkWithParentStartDate:(id)a3;
- (void)_newRecurrenceWithParentStartDate:(id)a3 useFloatingTimeForAllDayEvents:(BOOL)a4 account:(id)a5;
- (void)appendActiveSyncDataForTask:(id)a3 toWBXMLData:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8;
- (void)setUntilString:(id)a3;
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
    v2 = [a1 conformsToProtocol:&unk_285D64D60];
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
    v2 = [a1 conformsToProtocol:&unk_285D5E660];
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
    v2 = [a1 conformsToProtocol:&unk_285D64A10];
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
    v2 = [a1 conformsToProtocol:&unk_285D5F9B0];
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
    v2 = [a1 conformsToProtocol:&unk_285D6EED0];
    notifyOfUnknownTokens___result_37 = v2;
    notifyOfUnknownTokens___haveChecked_37 = 1;
  }

  return v2 & 1;
}

- (id)_untilDateForCalFrameworkWithParentStartDate:(id)a3
{
  v4 = a3;
  v5 = [(ASRecurrence *)self until];
  v6 = [(ASRecurrence *)self parentEvent];
  v7 = [v6 timeZone];
  v8 = [v7 secondsFromGMTForDate:v5];
  v9 = [v4 timeZone];
  v10 = (v8 - [v9 secondsFromGMTForDate:v5]);

  v11 = [v5 dateByAddingTimeInterval:v10];
  v12 = MEMORY[0x277CCA8F8];
  v13 = [v4 timeZone];
  v14 = [v12 combinedDateWithYMDFrom:v11 HMSFrom:v4 componentDatesTimezone:v13];

  v15 = [v4 timeZone];

  [v14 setTimeZone:v15];
  v16 = [v14 dateByAddingYears:0 months:0 days:objc_msgSend(v14 hours:"compare:" minutes:v11) != 1 seconds:{0, 0, -1}];

  return v16;
}

- (id)_transformedUntilDateForActiveSync:(id)a3
{
  v4 = a3;
  v5 = [(ASRecurrence *)self parentEvent];
  v6 = [v5 startDateForCalFramework];

  v7 = [v6 timeZone];
  v8 = [v7 secondsFromGMTForDate:v4];
  v9 = [(ASRecurrence *)self parentEvent];
  v10 = [v9 timeZone];
  v11 = [v10 secondsFromGMTForDate:v4];

  v12 = MEMORY[0x277CCA8F8];
  v13 = [v6 timeZone];
  v14 = [v12 combinedDateWithYMDFrom:v4 HMSFrom:v6 componentDatesTimezone:v13];

  v15 = [v4 compare:v14];
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
  v4 = NSStringFromClass(a1);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v22 = MEMORY[0x277CBEAC0];
    v23 = a1;
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
    v12 = NSStringFromClass(v23);
    [v11 setObject:v5 forKey:v12];
  }

  return v5;
}

- (void)parseASParseContext:(id)a3 root:(id)a4 parent:(id)a5 callbackDict:(id)a6 streamCallbackDict:(id)a7 account:(id)a8
{
  v30 = *MEMORY[0x277D85DE8];
  v15 = a5;
  v27.receiver = self;
  v27.super_class = ASRecurrence;
  [(ASItem *)&v27 parseASParseContext:a3 root:a4 parent:v15 callbackDict:a6 streamCallbackDict:a7 account:a8];
  parsingState = self->super._parsingState;
  v17 = v15;
  if (parsingState >= 2)
  {
    if (parsingState == 3 || parsingState == 4)
    {
      self->super._parsingState = parsingState;
      v17 = v15;
    }

    else
    {
      if (v15)
      {
        v17 = v15;
        do
        {
          v18 = [(ASRecurrence *)self parentEvent];

          if (v18)
          {
            break;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(ASRecurrence *)self setParentEvent:v17];
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

      if ([(ASRecurrence *)self _requiresParentEvent])
      {
        v20 = [(ASRecurrence *)self parentEvent];

        if (!v20)
        {
          [ASRecurrence parseASParseContext:a2 root:self parent:? callbackDict:? streamCallbackDict:? account:?];
        }
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

        [(ASRecurrence *)self setInterval:&unk_285D57EE8];
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_newRecurrenceWithParentStartDate:(id)a3 useFloatingTimeForAllDayEvents:(BOOL)a4 account:(id)a5
{
  v6 = a4;
  v65[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = +[ASLocalDBHelper sharedInstance];
  v11 = [v9 accountID];
  [v10 calDatabaseForAccountID:v11];
  Recurrence = CalDatabaseCreateRecurrence();

  v13 = [(ASRecurrence *)self interval];
  [v13 intValue];
  CalRecurrenceSetInterval();

  v14 = [(ASRecurrence *)self firstDayOfWeek];

  if (v14)
  {
    v15 = [(ASRecurrence *)self firstDayOfWeek];
    [v15 intValue];
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
  v21 = [(ASRecurrence *)self type];
  v22 = [v21 intValue];

  if (v22 > 2)
  {
    if (v22 == 3)
    {
      CalRecurrenceSetFrequency();
      v42 = [(ASRecurrence *)self weekOfMonth];
      v43 = [v42 intValue];

      if (v43 == 5)
      {
        v44 = -1;
      }

      else
      {
        v44 = v43;
      }

      v45 = [(ASRecurrence *)self dayOfWeek];
      v46 = [v45 intValue];

      if (!v46)
      {
        goto LABEL_56;
      }

      v47 = v44 >= 1 ? 0 : -1;
      v48 = _DACreateByDayDaysArrayFromASDayOfWeek(v46, v47);
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

    if (v22 != 5)
    {
      if (v22 == 6)
      {
        CalRecurrenceSetFrequency();
        v29 = [(ASRecurrence *)self weekOfMonth];
        v30 = [v29 intValue];

        v31 = [(ASRecurrence *)self dayOfWeek];
        v32 = [v31 intValue];

        if (v32)
        {
          v33 = v30 == 5 ? -1 : v30;
          v34 = _DACreateByDayDaysArrayFromASDayOfWeek(v32, v33);
          if (v34)
          {
            v35 = v34;
            CalRecurrenceSetByDayDays();
            CFRelease(v35);
          }
        }

        v36 = [(ASRecurrence *)self monthOfYear];
        v37 = [v36 intValue];

        if (v37 >= 4 || (v37 - 1) < 2 || v37)
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

  switch(v22)
  {
    case 0:
      v38 = [(ASRecurrence *)self dayOfWeek];
      v39 = [v38 intValue];

      if (v39)
      {
        CalRecurrenceSetFrequency();
        v40 = [(ASRecurrence *)self dayOfWeek];
        v41 = _DACreateByDayDaysArrayFromASDayOfWeek([v40 intValue], 0);

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
      v50 = [(ASRecurrence *)self dayOfWeek];
      v51 = [v50 intValue];

      if (!v51)
      {
        break;
      }

      v52 = _DACreateByDayDaysArrayFromASDayOfWeek(v51, 0);
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
      v23 = [(ASRecurrence *)self dayOfMonth];
      v24 = [v23 intValue];

      if (v24)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 1, 0);
        v26 = Mutable;
        v27 = v24 == 127 ? -1 : v24;
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
  v53 = [(ASRecurrence *)self occurrences];
  v54 = [v53 intValue];

  v55 = [(ASRecurrence *)self until];
  v56 = v55;
  if (v54)
  {
    CalRecurrenceSetCount();
LABEL_65:

    goto LABEL_66;
  }

  if (v55)
  {
    if (!v6)
    {
      goto LABEL_63;
    }

    v57 = [(ASRecurrence *)self parentEvent];

    if (!v57)
    {
      goto LABEL_63;
    }

    v58 = [(ASRecurrence *)self parentEvent];
    v59 = [v58 allDayEvent];
    v60 = [v59 intValue];

    if (v60)
    {
      v61 = [v56 dateByAddingTimeInterval:86399.0];
    }

    else
    {
LABEL_63:
      v61 = [(ASRecurrence *)self _untilDateForCalFrameworkWithParentStartDate:v8];
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

- (BOOL)_loadAttributesFromCalRecurrence:(void *)a3 parentStartDate:(id)a4 parentItem:(id)a5 useFloatingTimeForAllDayEvents:(BOOL)a6
{
  v6 = a6;
  v67 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
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

        v22 = _asMonthOfYearFromCalMonthOfYear(v16);
        v23 = MEMORY[0x277CCABB0];
LABEL_15:
        v15 = [v23 numberWithUnsignedInt:v22];
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
            v66 = v10;
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

        v39 = _asMonthOfYearFromCalMonthOfYear(v16);
        v40 = MEMORY[0x277CCABB0];
LABEL_64:
        v41 = [v40 numberWithUnsignedInt:v39];
        [(ASRecurrence *)self setMonthOfYear:v41];
        goto LABEL_77;
      }

      if (!v14 && !v16 && !v17)
      {
        [(ASRecurrence *)self setType:&unk_285D57F48];
        v38 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "dayOfMonth")}];
        [(ASRecurrence *)self setDayOfMonth:v38];

        v39 = [v9 monthOfYear];
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

        v22 = [v9 monthOfYear];
        v23 = MEMORY[0x277CCABB0];
        goto LABEL_15;
      }

      v48 = DALoggingwithCategory();
      v49 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v48, v49))
      {
        *buf = 138412290;
        v66 = v10;
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
        v41 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "dayOfMonth")}];
        [(ASRecurrence *)self setDayOfMonth:v41];
        goto LABEL_77;
      }

      v35 = DALoggingwithCategory();
      v36 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v35, v36))
      {
        *buf = 138412290;
        v66 = v10;
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
            v66 = v10;
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

  v33 = [v9 dayOfWeek];
  if (v33 > 6)
  {
    v34 = 0;
  }

  else
  {
    v34 = dword_24A14E0B8[v33];
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
    if (!v6)
    {
      goto LABEL_85;
    }

    v53 = [(ASRecurrence *)self parentEvent];

    if (!v53)
    {
      goto LABEL_85;
    }

    v54 = [(ASRecurrence *)self parentEvent];
    v55 = [v54 allDayEvent];
    v56 = [v55 intValue];

    if (v56)
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

- (void)appendActiveSyncDataForTask:(id)a3 toWBXMLData:(id)a4
{
  v34 = a3;
  v6 = a4;
  [v6 openTag:27];
  v7 = [(ASRecurrence *)self type];
  v8 = v7;
  if (v7)
  {
    [v6 appendTag:28 withIntContent:{objc_msgSend(v7, "intValue")}];
  }

  v9 = [(ASRecurrence *)self interval];
  v10 = v9;
  if (v9)
  {
    [v6 appendTag:31 withIntContent:{objc_msgSend(v9, "intValue")}];
  }

  v11 = [(ASRecurrence *)self dayOfWeek];
  v12 = v11;
  if (v11)
  {
    [v6 appendTag:32 withIntContent:{objc_msgSend(v11, "intValue")}];
  }

  v13 = [(ASRecurrence *)self dayOfMonth];
  v14 = v13;
  if (v13)
  {
    [v6 appendTag:33 withIntContent:{objc_msgSend(v13, "intValue")}];
  }

  v15 = [(ASRecurrence *)self weekOfMonth];
  v16 = v15;
  if (v15)
  {
    [v6 appendTag:34 withIntContent:{objc_msgSend(v15, "intValue")}];
  }

  v17 = [(ASRecurrence *)self monthOfYear];
  v18 = v17;
  if (v17)
  {
    [v6 appendTag:35 withIntContent:{objc_msgSend(v17, "intValue")}];
  }

  v19 = [(ASRecurrence *)self until];
  v20 = v19;
  if (v19)
  {
    v21 = [v19 activeSyncStringWithoutSeparators];
    [v6 appendTag:29 withStringContent:v21];
  }

  v22 = [(ASRecurrence *)self occurrences];
  v23 = v22;
  if (v22)
  {
    [v6 appendTag:30 withIntContent:{objc_msgSend(v22, "intValue")}];
  }

  v24 = [v34 taskManager];
  v25 = [v24 protocol];
  v26 = [v25 sendCalendarInfoInRecurrence];

  if (v26)
  {
    v27 = [(ASRecurrence *)self calendarType];
    v28 = v27;
    if (v27)
    {
      [v6 appendTag:55 withIntContent:{objc_msgSend(v27, "intValue")}];
    }
  }

  v29 = [v34 taskManager];
  v30 = [v29 protocol];
  v31 = [v30 sendFirstDayOfWeekInRecurrence];

  if (v31)
  {
    v32 = [(ASRecurrence *)self firstDayOfWeek];
    v33 = v32;
    if (v32)
    {
      [v6 appendTag:57 withIntContent:{objc_msgSend(v32, "intValue")}];
    }
  }

  [v6 closeTag:27];
}

- (void)setUntilString:(id)a3
{
  v4 = [MEMORY[0x277CBEAA8] dateWithActiveSyncStringWithoutSeparators:a3];
  [(ASRecurrence *)self setUntil:v4];
}

- (ASRecurrence)initWithCoder:(id)a3
{
  v23[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v22.receiver = self;
  v22.super_class = ASRecurrence;
  v6 = [(ASItem *)&v22 init];
  if (v6)
  {
    if (([v5 allowsKeyedCoding] & 1) == 0)
    {
      [(ASRecurrence *)a2 initWithCoder:v6];
    }

    v7 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    [(ASRecurrence *)v6 setType:v7];

    v8 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"interval"];
    [(ASRecurrence *)v6 setInterval:v8];

    v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"dayOfWeek"];
    [(ASRecurrence *)v6 setDayOfWeek:v9];

    v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"dayOfMonth"];
    [(ASRecurrence *)v6 setDayOfMonth:v10];

    v11 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"weekOfMonth"];
    [(ASRecurrence *)v6 setWeekOfMonth:v11];

    v12 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"monthOfYear"];
    [(ASRecurrence *)v6 setMonthOfYear:v12];

    v13 = MEMORY[0x277CBEB98];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v15 = [v13 setWithArray:v14];
    v16 = [v5 decodeObjectOfClasses:v15 forKey:@"until"];
    [(ASRecurrence *)v6 setUntil:v16];

    v17 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"occurrences"];
    [(ASRecurrence *)v6 setOccurrences:v17];

    v18 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"firstDayOfWeek"];
    [(ASRecurrence *)v6 setFirstDayOfWeek:v18];

    v19 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"calendarType"];
    [(ASRecurrence *)v6 setCalendarType:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if (([v5 allowsKeyedCoding] & 1) == 0)
  {
    [(ASRecurrence *)a2 encodeWithCoder:?];
  }

  v6 = [(ASRecurrence *)self type];
  [v5 encodeObject:v6 forKey:@"type"];

  v7 = [(ASRecurrence *)self interval];
  [v5 encodeObject:v7 forKey:@"interval"];

  v8 = [(ASRecurrence *)self dayOfWeek];
  [v5 encodeObject:v8 forKey:@"dayOfWeek"];

  v9 = [(ASRecurrence *)self dayOfMonth];
  [v5 encodeObject:v9 forKey:@"dayOfMonth"];

  v10 = [(ASRecurrence *)self weekOfMonth];
  [v5 encodeObject:v10 forKey:@"weekOfMonth"];

  v11 = [(ASRecurrence *)self monthOfYear];
  [v5 encodeObject:v11 forKey:@"monthOfYear"];

  v12 = [(ASRecurrence *)self until];
  [v5 encodeObject:v12 forKey:@"until"];

  v13 = [(ASRecurrence *)self occurrences];
  [v5 encodeObject:v13 forKey:@"occurrences"];

  v14 = [(ASRecurrence *)self firstDayOfWeek];
  [v5 encodeObject:v14 forKey:@"firstDayOfWeek"];

  v15 = [(ASRecurrence *)self calendarType];
  [v5 encodeObject:v15 forKey:@"calendarType"];
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