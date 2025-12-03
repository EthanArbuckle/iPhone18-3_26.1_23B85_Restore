@interface CALNUNIconProvider
+ (BOOL)_parseIconIdentifier:(id)identifier intoDateComponents:(id *)components calendar:(id *)calendar type:(int64_t *)type;
+ (CALNUNIconProvider)sharedInstance;
+ (id)_identifierEncodingAllowedCharacters;
+ (int64_t)_calIconDateFormatTypeFromUNType:(int64_t)type;
+ (int64_t)_unDateFormatTypeFromCalIconDateFormatType:(int64_t)type;
- (id)_iconIdentifierForCachedIconPath:(id)path;
- (id)_identifierForIconWithDateComponents:(id)components type:(int64_t)type inCalendar:(id)calendar;
- (id)iconIdentifierForIcon:(id)icon;
- (id)iconWithIdentifier:(id)identifier;
- (id)identifierForIconWithDate:(id)date inCalendar:(id)calendar;
@end

@implementation CALNUNIconProvider

+ (CALNUNIconProvider)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__CALNUNIconProvider_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_14 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_14, block);
  }

  v2 = sharedInstance_sharedInstance_11;

  return v2;
}

uint64_t __36__CALNUNIconProvider_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_sharedInstance_11 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)_identifierEncodingAllowedCharacters
{
  if (_identifierEncodingAllowedCharacters_onceToken != -1)
  {
    +[CALNUNIconProvider _identifierEncodingAllowedCharacters];
  }

  v3 = _identifierEncodingAllowedCharacters_characterSet;

  return v3;
}

void __58__CALNUNIconProvider__identifierEncodingAllowedCharacters__block_invoke()
{
  v3 = [@"-" stringByAppendingString:@"%"];
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:v3];
  v1 = [v0 invertedSet];
  v2 = _identifierEncodingAllowedCharacters_characterSet;
  _identifierEncodingAllowedCharacters_characterSet = v1;
}

+ (BOOL)_parseIconIdentifier:(id)identifier intoDateComponents:(id *)components calendar:(id *)calendar type:(int64_t *)type
{
  v9 = [identifier componentsSeparatedByString:@"-"];
  if ([v9 count] == 6)
  {
    calendarCopy = calendar;
    v10 = [v9 objectAtIndexedSubscript:0];
    v11 = [v9 objectAtIndexedSubscript:1];
    v12 = [v9 objectAtIndexedSubscript:2];
    v13 = [v9 objectAtIndexedSubscript:3];
    v14 = [v9 objectAtIndexedSubscript:4];
    v15 = [v9 objectAtIndexedSubscript:5];
    intValue = [v10 intValue];
    v17 = intValue == 5;
    if (intValue == 5)
    {
      typeCopy = type;
      v38 = v11;
      v39 = v10;
      stringByRemovingPercentEncoding = [v11 stringByRemovingPercentEncoding];
      v36 = v12;
      stringByRemovingPercentEncoding2 = [v12 stringByRemovingPercentEncoding];
      v35 = v13;
      intValue2 = [v13 intValue];
      intValue3 = [v14 intValue];
      intValue4 = [v15 intValue];
      v22 = objc_opt_new();
      v34 = stringByRemovingPercentEncoding;
      v23 = [MEMORY[0x277CBEA80] calendarWithIdentifier:stringByRemovingPercentEncoding];
      v33 = stringByRemovingPercentEncoding2;
      v24 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:stringByRemovingPercentEncoding2];
      [v23 setLocale:v24];

      [v22 setCalendar:v23];
      v25 = intValue4;
      v26 = intValue2;
      [v22 setDay:v25];
      v31 = intValue2;
      if (intValue2 == 1)
      {
        [v22 setMonth:intValue3];
        v27 = calendarCopy;
      }

      else
      {
        v27 = calendarCopy;
        if (!v26)
        {
          [v22 setWeekday:intValue3];
        }
      }

      v11 = v38;
      if (components)
      {
        v28 = v22;
        *components = v22;
      }

      if (v27)
      {
        v29 = v23;
        *v27 = v23;
      }

      if (typeCopy)
      {
        *typeCopy = v31;
      }

      v10 = v39;
      v13 = v35;
      v12 = v36;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)identifierForIconWithDate:(id)date inCalendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  if (!dateCopy)
  {
    dateCopy = [MEMORY[0x277CBEAA8] date];
  }

  v8 = [calendarCopy components:536 fromDate:dateCopy];
  v9 = [(CALNUNIconProvider *)self _identifierForIconWithDateComponents:v8 type:0 inCalendar:calendarCopy];

  return v9;
}

- (id)_identifierForIconWithDateComponents:(id)components type:(int64_t)type inCalendar:(id)calendar
{
  v28[6] = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  componentsCopy = components;
  v9 = componentsCopy;
  if (type)
  {
    month = [componentsCopy month];
  }

  else
  {
    month = [componentsCopy weekday];
  }

  v27 = month;
  v11 = [v9 day];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 5];
  calendarIdentifier = [calendarCopy calendarIdentifier];
  _identifierEncodingAllowedCharacters = [objc_opt_class() _identifierEncodingAllowedCharacters];
  v15 = [calendarIdentifier stringByAddingPercentEncodingWithAllowedCharacters:_identifierEncodingAllowedCharacters];

  locale = [calendarCopy locale];

  localeIdentifier = [locale localeIdentifier];
  _identifierEncodingAllowedCharacters2 = [objc_opt_class() _identifierEncodingAllowedCharacters];
  v19 = [localeIdentifier stringByAddingPercentEncodingWithAllowedCharacters:_identifierEncodingAllowedCharacters2];

  type = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", type];
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v27];
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v11];
  v28[0] = v12;
  v28[1] = v15;
  v28[2] = v19;
  v28[3] = type;
  v28[4] = v21;
  v28[5] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:6];
  v24 = [v23 componentsJoinedByString:@"-"];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)_iconIdentifierForCachedIconPath:(id)path
{
  lastPathComponent = [path lastPathComponent];
  v4 = lastPathComponent;
  if (lastPathComponent)
  {
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  }

  else
  {
    stringByDeletingPathExtension = 0;
  }

  return stringByDeletingPathExtension;
}

+ (int64_t)_unDateFormatTypeFromCalIconDateFormatType:(int64_t)type
{
  typeCopy = type;
  if (type >= 2)
  {
    v4 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [(CALNUNIconProvider *)typeCopy _unDateFormatTypeFromCalIconDateFormatType:v4];
    }

    return 1;
  }

  return typeCopy;
}

+ (int64_t)_calIconDateFormatTypeFromUNType:(int64_t)type
{
  typeCopy = type;
  if (type >= 2)
  {
    v4 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [(CALNUNIconProvider *)typeCopy _unDateFormatTypeFromCalIconDateFormatType:v4];
    }

    return 1;
  }

  return typeCopy;
}

- (id)iconWithIdentifier:(id)identifier
{
  v14 = 0;
  identifierCopy = identifier;
  v12 = 0;
  v13 = 0;
  v4 = [objc_opt_class() _parseIconIdentifier:identifierCopy intoDateComponents:&v13 calendar:&v12 type:&v14];

  v5 = v13;
  v6 = v12;
  v7 = 0;
  if (v4)
  {
    v8 = [objc_opt_class() _unDateFormatTypeFromCalIconDateFormatType:v14];
    v9 = MEMORY[0x277CE1FB0];
    calendarIdentifier = [v6 calendarIdentifier];
    v7 = [v9 iconWithDateComponents:v5 calendarIdentifier:calendarIdentifier format:v8];
  }

  return v7;
}

- (id)iconIdentifierForIcon:(id)icon
{
  iconCopy = icon;
  path = [iconCopy path];
  if (path)
  {
    v6 = [(CALNUNIconProvider *)self _iconIdentifierForCachedIconPath:path];
    goto LABEL_26;
  }

  dateComponents = [iconCopy dateComponents];
  v8 = dateComponents;
  if (!dateComponents)
  {
    v9 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CALNUNIconProvider iconIdentifierForIcon:];
    }

    v6 = 0;
    goto LABEL_25;
  }

  v9 = [dateComponents objectForKeyedSubscript:*MEMORY[0x277CE2108]];
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CALNUNIconProvider iconIdentifierForIcon:];
    }

    v6 = 0;
    goto LABEL_24;
  }

  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277CE2100]];
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CALNUNIconProvider iconIdentifierForIcon:];
    }

    goto LABEL_22;
  }

  v11 = [v8 objectForKeyedSubscript:*MEMORY[0x277CE2110]];
  if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CALNUNIconProvider iconIdentifierForIcon:];
    }

LABEL_22:
    v6 = 0;
    goto LABEL_23;
  }

  v12 = [objc_opt_class() _calIconDateFormatTypeFromUNType:{-[NSObject integerValue](v11, "integerValue")}];
  v13 = [MEMORY[0x277CBEA80] calendarWithIdentifier:v10];
  v6 = [(CALNUNIconProvider *)self _identifierForIconWithDateComponents:v9 type:v12 inCalendar:v13];

LABEL_23:
LABEL_24:

LABEL_25:
LABEL_26:

  return v6;
}

+ (void)_unDateFormatTypeFromCalIconDateFormatType:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_fault_impl(&dword_242909000, a2, OS_LOG_TYPE_FAULT, "Unexpected icon format type: %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end