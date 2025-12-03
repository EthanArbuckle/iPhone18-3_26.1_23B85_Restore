@interface MFRemoteSearchProvider_iOS
- (MFRemoteSearchProvider_iOS)initWithMessagePersistence:(id)persistence;
- (id)fetchRemoteMessagesWithQuery:(id)query delegate:(id)delegate;
- (id)verifyResults:(id)results query:(id)query;
@end

@implementation MFRemoteSearchProvider_iOS

- (MFRemoteSearchProvider_iOS)initWithMessagePersistence:(id)persistence
{
  persistenceCopy = persistence;
  v11.receiver = self;
  v11.super_class = MFRemoteSearchProvider_iOS;
  v5 = [(MFRemoteSearchProvider_iOS *)&v11 init];
  if (v5)
  {
    v6 = [[MFMailMessageLibraryQueryTransformer alloc] initWithMessagePersistence:persistenceCopy];
    transformer = v5->_transformer;
    v5->_transformer = v6;

    v8 = objc_alloc_init(SearchManager);
    searchManager = v5->_searchManager;
    v5->_searchManager = v8;

    v5->_searchSessionID = 1;
  }

  return v5;
}

- (id)fetchRemoteMessagesWithQuery:(id)query delegate:(id)delegate
{
  queryCopy = query;
  delegateCopy = delegate;
  transformer = [(MFRemoteSearchProvider_iOS *)self transformer];
  v9 = [transformer criterionForQuery:queryCopy];

  v10 = [[SourceSearchContext alloc] initWithQuery:queryCopy criterion:v9 delegate:delegateCopy sessionID:self->_searchSessionID];
  os_unfair_lock_lock(&self->_lock);
  ++self->_searchSessionID;
  os_unfair_lock_unlock(&self->_lock);
  searchManager = [(MFRemoteSearchProvider_iOS *)self searchManager];
  v12 = [searchManager fullSearchUsingSearchContext:v10];

  return v12;
}

- (id)verifyResults:(id)results query:(id)query
{
  resultsCopy = results;
  queryCopy = query;
  transformer = [(MFRemoteSearchProvider_iOS *)self transformer];
  v9 = [transformer criterionForQuery:queryCopy];

  v10 = [[SearchResultsVerifier alloc] initWithCriterion:v9];
  v11 = [(SearchResultsVerifier *)v10 filterRemoteSearchResults:resultsCopy];

  return v11;
}

@end