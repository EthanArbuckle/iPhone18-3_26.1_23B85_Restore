@interface DDUISearchWebHandler
+ (id)webSearchURLForQueryString:(id)a3;
@end

@implementation DDUISearchWebHandler

+ (id)webSearchURLForQueryString:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CDB8A8];
    v4 = a3;
    v5 = [v3 sharedInstance];
    [v5 reloadSearchEngines];

    v6 = [MEMORY[0x277CDB8A8] sharedInstance];
    v7 = [v6 defaultSearchEngine];
    v8 = [v7 searchURLForUserTypedString:v4];

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end