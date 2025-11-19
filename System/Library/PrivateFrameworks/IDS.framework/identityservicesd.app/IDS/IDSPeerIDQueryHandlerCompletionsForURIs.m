@interface IDSPeerIDQueryHandlerCompletionsForURIs
- (IDSPeerIDQueryHandlerCompletionsForURIs)initWithCompletionArray:(id)a3 queryIdentifier:(id)a4 queryStart:(id)a5;
@end

@implementation IDSPeerIDQueryHandlerCompletionsForURIs

- (IDSPeerIDQueryHandlerCompletionsForURIs)initWithCompletionArray:(id)a3 queryIdentifier:(id)a4 queryStart:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = IDSPeerIDQueryHandlerCompletionsForURIs;
  v12 = [(IDSPeerIDQueryHandlerCompletionsForURIs *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_completionBlocks, a3);
    objc_storeStrong(&v13->_queryIdentifier, a4);
    objc_storeStrong(&v13->_queryStart, a5);
  }

  return v13;
}

@end