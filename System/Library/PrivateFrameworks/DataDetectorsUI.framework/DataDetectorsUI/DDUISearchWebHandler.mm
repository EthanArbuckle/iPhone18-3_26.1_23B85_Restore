@interface DDUISearchWebHandler
+ (id)webSearchURLForQueryString:(id)string;
@end

@implementation DDUISearchWebHandler

+ (id)webSearchURLForQueryString:(id)string
{
  if (string)
  {
    v3 = MEMORY[0x277CDB8A8];
    stringCopy = string;
    sharedInstance = [v3 sharedInstance];
    [sharedInstance reloadSearchEngines];

    mEMORY[0x277CDB8A8] = [MEMORY[0x277CDB8A8] sharedInstance];
    defaultSearchEngine = [mEMORY[0x277CDB8A8] defaultSearchEngine];
    v8 = [defaultSearchEngine searchURLForUserTypedString:stringCopy];

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end