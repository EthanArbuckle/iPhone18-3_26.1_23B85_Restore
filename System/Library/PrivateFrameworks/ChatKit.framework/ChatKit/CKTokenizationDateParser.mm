@interface CKTokenizationDateParser
+ (id)appropriateDateTokensForSearchText:(id)a3;
+ (id)dateFormatterForFormat:(id)a3;
+ (id)dateFormattersForFormats:(id)a3;
+ (id)parsers;
+ (id)serializationDateFormatter;
+ (id)setToMostRecentOccurrenceForWeekdayOfDate:(id)a3;
+ (id)setYearToMostRecentOccurrenceForDate:(id)a3;
- (CKTokenizationDateParser)initWithMatchingDateFormatters:(id)a3 displayDateFormatter:(id)a4 filterOptions:(unint64_t)a5 createDateRangeBlock:(id)a6;
- (id)dateTokenFiltersForSearchText:(id)a3;
@end

@implementation CKTokenizationDateParser

+ (id)serializationDateFormatter
{
  if (serializationDateFormatter_onceToken != -1)
  {
    +[CKTokenizationDateParser serializationDateFormatter];
  }

  v3 = serializationDateFormatter_dateFormatter;

  return v3;
}

uint64_t __54__CKTokenizationDateParser_serializationDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = serializationDateFormatter_dateFormatter;
  serializationDateFormatter_dateFormatter = v0;

  [serializationDateFormatter_dateFormatter setDateStyle:3];
  v2 = serializationDateFormatter_dateFormatter;

  return [v2 setTimeStyle:3];
}

+ (id)setYearToMostRecentOccurrenceForDate:(id)a3
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [MEMORY[0x1E695DF00] now];
  v7 = [v5 components:8204 fromDate:v6];

  v8 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [v8 components:28 fromDate:v4];

  [v9 setYear:{objc_msgSend(v7, "year")}];
  v10 = [MEMORY[0x1E695DEE8] currentCalendar];
  v11 = [v10 dateFromComponents:v9];

  [v11 timeIntervalSinceNow];
  if (v12 >= 0.0)
  {
    v14 = [MEMORY[0x1E695DEE8] currentCalendar];
    v13 = [v14 dateByAddingUnit:4 value:-1 toDate:v11 options:0];
  }

  else
  {
    v13 = v11;
  }

  return v13;
}

+ (id)setToMostRecentOccurrenceForWeekdayOfDate:(id)a3
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [MEMORY[0x1E695DF00] now];
  v7 = [v5 components:8204 fromDate:v6];

  v8 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [v8 components:512 fromDate:v4];

  [v9 setYear:{objc_msgSend(v7, "year")}];
  [v9 setMonth:{objc_msgSend(v7, "month")}];
  [v9 setWeekOfYear:{objc_msgSend(v7, "weekOfYear")}];
  v10 = [MEMORY[0x1E695DEE8] currentCalendar];
  v11 = [v10 dateFromComponents:v9];

  [v11 timeIntervalSinceNow];
  if (v12 >= 0.0)
  {
    v14 = [MEMORY[0x1E695DEE8] currentCalendar];
    v13 = [v14 dateByAddingUnit:0x2000 value:-1 toDate:v11 options:0];
  }

  else
  {
    v13 = v11;
  }

  return v13;
}

+ (id)dateFormatterForFormat:(id)a3
{
  v3 = MEMORY[0x1E696AB78];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x1E695DF58] currentLocale];
  [v5 setLocale:v6];

  [v5 setLocalizedDateFormatFromTemplate:v4];

  return v5;
}

+ (id)dateFormattersForFormats:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [CKTokenizationDateParser dateFormatterForFormat:*(*(&v12 + 1) + 8 * i), v12];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)parsers
{
  if (parsers_onceToken != -1)
  {
    +[CKTokenizationDateParser parsers];
  }

  v3 = parsers_dateParsers;

  return v3;
}

void __35__CKTokenizationDateParser_parsers__block_invoke()
{
  v68 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v0 setYear:1];
  v48 = v0;
  [v0 setSecond:-1];
  v1 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v1 setMonth:1];
  v44 = v1;
  [v1 setSecond:-1];
  v2 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v2 setDay:1];
  v41 = v2;
  [v2 setSecond:-1];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v4 = [&unk_1F04E6F30 countByEnumeratingWithState:&v62 objects:v67 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v63;
    do
    {
      v7 = 0;
      do
      {
        if (*v63 != v6)
        {
          objc_enumerationMutation(&unk_1F04E6F30);
        }

        v8 = *(*(&v62 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = objc_alloc_init(MEMORY[0x1E696AB78]);
        v11 = [MEMORY[0x1E695DF58] currentLocale];
        [v10 setLocale:v11];

        [v10 setTimeStyle:0];
        [v10 setDateStyle:{objc_msgSend(v8, "unsignedIntegerValue")}];
        v12 = [v10 dateFormat];
        [v3 addObject:v12];

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [&unk_1F04E6F30 countByEnumeratingWithState:&v62 objects:v67 count:16];
    }

    while (v5);
  }

  v46 = [CKTokenizationDateParser dateFormattersForFormats:v3];
  v38 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v13 = [MEMORY[0x1E695DF58] currentLocale];
  [v38 setLocale:v13];

  [v38 setDateStyle:3];
  [v38 setTimeStyle:0];
  v14 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v15 = [MEMORY[0x1E695DF58] currentLocale];
  [v14 setLocale:v15];

  [v14 setDateStyle:4];
  v47 = v14;
  [v14 setTimeStyle:0];
  v16 = [CKTokenizationDateParser alloc];
  v43 = [CKTokenizationDateParser dateFormattersForFormats:&unk_1F04E6F48];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __35__CKTokenizationDateParser_parsers__block_invoke_67;
  v60[3] = &unk_1E72F6080;
  v17 = v41;
  v61 = v17;
  v42 = [(CKTokenizationDateParser *)v16 initWithMatchingDateFormatters:v43 displayDateFormatter:v14 filterOptions:16 createDateRangeBlock:v60];
  v66[0] = v42;
  v18 = [CKTokenizationDateParser alloc];
  v40 = [CKTokenizationDateParser dateFormattersForFormats:&unk_1F04E6F60];
  v39 = [CKTokenizationDateParser dateFormatterForFormat:@"MMMM y"];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __35__CKTokenizationDateParser_parsers__block_invoke_2;
  v58[3] = &unk_1E72F6080;
  v19 = v44;
  v59 = v19;
  v45 = [(CKTokenizationDateParser *)v18 initWithMatchingDateFormatters:v40 displayDateFormatter:v39 filterOptions:16 createDateRangeBlock:v58];
  v66[1] = v45;
  v20 = [CKTokenizationDateParser alloc];
  v37 = [CKTokenizationDateParser dateFormattersForFormats:&unk_1F04E6F78];
  v36 = [CKTokenizationDateParser dateFormatterForFormat:@"y"];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __35__CKTokenizationDateParser_parsers__block_invoke_3;
  v56[3] = &unk_1E72F6080;
  v57 = v48;
  v49 = v48;
  v34 = [(CKTokenizationDateParser *)v20 initWithMatchingDateFormatters:v37 displayDateFormatter:v36 filterOptions:16 createDateRangeBlock:v56];
  v66[2] = v34;
  v21 = [CKTokenizationDateParser alloc];
  v22 = [CKTokenizationDateParser dateFormattersForFormats:&unk_1F04E6F90];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __35__CKTokenizationDateParser_parsers__block_invoke_4;
  v54[3] = &unk_1E72F6080;
  v23 = v17;
  v55 = v23;
  v24 = [(CKTokenizationDateParser *)v21 initWithMatchingDateFormatters:v22 displayDateFormatter:v38 filterOptions:28 createDateRangeBlock:v54];
  v66[3] = v24;
  v25 = [CKTokenizationDateParser alloc];
  v26 = [CKTokenizationDateParser dateFormattersForFormats:&unk_1F04E6FA8];
  v27 = [CKTokenizationDateParser dateFormatterForFormat:@"MMMM y"];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __35__CKTokenizationDateParser_parsers__block_invoke_5;
  v52[3] = &unk_1E72F6080;
  v53 = v19;
  v35 = v19;
  v28 = [(CKTokenizationDateParser *)v25 initWithMatchingDateFormatters:v26 displayDateFormatter:v27 filterOptions:16 createDateRangeBlock:v52];
  v66[4] = v28;
  v29 = [CKTokenizationDateParser alloc];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __35__CKTokenizationDateParser_parsers__block_invoke_6;
  v50[3] = &unk_1E72F6080;
  v51 = v23;
  v30 = v23;
  v31 = [(CKTokenizationDateParser *)v29 initWithMatchingDateFormatters:v46 displayDateFormatter:v38 filterOptions:28 createDateRangeBlock:v50];
  v66[5] = v31;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:6];
  v33 = parsers_dateParsers;
  parsers_dateParsers = v32;
}

CKTokenizationDateRange *__35__CKTokenizationDateParser_parsers__block_invoke_67(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a2;
  v5 = [v3 currentCalendar];
  v6 = [CKTokenizationDateParser setToMostRecentOccurrenceForWeekdayOfDate:v4];

  v7 = [v5 dateByAddingComponents:*(a1 + 32) toDate:v6 options:0];
  v8 = [[CKTokenizationDateRange alloc] initWithStartDate:v6 endDate:v7];

  return v8;
}

CKTokenizationDateRange *__35__CKTokenizationDateParser_parsers__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a2;
  v5 = [v3 currentCalendar];
  v6 = [CKTokenizationDateParser setYearToMostRecentOccurrenceForDate:v4];

  v7 = [v5 dateByAddingComponents:*(a1 + 32) toDate:v6 options:0];
  v8 = [[CKTokenizationDateRange alloc] initWithStartDate:v6 endDate:v7];

  return v8;
}

CKTokenizationDateRange *__35__CKTokenizationDateParser_parsers__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = [v4 component:4 fromDate:v5];

  v7 = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [v7 component:4 fromDate:v3];

  v9 = v6 - v8;
  if (v6 - v8 < 0)
  {
    v9 = v8 - v6;
  }

  if (v9 <= 0x3E8)
  {
    v11 = [MEMORY[0x1E695DEE8] currentCalendar];
    v12 = *(a1 + 32);
    v13 = v3;
    v14 = [v11 dateByAddingComponents:v12 toDate:v13 options:0];
    v10 = [[CKTokenizationDateRange alloc] initWithStartDate:v13 endDate:v14];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

CKTokenizationDateRange *__35__CKTokenizationDateParser_parsers__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a2;
  v5 = [v3 currentCalendar];
  v6 = [CKTokenizationDateParser setYearToMostRecentOccurrenceForDate:v4];

  v7 = [v5 dateByAddingComponents:*(a1 + 32) toDate:v6 options:0];
  v8 = [[CKTokenizationDateRange alloc] initWithStartDate:v6 endDate:v7];

  return v8;
}

CKTokenizationDateRange *__35__CKTokenizationDateParser_parsers__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = *(a1 + 32);
  v6 = v3;
  v7 = [v4 dateByAddingComponents:v5 toDate:v6 options:0];
  v8 = [[CKTokenizationDateRange alloc] initWithStartDate:v6 endDate:v7];

  return v8;
}

CKTokenizationDateRange *__35__CKTokenizationDateParser_parsers__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = *(a1 + 32);
  v6 = v3;
  v7 = [v4 dateByAddingComponents:v5 toDate:v6 options:0];
  v8 = [[CKTokenizationDateRange alloc] initWithStartDate:v6 endDate:v7];

  return v8;
}

+ (id)appropriateDateTokensForSearchText:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v5 = [v4 isSearchTokensForDatesEnabled];

  if (v5)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = +[CKTokenizationDateParser parsers];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      v10 = MEMORY[0x1E695E0F0];
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) dateTokenFiltersForSearchText:v3];
          if (v12)
          {
            v13 = v12;
            v10 = [v12 copy];

            goto LABEL_14;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v10 = MEMORY[0x1E695E0F0];
    }

LABEL_14:
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

- (CKTokenizationDateParser)initWithMatchingDateFormatters:(id)a3 displayDateFormatter:(id)a4 filterOptions:(unint64_t)a5 createDateRangeBlock:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = CKTokenizationDateParser;
  v14 = [(CKTokenizationDateParser *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_matchingDateFormatters, a3);
    objc_storeStrong(&v15->_displayDateFormatter, a4);
    v15->_filterOptions = a5;
    v16 = _Block_copy(v13);
    createDateRangeBlock = v15->_createDateRangeBlock;
    v15->_createDateRangeBlock = v16;
  }

  return v15;
}

- (id)dateTokenFiltersForSearchText:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v5 = self->_matchingDateFormatters;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v49;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v49 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v48 + 1) + 8 * i) dateFromString:v4];
        if (v10)
        {
          v12 = v10;

          v13 = (*(self->_createDateRangeBlock + 2))();
          if (v13 && ([MEMORY[0x1E695DEE8] currentCalendar], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E695DF00], "now"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "component:fromDate:", 4, v15), v15, v14, objc_msgSend(MEMORY[0x1E695DEE8], "currentCalendar"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "startDate"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "component:fromDate:", 4, v18), v18, v17, v19 <= v16))
          {
            v20 = [v13 serializeToStringArray];
            displayDateFormatter = self->_displayDateFormatter;
            v22 = [v13 startDate];
            v23 = [(NSDateFormatter *)displayDateFormatter stringFromDate:v22];

            v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
            filterOptions = self->_filterOptions;
            if ((filterOptions & 0x10) != 0)
            {
              v26 = [[CKSearchTokenFilter alloc] initWithContentType:8 filterOptions:16 itemIdentifier:v23 tokenAddresses:v20];
              [v24 addObject:v26];

              filterOptions = self->_filterOptions;
            }

            if ((filterOptions & 4) != 0)
            {
              v47 = [CKSearchTokenFilter alloc];
              v27 = MEMORY[0x1E696AEC0];
              v28 = CKFrameworkBundle();
              v29 = [v28 localizedStringForKey:@"SEARCH_AFTER_DATE_TOKEN" value:&stru_1F04268F8 table:@"ChatKit"];
              v30 = [v27 stringWithFormat:v29, v23];

              v31 = [MEMORY[0x1E69DC668] sharedApplication];
              v32 = [v31 userInterfaceLayoutDirection];

              if (v32 == 1)
              {
                v33 = @"\u200F";
              }

              else
              {
                v33 = @"\u200E";
              }

              v34 = [(__CFString *)v33 stringByAppendingString:v30];

              v35 = [(CKSearchTokenFilter *)v47 initWithContentType:8 filterOptions:4 itemIdentifier:v34 tokenAddresses:v20];
              [v24 addObject:v35];

              filterOptions = self->_filterOptions;
            }

            if ((filterOptions & 8) != 0)
            {
              v36 = [CKSearchTokenFilter alloc];
              v37 = MEMORY[0x1E696AEC0];
              v38 = CKFrameworkBundle();
              v39 = [v38 localizedStringForKey:@"SEARCH_BEFORE_DATE_TOKEN" value:&stru_1F04268F8 table:@"ChatKit"];
              v40 = [v37 stringWithFormat:v39, v23];

              v41 = [MEMORY[0x1E69DC668] sharedApplication];
              v42 = [v41 userInterfaceLayoutDirection];

              if (v42 == 1)
              {
                v43 = @"\u200F";
              }

              else
              {
                v43 = @"\u200E";
              }

              v44 = [(__CFString *)v43 stringByAppendingString:v40];

              v45 = [(CKSearchTokenFilter *)v36 initWithContentType:8 filterOptions:8 itemIdentifier:v44 tokenAddresses:v20];
              [v24 addObject:v45];
            }

            v11 = [v24 copy];
          }

          else
          {
            v11 = 0;
          }

          goto LABEL_27;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v48 objects:v52 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
  v12 = v5;
LABEL_27:

  return v11;
}

@end