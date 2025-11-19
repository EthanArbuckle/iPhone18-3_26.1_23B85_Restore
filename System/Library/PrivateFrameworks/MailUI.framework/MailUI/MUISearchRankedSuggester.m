@interface MUISearchRankedSuggester
+ (OS_os_log)log;
+ (id)suggesterWithBundleID:(id)a3;
- (MUISearchRankedSuggester)initWithBundleID:(id)a3;
- (NSArray)categories;
- (id)generateSuggestionsUsingPhraseManager:(id)a3 handler:(id)a4;
@end

@implementation MUISearchRankedSuggester

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__MUISearchRankedSuggester_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_14 != -1)
  {
    dispatch_once(&log_onceToken_14, block);
  }

  v2 = log_log_14;

  return v2;
}

void __31__MUISearchRankedSuggester_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.email", [v4 UTF8String]);
  v3 = log_log_14;
  log_log_14 = v2;
}

+ (id)suggesterWithBundleID:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithBundleID:v4];

  return v5;
}

- (MUISearchRankedSuggester)initWithBundleID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MUISearchRankedSuggester;
  v5 = [(MUISearchRankedSuggester *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;
  }

  return v5;
}

- (NSArray)categories
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = +[MUISearchSuggestionCategory contactCategory];
  v6[0] = v2;
  v3 = +[MUISearchSuggestionCategory genericCategory];
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

- (id)generateSuggestionsUsingPhraseManager:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[MUISearchRankedSuggesterQuery alloc] initWithPhraseManager:v7 handler:v6 suggester:self];

  if (v8)
  {
    [v8[4] start];
  }

  return v8;
}

@end