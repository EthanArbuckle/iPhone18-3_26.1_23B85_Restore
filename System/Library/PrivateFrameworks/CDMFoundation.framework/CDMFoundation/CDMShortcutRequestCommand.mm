@interface CDMShortcutRequestCommand
- (CDMShortcutRequestCommand)initWithMatchingSpans:(id)a3 tokenChain:(id)a4 currentTurnContext:(id)a5;
@end

@implementation CDMShortcutRequestCommand

- (CDMShortcutRequestCommand)initWithMatchingSpans:(id)a3 tokenChain:(id)a4 currentTurnContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = CDMShortcutRequestCommand;
  v11 = [(CDMBaseCommand *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    matchingSpans = v11->_matchingSpans;
    v11->_matchingSpans = v12;

    v14 = [v9 copy];
    tokenChain = v11->_tokenChain;
    v11->_tokenChain = v14;

    v16 = [v10 copy];
    currentTurnContext = v11->_currentTurnContext;
    v11->_currentTurnContext = v16;
  }

  return v11;
}

@end