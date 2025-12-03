@interface UniversalSearchSession
+ (id)sharedSession;
- (void)session:(id)session bag:(id)bag didLoadWithError:(id)error;
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
    block[4] = self;
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

- (void)session:(id)session bag:(id)bag didLoadWithError:(id)error
{
  bagCopy = bag;
  errorCopy = error;
  v10 = MEMORY[0x277CBEB38];
  sessionCopy = session;
  v12 = [v10 dictionaryWithCapacity:2];
  v13 = v12;
  if (bagCopy)
  {
    [v12 setObject:bagCopy forKeyedSubscript:@"UniversalSearchBagUserInfoDictionaryKey"];
  }

  if (errorCopy)
  {
    [v13 setObject:errorCopy forKeyedSubscript:@"UniversalSearchBagLoadErrorUserInfoDictionaryKey"];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"UniversalSearchDidLoadBagNotification" object:self userInfo:v13];

  v15.receiver = self;
  v15.super_class = UniversalSearchSession;
  [(WBSParsecDSession *)&v15 session:sessionCopy bag:bagCopy didLoadWithError:errorCopy];
}

@end