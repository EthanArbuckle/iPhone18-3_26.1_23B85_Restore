@interface CNAutocompleteFetchRequest
+ (id)makeTriageIdentifier;
+ (id)request;
+ (id)searchablePropertiesForSearchType:(unint64_t)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid:(id *)valid;
- (BOOL)isZeroKeywordSearch;
- (CNAutocompleteFetchRequest)init;
- (CNAutocompleteFetchRequest)initWithCoder:(id)coder;
- (NSArray)searchableProperties;
- (NSString)sendingAddress;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)executeWithDelegate:(id)delegate;
- (id)includeDebugString;
- (id)searchTypeDebugString;
- (id)shouldIncludeGroupResultsDebugString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setSearchString:(id)string;
- (void)setSendingAddress:(id)address;
@end

@implementation CNAutocompleteFetchRequest

- (CNAutocompleteFetchRequest)init
{
  v8.receiver = self;
  v8.super_class = CNAutocompleteFetchRequest;
  v2 = [(CNAutocompleteFetchRequest *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(CNAutocompleteFetchRequest *)v2 setIncludeContacts:1];
    [(CNAutocompleteFetchRequest *)v3 setIncludeRecents:1];
    [(CNAutocompleteFetchRequest *)v3 setIncludeStewie:0];
    [(CNAutocompleteFetchRequest *)v3 setIncludeSuggestions:1];
    [(CNAutocompleteFetchRequest *)v3 setIncludeLocalExtensions:1];
    [(CNAutocompleteFetchRequest *)v3 setIncludeDirectoryServers:1];
    [(CNAutocompleteFetchRequest *)v3 setIncludeCalendarServers:1];
    [(CNAutocompleteFetchRequest *)v3 setIncludePredictions:1];
    [(CNAutocompleteFetchRequest *)v3 setAddressableGroupResultStyle:0];
    [(CNAutocompleteFetchRequest *)v3 setSearchNames:MEMORY[0x277CBEBF8]];
    [(CNAutocompleteFetchRequest *)v3 setMaximumResultsCount:-1];
    makeTriageIdentifier = [objc_opt_class() makeTriageIdentifier];
    triageIdentifier = v3->_triageIdentifier;
    v3->_triageIdentifier = makeTriageIdentifier;

    v6 = v3;
  }

  return v3;
}

+ (id)makeTriageIdentifier
{
  if (makeTriageIdentifier_cn_once_token_0 != -1)
  {
    +[CNAutocompleteFetchRequest makeTriageIdentifier];
  }

  nextUnsignedInteger = [makeTriageIdentifier_cn_once_object_0 nextUnsignedInteger];
  return [MEMORY[0x277CCACA8] stringWithFormat:@"CNA-%04llu", nextUnsignedInteger];
}

uint64_t __50__CNAutocompleteFetchRequest_makeTriageIdentifier__block_invoke()
{
  makeTriageIdentifier_cn_once_object_0 = objc_alloc_init(MEMORY[0x277CFBDB0]);

  return MEMORY[0x2821F96F8]();
}

- (BOOL)isZeroKeywordSearch
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = CNALoggingContextDebug();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    searchNames = [(CNAutocompleteFetchRequest *)self searchNames];
    v9 = 138477827;
    v10 = searchNames;
    _os_log_impl(&dword_2155FE000, v3, OS_LOG_TYPE_DEFAULT, "ZKW: %{private}@", &v9, 0xCu);
  }

  searchNames2 = [(CNAutocompleteFetchRequest *)self searchNames];
  v6 = [searchNames2 _cn_none:*MEMORY[0x277CFBD38]];

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)request
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)setSearchString:(id)string
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (string)
  {
    v4 = [string copy];
    v9[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [(CNAutocompleteFetchRequest *)self setSearchNames:v5];

    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = *MEMORY[0x277D85DE8];
    v8 = MEMORY[0x277CBEBF8];

    [(CNAutocompleteFetchRequest *)self setSearchNames:v8];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CNAutocompleteFetchRequest);
  searchNames = [(CNAutocompleteFetchRequest *)self searchNames];
  [(CNAutocompleteFetchRequest *)v4 setSearchNames:searchNames];

  priorityDomainForSorting = [(CNAutocompleteFetchRequest *)self priorityDomainForSorting];
  [(CNAutocompleteFetchRequest *)v4 setPriorityDomainForSorting:priorityDomainForSorting];

  [(CNAutocompleteFetchRequest *)v4 setSearchType:[(CNAutocompleteFetchRequest *)self searchType]];
  fetchContext = [(CNAutocompleteFetchRequest *)self fetchContext];
  [(CNAutocompleteFetchRequest *)v4 setFetchContext:fetchContext];

  [(CNAutocompleteFetchRequest *)v4 setIncludeContacts:[(CNAutocompleteFetchRequest *)self includeContacts]];
  [(CNAutocompleteFetchRequest *)v4 setIncludeRecents:[(CNAutocompleteFetchRequest *)self includeRecents]];
  [(CNAutocompleteFetchRequest *)v4 setIncludeStewie:[(CNAutocompleteFetchRequest *)self includeStewie]];
  [(CNAutocompleteFetchRequest *)v4 setIncludeSuggestions:[(CNAutocompleteFetchRequest *)self includeSuggestions]];
  [(CNAutocompleteFetchRequest *)v4 setIncludeLocalExtensions:[(CNAutocompleteFetchRequest *)self includeLocalExtensions]];
  [(CNAutocompleteFetchRequest *)v4 setIncludeDirectoryServers:[(CNAutocompleteFetchRequest *)self includeDirectoryServers]];
  [(CNAutocompleteFetchRequest *)v4 setIncludeCalendarServers:[(CNAutocompleteFetchRequest *)self includeCalendarServers]];
  [(CNAutocompleteFetchRequest *)v4 setIncludePredictions:[(CNAutocompleteFetchRequest *)self includePredictions]];
  [(CNAutocompleteFetchRequest *)v4 setAddressableGroupResultStyle:[(CNAutocompleteFetchRequest *)self addressableGroupResultStyle]];
  objc_storeStrong(&v4->_shouldIncludeGroupResultsImpl, self->_shouldIncludeGroupResultsImpl);
  v4->_maximumResultsCount = self->_maximumResultsCount;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v12) = 1;
    return v12;
  }

  v19 = v4;
  v20 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_includeContacts != *(equal + 48) || self->_includeRecents != *(equal + 49) || self->_includeStewie != *(equal + 50) || self->_includeLocalExtensions != *(equal + 52) || self->_includeSuggestions != *(equal + 51) || self->_includeDirectoryServers != *(equal + 53) || self->_includeCalendarServers != *(equal + 54) || self->_includePredictions != *(equal + 55))
  {
    goto LABEL_21;
  }

  searchNames = self->_searchNames;
  if (!(searchNames | *(equal + 1)) || (v12 = [(NSArray *)searchNames isEqual:?]) != 0)
  {
    if (self->_searchType != *(equal + 3))
    {
      goto LABEL_21;
    }

    priorityDomainForSorting = self->_priorityDomainForSorting;
    if (!(priorityDomainForSorting | *(equal + 2)) || (v12 = [(NSString *)priorityDomainForSorting isEqual:?]) != 0)
    {
      fetchContext = self->_fetchContext;
      if (!(fetchContext | *(equal + 4)) || (v12 = [(CNAutocompleteFetchContext *)fetchContext isEqual:?]) != 0)
      {
        v15 = [(CNAutocompleteFetchRequest *)self shouldIncludeGroupResults:v6];
        if (v15 == [equal shouldIncludeGroupResults])
        {
          addressableGroupResultStyle = [(CNAutocompleteFetchRequest *)self addressableGroupResultStyle];
          if (addressableGroupResultStyle == [equal addressableGroupResultStyle])
          {
            maximumResultsCount = [(CNAutocompleteFetchRequest *)self maximumResultsCount];
            LOBYTE(v12) = maximumResultsCount == [equal maximumResultsCount];
            return v12;
          }
        }

LABEL_21:
        LOBYTE(v12) = 0;
      }
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CFBE38] arrayHash:self->_searchNames];
  v4 = [MEMORY[0x277CFBE38] objectHash:self->_priorityDomainForSorting];
  v5 = self->_searchType - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3);
  v6 = [MEMORY[0x277CFBE38] objectHash:self->_fetchContext];
  v7 = self->_includeContacts - (v6 - v5 + 32 * v5) + 32 * (v6 - v5 + 32 * v5);
  v8 = self->_includeRecents - v7 + 32 * v7;
  v9 = self->_includeStewie - v8 + 32 * v8;
  v10 = self->_includeLocalExtensions - v9 + 32 * v9;
  v11 = self->_includeSuggestions - v10 + 32 * v10;
  v12 = self->_includeDirectoryServers - v11 + 32 * v11;
  v13 = self->_includeCalendarServers - v12 + 32 * v12;
  v14 = 31 * (self->_includePredictions - v13 + 32 * v13);
  v15 = v14 + [(CNAutocompleteFetchRequest *)self shouldIncludeGroupResults];
  addressableGroupResultStyle = [(CNAutocompleteFetchRequest *)self addressableGroupResultStyle];
  if (addressableGroupResultStyle >= 0)
  {
    v17 = addressableGroupResultStyle;
  }

  else
  {
    v17 = -addressableGroupResultStyle;
  }

  return [(CNAutocompleteFetchRequest *)self maximumResultsCount]- (v17 - v15 + 32 * v15) + 32 * (v17 - v15 + 32 * v15) - 0x133EA9F605504431;
}

- (id)executeWithDelegate:(id)delegate
{
  v16 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v5 = CNALoggingContextDebug();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_2155FE000, v5, OS_LOG_TYPE_DEFAULT, "Autocompleting “%@”", &v14, 0xCu);
  }

  v6 = +[CNAutocompleteSearchProviderFactory nonCachingProvider];
  v7 = +[CNAutocompleteProbeProviderFactory defaultProbeProvider];
  v8 = [CNAutocompleteStore alloc];
  globalAsyncScheduler = [MEMORY[0x277CFBEA8] globalAsyncScheduler];
  v10 = [(CNAutocompleteStore *)v8 initWithDelegate:delegateCopy searchProvider:v6 probeProvider:v7 scheduler:globalAsyncScheduler];

  v11 = [(CNAutocompleteStore *)v10 executeFetchRequest:self];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)isValid:(id *)valid
{
  fetchContext = [(CNAutocompleteFetchRequest *)self fetchContext];
  if (fetchContext)
  {
    fetchContext2 = [(CNAutocompleteFetchRequest *)self fetchContext];
    v7 = [fetchContext2 isValid:valid];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (id)searchablePropertiesForSearchType:(unint64_t)type
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (type > 5)
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  else
  {
    if (((1 << type) & 0x32) != 0)
    {
      v3 = *MEMORY[0x277CBD098];
      v12[0] = *MEMORY[0x277CBCFC0];
      v12[1] = v3;
      v12[2] = *MEMORY[0x277CBD038];
      v4 = MEMORY[0x277CBEA60];
      v5 = v12;
      v6 = 3;
    }

    else if (((1 << type) & 9) != 0)
    {
      v13[0] = *MEMORY[0x277CBCFC0];
      v4 = MEMORY[0x277CBEA60];
      v5 = v13;
      v6 = 1;
    }

    else
    {
      v7 = *MEMORY[0x277CBD098];
      v11[0] = *MEMORY[0x277CBCFC0];
      v11[1] = v7;
      v4 = MEMORY[0x277CBEA60];
      v5 = v11;
      v6 = 2;
    }

    v8 = [v4 arrayWithObjects:v5 count:v6];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (NSArray)searchableProperties
{
  v3 = objc_opt_class();
  searchType = [(CNAutocompleteFetchRequest *)self searchType];

  return [v3 searchablePropertiesForSearchType:searchType];
}

- (CNAutocompleteFetchRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CNAutocompleteFetchRequest *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"searchNames"];
    searchNames = v5->_searchNames;
    v5->_searchNames = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"priorityDomainForSorting"];
    priorityDomainForSorting = v5->_priorityDomainForSorting;
    v5->_priorityDomainForSorting = v8;

    v5->_searchType = [coderCopy decodeIntegerForKey:@"searchType"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fetchContext"];
    fetchContext = v5->_fetchContext;
    v5->_fetchContext = v10;

    v5->_includeContacts = [coderCopy decodeBoolForKey:@"includeContacts"];
    v5->_includeRecents = [coderCopy decodeBoolForKey:@"includeRecents"];
    v5->_includeStewie = [coderCopy decodeBoolForKey:@"includeStewie"];
    v5->_includeSuggestions = [coderCopy decodeBoolForKey:@"includeSuggestions"];
    v5->_includeLocalExtensions = [coderCopy decodeBoolForKey:@"includeLocalExtensions"];
    v5->_includeDirectoryServers = [coderCopy decodeBoolForKey:@"includeDirectoryServers"];
    v5->_includeCalendarServers = [coderCopy decodeBoolForKey:@"includeCalendarServers"];
    v5->_includePredictions = [coderCopy decodeBoolForKey:@"includePredictions"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shouldIncludeGroupResultsImpl"];
    shouldIncludeGroupResultsImpl = v5->_shouldIncludeGroupResultsImpl;
    v5->_shouldIncludeGroupResultsImpl = v12;

    -[CNAutocompleteFetchRequest setAddressableGroupResultStyle:](v5, "setAddressableGroupResultStyle:", [coderCopy decodeIntegerForKey:@"addressableGroupResultStyle"]);
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maximumResultsCount"];
    v5->_maximumResultsCount = [v14 unsignedIntegerValue];

    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  searchNames = self->_searchNames;
  coderCopy = coder;
  [coderCopy encodeObject:searchNames forKey:@"searchNames"];
  [coderCopy encodeObject:self->_priorityDomainForSorting forKey:@"priorityDomainForSorting"];
  [coderCopy encodeInteger:self->_searchType forKey:@"searchType"];
  [coderCopy encodeObject:self->_fetchContext forKey:@"fetchContext"];
  [coderCopy encodeBool:self->_includeContacts forKey:@"includeContacts"];
  [coderCopy encodeBool:self->_includeRecents forKey:@"includeRecents"];
  [coderCopy encodeBool:self->_includeStewie forKey:@"includeStewie"];
  [coderCopy encodeBool:self->_includeSuggestions forKey:@"includeSuggestions"];
  [coderCopy encodeBool:self->_includeLocalExtensions forKey:@"includeLocalExtensions"];
  [coderCopy encodeBool:self->_includeDirectoryServers forKey:@"includeDirectoryServers"];
  [coderCopy encodeBool:self->_includeCalendarServers forKey:@"includeCalendarServers"];
  [coderCopy encodeBool:self->_includePredictions forKey:@"includePredictions"];
  [coderCopy encodeObject:self->_shouldIncludeGroupResultsImpl forKey:@"shouldIncludeGroupResultsImpl"];
  [coderCopy encodeInteger:-[CNAutocompleteFetchRequest addressableGroupResultStyle](self forKey:{"addressableGroupResultStyle"), @"addressableGroupResultStyle"}];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_maximumResultsCount];
  [coderCopy encodeObject:v6 forKey:@"maximumResultsCount"];
}

- (id)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  searchNames = [(CNAutocompleteFetchRequest *)self searchNames];
  v5 = [v3 appendName:@"search names" object:searchNames];

  includeDebugString = [(CNAutocompleteFetchRequest *)self includeDebugString];
  v7 = [v3 appendName:@"include" object:includeDebugString];

  searchTypeDebugString = [(CNAutocompleteFetchRequest *)self searchTypeDebugString];
  v9 = [v3 appendName:@"search type" object:searchTypeDebugString];

  priorityDomainForSorting = [(CNAutocompleteFetchRequest *)self priorityDomainForSorting];
  v11 = [v3 appendName:@"priority domain" object:priorityDomainForSorting];

  fetchContext = [(CNAutocompleteFetchRequest *)self fetchContext];
  v13 = [v3 appendName:@"fetch context" object:fetchContext];

  shouldIncludeGroupResultsDebugString = [(CNAutocompleteFetchRequest *)self shouldIncludeGroupResultsDebugString];
  v15 = [v3 appendName:@"shouldIncludeGroupResults" object:shouldIncludeGroupResultsDebugString];

  build = [v3 build];

  return build;
}

- (id)includeDebugString
{
  array = [MEMORY[0x277CBEB18] array];
  if ([(CNAutocompleteFetchRequest *)self includeRecents])
  {
    [array addObject:@"Recents"];
  }

  if ([(CNAutocompleteFetchRequest *)self includeStewie])
  {
    [array addObject:@"Stewie"];
  }

  if ([(CNAutocompleteFetchRequest *)self includeContacts])
  {
    [array addObject:@"Contacts"];
  }

  if ([(CNAutocompleteFetchRequest *)self includeSuggestions])
  {
    [array addObject:@"Suggestions"];
  }

  if ([(CNAutocompleteFetchRequest *)self includeLocalExtensions])
  {
    [array addObject:@"Local Extensions"];
  }

  if ([(CNAutocompleteFetchRequest *)self includeDirectoryServers])
  {
    [array addObject:@"Directory Servers"];
  }

  if ([(CNAutocompleteFetchRequest *)self includeCalendarServers])
  {
    [array addObject:@"Calendar Servers"];
  }

  if ([(CNAutocompleteFetchRequest *)self includePredictions])
  {
    [array addObject:@"Duet"];
  }

  if ([array count])
  {
    v4 = [array componentsJoinedByString:@"+"];
  }

  else
  {
    v4 = @"none";
  }

  return v4;
}

- (id)searchTypeDebugString
{
  searchType = [(CNAutocompleteFetchRequest *)self searchType];
  if (searchType > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_2781C40F0[searchType];
  }
}

- (id)shouldIncludeGroupResultsDebugString
{
  shouldIncludeGroupResults = [(CNAutocompleteFetchRequest *)self shouldIncludeGroupResults];
  v4 = @"NO";
  if (shouldIncludeGroupResults)
  {
    v4 = @"YES";
  }

  if (self->_shouldIncludeGroupResultsImpl)
  {
    v5 = @"explicit";
  }

  else
  {
    v5 = @"implicit";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (%@)", v4, v5];
}

- (void)setSendingAddress:(id)address
{
  addressCopy = address;
  fetchContext = [(CNAutocompleteFetchRequest *)self fetchContext];
  if (!fetchContext)
  {
    fetchContext = objc_alloc_init(CNAutocompleteFetchContext);
    [(CNAutocompleteFetchRequest *)self setFetchContext:fetchContext];
  }

  [(CNAutocompleteFetchContext *)fetchContext setSendingAddress:addressCopy];
}

- (NSString)sendingAddress
{
  fetchContext = [(CNAutocompleteFetchRequest *)self fetchContext];
  sendingAddress = [fetchContext sendingAddress];

  return sendingAddress;
}

@end