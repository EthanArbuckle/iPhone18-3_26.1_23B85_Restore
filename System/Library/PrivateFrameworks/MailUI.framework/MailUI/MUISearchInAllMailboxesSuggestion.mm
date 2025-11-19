@interface MUISearchInAllMailboxesSuggestion
- (MUISearchInAllMailboxesSuggestion)initWithSuggestion:(id)a3 title:(id)a4;
@end

@implementation MUISearchInAllMailboxesSuggestion

- (MUISearchInAllMailboxesSuggestion)initWithSuggestion:(id)a3 title:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MUISearchInAllMailboxesSuggestion;
  v9 = [(MUISearchInAllMailboxesSuggestion *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_suggestion, a3);
    objc_storeStrong(&v10->_title, a4);
  }

  return v10;
}

@end