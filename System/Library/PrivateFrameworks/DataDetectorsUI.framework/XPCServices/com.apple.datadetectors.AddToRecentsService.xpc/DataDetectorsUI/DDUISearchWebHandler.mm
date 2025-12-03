@interface DDUISearchWebHandler
+ (id)webSearchURLForQueryString:(id)string;
@end

@implementation DDUISearchWebHandler

+ (id)webSearchURLForQueryString:(id)string
{
  if (string)
  {
    stringCopy = string;
    v4 = +[_SFSearchEngineController sharedInstance];
    [v4 reloadSearchEngines];

    v5 = +[_SFSearchEngineController sharedInstance];
    defaultSearchEngine = [v5 defaultSearchEngine];
    v7 = [defaultSearchEngine searchURLForUserTypedString:stringCopy];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end