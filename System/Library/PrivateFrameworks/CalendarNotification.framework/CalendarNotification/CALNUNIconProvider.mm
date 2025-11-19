@interface CALNUNIconProvider
+ (BOOL)_parseIconIdentifier:(id)a3 intoDateComponents:(id *)a4 calendar:(id *)a5 type:(int64_t *)a6;
+ (CALNUNIconProvider)sharedInstance;
+ (id)_identifierEncodingAllowedCharacters;
+ (int64_t)_calIconDateFormatTypeFromUNType:(int64_t)a3;
+ (int64_t)_unDateFormatTypeFromCalIconDateFormatType:(int64_t)a3;
- (id)_iconIdentifierForCachedIconPath:(id)a3;
- (id)_identifierForIconWithDateComponents:(id)a3 type:(int64_t)a4 inCalendar:(id)a5;
- (id)iconIdentifierForIcon:(id)a3;
- (id)iconWithIdentifier:(id)a3;
- (id)identifierForIconWithDate:(id)a3 inCalendar:(id)a4;
@end

@implementation CALNUNIconProvider

+ (CALNUNIconProvider)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__CALNUNIconProvider_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

+ (BOOL)_parseIconIdentifier:(id)a3 intoDateComponents:(id *)a4 calendar:(id *)a5 type:(int64_t *)a6
{
  v9 = [a3 componentsSeparatedByString:@"-"];
  if ([v9 count] == 6)
  {
    v40 = a5;
    v10 = [v9 objectAtIndexedSubscript:0];
    v11 = [v9 objectAtIndexedSubscript:1];
    v12 = [v9 objectAtIndexedSubscript:2];
    v13 = [v9 objectAtIndexedSubscript:3];
    v14 = [v9 objectAtIndexedSubscript:4];
    v15 = [v9 objectAtIndexedSubscript:5];
    v16 = [v10 intValue];
    v17 = v16 == 5;
    if (v16 == 5)
    {
      v37 = a6;
      v38 = v11;
      v39 = v10;
      v18 = [v11 stringByRemovingPercentEncoding];
      v36 = v12;
      v19 = [v12 stringByRemovingPercentEncoding];
      v35 = v13;
      v20 = [v13 intValue];
      v32 = [v14 intValue];
      v21 = [v15 intValue];
      v22 = objc_opt_new();
      v34 = v18;
      v23 = [MEMORY[0x277CBEA80] calendarWithIdentifier:v18];
      v33 = v19;
      v24 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v19];
      [v23 setLocale:v24];

      [v22 setCalendar:v23];
      v25 = v21;
      v26 = v20;
      [v22 setDay:v25];
      v31 = v20;
      if (v20 == 1)
      {
        [v22 setMonth:v32];
        v27 = v40;
      }

      else
      {
        v27 = v40;
        if (!v26)
        {
          [v22 setWeekday:v32];
        }
      }

      v11 = v38;
      if (a4)
      {
        v28 = v22;
        *a4 = v22;
      }

      if (v27)
      {
        v29 = v23;
        *v27 = v23;
      }

      if (v37)
      {
        *v37 = v31;
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

- (id)identifierForIconWithDate:(id)a3 inCalendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEAA8] date];
  }

  v8 = [v7 components:536 fromDate:v6];
  v9 = [(CALNUNIconProvider *)self _identifierForIconWithDateComponents:v8 type:0 inCalendar:v7];

  return v9;
}

- (id)_identifierForIconWithDateComponents:(id)a3 type:(int64_t)a4 inCalendar:(id)a5
{
  v28[6] = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a3;
  v9 = v8;
  if (a4)
  {
    v10 = [v8 month];
  }

  else
  {
    v10 = [v8 weekday];
  }

  v27 = v10;
  v11 = [v9 day];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 5];
  v13 = [v7 calendarIdentifier];
  v14 = [objc_opt_class() _identifierEncodingAllowedCharacters];
  v15 = [v13 stringByAddingPercentEncodingWithAllowedCharacters:v14];

  v16 = [v7 locale];

  v17 = [v16 localeIdentifier];
  v18 = [objc_opt_class() _identifierEncodingAllowedCharacters];
  v19 = [v17 stringByAddingPercentEncodingWithAllowedCharacters:v18];

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", a4];
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v27];
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v11];
  v28[0] = v12;
  v28[1] = v15;
  v28[2] = v19;
  v28[3] = v20;
  v28[4] = v21;
  v28[5] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:6];
  v24 = [v23 componentsJoinedByString:@"-"];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)_iconIdentifierForCachedIconPath:(id)a3
{
  v3 = [a3 lastPathComponent];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 stringByDeletingPathExtension];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (int64_t)_unDateFormatTypeFromCalIconDateFormatType:(int64_t)a3
{
  v3 = a3;
  if (a3 >= 2)
  {
    v4 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [(CALNUNIconProvider *)v3 _unDateFormatTypeFromCalIconDateFormatType:v4];
    }

    return 1;
  }

  return v3;
}

+ (int64_t)_calIconDateFormatTypeFromUNType:(int64_t)a3
{
  v3 = a3;
  if (a3 >= 2)
  {
    v4 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [(CALNUNIconProvider *)v3 _unDateFormatTypeFromCalIconDateFormatType:v4];
    }

    return 1;
  }

  return v3;
}

- (id)iconWithIdentifier:(id)a3
{
  v14 = 0;
  v3 = a3;
  v12 = 0;
  v13 = 0;
  v4 = [objc_opt_class() _parseIconIdentifier:v3 intoDateComponents:&v13 calendar:&v12 type:&v14];

  v5 = v13;
  v6 = v12;
  v7 = 0;
  if (v4)
  {
    v8 = [objc_opt_class() _unDateFormatTypeFromCalIconDateFormatType:v14];
    v9 = MEMORY[0x277CE1FB0];
    v10 = [v6 calendarIdentifier];
    v7 = [v9 iconWithDateComponents:v5 calendarIdentifier:v10 format:v8];
  }

  return v7;
}

- (id)iconIdentifierForIcon:(id)a3
{
  v4 = a3;
  v5 = [v4 path];
  if (v5)
  {
    v6 = [(CALNUNIconProvider *)self _iconIdentifierForCachedIconPath:v5];
    goto LABEL_26;
  }

  v7 = [v4 dateComponents];
  v8 = v7;
  if (!v7)
  {
    v9 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CALNUNIconProvider iconIdentifierForIcon:];
    }

    v6 = 0;
    goto LABEL_25;
  }

  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x277CE2108]];
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