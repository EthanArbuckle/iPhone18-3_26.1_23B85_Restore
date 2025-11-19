@interface SearchSuggestion
+ (id)relativeDateTimeFormatter;
- (BOOL)isEquivalentTo:(id)a3;
- (NSArray)tableItemEqualityInfo;
- (NSString)description;
- (SFSearchResult)sfSearchResultValue;
- (SearchSuggestion)initWithRecentSearchString:(id)a3 userQuery:(id)a4 forPrivateBrowsing:(BOOL)a5;
- (SearchSuggestion)initWithSearchEngineSuggestion:(id)a3 postFixString:(id)a4 userQuery:(id)a5 forPrivateBrowsing:(BOOL)a6 isOfflineSearchSuggestion:(BOOL)a7;
- (SearchSuggestion)initWithUserTypedQuery:(id)a3 forPrivateBrowsing:(BOOL)a4;
- (id)_initWithString:(id)a3 userQuery:(id)a4 forPrivateBrowsing:(BOOL)a5;
- (id)completionTableViewCellForCompletionList:(id)a3;
- (id)completionTableViewCellReuseIdentifier;
- (id)searchFieldIconForCompletionList:(id)a3;
- (int64_t)_iconForPostFixSearchEngineSuggestion:(id)a3 usingBottomCapsule:(BOOL)a4;
- (int64_t)matchTypeForInputAnalytics;
- (unint64_t)engagementDestination;
- (void)_accessoryButtonTapped;
- (void)_configureHistoryLastAccessedLabelForTableViewCellIfNeeded:(id)a3;
- (void)acceptCompletionWithActionHandler:(id)a3;
- (void)auditAcceptedCompletionWithRank:(unint64_t)a3;
- (void)configureCompletionTableViewCell:(id)a3 forCompletionList:(id)a4;
- (void)setQuery:(id)a3;
@end

@implementation SearchSuggestion

+ (id)relativeDateTimeFormatter
{
  if (relativeDateTimeFormatter_onceToken != -1)
  {
    +[SearchSuggestion relativeDateTimeFormatter];
  }

  v3 = relativeDateTimeFormatter__relativeDateTimeFormatter;

  return v3;
}

void __45__SearchSuggestion_relativeDateTimeFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAC78]);
  v1 = relativeDateTimeFormatter__relativeDateTimeFormatter;
  relativeDateTimeFormatter__relativeDateTimeFormatter = v0;
}

- (id)_initWithString:(id)a3 userQuery:(id)a4 forPrivateBrowsing:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = SearchSuggestion;
  v10 = [(SearchSuggestion *)&v15 init];
  if (v10)
  {
    v11 = [v8 copy];
    string = v10->_string;
    v10->_string = v11;

    objc_storeStrong(&v10->_userQuery, a4);
    v10->_parsecQueryID = [(WBSCompletionQuery *)v10->_userQuery queryID];
    v10->_forPrivateBrowsing = a5;
    v13 = v10;
  }

  return v10;
}

- (SearchSuggestion)initWithUserTypedQuery:(id)a3 forPrivateBrowsing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 queryString];
  v8 = [(SearchSuggestion *)self _initWithString:v7 userQuery:v6 forPrivateBrowsing:v4];

  if (v8)
  {
    v8->_asTypedSuggestion = 1;
    v9 = v8;
  }

  return v8;
}

- (SearchSuggestion)initWithRecentSearchString:(id)a3 userQuery:(id)a4 forPrivateBrowsing:(BOOL)a5
{
  v5 = [(SearchSuggestion *)self _initWithString:a3 userQuery:a4 forPrivateBrowsing:a5];
  v6 = v5;
  if (v5)
  {
    v5->_recentSearch = 1;
    v7 = v5;
  }

  return v6;
}

- (SearchSuggestion)initWithSearchEngineSuggestion:(id)a3 postFixString:(id)a4 userQuery:(id)a5 forPrivateBrowsing:(BOOL)a6 isOfflineSearchSuggestion:(BOOL)a7
{
  v8 = a6;
  v13 = a4;
  v14 = [(SearchSuggestion *)self _initWithString:a3 userQuery:a5 forPrivateBrowsing:v8];
  v15 = v14;
  if (v14)
  {
    v14->_searchEngineSuggestion = 1;
    v14->_offlineSearchEngineSuggestion = a7;
    v14->_goesToURL = (WBSUnifiedFieldInputTypeForString() - 1) < 2;
    objc_storeStrong(&v15->_postFixString, a4);
    v16 = v15;
  }

  return v15;
}

- (id)searchFieldIconForCompletionList:(id)a3
{
  v3 = MEMORY[0x277D755B8];
  if (self->_goesToURL)
  {
    v4 = 5;
  }

  else
  {
    v4 = 4;
  }

  v5 = systemImageNameForCompletionIcon(v4);
  v6 = [v3 systemImageNamed:v5];

  return v6;
}

- (void)setQuery:(id)a3
{
  v7 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_userQuery, a3);
    if (self->_asTypedSuggestion)
    {
      v5 = [v7 queryString];
      string = self->_string;
      self->_string = v5;
    }
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  if (self->_forPrivateBrowsing)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p string = %@; goes to URL: %d; private = %@>", v5, self, self->_string, self->_goesToURL, v7];;

  return v8;
}

- (void)_accessoryButtonTapped
{
  self->_handlingAccessoryButtonTap = 1;
  WeakRetained = objc_loadWeakRetained(&self->_handler);
  [WeakRetained searchTextCompletionAccessoryButtonTappedForCompletionItem:self];

  self->_handlingAccessoryButtonTap = 0;
}

- (void)configureCompletionTableViewCell:(id)a3 forCompletionList:(id)a4
{
  v42[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_string)
  {
    v9 = [v7 browserController];
    v10 = [v9 rootViewController];
    v11 = [v10 isUsingBottomCapsule];

    v12 = v6;
    goesToURL = self->_goesToURL;
    v41 = @"destination";
    if (goesToURL)
    {
      v14 = @"URL";
    }

    else
    {
      v14 = @"Search";
    }

    v42[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    v16 = WBSMakeAccessibilityIdentifier();
    [v12 setAccessibilityIdentifier:v16];

    if (self->_goesToURL)
    {
      v17 = MEMORY[0x277D755B8];
      v18 = systemImageNameForCompletionIcon(5);
      v19 = [v17 systemImageNamed:v18];
      v20 = [v12 imageView];
      [v20 setImage:v19];

      [(UITableViewCell *)v12 safari_setLinkedPageTitle:&stru_2827BF158 description:?];
      [v12 setHidesCompletionArrowView:1];
      v21 = [v12 textLabel];
      v22 = MEMORY[0x277D75348];
      v23 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
      v24 = [(NSString *)v23 safari_numberForKey:*MEMORY[0x277D29060]];
      v25 = [v22 safari_labelColorFromNumber:v24];
      [v21 setTextColor:v25];
    }

    else
    {
      [v12 setHidesImage:0];
      v21 = [v12 textLabel];
      v27 = [v12 traitCollection];
      v23 = [v27 preferredContentSizeCategory];

      if (UIContentSizeCategoryIsAccessibilityCategory(v23))
      {
        v28 = 0;
      }

      else
      {
        v28 = 2;
      }

      [v21 setNumberOfLines:v28];
      v29 = [(NSString *)self->_postFixString length];
      userQuery = self->_userQuery;
      if (v29)
      {
        [v12 setSearchSuggestion:self->_postFixString withQuery:userQuery];
        v31 = [(SearchSuggestion *)self _iconForPostFixSearchEngineSuggestion:v12 usingBottomCapsule:v11];
        v32 = MEMORY[0x277D755B8];
        v33 = systemImageNameForCompletionIcon(v31);
        v34 = [v32 systemImageNamed:v33];
        v35 = [v12 imageView];
        [v35 setImage:v34];
      }

      else
      {
        [v12 setSearchSuggestion:self->_string withQuery:userQuery];
      }

      if ([(SearchSuggestion *)self _isLabelPreviousSearchesInCompletionListEnabled])
      {
        [(SearchSuggestion *)self _configureHistoryLastAccessedLabelForTableViewCellIfNeeded:v12];
      }

      v36 = [(WBSCompletionQuery *)self->_userQuery queryString];
      v37 = [v36 isEqualToString:self->_string];

      if (v37)
      {
        [v12 setHidesCompletionArrowView:1];
      }

      else
      {
        [v12 setUsesDownBackwardCompletionArrow:v11];
        [v12 setHidesCompletionArrowView:{-[NSString length](self->_postFixString, "length") != 0}];
        objc_initWeak(&location, self);
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __71__SearchSuggestion_configureCompletionTableViewCell_forCompletionList___block_invoke;
        v38[3] = &unk_2781D5598;
        objc_copyWeak(&v39, &location);
        [v12 setAccessoryActionHandler:v38];
        objc_destroyWeak(&v39);
        objc_destroyWeak(&location);
      }
    }
  }

  else
  {
    v26 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [SearchSuggestion configureCompletionTableViewCell:v26 forCompletionList:?];
    }
  }
}

void __71__SearchSuggestion_configureCompletionTableViewCell_forCompletionList___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessoryButtonTapped];
}

- (int64_t)_iconForPostFixSearchEngineSuggestion:(id)a3 usingBottomCapsule:(BOOL)a4
{
  v4 = a4;
  v5 = [a3 _sf_usesLeftToRightLayout];
  v6 = 9;
  if (v4)
  {
    v6 = 10;
  }

  v7 = 11;
  if (v4)
  {
    v7 = 12;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

- (void)_configureHistoryLastAccessedLabelForTableViewCellIfNeeded:(id)a3
{
  v16 = a3;
  if ([(SearchSuggestion *)self hasBeenSearchedBefore]&& [(SearchSuggestion *)self _isLabelPreviousSearchesInCompletionListEnabled])
  {
    v4 = MEMORY[0x277D755B8];
    v5 = systemImageNameForCompletionIcon(3);
    v6 = [v4 systemImageNamed:v5];
    v7 = [v16 imageView];
    [v7 setImage:v6];

    [(SearchSuggestion *)self lastVisitTimeInterval];
    v9 = v8;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v11 = v9 - v10;
    [(SearchSuggestion *)self lastVisitTimeInterval];
    v13 = v11 > 0.0 || v12 == 0.0;
    if (!v13)
    {
      v14 = +[SearchSuggestion relativeDateTimeFormatter];
      v15 = [v14 localizedStringFromTimeInterval:v11];
      [v16 setHistoryLastAccessedLabel:v15];
    }

    [v16 setHidesHistoryLastAccessedLabel:v13];
  }
}

- (void)acceptCompletionWithActionHandler:(id)a3
{
  string = self->_string;
  if (self->_goesToURL)
  {
    [a3 goToURLString:string];
  }

  else
  {
    [a3 search:string];
  }
}

- (id)completionTableViewCellReuseIdentifier
{
  v3 = @"Suggestion";
  if ([(SearchSuggestion *)self hasBeenSearchedBefore]&& [(SearchSuggestion *)self _isLabelPreviousSearchesInCompletionListEnabled])
  {
    v3 = @"Historic Suggestion";
  }

  return v3;
}

- (id)completionTableViewCellForCompletionList:(id)a3
{
  if ([(SearchSuggestion *)self hasBeenSearchedBefore])
  {
    if ([(SearchSuggestion *)self _isLabelPreviousSearchesInCompletionListEnabled])
    {
      v4 = 3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = [SearchSuggestionTableViewCell alloc];
  v6 = [(SearchSuggestion *)self completionTableViewCellReuseIdentifier];
  v7 = [(SearchSuggestionTableViewCell *)v5 initWithStyle:v4 reuseIdentifier:v6];

  return v7;
}

- (void)auditAcceptedCompletionWithRank:(unint64_t)a3
{
  if (self->_recentSearch)
  {
    v4 = 1;
  }

  else if (self->_searchEngineSuggestion)
  {
    if (self->_goesToURL)
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x277D499B8] sharedLogger];
  [v5 didAcceptSearchSuggestionOfType:v4];

  v6 = [MEMORY[0x277D499B8] sharedLogger];
  [v6 didAcceptCompletionItemOfType:6 atRank:a3];
}

- (SFSearchResult)sfSearchResultValue
{
  sfSearchResultValue = self->_sfSearchResultValue;
  if (sfSearchResultValue)
  {
    v3 = sfSearchResultValue;
  }

  else
  {
    v5 = [MEMORY[0x277D4C5D0] safari_sfSearchResultWithUniqueIdentifier];
    v6 = self->_sfSearchResultValue;
    self->_sfSearchResultValue = v5;

    v7 = [(WBSCompletionQuery *)self->_userQuery queryString];
    [(SFSearchResult *)self->_sfSearchResultValue setUserInput:v7];

    [(SFSearchResult *)self->_sfSearchResultValue setQueryId:[(WBSCompletionQuery *)self->_userQuery queryID]];
    v8 = [MEMORY[0x277D4C690] textWithString:self->_string];
    [(SFSearchResult *)self->_sfSearchResultValue setTitle:v8];

    [(SFSearchResult *)self->_sfSearchResultValue setType:2];
    if (self->_searchEngineSuggestion)
    {
      v9 = @"SearchEngineSuggestion";
    }

    else
    {
      v9 = @"UserTypedString";
    }

    if (self->_recentSearch)
    {
      v10 = @"RecentSearch";
    }

    else
    {
      v10 = v9;
    }

    v11 = [@"com.apple.Safari.CompletionList." stringByAppendingString:v10];
    v12 = v11;
    if (self->_offlineSearchEngineSuggestion)
    {

      v12 = @"SafariCompletionListOfflineSearchEngineSuggestion";
    }

    if (self->_searchEngineSuggestion || self->_recentSearch)
    {
      v13 = [MEMORY[0x277CDB8A8] sharedInstance];
      v14 = [v13 defaultSearchEngineForPrivateBrowsing:self->_forPrivateBrowsing];
      -[SFSearchResult setType:](self->_sfSearchResultValue, "setType:", [v14 parsecSearchResultType]);
    }

    [(SFSearchResult *)self->_sfSearchResultValue setResultBundleId:v12];
    v15 = [@"com.apple.Safari.CompletionList." stringByAppendingString:@"SearchSuggestionProvider"];
    [(SFSearchResult *)self->_sfSearchResultValue setSectionBundleIdentifier:v15];

    v3 = self->_sfSearchResultValue;
  }

  return v3;
}

- (unint64_t)engagementDestination
{
  if (self->_handlingAccessoryButtonTap)
  {
    return 10;
  }

  else
  {
    return 2;
  }
}

- (BOOL)isEquivalentTo:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SearchSuggestion *)self string];
    v6 = [v4 string];
    v7 = WBSIsEqual();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)tableItemEqualityInfo
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_asTypedSuggestion];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[SearchSuggestion goesToURL](self, "goesToURL")}];
  v5 = MEMORY[0x277CCABB0];
  [(SearchSuggestion *)self lastVisitTimeInterval];
  v6 = [v5 numberWithDouble:?];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[SearchSuggestion hasBeenSearchedBefore](self, "hasBeenSearchedBefore")}];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_recentSearch];
  v9 = [(SearchSuggestion *)self postFixString];
  v10 = [(SearchSuggestion *)self string];
  v20 = [(WBSCompletionQuery *)self->_userQuery queryString];
  v18 = CompletionListTableItemEqualityInfo(8, v11, v12, v13, v14, v15, v16, v17, v3);

  return v18;
}

- (int64_t)matchTypeForInputAnalytics
{
  if ([(SearchSuggestion *)self goesToURL])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end