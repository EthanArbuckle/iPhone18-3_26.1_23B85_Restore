@interface ICSearchQueryOperation(UI)
- (void)initWithSearchSuggestionsResponder:()UI userInput:performNLSearch:performTopHitSearch:modernResultsOnly:;
@end

@implementation ICSearchQueryOperation(UI)

- (void)initWithSearchSuggestionsResponder:()UI userInput:performNLSearch:performTopHitSearch:modernResultsOnly:
{
  v12 = a4;
  v13 = a3;
  searchString = [v12 searchString];
  tokens = [v12 tokens];
  v16 = [self initWithSearchSuggestionsResponder:v13 searchString:searchString performNLSearch:a5 performTopHitSearch:a6 tokens:tokens modernResultsOnly:a7];

  if (v16)
  {
    keyboardLanguage = [v12 keyboardLanguage];
    [v16 setKeyboardLanguage:keyboardLanguage];
  }

  return v16;
}

@end