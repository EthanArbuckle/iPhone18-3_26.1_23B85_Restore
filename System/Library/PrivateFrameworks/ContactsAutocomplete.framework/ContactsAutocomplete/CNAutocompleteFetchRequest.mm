@interface CNAutocompleteFetchRequest
+ (id)makeTriageIdentifier;
+ (id)request;
+ (id)searchablePropertiesForSearchType:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid:(id *)a3;
- (BOOL)isZeroKeywordSearch;
- (CNAutocompleteFetchRequest)init;
- (CNAutocompleteFetchRequest)initWithCoder:(id)a3;
- (NSArray)searchableProperties;
- (NSString)sendingAddress;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)executeWithDelegate:(id)a3;
- (id)includeDebugString;
- (id)searchTypeDebugString;
- (id)shouldIncludeGroupResultsDebugString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setSearchString:(id)a3;
- (void)setSendingAddress:(id)a3;
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
    v4 = [objc_opt_class() makeTriageIdentifier];
    triageIdentifier = v3->_triageIdentifier;
    v3->_triageIdentifier = v4;

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

  v2 = [makeTriageIdentifier_cn_once_object_0 nextUnsignedInteger];
  return [MEMORY[0x277CCACA8] stringWithFormat:@"CNA-%04llu", v2];
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
    v4 = [(CNAutocompleteFetchRequest *)self searchNames];
    v9 = 138477827;
    v10 = v4;
    _os_log_impl(&dword_2155FE000, v3, OS_LOG_TYPE_DEFAULT, "ZKW: %{private}@", &v9, 0xCu);
  }

  v5 = [(CNAutocompleteFetchRequest *)self searchNames];
  v6 = [v5 _cn_none:*MEMORY[0x277CFBD38]];

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)request
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (void)setSearchString:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [a3 copy];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CNAutocompleteFetchRequest);
  v5 = [(CNAutocompleteFetchRequest *)self searchNames];
  [(CNAutocompleteFetchRequest *)v4 setSearchNames:v5];

  v6 = [(CNAutocompleteFetchRequest *)self priorityDomainForSorting];
  [(CNAutocompleteFetchRequest *)v4 setPriorityDomainForSorting:v6];

  [(CNAutocompleteFetchRequest *)v4 setSearchType:[(CNAutocompleteFetchRequest *)self searchType]];
  v7 = [(CNAutocompleteFetchRequest *)self fetchContext];
  [(CNAutocompleteFetchRequest *)v4 setFetchContext:v7];

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

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v12) = 1;
    return v12;
  }

  v19 = v4;
  v20 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_includeContacts != *(a3 + 48) || self->_includeRecents != *(a3 + 49) || self->_includeStewie != *(a3 + 50) || self->_includeLocalExtensions != *(a3 + 52) || self->_includeSuggestions != *(a3 + 51) || self->_includeDirectoryServers != *(a3 + 53) || self->_includeCalendarServers != *(a3 + 54) || self->_includePredictions != *(a3 + 55))
  {
    goto LABEL_21;
  }

  searchNames = self->_searchNames;
  if (!(searchNames | *(a3 + 1)) || (v12 = [(NSArray *)searchNames isEqual:?]) != 0)
  {
    if (self->_searchType != *(a3 + 3))
    {
      goto LABEL_21;
    }

    priorityDomainForSorting = self->_priorityDomainForSorting;
    if (!(priorityDomainForSorting | *(a3 + 2)) || (v12 = [(NSString *)priorityDomainForSorting isEqual:?]) != 0)
    {
      fetchContext = self->_fetchContext;
      if (!(fetchContext | *(a3 + 4)) || (v12 = [(CNAutocompleteFetchContext *)fetchContext isEqual:?]) != 0)
      {
        v15 = [(CNAutocompleteFetchRequest *)self shouldIncludeGroupResults:v6];
        if (v15 == [a3 shouldIncludeGroupResults])
        {
          v16 = [(CNAutocompleteFetchRequest *)self addressableGroupResultStyle];
          if (v16 == [a3 addressableGroupResultStyle])
          {
            v17 = [(CNAutocompleteFetchRequest *)self maximumResultsCount];
            LOBYTE(v12) = v17 == [a3 maximumResultsCount];
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
  v16 = [(CNAutocompleteFetchRequest *)self addressableGroupResultStyle];
  if (v16 >= 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = -v16;
  }

  return [(CNAutocompleteFetchRequest *)self maximumResultsCount]- (v17 - v15 + 32 * v15) + 32 * (v17 - v15 + 32 * v15) - 0x133EA9F605504431;
}

- (id)executeWithDelegate:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = CNALoggingContextDebug();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = self;
    _os_log_impl(&dword_2155FE000, v5, OS_LOG_TYPE_DEFAULT, "Autocompleting “%@”", &v14, 0xCu);
  }

  v6 = +[CNAutocompleteSearchProviderFactory nonCachingProvider];
  v7 = +[CNAutocompleteProbeProviderFactory defaultProbeProvider];
  v8 = [CNAutocompleteStore alloc];
  v9 = [MEMORY[0x277CFBEA8] globalAsyncScheduler];
  v10 = [(CNAutocompleteStore *)v8 initWithDelegate:v4 searchProvider:v6 probeProvider:v7 scheduler:v9];

  v11 = [(CNAutocompleteStore *)v10 executeFetchRequest:self];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)isValid:(id *)a3
{
  v5 = [(CNAutocompleteFetchRequest *)self fetchContext];
  if (v5)
  {
    v6 = [(CNAutocompleteFetchRequest *)self fetchContext];
    v7 = [v6 isValid:a3];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (id)searchablePropertiesForSearchType:(unint64_t)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (a3 > 5)
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  else
  {
    if (((1 << a3) & 0x32) != 0)
    {
      v3 = *MEMORY[0x277CBD098];
      v12[0] = *MEMORY[0x277CBCFC0];
      v12[1] = v3;
      v12[2] = *MEMORY[0x277CBD038];
      v4 = MEMORY[0x277CBEA60];
      v5 = v12;
      v6 = 3;
    }

    else if (((1 << a3) & 9) != 0)
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
  v4 = [(CNAutocompleteFetchRequest *)self searchType];

  return [v3 searchablePropertiesForSearchType:v4];
}

- (CNAutocompleteFetchRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CNAutocompleteFetchRequest *)self init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"searchNames"];
    searchNames = v5->_searchNames;
    v5->_searchNames = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"priorityDomainForSorting"];
    priorityDomainForSorting = v5->_priorityDomainForSorting;
    v5->_priorityDomainForSorting = v8;

    v5->_searchType = [v4 decodeIntegerForKey:@"searchType"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fetchContext"];
    fetchContext = v5->_fetchContext;
    v5->_fetchContext = v10;

    v5->_includeContacts = [v4 decodeBoolForKey:@"includeContacts"];
    v5->_includeRecents = [v4 decodeBoolForKey:@"includeRecents"];
    v5->_includeStewie = [v4 decodeBoolForKey:@"includeStewie"];
    v5->_includeSuggestions = [v4 decodeBoolForKey:@"includeSuggestions"];
    v5->_includeLocalExtensions = [v4 decodeBoolForKey:@"includeLocalExtensions"];
    v5->_includeDirectoryServers = [v4 decodeBoolForKey:@"includeDirectoryServers"];
    v5->_includeCalendarServers = [v4 decodeBoolForKey:@"includeCalendarServers"];
    v5->_includePredictions = [v4 decodeBoolForKey:@"includePredictions"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shouldIncludeGroupResultsImpl"];
    shouldIncludeGroupResultsImpl = v5->_shouldIncludeGroupResultsImpl;
    v5->_shouldIncludeGroupResultsImpl = v12;

    -[CNAutocompleteFetchRequest setAddressableGroupResultStyle:](v5, "setAddressableGroupResultStyle:", [v4 decodeIntegerForKey:@"addressableGroupResultStyle"]);
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maximumResultsCount"];
    v5->_maximumResultsCount = [v14 unsignedIntegerValue];

    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  searchNames = self->_searchNames;
  v5 = a3;
  [v5 encodeObject:searchNames forKey:@"searchNames"];
  [v5 encodeObject:self->_priorityDomainForSorting forKey:@"priorityDomainForSorting"];
  [v5 encodeInteger:self->_searchType forKey:@"searchType"];
  [v5 encodeObject:self->_fetchContext forKey:@"fetchContext"];
  [v5 encodeBool:self->_includeContacts forKey:@"includeContacts"];
  [v5 encodeBool:self->_includeRecents forKey:@"includeRecents"];
  [v5 encodeBool:self->_includeStewie forKey:@"includeStewie"];
  [v5 encodeBool:self->_includeSuggestions forKey:@"includeSuggestions"];
  [v5 encodeBool:self->_includeLocalExtensions forKey:@"includeLocalExtensions"];
  [v5 encodeBool:self->_includeDirectoryServers forKey:@"includeDirectoryServers"];
  [v5 encodeBool:self->_includeCalendarServers forKey:@"includeCalendarServers"];
  [v5 encodeBool:self->_includePredictions forKey:@"includePredictions"];
  [v5 encodeObject:self->_shouldIncludeGroupResultsImpl forKey:@"shouldIncludeGroupResultsImpl"];
  [v5 encodeInteger:-[CNAutocompleteFetchRequest addressableGroupResultStyle](self forKey:{"addressableGroupResultStyle"), @"addressableGroupResultStyle"}];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_maximumResultsCount];
  [v5 encodeObject:v6 forKey:@"maximumResultsCount"];
}

- (id)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  v4 = [(CNAutocompleteFetchRequest *)self searchNames];
  v5 = [v3 appendName:@"search names" object:v4];

  v6 = [(CNAutocompleteFetchRequest *)self includeDebugString];
  v7 = [v3 appendName:@"include" object:v6];

  v8 = [(CNAutocompleteFetchRequest *)self searchTypeDebugString];
  v9 = [v3 appendName:@"search type" object:v8];

  v10 = [(CNAutocompleteFetchRequest *)self priorityDomainForSorting];
  v11 = [v3 appendName:@"priority domain" object:v10];

  v12 = [(CNAutocompleteFetchRequest *)self fetchContext];
  v13 = [v3 appendName:@"fetch context" object:v12];

  v14 = [(CNAutocompleteFetchRequest *)self shouldIncludeGroupResultsDebugString];
  v15 = [v3 appendName:@"shouldIncludeGroupResults" object:v14];

  v16 = [v3 build];

  return v16;
}

- (id)includeDebugString
{
  v3 = [MEMORY[0x277CBEB18] array];
  if ([(CNAutocompleteFetchRequest *)self includeRecents])
  {
    [v3 addObject:@"Recents"];
  }

  if ([(CNAutocompleteFetchRequest *)self includeStewie])
  {
    [v3 addObject:@"Stewie"];
  }

  if ([(CNAutocompleteFetchRequest *)self includeContacts])
  {
    [v3 addObject:@"Contacts"];
  }

  if ([(CNAutocompleteFetchRequest *)self includeSuggestions])
  {
    [v3 addObject:@"Suggestions"];
  }

  if ([(CNAutocompleteFetchRequest *)self includeLocalExtensions])
  {
    [v3 addObject:@"Local Extensions"];
  }

  if ([(CNAutocompleteFetchRequest *)self includeDirectoryServers])
  {
    [v3 addObject:@"Directory Servers"];
  }

  if ([(CNAutocompleteFetchRequest *)self includeCalendarServers])
  {
    [v3 addObject:@"Calendar Servers"];
  }

  if ([(CNAutocompleteFetchRequest *)self includePredictions])
  {
    [v3 addObject:@"Duet"];
  }

  if ([v3 count])
  {
    v4 = [v3 componentsJoinedByString:@"+"];
  }

  else
  {
    v4 = @"none";
  }

  return v4;
}

- (id)searchTypeDebugString
{
  v2 = [(CNAutocompleteFetchRequest *)self searchType];
  if (v2 > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_2781C40F0[v2];
  }
}

- (id)shouldIncludeGroupResultsDebugString
{
  v3 = [(CNAutocompleteFetchRequest *)self shouldIncludeGroupResults];
  v4 = @"NO";
  if (v3)
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

- (void)setSendingAddress:(id)a3
{
  v5 = a3;
  v4 = [(CNAutocompleteFetchRequest *)self fetchContext];
  if (!v4)
  {
    v4 = objc_alloc_init(CNAutocompleteFetchContext);
    [(CNAutocompleteFetchRequest *)self setFetchContext:v4];
  }

  [(CNAutocompleteFetchContext *)v4 setSendingAddress:v5];
}

- (NSString)sendingAddress
{
  v2 = [(CNAutocompleteFetchRequest *)self fetchContext];
  v3 = [v2 sendingAddress];

  return v3;
}

@end