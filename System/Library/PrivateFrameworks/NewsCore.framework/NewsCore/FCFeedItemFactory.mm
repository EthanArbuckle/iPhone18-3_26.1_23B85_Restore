@interface FCFeedItemFactory
- (FCFeedItemFactory)initWithArticleRecordSource:(id)source storefrontID:(id)d;
- (NSArray)requiredArticleKeys;
- (id)feedItemFromCKRecord:(id)record error:(id *)error;
- (id)feedItemFromPBRecord:(id)record error:(id *)error;
@end

@implementation FCFeedItemFactory

- (FCFeedItemFactory)initWithArticleRecordSource:(id)source storefrontID:(id)d
{
  sourceCopy = source;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = FCFeedItemFactory;
  v9 = [(FCFeedItemFactory *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_articleRecordSource, source);
    v11 = [dCopy copy];
    storefrontID = v10->_storefrontID;
    v10->_storefrontID = v11;
  }

  return v10;
}

- (NSArray)requiredArticleKeys
{
  v2 = MEMORY[0x1E69B6E30];
  articleRecordSource = [(FCFeedItemFactory *)self articleRecordSource];
  v4 = [v2 keysForArticleRecordWithRecordSource:articleRecordSource];

  return v4;
}

- (id)feedItemFromPBRecord:(id)record error:(id *)error
{
  recordCopy = record;
  v7 = +[FCCKProtocolTranslator sharedInstance];
  v8 = [(FCCKProtocolTranslator *)v7 recordFromPRecord:recordCopy];

  v9 = [(FCFeedItemFactory *)self feedItemFromCKRecord:v8 error:error];

  return v9;
}

- (id)feedItemFromCKRecord:(id)record error:(id *)error
{
  recordCopy = record;
  v7 = MEMORY[0x1E696AEC0];
  recordType = [recordCopy recordType];
  v9 = [v7 stringWithFormat:@"Can't created FeedItem from type %@", recordType];

  v10 = MEMORY[0x1E69B6E30];
  recordType2 = [recordCopy recordType];
  LOBYTE(v10) = [v10 canCreateFromCKRecordType:recordType2];

  if (v10)
  {
    v12 = MEMORY[0x1E69B6E30];
    storefrontID = [(FCFeedItemFactory *)self storefrontID];
    articleRecordSource = [(FCFeedItemFactory *)self articleRecordSource];
    v15 = [v12 feedItemFromCKRecord:recordCopy storefrontID:storefrontID recordSource:articleRecordSource];
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __48__FCFeedItemFactory_feedItemFromCKRecord_error___block_invoke;
    v17[3] = &unk_1E7C39D48;
    errorCopy = error;
    v18 = v9;
    v15 = __48__FCFeedItemFactory_feedItemFromCKRecord_error___block_invoke(v17);
  }

  return v15;
}

uint64_t __48__FCFeedItemFactory_feedItemFromCKRecord_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    **(a1 + 40) = [MEMORY[0x1E696ABC0] fc_errorWithCode:16 description:*(a1 + 32)];
  }

  return 0;
}

@end