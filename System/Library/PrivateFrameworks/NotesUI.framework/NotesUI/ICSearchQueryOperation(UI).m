@interface ICSearchQueryOperation(UI)
- (void)initWithSearchSuggestionsResponder:()UI userInput:performNLSearch:performTopHitSearch:modernResultsOnly:;
@end

@implementation ICSearchQueryOperation(UI)

- (void)initWithSearchSuggestionsResponder:()UI userInput:performNLSearch:performTopHitSearch:modernResultsOnly:
{
  v12 = a4;
  v13 = a3;
  v14 = [v12 searchString];
  v15 = [v12 tokens];
  v16 = [a1 initWithSearchSuggestionsResponder:v13 searchString:v14 performNLSearch:a5 performTopHitSearch:a6 tokens:v15 modernResultsOnly:a7];

  if (v16)
  {
    v17 = [v12 keyboardLanguage];
    [v16 setKeyboardLanguage:v17];
  }

  return v16;
}

@end