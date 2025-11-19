@interface FCFeedItemFactory
- (FCFeedItemFactory)initWithArticleRecordSource:(id)a3 storefrontID:(id)a4;
- (NSArray)requiredArticleKeys;
- (id)feedItemFromCKRecord:(id)a3 error:(id *)a4;
- (id)feedItemFromPBRecord:(id)a3 error:(id *)a4;
@end

@implementation FCFeedItemFactory

- (FCFeedItemFactory)initWithArticleRecordSource:(id)a3 storefrontID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = FCFeedItemFactory;
  v9 = [(FCFeedItemFactory *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_articleRecordSource, a3);
    v11 = [v8 copy];
    storefrontID = v10->_storefrontID;
    v10->_storefrontID = v11;
  }

  return v10;
}

- (NSArray)requiredArticleKeys
{
  v2 = MEMORY[0x1E69B6E30];
  v3 = [(FCFeedItemFactory *)self articleRecordSource];
  v4 = [v2 keysForArticleRecordWithRecordSource:v3];

  return v4;
}

- (id)feedItemFromPBRecord:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[FCCKProtocolTranslator sharedInstance];
  v8 = [(FCCKProtocolTranslator *)v7 recordFromPRecord:v6];

  v9 = [(FCFeedItemFactory *)self feedItemFromCKRecord:v8 error:a4];

  return v9;
}

- (id)feedItemFromCKRecord:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [v6 recordType];
  v9 = [v7 stringWithFormat:@"Can't created FeedItem from type %@", v8];

  v10 = MEMORY[0x1E69B6E30];
  v11 = [v6 recordType];
  LOBYTE(v10) = [v10 canCreateFromCKRecordType:v11];

  if (v10)
  {
    v12 = MEMORY[0x1E69B6E30];
    v13 = [(FCFeedItemFactory *)self storefrontID];
    v14 = [(FCFeedItemFactory *)self articleRecordSource];
    v15 = [v12 feedItemFromCKRecord:v6 storefrontID:v13 recordSource:v14];
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __48__FCFeedItemFactory_feedItemFromCKRecord_error___block_invoke;
    v17[3] = &unk_1E7C39D48;
    v19 = a4;
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