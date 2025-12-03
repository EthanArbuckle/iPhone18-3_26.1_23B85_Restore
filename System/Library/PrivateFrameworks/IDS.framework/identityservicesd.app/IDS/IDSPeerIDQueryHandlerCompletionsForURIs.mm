@interface IDSPeerIDQueryHandlerCompletionsForURIs
- (IDSPeerIDQueryHandlerCompletionsForURIs)initWithCompletionArray:(id)array queryIdentifier:(id)identifier queryStart:(id)start;
@end

@implementation IDSPeerIDQueryHandlerCompletionsForURIs

- (IDSPeerIDQueryHandlerCompletionsForURIs)initWithCompletionArray:(id)array queryIdentifier:(id)identifier queryStart:(id)start
{
  arrayCopy = array;
  identifierCopy = identifier;
  startCopy = start;
  v15.receiver = self;
  v15.super_class = IDSPeerIDQueryHandlerCompletionsForURIs;
  v12 = [(IDSPeerIDQueryHandlerCompletionsForURIs *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_completionBlocks, array);
    objc_storeStrong(&v13->_queryIdentifier, identifier);
    objc_storeStrong(&v13->_queryStart, start);
  }

  return v13;
}

@end