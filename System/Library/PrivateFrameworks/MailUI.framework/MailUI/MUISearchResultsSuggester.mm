@interface MUISearchResultsSuggester
+ (NSArray)dateAttributes;
+ (NSString)dateQueryString;
+ (OS_os_log)log;
+ (id)dateForSuggestionResult:(id)result;
+ (id)documentsSuggesterWithBundleID:(id)d messageRepository:(id)repository senderQueryManager:(id)manager;
+ (id)linksSuggesterWithBundleID:(id)d messageRepository:(id)repository senderQueryManager:(id)manager;
+ (id)suggestionResultsSortedByDate:(id)date;
- (MUISearchResultsSuggester)initWithBundleID:(id)d messageRepository:(id)repository senderQueryManager:(id)manager configuration:(id)configuration;
- (NSArray)categories;
- (NSString)logIdentifier;
@end

@implementation MUISearchResultsSuggester

+ (id)documentsSuggesterWithBundleID:(id)d messageRepository:(id)repository senderQueryManager:(id)manager
{
  managerCopy = manager;
  repositoryCopy = repository;
  dCopy = d;
  v11 = objc_alloc_init(_MUISearchResultsSuggesterDocumentsConfiguration);
  v12 = [[self alloc] initWithBundleID:dCopy messageRepository:repositoryCopy senderQueryManager:managerCopy configuration:v11];

  return v12;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__MUISearchResultsSuggester_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_16 != -1)
  {
    dispatch_once(&log_onceToken_16, block);
  }

  v2 = log_log_16;

  return v2;
}

void __32__MUISearchResultsSuggester_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.email", [v4 UTF8String]);
  v3 = log_log_16;
  log_log_16 = v2;
}

- (MUISearchResultsSuggester)initWithBundleID:(id)d messageRepository:(id)repository senderQueryManager:(id)manager configuration:(id)configuration
{
  dCopy = d;
  repositoryCopy = repository;
  managerCopy = manager;
  configurationCopy = configuration;
  v18.receiver = self;
  v18.super_class = MUISearchResultsSuggester;
  v15 = [(MUISearchResultsSuggester *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_bundleID, d);
    objc_storeStrong(&v16->_messageRepository, repository);
    objc_storeStrong(&v16->_senderQueryManager, manager);
    objc_storeStrong(&v16->_configuration, configuration);
  }

  return v16;
}

+ (NSArray)dateAttributes
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CC3248];
  v6[0] = *MEMORY[0x277CC32D0];
  v6[1] = v2;
  v3 = *MEMORY[0x277CC2640];
  v6[2] = *MEMORY[0x277CC3270];
  v6[3] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];

  return v4;
}

+ (NSString)dateQueryString
{
  date = [MEMORY[0x277CBEAA8] date];
  v3 = [date dateByAddingTimeInterval:-1209600.0];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;

  v6 = +[MUISearchResultsSuggester dateAttributes];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__MUISearchResultsSuggester_Date__dateQueryString__block_invoke;
  v10[3] = &__block_descriptor_40_e18__16__0__NSString_8l;
  v10[4] = v5;
  v7 = [v6 ef_map:v10];
  v8 = [v7 componentsJoinedByString:@" || "];

  return v8;
}

+ (id)dateForSuggestionResult:(id)result
{
  resultCopy = result;
  searchableItem = [resultCopy searchableItem];
  attributeSet = [searchableItem attributeSet];

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__4;
  v17 = __Block_byref_object_dispose__4;
  v18 = 0;
  v6 = +[MUISearchResultsSuggester dateAttributes];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__MUISearchResultsSuggester_Date__dateForSuggestionResult___block_invoke;
  v10[3] = &unk_27818AFE0;
  v12 = &v13;
  v7 = attributeSet;
  v11 = v7;
  [v6 enumerateObjectsUsingBlock:v10];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __59__MUISearchResultsSuggester_Date__dateForSuggestionResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v12 = v3;
    v5 = [*(a1 + 32) attributeForKey:v3];
    if (([v12 isEqualToString:*MEMORY[0x277CC3248]] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", *MEMORY[0x277CC3270]))
    {
      v6 = [v5 firstObject];
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }

    else
    {
      v9 = *(*(a1 + 40) + 8);
      v10 = v5;
      v8 = *(v9 + 40);
      *(v9 + 40) = v10;
    }

    v4 = v12;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

+ (id)suggestionResultsSortedByDate:(id)date
{
  v3 = [date ef_partition:&__block_literal_global_33];
  second = [v3 second];
  v5 = [second count];

  if (v5)
  {
    v6 = +[MUISearchResultsSuggester log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MUISearchResultsSuggester(Date) suggestionResultsSortedByDate:v3];
    }
  }

  first = [v3 first];
  v8 = [first sortedArrayUsingComparator:&__block_literal_global_115];

  return v8;
}

BOOL __65__MUISearchResultsSuggester_Date__suggestionResultsSortedByDate___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MUISearchResultsSuggester dateForSuggestionResult:a2];
  v3 = v2 != 0;

  return v3;
}

uint64_t __65__MUISearchResultsSuggester_Date__suggestionResultsSortedByDate___block_invoke_112(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [MUISearchResultsSuggester dateForSuggestionResult:v4];
  v7 = [MUISearchResultsSuggester dateForSuggestionResult:v5];
  v8 = [v7 compare:v6];
  if (!v8)
  {
    v9 = [v5 searchableItem];
    v10 = [v9 uniqueIdentifier];
    v11 = [v4 searchableItem];
    v12 = [v11 uniqueIdentifier];
    v8 = [v10 compare:v12];
  }

  return v8;
}

+ (id)linksSuggesterWithBundleID:(id)d messageRepository:(id)repository senderQueryManager:(id)manager
{
  managerCopy = manager;
  repositoryCopy = repository;
  dCopy = d;
  v11 = objc_alloc_init(_MUISearchResultsSuggesterRichLinksConfiguration);
  v12 = [[self alloc] initWithBundleID:dCopy messageRepository:repositoryCopy senderQueryManager:managerCopy configuration:v11];

  return v12;
}

- (NSString)logIdentifier
{
  if (self)
  {
    self = self->_configuration;
  }

  return [(MUISearchResultsSuggester *)self logIdentifier];
}

- (NSArray)categories
{
  if (self)
  {
    self = self->_configuration;
  }

  return [(MUISearchResultsSuggester *)self categories];
}

@end