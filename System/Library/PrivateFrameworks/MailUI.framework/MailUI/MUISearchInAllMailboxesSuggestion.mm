@interface MUISearchInAllMailboxesSuggestion
- (MUISearchInAllMailboxesSuggestion)initWithSuggestion:(id)suggestion title:(id)title;
@end

@implementation MUISearchInAllMailboxesSuggestion

- (MUISearchInAllMailboxesSuggestion)initWithSuggestion:(id)suggestion title:(id)title
{
  suggestionCopy = suggestion;
  titleCopy = title;
  v12.receiver = self;
  v12.super_class = MUISearchInAllMailboxesSuggestion;
  v9 = [(MUISearchInAllMailboxesSuggestion *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_suggestion, suggestion);
    objc_storeStrong(&v10->_title, title);
  }

  return v10;
}

@end