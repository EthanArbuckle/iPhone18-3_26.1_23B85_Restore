@interface History
+ (BOOL)filterString:(id)a3 matchesHistoryItemAnywhereInTitleOrURL:(id)a4;
+ (BOOL)historyItemTitle:(id)a3 matchesFilterString:(id)a4;
+ (BOOL)historyItemURL:(id)a3 matchesFilterStrings:(id)a4;
+ (_NSRange)hourRangeFromPartOfDay:(int64_t)a3;
+ (id)_localizedStringForTodayWithPartOfDay:(int64_t)a3;
+ (id)_localizedStringForWeekday:(int64_t)a3 partOfDay:(int64_t)a4;
+ (id)dayWithPeriodOfDayStringForDate:(id)a3;
+ (id)lowercaseStringTrimmedForHistorySearch:(id)a3;
+ (id)sessionIdentifierFromDate:(id)a3;
+ (id)sessionIdentifierFromSessionStartDate:(id)a3;
+ (id)sessionStartDateFromDate:(id)a3;
+ (id)sharedHistory;
+ (id)titleForHistoryItem:(id)a3;
+ (int64_t)partOfDayFromHourOfDay:(int64_t)a3;
+ (void)initialize;
+ (void)localeChanged:(__CFLocale *)a3;
- (BOOL)historyStoreShouldCheckDatabaseIntegrity:(id)a3;
- (_WKVisitedLinkStore)visitedLinkStore;
- (id)_weekdayMonthDateStringForDate:(id)a3;
- (id)titleForDate:(id)a3;
- (void)_addVisitedLinkForItemIfNeeded:(id)a3 withVisitOrigin:(int64_t)a4;
- (void)_updateForWKWebView:(id)a3 browserController:(id)a4 updates:(id)a5;
- (void)_webView:(id)a3 didNavigateWithNavigationData:(id)a4;
- (void)_webView:(id)a3 didPerformClientRedirectFromURL:(id)a4 toURL:(id)a5;
- (void)_webView:(id)a3 didPerformServerRedirectFromURL:(id)a4 toURL:(id)a5;
- (void)_webView:(id)a3 didUpdateHistoryTitle:(id)a4 forURL:(id)a5;
- (void)commitDeferredUpdates;
- (void)dealloc;
- (void)removeItem:(id)a3;
@end

@implementation History

+ (void)initialize
{
  if (+[History initialize]::onceToken != -1)
  {
    +[History initialize];
  }
}

void __21__History_initialize__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = dateFormatter;
  dateFormatter = v0;

  v10 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US"];
  [dateFormatter setLocale:?];
  v2 = dateFormatter;
  v3 = objc_alloc(MEMORY[0x277CBEA80]);
  v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  [v2 setCalendar:v4];

  [dateFormatter setDateFormat:@"MMddyyyy"];
  v5 = objc_alloc_init(MEMORY[0x277CCAB50]);
  v6 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  [v5 formUnionWithCharacterSet:v6];

  v7 = [MEMORY[0x277CCA900] punctuationCharacterSet];
  [v5 formUnionWithCharacterSet:v7];

  objc_storeStrong(&TokenizationCharacterSet, v5);
  v8 = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
  v9 = calendar;
  calendar = v8;
}

+ (id)sharedHistory
{
  if (+[History sharedHistory]::onceToken != -1)
  {
    +[History sharedHistory];
  }

  v3 = +[History sharedHistory]::sharedHistory;

  return v3;
}

void __24__History_sharedHistory__block_invoke()
{
  v0 = [(WBUHistory *)[History alloc] initWithDatabaseID:0];
  v1 = +[History sharedHistory]::sharedHistory;
  +[History sharedHistory]::sharedHistory = v0;
}

- (_WKVisitedLinkStore)visitedLinkStore
{
  visitedLinkStore = self->_visitedLinkStore;
  if (!visitedLinkStore)
  {
    v4 = objc_alloc_init(MEMORY[0x277CE38B8]);
    v5 = self->_visitedLinkStore;
    self->_visitedLinkStore = v4;

    v6 = dispatch_get_global_queue(17, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27__History_visitedLinkStore__block_invoke;
    block[3] = &unk_2781D60B8;
    block[4] = self;
    dispatch_async(v6, block);

    visitedLinkStore = self->_visitedLinkStore;
  }

  return visitedLinkStore;
}

void __27__History_visitedLinkStore__block_invoke(uint64_t a1)
{
  v2 = +[History sharedHistory];
  [v2 waitUntilHistoryHasLoaded];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __27__History_visitedLinkStore__block_invoke_2;
  v5[3] = &unk_2781D61F8;
  v3 = *(a1 + 32);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

+ (id)dayWithPeriodOfDayStringForDate:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [v5 components:544 fromDate:v4];

  v7 = [v6 hour];
  v8 = 1;
  if (v7 - 12 >= 6)
  {
    v8 = 2;
  }

  if (v7 >= 0xC)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if ([v4 _web_isToday])
  {
    [a1 _localizedStringForTodayWithPartOfDay:v9];
  }

  else
  {
    [a1 _localizedStringForWeekday:objc_msgSend(v6 partOfDay:{"weekday"), v9}];
  }
  v10 = ;

  return v10;
}

+ (int64_t)partOfDayFromHourOfDay:(int64_t)a3
{
  v3 = 1;
  if ((a3 - 12) >= 6)
  {
    v3 = 2;
  }

  if (a3 >= 0xC)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (_NSRange)hourRangeFromPartOfDay:(int64_t)a3
{
  v3 = 5;
  v4 = 18;
  v5 = 5;
  v6 = 12;
  if (a3 != 1)
  {
    v6 = 0;
    v5 = 0;
  }

  if (a3 != 2)
  {
    v4 = v6;
    v3 = v5;
  }

  if (a3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  if (a3)
  {
    v8 = v3;
  }

  else
  {
    v8 = 11;
  }

  result.length = v8;
  result.location = v7;
  return result;
}

+ (id)_localizedStringForTodayWithPartOfDay:(int64_t)a3
{
  if (a3 > 2)
  {
    v4 = &stru_2827BF158;
  }

  else
  {
    v4 = _WBSLocalizedString();
  }

  return v4;
}

+ (id)_localizedStringForWeekday:(int64_t)a3 partOfDay:(int64_t)a4
{
  v53[21] = *MEMORY[0x277D85DE8];
  {
    v39 = a3;
    v40 = a4;
    v52 = WBSLocalizedStringWithValue(@"Sunday Morning", v9);
    v53[0] = v52;
    v51 = WBSLocalizedStringWithValue(@"Sunday Afternoon", v10);
    v53[1] = v51;
    v50 = WBSLocalizedStringWithValue(@"Sunday Evening", v11);
    v53[2] = v50;
    v49 = WBSLocalizedStringWithValue(@"Monday Morning", v12);
    v53[3] = v49;
    v48 = WBSLocalizedStringWithValue(@"Monday Afternoon", v13);
    v53[4] = v48;
    v47 = WBSLocalizedStringWithValue(@"Monday Evening", v14);
    v53[5] = v47;
    v46 = WBSLocalizedStringWithValue(@"Tuesday Morning", v15);
    v53[6] = v46;
    v45 = WBSLocalizedStringWithValue(@"Tuesday Afternoon", v16);
    v53[7] = v45;
    v44 = WBSLocalizedStringWithValue(@"Tuesday Evening", v17);
    v53[8] = v44;
    v43 = WBSLocalizedStringWithValue(@"Wednesday Morning", v18);
    v53[9] = v43;
    v42 = WBSLocalizedStringWithValue(@"Wednesday Afternoon", v19);
    v53[10] = v42;
    v41 = WBSLocalizedStringWithValue(@"Wednesday Evening", v20);
    v53[11] = v41;
    v22 = WBSLocalizedStringWithValue(@"Thursday Morning", v21);
    v53[12] = v22;
    v24 = WBSLocalizedStringWithValue(@"Thursday Afternoon", v23);
    v53[13] = v24;
    v26 = WBSLocalizedStringWithValue(@"Thursday Evening", v25);
    v53[14] = v26;
    v28 = WBSLocalizedStringWithValue(@"Friday Morning", v27);
    v53[15] = v28;
    v30 = WBSLocalizedStringWithValue(@"Friday Afternoon", v29);
    v53[16] = v30;
    v32 = WBSLocalizedStringWithValue(@"Friday Evening", v31);
    v53[17] = v32;
    v34 = WBSLocalizedStringWithValue(@"Saturday Morning", v33);
    v53[18] = v34;
    v36 = WBSLocalizedStringWithValue(@"Saturday Afternoon", v35);
    v53[19] = v36;
    v38 = WBSLocalizedStringWithValue(@"Saturday Evening", v37);
    v53[20] = v38;
    +[History _localizedStringForWeekday:partOfDay:]::localizedWeekdayPartOfDayArray = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:21];

    a3 = v39;
    a4 = v40;
  }

  if (a4 >= 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = a4;
  }

  v7 = [+[History _localizedStringForWeekday:partOfDay:]::localizedWeekdayPartOfDayArray objectAtIndexedSubscript:3 * a3 + v6 - 3];

  return v7;
}

+ (id)sessionIdentifierFromDate:(id)a3
{
  v4 = [a1 sessionStartDateFromDate:a3];
  v5 = [a1 sessionIdentifierFromSessionStartDate:v4];

  return v5;
}

+ (id)sessionStartDateFromDate:(id)a3
{
  v3 = a3;
  v4 = [dateFormatter calendar];
  v5 = [v4 components:32 fromDate:v3];

  v6 = +[History hourRangeFromPartOfDay:](History, "hourRangeFromPartOfDay:", +[History partOfDayFromHourOfDay:](History, "partOfDayFromHourOfDay:", [v5 hour]));
  v7 = [dateFormatter calendar];
  v8 = [v7 dateBySettingHour:v6 minute:0 second:0 ofDate:v3 options:0];

  return v8;
}

+ (id)sessionIdentifierFromSessionStartDate:(id)a3
{
  v3 = a3;
  v4 = [dateFormatter calendar];
  v5 = [v4 components:32 fromDate:v3];

  v6 = +[History partOfDayFromHourOfDay:](History, "partOfDayFromHourOfDay:", [v5 hour]);
  v7 = MEMORY[0x277CCACA8];
  v8 = [dateFormatter stringFromDate:v3];
  v9 = [v7 stringWithFormat:@"%@-%ld", v8, v6];

  return v9;
}

+ (id)lowercaseStringTrimmedForHistorySearch:(id)a3
{
  v3 = [a3 stringByTrimmingCharactersInSet:TokenizationCharacterSet];
  v4 = [v3 lowercaseString];

  return v4;
}

+ (BOOL)historyItemTitle:(id)a3 matchesFilterString:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v7 = [v5 componentsSeparatedByCharactersInSet:TokenizationCharacterSet];
    [v6 componentsSeparatedByCharactersInSet:TokenizationCharacterSet];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v8 = v18 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v15 = v6;
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __48__History_historyItemTitle_matchesFilterString___block_invoke;
          v16[3] = &unk_2781D80C0;
          v16[4] = v12;
          if ([v7 indexOfObjectPassingTest:{v16, v15}] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v13 = 0;
            goto LABEL_12;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      v13 = 1;
LABEL_12:
      v6 = v15;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (BOOL)historyItemURL:(id)a3 matchesFilterStrings:(id)a4
{
  v6 = a3;
  v7 = [a4 allObjects];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__History_historyItemURL_matchesFilterStrings___block_invoke;
  v11[3] = &unk_2781D80E8;
  v13 = a1;
  v8 = v6;
  v12 = v8;
  v9 = [v7 safari_containsObjectPassingTest:v11];

  return v9;
}

uint64_t __47__History_historyItemURL_matchesFilterStrings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = a1 + 32;
  v5 = *(a1 + 32);
  v4 = *(v6 + 8);
  v7 = [objc_alloc(MEMORY[0x277D4A0B8]) initWithString:v3];
  v8 = [v4 historyItemURL:v5 matchesFilter:v7];

  return v8;
}

+ (BOOL)filterString:(id)a3 matchesHistoryItemAnywhereInTitleOrURL:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [a3 components];
  v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v20 = *v23;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = [objc_alloc(MEMORY[0x277D4A0B8]) initWithString:v9];
        v11 = objc_opt_class();
        v12 = [v21 urlString];
        v13 = [v11 historyItemURL:v12 matchesFilter:v10];

        v14 = objc_opt_class();
        v15 = [v21 title];
        v16 = [v14 historyItemTitle:v15 matchesFilterString:v9];

        if (((v13 | v16) & 1) == 0)
        {

          goto LABEL_11;
        }

        v6 |= v13;
        v7 |= v16;
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

    v17 = v6 & v7;
  }

  else
  {
LABEL_11:
    v17 = 0;
  }

  return v17 & 1;
}

- (void)dealloc
{
  [(History *)self cancelDeferredUpdates];
  v3.receiver = self;
  v3.super_class = History;
  [(History *)&v3 dealloc];
}

+ (void)localeChanged:(__CFLocale *)a3
{
  if (weekdayMonthDateFormatter)
  {
    CFRelease(weekdayMonthDateFormatter);
  }

  v4 = *MEMORY[0x277CEC558];
  v5 = CFDateFormatterCreate(0, a3, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  if (!v5)
  {
    v5 = CFDateFormatterCreate(0, 0, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  }

  v6 = CPDateFormatStringForFormatType();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"EEEE, MMMM d";
  }

  CFDateFormatterSetFormat(v5, v7);

  weekdayMonthDateFormatter = v5;
}

+ (id)titleForHistoryItem:(id)a3
{
  v3 = a3;
  v4 = [v3 title];
  if (![v4 length])
  {
    v5 = [v3 url];
    if (![v5 isFileURL] || (objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "path"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "displayNameAtPath:", v7), v8 = objc_claimAutoreleasedReturnValue(), v4, v7, v6, (v4 = v8) == 0))
    {
      v9 = [v5 safari_userVisibleString];

      if (v9)
      {
        v10 = [v9 safari_simplifiedUserVisibleURLStringWithSimplifications:4 forDisplayOnly:1 simplifiedStringOffset:0];

        v4 = v10;
      }

      else
      {
        v4 = _WBSLocalizedString();
      }
    }
  }

  return v4;
}

- (id)titleForDate:(id)a3
{
  v4 = a3;
  v5 = calendar;
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v5 components:28 fromDate:v6];

  [v7 setDay:{objc_msgSend(v7, "day") - 1}];
  v8 = [calendar dateFromComponents:v7];
  if ([v4 compare:v8] == -1)
  {
    [(History *)self _weekdayMonthDateStringForDate:v4];
  }

  else
  {
    [History dayWithPeriodOfDayStringForDate:v4];
  }
  v9 = ;

  return v9;
}

- (id)_weekdayMonthDateStringForDate:(id)a3
{
  StringWithDate = CFDateFormatterCreateStringWithDate(0, weekdayMonthDateFormatter, a3);

  return StringWithDate;
}

- (void)commitDeferredUpdates
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_deferredUpdates;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v7 + 1) + 8 * v6) + 16))(*(*(&v7 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  [(NSMutableArray *)self->_deferredUpdates removeAllObjects];
}

- (void)removeItem:(id)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(WBSHistory *)self _removeHistoryItemsInResponseToUserAction:v5];
}

- (BOOL)historyStoreShouldCheckDatabaseIntegrity:(id)a3
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 BOOLForKey:@"ShouldCheckHistoryStoreDatabaseIntegrity"];
  if ((v4 & 1) == 0)
  {
    [v3 setBool:1 forKey:@"ShouldCheckHistoryStoreDatabaseIntegrity"];
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__5;
  v18 = __Block_byref_object_dispose__5;
  v19 = 0;
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = *MEMORY[0x277D76660];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__History_historyStoreShouldCheckDatabaseIntegrity___block_invoke;
  v11[3] = &unk_2781D8110;
  v7 = v3;
  v12 = v7;
  v13 = &v14;
  v8 = [v5 addObserverForName:v6 object:0 queue:0 usingBlock:v11];
  v9 = v15[5];
  v15[5] = v8;

  _Block_object_dispose(&v14, 8);
  return v4;
}

void __52__History_historyStoreShouldCheckDatabaseIntegrity___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeObjectForKey:@"ShouldCheckHistoryStoreDatabaseIntegrity"];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:*(*(*(a1 + 40) + 8) + 40)];

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

uint64_t __27__History_visitedLinkStore__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __27__History_visitedLinkStore__block_invoke_3;
  v3[3] = &unk_2781D8138;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateItemsUsingBlock:v3];
}

void __27__History_visitedLinkStore__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 112);
  v3 = [a2 url];
  [v2 addVisitedLinkWithURL:?];
}

- (void)_updateForWKWebView:(id)a3 browserController:(id)a4 updates:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 shouldDeferHistoryUpdatesForWKWebView:v14])
  {
    deferredUpdates = self->_deferredUpdates;
    if (!deferredUpdates)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v12 = self->_deferredUpdates;
      self->_deferredUpdates = v11;

      deferredUpdates = self->_deferredUpdates;
    }

    v13 = [v9 copy];
    [(NSMutableArray *)deferredUpdates addObject:v13];
  }

  else
  {
    v9[2](v9);
  }
}

- (void)_addVisitedLinkForItemIfNeeded:(id)a3 withVisitOrigin:(int64_t)a4
{
  v6 = a3;
  if (a4)
  {
    visitedLinkStore = self->_visitedLinkStore;
    v9 = v6;
    v8 = [v6 url];
    [(_WKVisitedLinkStore *)visitedLinkStore addVisitedLinkWithURL:v8];

    v6 = v9;
  }
}

- (void)_webView:(id)a3 didNavigateWithNavigationData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [TabDocument tabDocumentForWKWebView:v6];
  if ([v8 sessionStateRestorationSource] != 1)
  {
    v9 = [v6 _unreachableURL];
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v14 = [v7 response];
      v15 = objc_opt_self();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {

        v12 = 0;
        v10 = 0;
        goto LABEL_10;
      }

      v10 = [v14 statusCode];
      v17 = WBSStatusCodeGroupFromStatusCode();

      if (v17 < 4)
      {
        v12 = 0;
        goto LABEL_10;
      }
    }

    v11 = [v9 safari_originalDataAsString];
    v12 = 1;
    if (v11)
    {
      v28 = v10;
      v13 = 0;
LABEL_21:
      v37[0] = 0;
      v37[1] = v37;
      v37[2] = 0x3032000000;
      v37[3] = __Block_byref_object_copy__5;
      v37[4] = __Block_byref_object_dispose__5;
      v25 = self;
      v38 = v25;
      v26 = [v8 browserController];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __50__History__webView_didNavigateWithNavigationData___block_invoke;
      v29[3] = &unk_2781D8160;
      v30 = v6;
      v27 = v11;
      v31 = v27;
      v33 = v37;
      v35 = v13;
      v36 = v12;
      v32 = v7;
      v34 = v28;
      [(History *)v25 _updateForWKWebView:v30 browserController:v26 updates:v29];

      _Block_object_dispose(v37, 8);
      goto LABEL_22;
    }

LABEL_10:
    v18 = [v7 originalRequest];
    v19 = [v18 URL];
    v11 = [v19 safari_originalDataAsString];
    v28 = v10;

    if (v12)
    {
      v13 = 0;
      v12 = 1;
    }

    else
    {
      v20 = [v7 originalRequest];
      v21 = [v20 HTTPMethod];
      if ([v21 safari_isCaseInsensitiveEqualToString:@"GET"])
      {
        v13 = 0;
      }

      else if ([v11 safari_hasCaseInsensitivePrefix:@"http:"])
      {
        v13 = 1;
      }

      else
      {
        v13 = [v11 safari_hasCaseInsensitivePrefix:@"https:"];
      }

      if ([v8 currentPageLoadedFromReadingList] && (objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v11), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "customUserVisibleStringForReadingListBookmarkURL:", v22), v23 = objc_claimAutoreleasedReturnValue(), v22, v23))
      {
        v24 = v23;

        v12 = 0;
        v11 = v24;
      }

      else
      {
        v12 = 0;
      }
    }

    goto LABEL_21;
  }

LABEL_22:
}

void __50__History__webView_didNavigateWithNavigationData___block_invoke(uint64_t a1)
{
  v17 = [TabDocument tabDocumentForWKWebView:*(a1 + 32)];
  v2 = [v17 lastVisit];
  v3 = [v2 item];
  v4 = [v3 url];

  if (*(a1 + 40))
  {
    v5 = [MEMORY[0x277CBEBC0] URLWithString:?];
    v6 = [v5 safari_isSafariWebExtensionURL];

    if ((v6 & 1) == 0)
    {
      v7 = *(*(*(a1 + 56) + 8) + 40);
      v8 = *(a1 + 40);
      v9 = [*(a1 + 48) title];
      v10 = [v7 itemVisitedAtURLString:v8 title:v9 wasHTTPNonGet:*(a1 + 72) wasFailure:*(a1 + 73) increaseVisitCount:1 statusCode:*(a1 + 64)];
      [v17 setLastVisit:v10];
    }
  }

  v11 = [*(a1 + 32) URL];
  v12 = [v4 isEqual:v11];

  if (v12)
  {
    v13 = [v17 sameDocumentNavigationToHistoryVisitCorrelator];
    v14 = [v17 lastVisit];
    [v13 noteVisit:v14];
  }

  v15 = [v17 browserController];
  v16 = [v15 tabController];
  [v16 saveTabDocumentUserActivitySoon:v17];
}

- (void)_webView:(id)a3 didPerformClientRedirectFromURL:(id)a4 toURL:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [TabDocument tabDocumentForWKWebView:v7];
  if ([v9 sessionStateRestorationSource] != 1)
  {
    v10 = [v8 safari_originalDataAsString];
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x3032000000;
    v18[3] = __Block_byref_object_copy__5;
    v18[4] = __Block_byref_object_dispose__5;
    v11 = self;
    v19 = v11;
    v12 = [v9 browserController];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __58__History__webView_didPerformClientRedirectFromURL_toURL___block_invoke;
    v14[3] = &unk_2781D8188;
    v15 = v9;
    v17 = v18;
    v13 = v10;
    v16 = v13;
    [(History *)v11 _updateForWKWebView:v7 browserController:v12 updates:v14];

    _Block_object_dispose(v18, 8);
  }
}

void __58__History__webView_didPerformClientRedirectFromURL_toURL___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v8 = [v2 lastVisit];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) lastVisit];
  v6 = [v5 item];
  v7 = [v3 itemRedirectedFrom:v8 to:v4 origin:0 date:0 statusCode:{objc_msgSend(v6, "statusCode")}];
  [v2 setLastVisit:v7];
}

- (void)_webView:(id)a3 didPerformServerRedirectFromURL:(id)a4 toURL:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [TabDocument tabDocumentForWKWebView:v7];
  if ([v9 sessionStateRestorationSource] != 1)
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = __Block_byref_object_copy__5;
    v16[4] = __Block_byref_object_dispose__5;
    v10 = self;
    v17 = v10;
    v11 = [v9 browserController];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__History__webView_didPerformServerRedirectFromURL_toURL___block_invoke;
    v12[3] = &unk_2781D8188;
    v13 = v9;
    v15 = v16;
    v14 = v8;
    [(History *)v10 _updateForWKWebView:v7 browserController:v11 updates:v12];

    _Block_object_dispose(v16, 8);
  }
}

void __58__History__webView_didPerformServerRedirectFromURL_toURL___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v8 = [v2 lastVisit];
  v4 = [*(a1 + 40) safari_originalDataAsString];
  v5 = [*(a1 + 32) lastVisit];
  v6 = [v5 item];
  v7 = [v3 itemRedirectedFrom:v8 to:v4 origin:0 date:0 statusCode:{objc_msgSend(v6, "statusCode")}];
  [v2 setLastVisit:v7];
}

- (void)_webView:(id)a3 didUpdateHistoryTitle:(id)a4 forURL:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 configuration];
  v10 = [v9 websiteDataStore];
  v11 = [v10 isPersistent];

  if (v11)
  {
    v12 = [TabDocument tabDocumentForWKWebView:v7];
    if ([v12 sessionStateRestorationSource] != 1)
    {
      v13 = [v12 browserController];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __49__History__webView_didUpdateHistoryTitle_forURL___block_invoke;
      v14[3] = &unk_2781D6AC0;
      v15 = v12;
      v16 = self;
      v17 = v8;
      [(History *)self _updateForWKWebView:v7 browserController:v13 updates:v14];
    }
  }
}

void __49__History__webView_didUpdateHistoryTitle_forURL___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lastVisit];
  if (v2)
  {
    [*(a1 + 40) updateTitle:*(a1 + 48) forVisit:v2];
  }
}

@end