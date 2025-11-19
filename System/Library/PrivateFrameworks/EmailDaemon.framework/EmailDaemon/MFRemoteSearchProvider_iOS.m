@interface MFRemoteSearchProvider_iOS
- (MFRemoteSearchProvider_iOS)initWithMessagePersistence:(id)a3;
- (id)fetchRemoteMessagesWithQuery:(id)a3 delegate:(id)a4;
- (id)verifyResults:(id)a3 query:(id)a4;
@end

@implementation MFRemoteSearchProvider_iOS

- (MFRemoteSearchProvider_iOS)initWithMessagePersistence:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MFRemoteSearchProvider_iOS;
  v5 = [(MFRemoteSearchProvider_iOS *)&v11 init];
  if (v5)
  {
    v6 = [[MFMailMessageLibraryQueryTransformer alloc] initWithMessagePersistence:v4];
    transformer = v5->_transformer;
    v5->_transformer = v6;

    v8 = objc_alloc_init(SearchManager);
    searchManager = v5->_searchManager;
    v5->_searchManager = v8;

    v5->_searchSessionID = 1;
  }

  return v5;
}

- (id)fetchRemoteMessagesWithQuery:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MFRemoteSearchProvider_iOS *)self transformer];
  v9 = [v8 criterionForQuery:v6];

  v10 = [[SourceSearchContext alloc] initWithQuery:v6 criterion:v9 delegate:v7 sessionID:self->_searchSessionID];
  os_unfair_lock_lock(&self->_lock);
  ++self->_searchSessionID;
  os_unfair_lock_unlock(&self->_lock);
  v11 = [(MFRemoteSearchProvider_iOS *)self searchManager];
  v12 = [v11 fullSearchUsingSearchContext:v10];

  return v12;
}

- (id)verifyResults:(id)a3 query:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MFRemoteSearchProvider_iOS *)self transformer];
  v9 = [v8 criterionForQuery:v7];

  v10 = [[SearchResultsVerifier alloc] initWithCriterion:v9];
  v11 = [(SearchResultsVerifier *)v10 filterRemoteSearchResults:v6];

  return v11;
}

@end