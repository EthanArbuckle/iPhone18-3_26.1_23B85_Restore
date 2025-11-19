@interface UniversalSearchSession
+ (id)sharedSession;
- (void)session:(id)a3 bag:(id)a4 didLoadWithError:(id)a5;
@end

@implementation UniversalSearchSession

+ (id)sharedSession
{
  if ([MEMORY[0x277D4A058] areSiriSearchSuggestionsEnabled])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__UniversalSearchSession_sharedSession__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    if (sharedSession_onceToken != -1)
    {
      dispatch_once(&sharedSession_onceToken, block);
    }

    v3 = sharedSession_sharedSession;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __39__UniversalSearchSession_sharedSession__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v4 = [MEMORY[0x277D49FC8] sharedPARSession];
  v2 = [v1 initWithParsecdSession:v4 skipAutoFillDataUpdates:0];
  v3 = sharedSession_sharedSession;
  sharedSession_sharedSession = v2;
}

- (void)session:(id)a3 bag:(id)a4 didLoadWithError:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x277CBEB38];
  v11 = a3;
  v12 = [v10 dictionaryWithCapacity:2];
  v13 = v12;
  if (v8)
  {
    [v12 setObject:v8 forKeyedSubscript:@"UniversalSearchBagUserInfoDictionaryKey"];
  }

  if (v9)
  {
    [v13 setObject:v9 forKeyedSubscript:@"UniversalSearchBagLoadErrorUserInfoDictionaryKey"];
  }

  v14 = [MEMORY[0x277CCAB98] defaultCenter];
  [v14 postNotificationName:@"UniversalSearchDidLoadBagNotification" object:self userInfo:v13];

  v15.receiver = self;
  v15.super_class = UniversalSearchSession;
  [(WBSParsecDSession *)&v15 session:v11 bag:v8 didLoadWithError:v9];
}

@end