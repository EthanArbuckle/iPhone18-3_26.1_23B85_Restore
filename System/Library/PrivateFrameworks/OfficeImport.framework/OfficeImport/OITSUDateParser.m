@interface OITSUDateParser
- (OITSUDateParser)initWithLocale:(id)a3;
- (__CFDateFormatter)specialCaseDateFormatterForLocale:(id)a3;
- (id)formatStringsDictionary;
- (id)newDateFromString:(id)a3 preferredFormatString:(id)a4 successfulFormatString:(id *)a5 tryAggressiveFormats:(BOOL)a6;
- (id)p_initialPatternParsingFormat:(id)a3 separator:(unsigned __int16 *)a4;
- (id)p_newDateFromStringTryingFormats:(id)a3 locale:(id)a4 formats:(id)a5 outSuccessfulFormatString:(id *)a6;
- (void)dealloc;
- (void)p_addFormat:(id)a3 locale:(id)a4 formatCategoryMap:(id)a5;
@end

@implementation OITSUDateParser

- (OITSUDateParser)initWithLocale:(id)a3
{
  v5 = a3;
  v69.receiver = self;
  v69.super_class = OITSUDateParser;
  v6 = [(OITSUDateParser *)&v69 init];
  if (v6)
  {
    if (!v5)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUDateParser initWithLocale:]"];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDateParser.m"];
      [OITSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:92 isFatal:0 description:"A locale is required here"];

      +[OITSUAssertionHandler logBacktraceThrottled];
    }

    v62 = v5;
    objc_storeStrong(&v6->_locale, a3);
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    formatCategories = v6->_formatCategories;
    v6->_formatCategories = v9;

    v11 = [(OITSULocale *)v6->_locale gregorianCalendarLocale];
    v12 = [v11 objectForKey:*MEMORY[0x277CBE690]];

    v13 = [(OITSULocale *)v6->_locale gregorianCalendarLocale];
    v14 = [v13 objectForKey:*MEMORY[0x277CBE6C8]];

    if (v12)
    {
      v15 = [v12 compare:@"JP" options:1] || v14 == 0;
      if (!v15 && ![v14 compare:@"ja" options:1])
      {
        v6->_isJapaneseLocale = 1;
      }
    }

    v60 = v14;
    v61 = v12;
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v17 = [(OITSULocale *)v6->_locale gregorianCalendarLocale];
    v18 = TSUCreateArrayOfDateFormatStringsForLocale(v17);

    v19 = [(OITSULocale *)v6->_locale gregorianCalendarLocale];
    v20 = TSUCreateArrayOfTimeFormatStringsForLocale(v19);

    v68 = v18;
    v21 = [v18 count];
    v67 = v20;
    v22 = [v20 count];
    if (v21)
    {
      v23 = 0;
      do
      {
        v65 = v23;
        v24 = [v68 objectAtIndex:?];
        v25 = [v24 stringByAppendingString:@" "];
        v26 = [(OITSULocale *)v6->_locale gregorianCalendarLocale];
        v63 = v24;
        [(OITSUDateParser *)v6 p_addFormat:v24 locale:v26 formatCategoryMap:v16];

        if (v22)
        {
          for (i = 0; i != v22; ++i)
          {
            v28 = [v67 objectAtIndex:i];
            v29 = [v25 stringByAppendingString:v28];
            v30 = [(OITSULocale *)v6->_locale gregorianCalendarLocale];
            [(OITSUDateParser *)v6 p_addFormat:v29 locale:v30 formatCategoryMap:v16];
          }
        }

        v23 = v65 + 1;
      }

      while (v65 + 1 != v21);
    }

    if (v22)
    {
      v31 = 0;
      do
      {
        v66 = v31;
        v32 = [v67 objectAtIndex:?];
        v33 = [v32 stringByAppendingString:@" "];
        v34 = [(OITSULocale *)v6->_locale gregorianCalendarLocale];
        v64 = v32;
        [(OITSUDateParser *)v6 p_addFormat:v32 locale:v34 formatCategoryMap:v16];

        if (v21)
        {
          for (j = 0; j != v21; ++j)
          {
            v36 = [v68 objectAtIndex:j];
            v37 = [v33 stringByAppendingString:v36];
            v38 = [(OITSULocale *)v6->_locale gregorianCalendarLocale];
            [(OITSUDateParser *)v6 p_addFormat:v37 locale:v38 formatCategoryMap:v16];
          }
        }

        v31 = v66 + 1;
      }

      while (v66 + 1 != v22);
    }

    v39 = kCFDateFormatterNoStyle;
    v5 = v62;
    do
    {
      for (k = kCFDateFormatterNoStyle; k != (kCFDateFormatterFullStyle|kCFDateFormatterShortStyle); ++k)
      {
        if (k | v39)
        {
          v41 = CFDateFormatterCreate(0, [(OITSULocale *)v6->_locale cfGregorianCalendarLocale], v39, k);
          v42 = CFDateFormatterGetFormat(v41);
          v43 = [(OITSULocale *)v6->_locale gregorianCalendarLocale];
          [(OITSUDateParser *)v6 p_addFormat:v42 locale:v43 formatCategoryMap:v16];

          CFRelease(v41);
        }
      }

      ++v39;
    }

    while (v39 != (kCFDateFormatterFullStyle|kCFDateFormatterShortStyle));
    v44 = TSUDefaultDateTimeFormat(v6->_locale);
    v45 = [(OITSULocale *)v6->_locale gregorianCalendarLocale];
    [(OITSUDateParser *)v6 p_addFormat:v44 locale:v45 formatCategoryMap:v16];

    v46 = TSUShortestCompleteDateOnlyFormat(v6->_locale);
    v47 = [(OITSULocale *)v6->_locale gregorianCalendarLocale];
    [(OITSUDateParser *)v6 p_addFormat:v46 locale:v47 formatCategoryMap:v16];

    v48 = TSUShortestCompleteTimeOnlyFormat(v6->_locale);
    v49 = [(OITSULocale *)v6->_locale gregorianCalendarLocale];
    [(OITSUDateParser *)v6 p_addFormat:v48 locale:v49 formatCategoryMap:v16];

    v50 = TSUShortestCompleteDateTimeFormat(v6->_locale);
    v51 = [(OITSULocale *)v6->_locale gregorianCalendarLocale];
    [(OITSUDateParser *)v6 p_addFormat:v50 locale:v51 formatCategoryMap:v16];

    v52 = TSUDefaultDateOnlyShortFormat(v6->_locale);
    v53 = [(OITSULocale *)v6->_locale gregorianCalendarLocale];
    [(OITSUDateParser *)v6 p_addFormat:v52 locale:v53 formatCategoryMap:v16];

    v54 = TSUDefaultDateOnlyMediumFormat(v6->_locale);
    v55 = [(OITSULocale *)v6->_locale gregorianCalendarLocale];
    [(OITSUDateParser *)v6 p_addFormat:v54 locale:v55 formatCategoryMap:v16];

    v56 = TSUDefaultTimeOnlyShortFormat(v6->_locale);
    v57 = [(OITSULocale *)v6->_locale gregorianCalendarLocale];
    [(OITSUDateParser *)v6 p_addFormat:v56 locale:v57 formatCategoryMap:v16];

    v58 = v6;
  }

  return v6;
}

- (id)formatStringsDictionary
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_formatCategories;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 initialPattern];
        [v3 addObject:v11];
        v12 = [v10 formatStringsDictionary];
        [v4 addObject:v12];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v7);
  }

  v19[0] = @"keys";
  v19[1] = @"values";
  v20[0] = v3;
  v20[1] = v4;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  return v13;
}

- (void)dealloc
{
  specialCaseFormatter = self->_specialCaseFormatter;
  if (specialCaseFormatter)
  {
    CFRelease(specialCaseFormatter);
  }

  v4.receiver = self;
  v4.super_class = OITSUDateParser;
  [(OITSUDateParser *)&v4 dealloc];
}

- (__CFDateFormatter)specialCaseDateFormatterForLocale:(id)a3
{
  v4 = a3;
  specialCaseFormatter = self->_specialCaseFormatter;
  if (!specialCaseFormatter)
  {
LABEL_5:
    ADateFormatter = p_createADateFormatter(v4);
    self->_specialCaseFormatter = ADateFormatter;
    goto LABEL_6;
  }

  Locale = CFDateFormatterGetLocale(specialCaseFormatter);
  ADateFormatter = self->_specialCaseFormatter;
  if (Locale != v4)
  {
    if (ADateFormatter)
    {
      CFRelease(self->_specialCaseFormatter);
    }

    goto LABEL_5;
  }

LABEL_6:

  return ADateFormatter;
}

- (id)p_newDateFromStringTryingFormats:(id)a3 locale:(id)a4 formats:(id)a5 outSuccessfulFormatString:(id *)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v11)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUDateParser p_newDateFromStringTryingFormats:locale:formats:outSuccessfulFormatString:]"];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDateParser.m"];
    [OITSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:204 isFatal:0 description:"A locale is now required here"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v15 = [(OITSUDateParser *)self specialCaseDateFormatterForLocale:v11];
  v16 = [(__CFString *)v10 length];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v12;
  v17 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v17)
  {
    v18 = v17;
    v34 = v11;
    v35 = a6;
    v19 = *v40;
    v36 = *v40;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v40 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v39 + 1) + 8 * i);
        CFDateFormatterSetFormat(v15, v21);
        rangep.location = 0;
        rangep.length = v16;
        v22 = CFDateFormatterCreateDateFromString(0, v15, v10, &rangep);
        if (v22)
        {
          v23 = v22;
          if (rangep.location || rangep.length != v16)
          {
          }

          else
          {
            v24 = TSUCreateDateWithGregorianUnitsSetToDefaultValue(v22, v21);

            StringWithDate = CFDateFormatterCreateStringWithDate(0, v15, v24);
            if ([(__CFString *)v10 isEqualToString:StringWithDate])
            {
              if (v35)
              {
                v26 = v21;
                *v35 = v21;
              }

              v27 = v24;
            }

            else
            {
              v28 = v24;
              if ([(__CFString *)v21 rangeOfString:@"yyyy"]!= 0x7FFFFFFFFFFFFFFFLL)
              {
                v29 = [(__CFString *)v21 tsu_stringByReplacing4DigitYearStringWith2DigitYearString];
                CFDateFormatterSetFormat(v15, v29);
                v28 = CFDateFormatterCreateDateFromString(0, v15, v10, &rangep);
              }

              v30 = TSUCreateDateWithGregorianUnitsSetToDefaultValue(v28, v21);

              v24 = v30;
              v31 = CFDateFormatterCreateStringWithDate(0, v15, v24);
              if ([(__CFString *)v10 isEqualToString:v31])
              {
                v27 = v24;
                if (v35)
                {
                  v32 = v21;
                  *v35 = v21;
                  v27 = v24;
                }
              }

              else
              {

                v27 = 0;
              }
            }

            v19 = v36;

            if (v27)
            {
              goto LABEL_27;
            }
          }
        }
      }

      v18 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v18);
    v27 = 0;
LABEL_27:
    v11 = v34;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)newDateFromString:(id)a3 preferredFormatString:(id)a4 successfulFormatString:(id *)a5 tryAggressiveFormats:(BOOL)a6
{
  v6 = a6;
  v39[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  if (v10 && [v10 length])
  {
    v12 = [v10 mutableCopy];
    CFStringTransform(v12, 0, *MEMORY[0x277CBF0A8], 0);
    v13 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v14 = [(__CFString *)v12 stringByTrimmingCharactersInSet:v13];

    v15 = [v14 stringByReplacingOccurrencesOfString:@"\u200F" withString:&stru_286EE1130];

    v16 = [v15 stringByReplacingOccurrencesOfString:@"\u200E" withString:&stru_286EE1130];

    if (v11 && ([&stru_286EE1130 isEqualToString:v11] & 1) == 0)
    {
      v39[0] = v11;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
      v18 = [(OITSULocale *)self->_locale gregorianCalendarLocale];
      v19 = [(OITSUDateParser *)self p_newDateFromStringTryingFormats:v16 locale:v18 formats:v17 outSuccessfulFormatString:a5];

      if (v19)
      {
        v20 = v19;
LABEL_35:

        goto LABEL_36;
      }
    }

    v35 = v6;
    v36 = v12;
    v37 = v11;
    v17 = [(NSMutableArray *)self->_formatCategories objectEnumerator];
    v38 = 0;
    v21 = [v17 nextObject];
    v22 = v21;
    if (!v21)
    {
      v24 = 0;
      v23 = 0;
LABEL_23:
      if (v23)
      {
        v23 = v23;
        v11 = v37;
        if (a5)
        {
          v29 = v24;
          *a5 = v24;
        }

        v27 = v23;
      }

      else
      {
        if (v35)
        {
          v30 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"yy", 0}];
          v31 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
          v32 = [v16 rangeOfCharacterFromSet:v31];

          v27 = 0;
          if (v32 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v33 = [(OITSULocale *)self->_locale gregorianCalendarLocale];
            v27 = [(OITSUDateParser *)self p_newDateFromStringTryingFormats:v16 locale:v33 formats:v30 outSuccessfulFormatString:a5];
          }

          v23 = 0;
        }

        else
        {
          v23 = 0;
          v27 = 0;
        }

LABEL_33:
        v11 = v37;
      }

      v20 = v27;

      v12 = v36;
      goto LABEL_35;
    }

    v23 = 0;
    v24 = 0;
    v25 = v21;
    while (1)
    {
      v26 = [v25 newDateFromString:v16 forceAllowAMPM:self->_isJapaneseLocale successfulFormatString:a5 perfect:&v38];
      if (v26)
      {
        v27 = v26;
        if (v38)
        {
          v22 = v25;
          goto LABEL_33;
        }

        if (v23)
        {

          if (!a5)
          {
            goto LABEL_19;
          }
        }

        else
        {
          if (!a5)
          {
            v23 = v26;
            goto LABEL_19;
          }

          v28 = *a5;

          v24 = v28;
          v23 = v27;
        }

        *a5 = 0;
      }

LABEL_19:
      v22 = [v17 nextObject];

      v25 = v22;
      if (!v22)
      {
        goto LABEL_23;
      }
    }
  }

  v20 = 0;
LABEL_36:

  return v20;
}

- (void)p_addFormat:(id)a3 locale:(id)a4 formatCategoryMap:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13 = 0;
  v11 = [(OITSUDateParser *)self p_initialPatternParsingFormat:v8 separator:&v13];
  v12 = [v10 objectForKey:v11];
  if (!v12)
  {
    v12 = [[OITSUDateFormatCategory alloc] initWithInitialPattern:v11 locale:v9];
    [(NSMutableArray *)self->_formatCategories addObject:v12];
    [v10 setObject:v12 forKey:v11];
  }

  [(OITSUDateFormatCategory *)v12 addSeparator:v13 format:v8 locale:v9];
}

- (id)p_initialPatternParsingFormat:(id)a3 separator:(unsigned __int16 *)a4
{
  v5 = [a3 stringByReplacingOccurrencesOfString:@"\u200F" withString:&stru_286EE1130];
  v6 = [v5 stringByReplacingOccurrencesOfString:@"\u200E" withString:&stru_286EE1130];

  if (p_initialPatternParsingFormat_separator__onceToken != -1)
  {
    [OITSUDateParser p_initialPatternParsingFormat:separator:];
  }

  v7 = [v6 length];
  if (!v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUDateParser p_initialPatternParsingFormat:separator:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDateParser.m"];
    [OITSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:385 isFatal:0 description:"Zero length date format"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v10 = [v6 rangeOfCharacterFromSet:p_initialPatternParsingFormat_separator__formatCharacterSet];
  v11 = v7;
  if (v10 == 0x7FFFFFFFFFFFFFFFLL || ((v12 = [v6 rangeOfCharacterFromSet:p_initialPatternParsingFormat_separator__inverseFormatCharacterSet options:0 range:{v10, v7 - v10}], v12 != 0x7FFFFFFFFFFFFFFFLL) ? (v11 = v12) : (v11 = v7), v11 >= v7))
  {
    *a4 = 0;
  }

  else
  {
    v13 = [v6 characterAtIndex:v11];
    if (v13 == 34)
    {
      v14 = 39;
    }

    else
    {
      v14 = v13;
    }

    *a4 = v14;
    if (v14 == 39)
    {
      if (v11 + 1 >= v7)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUDateParser p_initialPatternParsingFormat:separator:]"];
        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDateParser.m"];
        [OITSUAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:413 isFatal:0 description:"No character following single quote"];

        +[OITSUAssertionHandler logBacktraceThrottled];
      }

      v17 = [v6 characterAtIndex:v11 + 1];
      *a4 = v17;
      if (v17 == 39)
      {
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUDateParser p_initialPatternParsingFormat:separator:]"];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUDateParser.m"];
        [OITSUAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:415 isFatal:0 description:"Two single quotes in a row"];

        +[OITSUAssertionHandler logBacktraceThrottled];
      }
    }
  }

  v20 = [v6 substringToIndex:v11];

  return v20;
}

void __59__OITSUDateParser_p_initialPatternParsingFormat_separator___block_invoke()
{
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"GyYuUQqMLlwWdDFgEecahHKkjmsSAzZOvVXx"];
  v1 = p_initialPatternParsingFormat_separator__formatCharacterSet;
  p_initialPatternParsingFormat_separator__formatCharacterSet = v0;

  v2 = [p_initialPatternParsingFormat_separator__formatCharacterSet invertedSet];
  v3 = p_initialPatternParsingFormat_separator__inverseFormatCharacterSet;
  p_initialPatternParsingFormat_separator__inverseFormatCharacterSet = v2;
}

@end