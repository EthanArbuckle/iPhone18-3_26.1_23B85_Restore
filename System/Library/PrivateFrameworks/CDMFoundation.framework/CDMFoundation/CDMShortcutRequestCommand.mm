@interface CDMShortcutRequestCommand
- (CDMShortcutRequestCommand)initWithMatchingSpans:(id)spans tokenChain:(id)chain currentTurnContext:(id)context;
@end

@implementation CDMShortcutRequestCommand

- (CDMShortcutRequestCommand)initWithMatchingSpans:(id)spans tokenChain:(id)chain currentTurnContext:(id)context
{
  spansCopy = spans;
  chainCopy = chain;
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = CDMShortcutRequestCommand;
  v11 = [(CDMBaseCommand *)&v19 init];
  if (v11)
  {
    v12 = [spansCopy copy];
    matchingSpans = v11->_matchingSpans;
    v11->_matchingSpans = v12;

    v14 = [chainCopy copy];
    tokenChain = v11->_tokenChain;
    v11->_tokenChain = v14;

    v16 = [contextCopy copy];
    currentTurnContext = v11->_currentTurnContext;
    v11->_currentTurnContext = v16;
  }

  return v11;
}

@end